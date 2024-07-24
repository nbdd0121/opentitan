// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

use anyhow::Result;
use clap::Parser;

use opentitanlib::app::TransportWrapper;
use opentitanlib::execute_test;
use opentitanlib::test_utils::init::InitializeTest;
use opentitanlib::util::parse_int::ParseInt;

#[derive(Debug, Parser)]
struct Opts {
    #[command(flatten)]
    init: InitializeTest,
    
    /// IDCODE of the RISCV tap.
    #[arg(long, value_parser = u32::from_str, default_value = "0x10001cdf")]
    riscv_idcode: u32,
}

fn test_jtag(opts: &Opts, transport: &TransportWrapper) -> Result<()> {
    // Avoid watchdog timeout by entering bootstrap mode.
    transport.pin_strapping("ROM_BOOTSTRAP")?.apply()?;

    transport.pin_strapping("PINMUX_TAP_RISCV")?.apply()?;
    transport.reset_target(opts.init.bootstrap.options.reset_delay, true)?;

    let mut openocd = opts.init.jtag_params.create(transport)?.into_raw()?;
    let riscv_idcode = opts.riscv_idcode;

    // Configure OpenOCD to expect RISC-V tap and initialize JTAG.
    assert_eq!(
        openocd.execute(&format!(
            "jtag newtap riscv tap -irlen 5 -expected-id {riscv_idcode:#x}"
        ))?,
        ""
    );
    assert_eq!(openocd.execute("init")?, "");

    // Read IDCODE register to ensure that it is expected.
    openocd.irscan("riscv.tap", 1)?;
    let idcode = openocd.drscan("riscv.tap", 32, 0)?;
    assert_eq!(idcode, riscv_idcode);

    // Attempt to write IDCODE
    openocd.irscan("riscv.tap", 1)?;
    assert_eq!(
        openocd.drscan("riscv.tap", 64, 0xdeadbeef)?,
        0xdeadbeef << 32 | riscv_idcode as u64
    );

    // Read back IDCODE to ensure that the value remains
    openocd.irscan("riscv.tap", 1)?;
    let idcode = openocd.drscan("riscv.tap", 32, 0)?;
    assert_eq!(idcode, riscv_idcode);

    // Check functionality of BYPASS
    openocd.irscan("riscv.tap", 0)?;
    assert_eq!(openocd.drscan("riscv.tap", 1, 0)?, 0);
    let scan = openocd.drscan("riscv.tap", 33, 0xdeadbeef)?;
    assert_eq!(scan, 0xdeadbeefu64 << 1);

    // Read DTMCS ensure value is as expected
    openocd.irscan("riscv.tap", 0x10)?;
    let value = openocd.drscan("riscv.tap", 32, 0)?;
    // DTMCS.version
    assert_eq!(value & 0xF, 1);
    // DTMCS.abits
    assert_eq!((value >> 4) & 0x3F, 7);

    // Write DTMCS and ensure it's unchanged
    openocd.irscan("riscv.tap", 0x10)?;
    assert_eq!(
        openocd.drscan("riscv.tap", 64, 0xdeadbeef)?,
        0xdeadbeef << 32 | value as u64
    );
    openocd.irscan("riscv.tap", 0x10)?;
    let new_value = openocd.drscan("riscv.tap", 32, 0)?;
    assert_eq!(new_value, value);

    openocd.shutdown()?;

    Ok(())
}

fn main() -> Result<()> {
    let opts = Opts::parse();
    opts.init.init_logging();
    let transport = opts.init.init_target()?;

    execute_test!(test_jtag, &opts, &transport);

    Ok(())
}

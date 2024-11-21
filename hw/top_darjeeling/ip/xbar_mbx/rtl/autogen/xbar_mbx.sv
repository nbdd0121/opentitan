// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// xbar_mbx module generated by `tlgen.py` tool
// all reset signals should be generated from one reset signal to not make any deadlock
//
// Interconnect
// mbx
//   -> s1n_10
//     -> mbx0.soc
//     -> mbx1.soc
//     -> mbx2.soc
//     -> mbx3.soc
//     -> mbx4.soc
//     -> mbx5.soc
//     -> mbx6.soc
//     -> mbx_pcie0.soc
//     -> mbx_pcie1.soc

module xbar_mbx (
  input clk_mbx_i,
  input rst_mbx_ni,

  // Host interfaces
  input  tlul_pkg::tl_h2d_t tl_mbx_i,
  output tlul_pkg::tl_d2h_t tl_mbx_o,

  // Device interfaces
  output tlul_pkg::tl_h2d_t tl_mbx0__soc_o,
  input  tlul_pkg::tl_d2h_t tl_mbx0__soc_i,
  output tlul_pkg::tl_h2d_t tl_mbx1__soc_o,
  input  tlul_pkg::tl_d2h_t tl_mbx1__soc_i,
  output tlul_pkg::tl_h2d_t tl_mbx2__soc_o,
  input  tlul_pkg::tl_d2h_t tl_mbx2__soc_i,
  output tlul_pkg::tl_h2d_t tl_mbx3__soc_o,
  input  tlul_pkg::tl_d2h_t tl_mbx3__soc_i,
  output tlul_pkg::tl_h2d_t tl_mbx4__soc_o,
  input  tlul_pkg::tl_d2h_t tl_mbx4__soc_i,
  output tlul_pkg::tl_h2d_t tl_mbx5__soc_o,
  input  tlul_pkg::tl_d2h_t tl_mbx5__soc_i,
  output tlul_pkg::tl_h2d_t tl_mbx6__soc_o,
  input  tlul_pkg::tl_d2h_t tl_mbx6__soc_i,
  output tlul_pkg::tl_h2d_t tl_mbx_pcie0__soc_o,
  input  tlul_pkg::tl_d2h_t tl_mbx_pcie0__soc_i,
  output tlul_pkg::tl_h2d_t tl_mbx_pcie1__soc_o,
  input  tlul_pkg::tl_d2h_t tl_mbx_pcie1__soc_i,

  input prim_mubi_pkg::mubi4_t scanmode_i
);

  import tlul_pkg::*;
  import tl_mbx_pkg::*;

  // scanmode_i is currently not used, but provisioned for future use
  // this assignment prevents lint warnings
  logic unused_scanmode;
  assign unused_scanmode = ^scanmode_i;

  tl_h2d_t tl_s1n_10_us_h2d ;
  tl_d2h_t tl_s1n_10_us_d2h ;


  tl_h2d_t tl_s1n_10_ds_h2d [9];
  tl_d2h_t tl_s1n_10_ds_d2h [9];

  // Create steering signal
  logic [3:0] dev_sel_s1n_10;



  assign tl_mbx0__soc_o = tl_s1n_10_ds_h2d[0];
  assign tl_s1n_10_ds_d2h[0] = tl_mbx0__soc_i;

  assign tl_mbx1__soc_o = tl_s1n_10_ds_h2d[1];
  assign tl_s1n_10_ds_d2h[1] = tl_mbx1__soc_i;

  assign tl_mbx2__soc_o = tl_s1n_10_ds_h2d[2];
  assign tl_s1n_10_ds_d2h[2] = tl_mbx2__soc_i;

  assign tl_mbx3__soc_o = tl_s1n_10_ds_h2d[3];
  assign tl_s1n_10_ds_d2h[3] = tl_mbx3__soc_i;

  assign tl_mbx4__soc_o = tl_s1n_10_ds_h2d[4];
  assign tl_s1n_10_ds_d2h[4] = tl_mbx4__soc_i;

  assign tl_mbx5__soc_o = tl_s1n_10_ds_h2d[5];
  assign tl_s1n_10_ds_d2h[5] = tl_mbx5__soc_i;

  assign tl_mbx6__soc_o = tl_s1n_10_ds_h2d[6];
  assign tl_s1n_10_ds_d2h[6] = tl_mbx6__soc_i;

  assign tl_mbx_pcie0__soc_o = tl_s1n_10_ds_h2d[7];
  assign tl_s1n_10_ds_d2h[7] = tl_mbx_pcie0__soc_i;

  assign tl_mbx_pcie1__soc_o = tl_s1n_10_ds_h2d[8];
  assign tl_s1n_10_ds_d2h[8] = tl_mbx_pcie1__soc_i;

  assign tl_s1n_10_us_h2d = tl_mbx_i;
  assign tl_mbx_o = tl_s1n_10_us_d2h;

  always_comb begin
    // default steering to generate error response if address is not within the range
    dev_sel_s1n_10 = 4'd9;
    if ((tl_s1n_10_us_h2d.a_address &
         ~(ADDR_MASK_MBX0__SOC)) == ADDR_SPACE_MBX0__SOC) begin
      dev_sel_s1n_10 = 4'd0;

    end else if ((tl_s1n_10_us_h2d.a_address &
                  ~(ADDR_MASK_MBX1__SOC)) == ADDR_SPACE_MBX1__SOC) begin
      dev_sel_s1n_10 = 4'd1;

    end else if ((tl_s1n_10_us_h2d.a_address &
                  ~(ADDR_MASK_MBX2__SOC)) == ADDR_SPACE_MBX2__SOC) begin
      dev_sel_s1n_10 = 4'd2;

    end else if ((tl_s1n_10_us_h2d.a_address &
                  ~(ADDR_MASK_MBX3__SOC)) == ADDR_SPACE_MBX3__SOC) begin
      dev_sel_s1n_10 = 4'd3;

    end else if ((tl_s1n_10_us_h2d.a_address &
                  ~(ADDR_MASK_MBX4__SOC)) == ADDR_SPACE_MBX4__SOC) begin
      dev_sel_s1n_10 = 4'd4;

    end else if ((tl_s1n_10_us_h2d.a_address &
                  ~(ADDR_MASK_MBX5__SOC)) == ADDR_SPACE_MBX5__SOC) begin
      dev_sel_s1n_10 = 4'd5;

    end else if ((tl_s1n_10_us_h2d.a_address &
                  ~(ADDR_MASK_MBX6__SOC)) == ADDR_SPACE_MBX6__SOC) begin
      dev_sel_s1n_10 = 4'd6;

    end else if ((tl_s1n_10_us_h2d.a_address &
                  ~(ADDR_MASK_MBX_PCIE0__SOC)) == ADDR_SPACE_MBX_PCIE0__SOC) begin
      dev_sel_s1n_10 = 4'd7;

    end else if ((tl_s1n_10_us_h2d.a_address &
                  ~(ADDR_MASK_MBX_PCIE1__SOC)) == ADDR_SPACE_MBX_PCIE1__SOC) begin
      dev_sel_s1n_10 = 4'd8;
end
  end


  // Instantiation phase
  tlul_socket_1n #(
    .HReqDepth (4'h0),
    .HRspDepth (4'h0),
    .DReqDepth (36'h0),
    .DRspDepth (36'h0),
    .N         (9)
  ) u_s1n_10 (
    .clk_i        (clk_mbx_i),
    .rst_ni       (rst_mbx_ni),
    .tl_h_i       (tl_s1n_10_us_h2d),
    .tl_h_o       (tl_s1n_10_us_d2h),
    .tl_d_o       (tl_s1n_10_ds_h2d),
    .tl_d_i       (tl_s1n_10_ds_d2h),
    .dev_select_i (dev_sel_s1n_10)
  );

endmodule

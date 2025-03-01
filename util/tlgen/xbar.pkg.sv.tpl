// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// tl_${xbar.name} package generated by `tlgen.py` tool

<%
  addr_spaces = set()
  for host in xbar.hosts:
    addr_spaces |= host.addr_spaces
  unames = [x.name.replace('.', '__').upper() for x in xbar.devices]
  name_len = max([len(un) for un in unames])
%>\
package tl_${xbar.name}_pkg;
% for asid in sorted(addr_spaces):
<%
  aname = asid.upper()
%>
  % for uname, device in zip(unames, xbar.devices):
    % if asid not in device.addr_ranges:
      <% continue %>
    % endif
<%
  lname = uname.ljust(name_len)
%>\
    ## Address
    % if device.xbar == False:
  ## TODO: Add support for xbars with multiple ASIDs.
  ## localparam logic [31:0] ADDR_SPACE_${aname}__${lname} = 32'h ${"%08x" % device.addr_ranges[asid][0][0]};
  localparam logic [31:0] ADDR_SPACE_${lname} = 32'h ${"%08x" % device.addr_ranges[asid][0][0]};
    % else:
    ## Xbar device
  ## TODO: Add support for xbars with multiple ASIDs.
  ## localparam logic [${len(device.addr_ranges[asid])-1}:0][31:0] ADDR_SPACE_${aname}__${lname} = {
  localparam logic [${len(device.addr_ranges[asid])-1}:0][31:0] ADDR_SPACE_${lname} = {
      % for addr in list(reversed(device.addr_ranges[asid])):
    32'h ${"%08x" % addr[0]}${"," if not loop.last else ""}
      % endfor
  };
    % endif
  % endfor
% endfor

% for uname, device in zip(unames, xbar.devices):
<%
  lname = uname.ljust(name_len)
  ## The size of the space does not depend on the ASID, so use the first one.
  asid = list(device.addr_spaces)[0]
%>\
  ## Mask
  % if device.xbar == False:
  localparam logic [31:0] ADDR_MASK_${lname} = 32'h ${"%08x" % (device.addr_ranges[asid][0][1] - device.addr_ranges[asid][0][0])};
  % else:
  ## Xbar
  localparam logic [${len(device.addr_ranges[asid])-1}:0][31:0] ADDR_MASK_${lname} = {
    % for addr in list(reversed(device.addr_ranges[asid])):
    32'h ${"%08x" % (addr[1] - addr[0])}${"," if not loop.last else ""}
    % endfor
  };
  % endif
% endfor

  localparam int N_HOST   = ${len(xbar.hosts)};
  localparam int N_DEVICE = ${len(xbar.devices)};

  typedef enum int {
% for device in xbar.devices:
  ## Create enum type for hosts( or blocks) connecting to the device
  ## Device Node has one upstream port. So tl_device_h2d can be directly used
<%
  u_name = ''.join(device.name.title().replace('.', '_').split('_'));
%>\
  % if loop.last:
    Tl${u_name} = ${loop.index}
  % else:
    Tl${u_name} = ${loop.index},
  % endif
% endfor
  } tl_device_e;

  typedef enum int {
% for host in xbar.hosts:
  ## Create enum type for downstream connecting to each host
  ## Host Node has one downstream port. so tl_host_h2d can be directly used
<%
  u_name = ''.join(host.name.title().replace('.', '_').split('_'));
%>\
  % if loop.last:
    Tl${u_name} = ${loop.index}
  % else:
    Tl${u_name} = ${loop.index},
  % endif
% endfor
  } tl_host_e;

endpackage

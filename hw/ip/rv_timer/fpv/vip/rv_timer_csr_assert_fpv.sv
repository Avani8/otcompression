// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

// FPV CSR read and write assertions auto-generated by `reggen` containing data structure
// Do Not Edit directly


// Block: rv_timer
module rv_timer_csr_assert_fpv import tlul_pkg::*; (
  input clk_i,
  input rst_ni,

  //tile link ports
  input tl_h2d_t h2d,
  input tl_d2h_t d2h
);

  // mask register to convert byte to bit
  logic [31:0] a_mask_bit;

  assign a_mask_bit[7:0]   = h2d.a_mask[0] ? '1 : '0;
  assign a_mask_bit[15:8]  = h2d.a_mask[1] ? '1 : '0;
  assign a_mask_bit[23:16] = h2d.a_mask[2] ? '1 : '0;
  assign a_mask_bit[31:24] = h2d.a_mask[3] ? '1 : '0;

  // declare common read and write sequences
  sequence device_wr_S(logic [8:0] addr);
    h2d.a_address == addr && h2d.a_opcode inside {PutFullData, PutPartialData} && h2d.a_valid && h2d.d_ready && !d2h.d_valid;
  endsequence

  sequence device_rd_S(logic [8:0] addr);
    h2d.a_address == addr && h2d.a_opcode inside {Get} && h2d.a_valid && h2d.d_ready && !d2h.d_valid;
  endsequence

  // declare common read and write properties
  property wr_P(int width, bit [8:0] addr, bit [31:0] compare_data, bit regen = 1);
    logic [31:0] id;
    logic [width:0] data;
    (device_wr_S(addr),id = h2d.a_source, data = h2d.a_data & a_mask_bit) |->
        strong(##[1:$] (d2h.d_valid && d2h.d_source == id && (d2h.d_error ||
        (!d2h.d_error && compare_data == data) || !regen)));
  endproperty

  property wr_ext_P(int width, bit [8:0] addr, bit [31:0] compare_data, bit regen = 1);
    logic [31:0] id;
    logic [width:0] data;
    logic [width:0] compare_value;
    (device_wr_S(addr),id = h2d.a_source, data = h2d.a_data & a_mask_bit,
        compare_value = compare_data) |->
        strong(##[1:$] (d2h.d_valid && d2h.d_source == id && (d2h.d_error ||
        (!d2h.d_error && compare_value == data) || !regen)));
  endproperty

  property rd_P(int width, bit [8:0] addr, bit [31:0] compare_data);
    logic [31:0] id;
    logic [width:0] data;
    (device_rd_S(addr), id = h2d.a_source, data = $past(compare_data)) |->
        strong(##[1:$] (d2h.d_valid && d2h.d_source == id && (d2h.d_error ||
        (!d2h.d_error && d2h.d_data == data))));
  endproperty

  property rd_ext_P(int width, bit [8:0] addr, bit [31:0] compare_data);
    logic [31:0] id;
    logic [width:0] data;
    (device_rd_S(addr), id = h2d.a_source, data = compare_data) |->
        strong(##[1:$] (d2h.d_valid && d2h.d_source == id && (d2h.d_error ||
        (!d2h.d_error && d2h.d_data == data))));
  endproperty

  property wr_regen_stable_P(regen, compare_data);
    (!regen && $stable(regen)) |-> $stable(compare_data);
  endproperty

// for all the regsters, declare assertion

  // define local fpv variable for the multi_reg
  logic [0:0] ctrl_q_fpv;
  for (genvar s = 0; s <= 0; s++) begin : gen_ctrl_rd
    assign ctrl_q_fpv[s] = i_rv_timer.reg2hw.ctrl[s].q;
  end

  // read/write assertions for register: ctrl
  `ASSERT(ctrl_wr_A, wr_P(0, 9'h0, ctrl_q_fpv[0:0], 0), clk_i, !rst_ni)
  `ASSERT(ctrl_rd_A, rd_P(0, 9'h0, ctrl_q_fpv[0:0]), clk_i, !rst_ni)

  // read/write assertions for register: cfg0
  `ASSERT(cfg0_wr_A, wr_P(23, 9'h100, i_rv_timer.reg2hw.cfg0.q, 0), clk_i, !rst_ni)
  `ASSERT(cfg0_rd_A, rd_P(23, 9'h100, i_rv_timer.reg2hw.cfg0.q), clk_i, !rst_ni)

  // read/write assertions for register: timer_v_lower0
  `ASSERT(timer_v_lower0_wr_A, wr_P(31, 9'h104, i_rv_timer.reg2hw.timer_v_lower0.q, 0), clk_i, !rst_ni)
  `ASSERT(timer_v_lower0_rd_A, rd_P(31, 9'h104, i_rv_timer.hw2reg.timer_v_lower0.d), clk_i, !rst_ni)

  // read/write assertions for register: timer_v_upper0
  `ASSERT(timer_v_upper0_wr_A, wr_P(31, 9'h108, i_rv_timer.reg2hw.timer_v_upper0.q, 0), clk_i, !rst_ni)
  `ASSERT(timer_v_upper0_rd_A, rd_P(31, 9'h108, i_rv_timer.hw2reg.timer_v_upper0.d), clk_i, !rst_ni)

  // read/write assertions for register: compare_lower0_0
  `ASSERT(compare_lower0_0_wr_A, wr_P(31, 9'h10c, i_rv_timer.reg2hw.compare_lower0_0.q, 0), clk_i, !rst_ni)
  `ASSERT(compare_lower0_0_rd_A, rd_P(31, 9'h10c, i_rv_timer.reg2hw.compare_lower0_0.q), clk_i, !rst_ni)

  // read/write assertions for register: compare_upper0_0
  `ASSERT(compare_upper0_0_wr_A, wr_P(31, 9'h110, i_rv_timer.reg2hw.compare_upper0_0.q, 0), clk_i, !rst_ni)
  `ASSERT(compare_upper0_0_rd_A, rd_P(31, 9'h110, i_rv_timer.reg2hw.compare_upper0_0.q), clk_i, !rst_ni)

  // define local fpv variable for the multi_reg
  logic [0:0] intr_enable0_q_fpv;
  for (genvar s = 0; s <= 0; s++) begin : gen_intr_enable0_rd
    assign intr_enable0_q_fpv[s] = i_rv_timer.reg2hw.intr_enable0[s].q;
  end

  // read/write assertions for register: intr_enable0
  `ASSERT(intr_enable0_wr_A, wr_P(0, 9'h114, intr_enable0_q_fpv[0:0], 0), clk_i, !rst_ni)
  `ASSERT(intr_enable0_rd_A, rd_P(0, 9'h114, intr_enable0_q_fpv[0:0]), clk_i, !rst_ni)

  // define local fpv variable for the multi_reg
  logic [0:0] intr_state0_q_fpv;
  for (genvar s = 0; s <= 0; s++) begin : gen_intr_state0_rd
    assign intr_state0_q_fpv[s] = i_rv_timer.reg2hw.intr_state0[s].q;
  end
  logic [0:0] intr_state0_d_fpv;
  for (genvar s = 0; s <= 0; s++) begin : gen_intr_state0_wr
    assign intr_state0_d_fpv[s] = i_rv_timer.hw2reg.intr_state0[s].d;
  end

  // read/write assertions for register: intr_state0
  `ASSERT(intr_state0_wr_A, wr_P(0, 9'h118, intr_state0_q_fpv[0:0], 0), clk_i, !rst_ni)
  `ASSERT(intr_state0_rd_A, rd_P(0, 9'h118, intr_state0_d_fpv[0:0]), clk_i, !rst_ni)

  // define local fpv variable for the multi_reg
  logic [0:0] intr_test0_q_fpv;
  for (genvar s = 0; s <= 0; s++) begin : gen_intr_test0_rd
    assign intr_test0_q_fpv[s] = i_rv_timer.reg2hw.intr_test0[s].q;
  end

  // read/write assertions for register: intr_test0
  `ASSERT(intr_test0_wr_A, wr_ext_P(0, 9'h11c, intr_test0_q_fpv[0:0], 0), clk_i, !rst_ni)

endmodule

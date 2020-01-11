// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

// UVM Registers auto-generated by `reggen` containing data structure
// Do Not Edit directly

// Block: usbuart
package usbuart_ral_pkg;
  // dep packages
  import uvm_pkg::*;
  import dv_lib_pkg::*;

  // macro includes
  `include "uvm_macros.svh"

  // Forward declare all register/memory/block classes
  typedef class usbuart_reg_intr_state;
  typedef class usbuart_reg_intr_enable;
  typedef class usbuart_reg_intr_test;
  typedef class usbuart_reg_ctrl;
  typedef class usbuart_reg_status;
  typedef class usbuart_reg_rdata;
  typedef class usbuart_reg_wdata;
  typedef class usbuart_reg_fifo_ctrl;
  typedef class usbuart_reg_fifo_status;
  typedef class usbuart_reg_ovrd;
  typedef class usbuart_reg_val;
  typedef class usbuart_reg_timeout_ctrl;
  typedef class usbuart_reg_usbstat;
  typedef class usbuart_reg_usbparam;
  typedef class usbuart_reg_block;

  // Class: usbuart_reg_intr_state
  class usbuart_reg_intr_state extends dv_base_reg;
    // fields
    rand dv_base_reg_field tx_watermark;
    rand dv_base_reg_field rx_watermark;
    rand dv_base_reg_field tx_overflow;
    rand dv_base_reg_field rx_overflow;
    rand dv_base_reg_field rx_frame_err;
    rand dv_base_reg_field rx_break_err;
    rand dv_base_reg_field rx_timeout;
    rand dv_base_reg_field rx_parity_err;

    `uvm_object_utils(usbuart_reg_intr_state)

    function new(string       name = "usbuart_reg_intr_state",
                 int unsigned n_bits = 32,
                 int          has_coverage = UVM_NO_COVERAGE);
      super.new(name, n_bits, has_coverage);
    endfunction : new

    virtual function void build();
      // create fields
      tx_watermark = dv_base_reg_field::type_id::create("tx_watermark");
      tx_watermark.configure(
        .parent(this),
        .size(1),
        .lsb_pos(0),
        .access("W1C"),
        .volatile(1),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      rx_watermark = dv_base_reg_field::type_id::create("rx_watermark");
      rx_watermark.configure(
        .parent(this),
        .size(1),
        .lsb_pos(1),
        .access("W1C"),
        .volatile(1),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      tx_overflow = dv_base_reg_field::type_id::create("tx_overflow");
      tx_overflow.configure(
        .parent(this),
        .size(1),
        .lsb_pos(2),
        .access("W1C"),
        .volatile(1),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      rx_overflow = dv_base_reg_field::type_id::create("rx_overflow");
      rx_overflow.configure(
        .parent(this),
        .size(1),
        .lsb_pos(3),
        .access("W1C"),
        .volatile(1),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      rx_frame_err = dv_base_reg_field::type_id::create("rx_frame_err");
      rx_frame_err.configure(
        .parent(this),
        .size(1),
        .lsb_pos(4),
        .access("W1C"),
        .volatile(1),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      rx_break_err = dv_base_reg_field::type_id::create("rx_break_err");
      rx_break_err.configure(
        .parent(this),
        .size(1),
        .lsb_pos(5),
        .access("W1C"),
        .volatile(1),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      rx_timeout = dv_base_reg_field::type_id::create("rx_timeout");
      rx_timeout.configure(
        .parent(this),
        .size(1),
        .lsb_pos(6),
        .access("W1C"),
        .volatile(1),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      rx_parity_err = dv_base_reg_field::type_id::create("rx_parity_err");
      rx_parity_err.configure(
        .parent(this),
        .size(1),
        .lsb_pos(7),
        .access("W1C"),
        .volatile(1),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
    endfunction : build

  endclass : usbuart_reg_intr_state

  // Class: usbuart_reg_intr_enable
  class usbuart_reg_intr_enable extends dv_base_reg;
    // fields
    rand dv_base_reg_field tx_watermark;
    rand dv_base_reg_field rx_watermark;
    rand dv_base_reg_field tx_overflow;
    rand dv_base_reg_field rx_overflow;
    rand dv_base_reg_field rx_frame_err;
    rand dv_base_reg_field rx_break_err;
    rand dv_base_reg_field rx_timeout;
    rand dv_base_reg_field rx_parity_err;

    `uvm_object_utils(usbuart_reg_intr_enable)

    function new(string       name = "usbuart_reg_intr_enable",
                 int unsigned n_bits = 32,
                 int          has_coverage = UVM_NO_COVERAGE);
      super.new(name, n_bits, has_coverage);
    endfunction : new

    virtual function void build();
      // create fields
      tx_watermark = dv_base_reg_field::type_id::create("tx_watermark");
      tx_watermark.configure(
        .parent(this),
        .size(1),
        .lsb_pos(0),
        .access("RW"),
        .volatile(0),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      rx_watermark = dv_base_reg_field::type_id::create("rx_watermark");
      rx_watermark.configure(
        .parent(this),
        .size(1),
        .lsb_pos(1),
        .access("RW"),
        .volatile(0),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      tx_overflow = dv_base_reg_field::type_id::create("tx_overflow");
      tx_overflow.configure(
        .parent(this),
        .size(1),
        .lsb_pos(2),
        .access("RW"),
        .volatile(0),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      rx_overflow = dv_base_reg_field::type_id::create("rx_overflow");
      rx_overflow.configure(
        .parent(this),
        .size(1),
        .lsb_pos(3),
        .access("RW"),
        .volatile(0),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      rx_frame_err = dv_base_reg_field::type_id::create("rx_frame_err");
      rx_frame_err.configure(
        .parent(this),
        .size(1),
        .lsb_pos(4),
        .access("RW"),
        .volatile(0),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      rx_break_err = dv_base_reg_field::type_id::create("rx_break_err");
      rx_break_err.configure(
        .parent(this),
        .size(1),
        .lsb_pos(5),
        .access("RW"),
        .volatile(0),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      rx_timeout = dv_base_reg_field::type_id::create("rx_timeout");
      rx_timeout.configure(
        .parent(this),
        .size(1),
        .lsb_pos(6),
        .access("RW"),
        .volatile(0),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      rx_parity_err = dv_base_reg_field::type_id::create("rx_parity_err");
      rx_parity_err.configure(
        .parent(this),
        .size(1),
        .lsb_pos(7),
        .access("RW"),
        .volatile(0),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
    endfunction : build

  endclass : usbuart_reg_intr_enable

  // Class: usbuart_reg_intr_test
  class usbuart_reg_intr_test extends dv_base_reg;
    // fields
    rand dv_base_reg_field tx_watermark;
    rand dv_base_reg_field rx_watermark;
    rand dv_base_reg_field tx_overflow;
    rand dv_base_reg_field rx_overflow;
    rand dv_base_reg_field rx_frame_err;
    rand dv_base_reg_field rx_break_err;
    rand dv_base_reg_field rx_timeout;
    rand dv_base_reg_field rx_parity_err;

    `uvm_object_utils(usbuart_reg_intr_test)

    function new(string       name = "usbuart_reg_intr_test",
                 int unsigned n_bits = 32,
                 int          has_coverage = UVM_NO_COVERAGE);
      super.new(name, n_bits, has_coverage);
    endfunction : new

    virtual function void build();
      // create fields
      tx_watermark = dv_base_reg_field::type_id::create("tx_watermark");
      tx_watermark.configure(
        .parent(this),
        .size(1),
        .lsb_pos(0),
        .access("WO"),
        .volatile(0),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      rx_watermark = dv_base_reg_field::type_id::create("rx_watermark");
      rx_watermark.configure(
        .parent(this),
        .size(1),
        .lsb_pos(1),
        .access("WO"),
        .volatile(0),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      tx_overflow = dv_base_reg_field::type_id::create("tx_overflow");
      tx_overflow.configure(
        .parent(this),
        .size(1),
        .lsb_pos(2),
        .access("WO"),
        .volatile(0),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      rx_overflow = dv_base_reg_field::type_id::create("rx_overflow");
      rx_overflow.configure(
        .parent(this),
        .size(1),
        .lsb_pos(3),
        .access("WO"),
        .volatile(0),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      rx_frame_err = dv_base_reg_field::type_id::create("rx_frame_err");
      rx_frame_err.configure(
        .parent(this),
        .size(1),
        .lsb_pos(4),
        .access("WO"),
        .volatile(0),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      rx_break_err = dv_base_reg_field::type_id::create("rx_break_err");
      rx_break_err.configure(
        .parent(this),
        .size(1),
        .lsb_pos(5),
        .access("WO"),
        .volatile(0),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      rx_timeout = dv_base_reg_field::type_id::create("rx_timeout");
      rx_timeout.configure(
        .parent(this),
        .size(1),
        .lsb_pos(6),
        .access("WO"),
        .volatile(0),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      rx_parity_err = dv_base_reg_field::type_id::create("rx_parity_err");
      rx_parity_err.configure(
        .parent(this),
        .size(1),
        .lsb_pos(7),
        .access("WO"),
        .volatile(0),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
    endfunction : build

  endclass : usbuart_reg_intr_test

  // Class: usbuart_reg_ctrl
  class usbuart_reg_ctrl extends dv_base_reg;
    // fields
    rand dv_base_reg_field tx;
    rand dv_base_reg_field rx;
    rand dv_base_reg_field nf;
    rand dv_base_reg_field slpbk;
    rand dv_base_reg_field llpbk;
    rand dv_base_reg_field parity_en;
    rand dv_base_reg_field parity_odd;
    rand dv_base_reg_field rxblvl;
    rand dv_base_reg_field nco;

    `uvm_object_utils(usbuart_reg_ctrl)

    function new(string       name = "usbuart_reg_ctrl",
                 int unsigned n_bits = 32,
                 int          has_coverage = UVM_NO_COVERAGE);
      super.new(name, n_bits, has_coverage);
    endfunction : new

    virtual function void build();
      // create fields
      tx = dv_base_reg_field::type_id::create("tx");
      tx.configure(
        .parent(this),
        .size(1),
        .lsb_pos(0),
        .access("RW"),
        .volatile(0),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      rx = dv_base_reg_field::type_id::create("rx");
      rx.configure(
        .parent(this),
        .size(1),
        .lsb_pos(1),
        .access("RW"),
        .volatile(0),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      nf = dv_base_reg_field::type_id::create("nf");
      nf.configure(
        .parent(this),
        .size(1),
        .lsb_pos(2),
        .access("RW"),
        .volatile(0),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      slpbk = dv_base_reg_field::type_id::create("slpbk");
      slpbk.configure(
        .parent(this),
        .size(1),
        .lsb_pos(4),
        .access("RW"),
        .volatile(0),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      llpbk = dv_base_reg_field::type_id::create("llpbk");
      llpbk.configure(
        .parent(this),
        .size(1),
        .lsb_pos(5),
        .access("RW"),
        .volatile(0),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      parity_en = dv_base_reg_field::type_id::create("parity_en");
      parity_en.configure(
        .parent(this),
        .size(1),
        .lsb_pos(6),
        .access("RW"),
        .volatile(0),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      parity_odd = dv_base_reg_field::type_id::create("parity_odd");
      parity_odd.configure(
        .parent(this),
        .size(1),
        .lsb_pos(7),
        .access("RW"),
        .volatile(0),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      rxblvl = dv_base_reg_field::type_id::create("rxblvl");
      rxblvl.configure(
        .parent(this),
        .size(2),
        .lsb_pos(8),
        .access("RW"),
        .volatile(0),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      nco = dv_base_reg_field::type_id::create("nco");
      nco.configure(
        .parent(this),
        .size(16),
        .lsb_pos(16),
        .access("RW"),
        .volatile(0),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
    endfunction : build

  endclass : usbuart_reg_ctrl

  // Class: usbuart_reg_status
  class usbuart_reg_status extends dv_base_reg;
    // fields
    rand dv_base_reg_field txfull;
    rand dv_base_reg_field rxfull;
    rand dv_base_reg_field txempty;
    rand dv_base_reg_field txidle;
    rand dv_base_reg_field rxidle;
    rand dv_base_reg_field rxempty;

    `uvm_object_utils(usbuart_reg_status)

    function new(string       name = "usbuart_reg_status",
                 int unsigned n_bits = 32,
                 int          has_coverage = UVM_NO_COVERAGE);
      super.new(name, n_bits, has_coverage);
    endfunction : new

    virtual function void build();
      // create fields
      txfull = dv_base_reg_field::type_id::create("txfull");
      txfull.configure(
        .parent(this),
        .size(1),
        .lsb_pos(0),
        .access("RO"),
        .volatile(1),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      rxfull = dv_base_reg_field::type_id::create("rxfull");
      rxfull.configure(
        .parent(this),
        .size(1),
        .lsb_pos(1),
        .access("RO"),
        .volatile(1),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      txempty = dv_base_reg_field::type_id::create("txempty");
      txempty.configure(
        .parent(this),
        .size(1),
        .lsb_pos(2),
        .access("RO"),
        .volatile(1),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      txidle = dv_base_reg_field::type_id::create("txidle");
      txidle.configure(
        .parent(this),
        .size(1),
        .lsb_pos(3),
        .access("RO"),
        .volatile(1),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      rxidle = dv_base_reg_field::type_id::create("rxidle");
      rxidle.configure(
        .parent(this),
        .size(1),
        .lsb_pos(4),
        .access("RO"),
        .volatile(1),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      rxempty = dv_base_reg_field::type_id::create("rxempty");
      rxempty.configure(
        .parent(this),
        .size(1),
        .lsb_pos(5),
        .access("RO"),
        .volatile(1),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
    endfunction : build

  endclass : usbuart_reg_status

  // Class: usbuart_reg_rdata
  class usbuart_reg_rdata extends dv_base_reg;
    // fields
    rand dv_base_reg_field rdata;

    `uvm_object_utils(usbuart_reg_rdata)

    function new(string       name = "usbuart_reg_rdata",
                 int unsigned n_bits = 32,
                 int          has_coverage = UVM_NO_COVERAGE);
      super.new(name, n_bits, has_coverage);
    endfunction : new

    virtual function void build();
      // create fields
      rdata = dv_base_reg_field::type_id::create("rdata");
      rdata.configure(
        .parent(this),
        .size(8),
        .lsb_pos(0),
        .access("RO"),
        .volatile(1),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
    endfunction : build

  endclass : usbuart_reg_rdata

  // Class: usbuart_reg_wdata
  class usbuart_reg_wdata extends dv_base_reg;
    // fields
    rand dv_base_reg_field wdata;

    `uvm_object_utils(usbuart_reg_wdata)

    function new(string       name = "usbuart_reg_wdata",
                 int unsigned n_bits = 32,
                 int          has_coverage = UVM_NO_COVERAGE);
      super.new(name, n_bits, has_coverage);
    endfunction : new

    virtual function void build();
      // create fields
      wdata = dv_base_reg_field::type_id::create("wdata");
      wdata.configure(
        .parent(this),
        .size(8),
        .lsb_pos(0),
        .access("WO"),
        .volatile(0),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
    endfunction : build

  endclass : usbuart_reg_wdata

  // Class: usbuart_reg_fifo_ctrl
  class usbuart_reg_fifo_ctrl extends dv_base_reg;
    // fields
    rand dv_base_reg_field rxrst;
    rand dv_base_reg_field txrst;
    rand dv_base_reg_field rxilvl;
    rand dv_base_reg_field txilvl;

    `uvm_object_utils(usbuart_reg_fifo_ctrl)

    function new(string       name = "usbuart_reg_fifo_ctrl",
                 int unsigned n_bits = 32,
                 int          has_coverage = UVM_NO_COVERAGE);
      super.new(name, n_bits, has_coverage);
    endfunction : new

    virtual function void build();
      // create fields
      rxrst = dv_base_reg_field::type_id::create("rxrst");
      rxrst.configure(
        .parent(this),
        .size(1),
        .lsb_pos(0),
        .access("RW"),
        .volatile(1),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      txrst = dv_base_reg_field::type_id::create("txrst");
      txrst.configure(
        .parent(this),
        .size(1),
        .lsb_pos(1),
        .access("RW"),
        .volatile(1),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      rxilvl = dv_base_reg_field::type_id::create("rxilvl");
      rxilvl.configure(
        .parent(this),
        .size(3),
        .lsb_pos(2),
        .access("RW"),
        .volatile(1),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      txilvl = dv_base_reg_field::type_id::create("txilvl");
      txilvl.configure(
        .parent(this),
        .size(2),
        .lsb_pos(5),
        .access("RW"),
        .volatile(1),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
    endfunction : build

  endclass : usbuart_reg_fifo_ctrl

  // Class: usbuart_reg_fifo_status
  class usbuart_reg_fifo_status extends dv_base_reg;
    // fields
    rand dv_base_reg_field txlvl;
    rand dv_base_reg_field rxlvl;

    `uvm_object_utils(usbuart_reg_fifo_status)

    function new(string       name = "usbuart_reg_fifo_status",
                 int unsigned n_bits = 32,
                 int          has_coverage = UVM_NO_COVERAGE);
      super.new(name, n_bits, has_coverage);
    endfunction : new

    virtual function void build();
      // create fields
      txlvl = dv_base_reg_field::type_id::create("txlvl");
      txlvl.configure(
        .parent(this),
        .size(6),
        .lsb_pos(0),
        .access("RO"),
        .volatile(1),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      rxlvl = dv_base_reg_field::type_id::create("rxlvl");
      rxlvl.configure(
        .parent(this),
        .size(6),
        .lsb_pos(16),
        .access("RO"),
        .volatile(1),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
    endfunction : build

  endclass : usbuart_reg_fifo_status

  // Class: usbuart_reg_ovrd
  class usbuart_reg_ovrd extends dv_base_reg;
    // fields
    rand dv_base_reg_field txen;
    rand dv_base_reg_field txval;

    `uvm_object_utils(usbuart_reg_ovrd)

    function new(string       name = "usbuart_reg_ovrd",
                 int unsigned n_bits = 32,
                 int          has_coverage = UVM_NO_COVERAGE);
      super.new(name, n_bits, has_coverage);
    endfunction : new

    virtual function void build();
      // create fields
      txen = dv_base_reg_field::type_id::create("txen");
      txen.configure(
        .parent(this),
        .size(1),
        .lsb_pos(0),
        .access("RW"),
        .volatile(0),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      txval = dv_base_reg_field::type_id::create("txval");
      txval.configure(
        .parent(this),
        .size(1),
        .lsb_pos(1),
        .access("RW"),
        .volatile(0),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
    endfunction : build

  endclass : usbuart_reg_ovrd

  // Class: usbuart_reg_val
  class usbuart_reg_val extends dv_base_reg;
    // fields
    rand dv_base_reg_field rx;

    `uvm_object_utils(usbuart_reg_val)

    function new(string       name = "usbuart_reg_val",
                 int unsigned n_bits = 32,
                 int          has_coverage = UVM_NO_COVERAGE);
      super.new(name, n_bits, has_coverage);
    endfunction : new

    virtual function void build();
      // create fields
      rx = dv_base_reg_field::type_id::create("rx");
      rx.configure(
        .parent(this),
        .size(16),
        .lsb_pos(0),
        .access("RO"),
        .volatile(1),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
    endfunction : build

  endclass : usbuart_reg_val

  // Class: usbuart_reg_timeout_ctrl
  class usbuart_reg_timeout_ctrl extends dv_base_reg;
    // fields
    rand dv_base_reg_field val;
    rand dv_base_reg_field en;

    `uvm_object_utils(usbuart_reg_timeout_ctrl)

    function new(string       name = "usbuart_reg_timeout_ctrl",
                 int unsigned n_bits = 32,
                 int          has_coverage = UVM_NO_COVERAGE);
      super.new(name, n_bits, has_coverage);
    endfunction : new

    virtual function void build();
      // create fields
      val = dv_base_reg_field::type_id::create("val");
      val.configure(
        .parent(this),
        .size(24),
        .lsb_pos(0),
        .access("RW"),
        .volatile(0),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      en = dv_base_reg_field::type_id::create("en");
      en.configure(
        .parent(this),
        .size(1),
        .lsb_pos(31),
        .access("RW"),
        .volatile(0),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
    endfunction : build

  endclass : usbuart_reg_timeout_ctrl

  // Class: usbuart_reg_usbstat
  class usbuart_reg_usbstat extends dv_base_reg;
    // fields
    rand dv_base_reg_field frame;
    rand dv_base_reg_field host_timeout;
    rand dv_base_reg_field host_lost;
    rand dv_base_reg_field device_address;

    `uvm_object_utils(usbuart_reg_usbstat)

    function new(string       name = "usbuart_reg_usbstat",
                 int unsigned n_bits = 32,
                 int          has_coverage = UVM_NO_COVERAGE);
      super.new(name, n_bits, has_coverage);
    endfunction : new

    virtual function void build();
      // create fields
      frame = dv_base_reg_field::type_id::create("frame");
      frame.configure(
        .parent(this),
        .size(11),
        .lsb_pos(0),
        .access("RO"),
        .volatile(1),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      host_timeout = dv_base_reg_field::type_id::create("host_timeout");
      host_timeout.configure(
        .parent(this),
        .size(1),
        .lsb_pos(14),
        .access("RO"),
        .volatile(1),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      host_lost = dv_base_reg_field::type_id::create("host_lost");
      host_lost.configure(
        .parent(this),
        .size(1),
        .lsb_pos(15),
        .access("RO"),
        .volatile(1),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      device_address = dv_base_reg_field::type_id::create("device_address");
      device_address.configure(
        .parent(this),
        .size(7),
        .lsb_pos(16),
        .access("RO"),
        .volatile(1),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
    endfunction : build

  endclass : usbuart_reg_usbstat

  // Class: usbuart_reg_usbparam
  class usbuart_reg_usbparam extends dv_base_reg;
    // fields
    rand dv_base_reg_field baud_req;
    rand dv_base_reg_field parity_req;

    `uvm_object_utils(usbuart_reg_usbparam)

    function new(string       name = "usbuart_reg_usbparam",
                 int unsigned n_bits = 32,
                 int          has_coverage = UVM_NO_COVERAGE);
      super.new(name, n_bits, has_coverage);
    endfunction : new

    virtual function void build();
      // create fields
      baud_req = dv_base_reg_field::type_id::create("baud_req");
      baud_req.configure(
        .parent(this),
        .size(16),
        .lsb_pos(0),
        .access("RO"),
        .volatile(1),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
      parity_req = dv_base_reg_field::type_id::create("parity_req");
      parity_req.configure(
        .parent(this),
        .size(2),
        .lsb_pos(16),
        .access("RO"),
        .volatile(1),
        .reset(32'h0),
        .has_reset(1),
        .is_rand(1),
        .individually_accessible(1));
    endfunction : build

  endclass : usbuart_reg_usbparam

  // Class: usbuart_reg_block
  class usbuart_reg_block extends dv_base_reg_block;
    // registers
    rand usbuart_reg_intr_state intr_state;
    rand usbuart_reg_intr_enable intr_enable;
    rand usbuart_reg_intr_test intr_test;
    rand usbuart_reg_ctrl ctrl;
    rand usbuart_reg_status status;
    rand usbuart_reg_rdata rdata;
    rand usbuart_reg_wdata wdata;
    rand usbuart_reg_fifo_ctrl fifo_ctrl;
    rand usbuart_reg_fifo_status fifo_status;
    rand usbuart_reg_ovrd ovrd;
    rand usbuart_reg_val val;
    rand usbuart_reg_timeout_ctrl timeout_ctrl;
    rand usbuart_reg_usbstat usbstat;
    rand usbuart_reg_usbparam usbparam;

    `uvm_object_utils(usbuart_reg_block)

    function new(string name = "usbuart_reg_block",
                 int    has_coverage = UVM_NO_COVERAGE);
      super.new(name, has_coverage);
    endfunction : new

    virtual function void build(uvm_reg_addr_t base_addr);
      // create default map
      this.default_map = create_map(.name("default_map"),
                                    .base_addr(base_addr),
                                    .n_bytes(4),
                                    .endian(UVM_LITTLE_ENDIAN));

      // create registers
      intr_state = usbuart_reg_intr_state::type_id::create("intr_state");
      intr_state.configure(.blk_parent(this));
      intr_state.build();
      default_map.add_reg(.rg(intr_state),
                          .offset(32'h0),
                          .rights("RW"));
      intr_enable = usbuart_reg_intr_enable::type_id::create("intr_enable");
      intr_enable.configure(.blk_parent(this));
      intr_enable.build();
      default_map.add_reg(.rg(intr_enable),
                          .offset(32'h4),
                          .rights("RW"));
      intr_test = usbuart_reg_intr_test::type_id::create("intr_test");
      intr_test.configure(.blk_parent(this));
      intr_test.build();
      default_map.add_reg(.rg(intr_test),
                          .offset(32'h8),
                          .rights("WO"));
      ctrl = usbuart_reg_ctrl::type_id::create("ctrl");
      ctrl.configure(.blk_parent(this));
      ctrl.build();
      default_map.add_reg(.rg(ctrl),
                          .offset(32'hc),
                          .rights("RW"));
      status = usbuart_reg_status::type_id::create("status");
      status.configure(.blk_parent(this));
      status.build();
      default_map.add_reg(.rg(status),
                          .offset(32'h10),
                          .rights("RO"));
      rdata = usbuart_reg_rdata::type_id::create("rdata");
      rdata.configure(.blk_parent(this));
      rdata.build();
      default_map.add_reg(.rg(rdata),
                          .offset(32'h14),
                          .rights("RO"));
      wdata = usbuart_reg_wdata::type_id::create("wdata");
      wdata.configure(.blk_parent(this));
      wdata.build();
      default_map.add_reg(.rg(wdata),
                          .offset(32'h18),
                          .rights("WO"));
      fifo_ctrl = usbuart_reg_fifo_ctrl::type_id::create("fifo_ctrl");
      fifo_ctrl.configure(.blk_parent(this));
      fifo_ctrl.build();
      default_map.add_reg(.rg(fifo_ctrl),
                          .offset(32'h1c),
                          .rights("RW"));
      fifo_status = usbuart_reg_fifo_status::type_id::create("fifo_status");
      fifo_status.configure(.blk_parent(this));
      fifo_status.build();
      default_map.add_reg(.rg(fifo_status),
                          .offset(32'h20),
                          .rights("RO"));
      ovrd = usbuart_reg_ovrd::type_id::create("ovrd");
      ovrd.configure(.blk_parent(this));
      ovrd.build();
      default_map.add_reg(.rg(ovrd),
                          .offset(32'h24),
                          .rights("RW"));
      val = usbuart_reg_val::type_id::create("val");
      val.configure(.blk_parent(this));
      val.build();
      default_map.add_reg(.rg(val),
                          .offset(32'h28),
                          .rights("RO"));
      timeout_ctrl = usbuart_reg_timeout_ctrl::type_id::create("timeout_ctrl");
      timeout_ctrl.configure(.blk_parent(this));
      timeout_ctrl.build();
      default_map.add_reg(.rg(timeout_ctrl),
                          .offset(32'h2c),
                          .rights("RW"));
      usbstat = usbuart_reg_usbstat::type_id::create("usbstat");
      usbstat.configure(.blk_parent(this));
      usbstat.build();
      default_map.add_reg(.rg(usbstat),
                          .offset(32'h30),
                          .rights("RO"));
      usbparam = usbuart_reg_usbparam::type_id::create("usbparam");
      usbparam.configure(.blk_parent(this));
      usbparam.build();
      default_map.add_reg(.rg(usbparam),
                          .offset(32'h34),
                          .rights("RO"));
    endfunction : build

  endclass : usbuart_reg_block

endpackage

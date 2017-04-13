//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
//Date        : Thu Mar 02 15:19:20 2017
//Host        : VAIO running 64-bit major release  (build 9200)
//Command     : generate_target bt_design_wrapper.bd
//Design      : bt_design_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bt_design_wrapper
   (bt_rx,
    bt_tx,
    gpio_io_o,
    reset,
    sys_clock,
    usb_rx,
    usb_tx);
  input bt_rx;
  output bt_tx;
  output [5:0]gpio_io_o;
  input reset;
  input sys_clock;
  input usb_rx;
  output usb_tx;

  wire bt_rx;
  wire bt_tx;
  wire [5:0]gpio_io_o;
  wire reset;
  wire sys_clock;
  wire usb_rx;
  wire usb_tx;

  bt_design bt_design_i
       (.bt_rx(bt_rx),
        .bt_tx(bt_tx),
        .gpio_io_o(gpio_io_o),
        .reset(reset),
        .sys_clock(sys_clock),
        .usb_rx(usb_rx),
        .usb_tx(usb_tx));
endmodule

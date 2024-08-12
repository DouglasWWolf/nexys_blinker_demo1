//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Mon Aug 12 12:12:07 2024
//Host        : simtool-5 running 64-bit Ubuntu 20.04.6 LTS
//Command     : generate_target top_level_wrapper.bd
//Design      : top_level_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module top_level_wrapper
   (CLK100MHZ,
    CPU_RESETN,
    LED,
    LED16_B,
    SW);
  input CLK100MHZ;
  input CPU_RESETN;
  output [15:0]LED;
  output LED16_B;
  input [15:0]SW;

  wire CLK100MHZ;
  wire CPU_RESETN;
  wire [15:0]LED;
  wire LED16_B;
  wire [15:0]SW;

  top_level top_level_i
       (.CLK100MHZ(CLK100MHZ),
        .CPU_RESETN(CPU_RESETN),
        .LED(LED),
        .LED16_B(LED16_B),
        .SW(SW));
endmodule

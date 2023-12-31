`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/27 18:20:19
// Design Name: 
// Module Name: if_id
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
`include "defines.v"

module if_id(
    input clk,
    input rst_n,
    input wire hold_flag_i,
    input wire [31:0]   inst_i,
    input wire [31:0]   inst_addr_i,
    output wire [31:0]  inst_addr_o,
    output wire [31:0]  inst_o
    );
    
    dff_set #(32) dff1(clk,rst_n,hold_flag_i,`INST_NOP,inst_i,inst_o);
    
    dff_set #(32) dff2(clk,rst_n,hold_flag_i,32'b0,inst_addr_i,inst_addr_o);
    
endmodule


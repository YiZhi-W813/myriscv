`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/23 12:23:12
// Design Name: 
// Module Name: pc_reg
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


module pc_reg(
    input wire          clk,
    input wire          rst_n,
    input wire [31:0]   jump_addr_i,
    input wire          jump_en,        
    output reg [31:0]   pc_addr_o
    );
    
    always@(posedge clk or negedge rst_n)
    begin
        if(!rst_n)
            begin
                pc_addr_o <= 32'd0;
            end
        else if(jump_en)
                pc_addr_o <= jump_addr_i;
            else
                pc_addr_o <= pc_addr_o + 'd4;
    end
endmodule

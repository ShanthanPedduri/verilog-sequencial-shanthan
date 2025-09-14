`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/08/2025 10:30:10 PM
// Design Name: 
// Module Name: dff_async_rst
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


module dff_async_rst(
input d,clk,rst,
output reg q
    );
    always @(posedge clk or posedge rst)
    if(rst) q<=1'b0;
    else q<=d;
endmodule

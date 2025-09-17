`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2025 09:46:58 PM
// Design Name: 
// Module Name: shiftreg5
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


module shiftreg5(
    input din,clk,rst,
    output reg [4:0] q,
    output dout
    );
    always @(posedge clk)
    begin 
    if(rst) q<=5'b11001;
    else
        begin 
            q[4]<=din;
            q[3]<=q[4];
            q[2]<=q[3];
            q[1]<=q[2];
            q[0]<=q[1];
        end
    end
    assign dout=q[0];
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2026 10:02:26 AM
// Design Name: 
// Module Name: case1_alu
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
module case1_alu(
// Case 1 : mini_alu
// A small 4-bit ALU: add, subtract, AND, OR selected by op.
    input      [3:0] a,
    input      [3:0] b,
    input      [1:0] op,
    output reg [4:0] y
);
    always @(a or b or op) begin                  // corrected always@ ( a or op )
        case (op)
            2'b00:   y = {1'b0, a} + {1'b0, b};
            2'b01:   y = {1'b0, a} - {1'b0, b};
            2'b10:   y = {1'b0, a & b};
            default: y = {1'b0, a | b};
        endcase
    end
endmodule
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2026 03:24:22 PM
// Design Name: 
// Module Name: case4_arbiter
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


module case4_arbiter(
// Case 4 : prio_arb
// 4-request fixed-priority arbiter. Request 0 has the highest priority.
    input      [3:0] req,
    output reg [3:0] grant
);
    always @(*) begin
        casez (req) // synopsys parallel_case
            4'b???1: grant = 4'b0001;   //?:0,1,x,z
            4'b??10: grant = 4'b0010;
            4'b?100: grant = 4'b0100;
            4'b1000: grant = 4'b1000;
            default: grant = 4'b0000;
        endcase
    end
endmodule
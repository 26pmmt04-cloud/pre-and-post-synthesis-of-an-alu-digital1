`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2026 03:18:27 PM
// Design Name: 
// Module Name: case3_sync
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
module case3_sync(
// Case 3 : sync_pipe
// Two-flop synchronizer for a signal coming from another clock domain.
    input      clk,
    input      d,
    output reg q
);
    reg meta;

    always @(posedge clk) begin
        meta <= d;
        q <= meta;
     end
endmodule

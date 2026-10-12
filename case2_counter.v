`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2026 10:25:14 AM
// Design Name: 
// Module Name: case2_counter
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
module case2_counter(
// Case 2 : bcd_counter
// Decade counter with a flag that remembers whether it has ever rolled over.
    input            clk,
    input            rst_n,
    input            en,
    output reg [3:0] count,
    output reg       wrapped
);
        always @(posedge clk) begin 
        wrapped <= 1'b0;
        if (!rst_n)
            count <= 4'd0;
            //wrapped <= 1'b0;
        else if (en) begin
            if (count == 4'd9) begin
                count   <= 4'd0;
                wrapped <= 1'b1;
            end else
                count <= count + 4'd1;
                //wrapped <= 1'b0;
        end
    end
endmodule
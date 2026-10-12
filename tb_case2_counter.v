`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2026 10:26:04 AM
// Design Name: 
// Module Name: tb_case2_counter
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
module tb_case2_counter();
    reg clk, rst_n, en;
    wire [3:0] count;
    wire       wrapped;
    case2_counter dut (.clk(clk), .rst_n(rst_n), .en(en), .count(count), .wrapped(wrapped));

    initial clk = 0;
    always #5 clk = ~clk;

    integer i;
    initial begin  #80
        rst_n = 0; en = 0;
        repeat (3) @(posedge clk);
        rst_n = 1; en = 1;
       for (i = 0; i < 26; i = i + 1) begin
           @(posedge clk);
          $display("cycle=%0d  count=%b  wrapped=%b", i, count, wrapped);
       end
        $finish;
    end
endmodule
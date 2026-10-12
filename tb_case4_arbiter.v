`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2026 03:25:04 PM
// Design Name: 
// Module Name: tb_case4_arbiter
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


module tb_case4_arbiter();
    reg  [3:0] req;
    wire [3:0] grant;
    case4_arbiter dut (.req(req), .grant(grant));

    integer i;
    initial begin
        for (i = 0; i < 16; i = i + 1) begin
            req = i[3:0];
            #10;
            $display("req=%b  grant=%b", req, grant);
        end
        $finish;
    end
endmodule
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2026 10:07:54 PM
// Design Name: 
// Module Name: ifIdLatch
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


module ifIdLatch(
    input clk,
    input rst,
    input [31:0] pc_in,
    input [31:0] instr_in,
    output [31:0] pc_out,
    output [31:0] instr_out
    );
    reg [31:0] pcout;
    reg [31:0] instrout;
    // The latch passes the data through on the clock cycle
    always @(posedge clk) begin
        if(rst) begin
        pcout <= 32'b0;
        instrout <= 32'b0;
    end else begin
        pcout<=pc_in;
        instrout <= instr_in;
    end
    assign pc_out=pcout;
    assign instr_out = instrout;
endmodule

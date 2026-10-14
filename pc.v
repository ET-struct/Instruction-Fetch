`timescale 1ns / 1ps

module pc(
    input clk,
    input [31:0] pc,
    output [31:0] pc_next
    );
    reg [31:0] tmp = 0;
    always@(posedge clk)
    begin
    tmp <= pc;
    end
    assign pc_next = tmp;
endmodule

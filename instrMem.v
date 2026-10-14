`timescale 1ns / 1ps
module instrMem(
    input clk,
    input rst,
    input [31:0] addr,
    output [31:0] data
    );
  reg [31:0] mem [0:255]; //check tha ReadME in the git

    initial begin
        mem[0] = 32'hA00000AA;
        mem[1] = 32'h10000011;
        mem[2] = 32'h20000022;
        mem[3] = 32'h30000033;
        mem[4] = 32'h40000044;
        mem[5] = 32'h50000055;
        mem[6] = 32'h60000066;
        mem[7] = 32'h70000077;
        mem[8] = 32'h80000088;
        mem[9] = 32'h90000099;
    end

    assign data = mem[addr];
endmodule

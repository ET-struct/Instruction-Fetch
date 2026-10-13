`timescale 1ns / 1ps

module mux(
    input [31:0] InMem, ExMem,
    input PCSrc,
    output [31:0] N
    );
    assign N = PCSrc? ExMem : InMem;
    
endmodule

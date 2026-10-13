`timescale 1ns / 1ps
module incrementer(
    input [31:0] address,
    output [31:0] address_next
    );
    assign address_next = address + 32'd1;
endmodule

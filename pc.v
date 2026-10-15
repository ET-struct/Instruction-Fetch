`timescale 1ns / 1ps

module pc(
    input clk,
    input [31:0] pc,
    output [31:0] pc_next
    );
    reg [31:0] tmp = 0;
    always@(posedge clk)begin
         if(rst)begin
        tmp<=32'b0;
    end else begin
    tmp <= pc;
    end
    end
    assign pc_next = tmp;
endmodule

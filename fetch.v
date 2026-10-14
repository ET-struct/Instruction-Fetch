`timescale 1ns / 1ps
module fetch(
input wire clk,
rst,
ex_mem_pc_src,
input wire [31:0] ex_mem_npc,
output wire [31:0] if_id_instr,
if_id_npc
);


wire [31:0] pc_out,
pc_mux,
next_pc,
instr_data;

mux m0(
  .ExMem(ex_mem_npc),
  .InMem(next_pc),
  .PCSrc(ex_mem_pc_src),
  .N(pc_mux)
);

pc pc0(
  .clk(clk),
  .pc(pc_mux),
  .pc_next(pc_out)
);

incrementer in0(
  .address(pc_out),
  .address_next(next_pc)
);

instrMem inMem0(
  .clk(clk),
  .rst(rst),
  .addr(pc_out),
  .data(instr_data)
);

ifIdLatch ifIdLatch0(
  .clk(clk),
  .rst(rst),
  .pc_in(next_pc),
  .instr_in(instr_data),
  .pc_out(if_id_npc),
  .instr_out(if_id_instr)
);

endmodule

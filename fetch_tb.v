`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2026 04:23:56 PM
// Design Name: 
// Module Name: fetch_tb
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


module fetch_tb();

    reg clk_tb;
    
    reg rst_tb;

    reg EX_MEM_PCSrc_tb;

    reg [31:0] EX_MEM_NPC_tb;

    wire [31:0] IF_ID_instr_tb;

    wire [31:0] IF_ID_npc_tb;

     fetch DUT(

        .clk(clk_tb),
        
        .rst(rst_tb),
        
        .if_id_instr(IF_ID_instr_tb),

        .if_id_npc(IF_ID_npc_tb),

        .ex_mem_pc_src(EX_MEM_PCSrc_tb),

        .ex_mem_npc(EX_MEM_NPC_tb)

     );

    initial clk_tb <= 0;

    always #1 clk_tb <= ~clk_tb;

    initial begin

       EX_MEM_PCSrc_tb <= 0;

       EX_MEM_NPC_tb <= 32'hFFFFFFFF;
       
       EX_MEM_NPC_tb <= 32'h00000000;
       
       rst_tb=1;

       #20;
       
       rst_tb=0;

       EX_MEM_PCSrc_tb <= 1;

      #50;

      EX_MEM_PCSrc_tb <= 0;

      #20;

      $finish;

    end

endmodule

// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module clz (
        ap_clk,
        ap_rst,
        x,
        ap_return,
        ap_ce
);


input   ap_clk;
input   ap_rst;
input  [30:0] x;
output  [4:0] ap_return;
input   ap_ce;

wire   [0:0] icmp_fu_84_p2;
reg   [0:0] icmp_reg_270;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] p_x_fu_102_p3;
reg   [31:0] p_x_reg_276;
wire   [0:0] icmp4_fu_120_p2;
reg   [0:0] icmp4_reg_282;
wire    ap_block_pp0_stage0;
wire   [14:0] tmp_fu_74_p4;
wire   [15:0] tmp_149_fu_90_p1;
wire   [31:0] x_assign_fu_94_p3;
wire   [31:0] x_cast1_fu_70_p1;
wire   [7:0] tmp_150_fu_110_p4;
wire   [4:0] n_fu_133_p3;
wire   [4:0] p_s_fu_126_p3;
wire   [31:0] tmp_151_fu_140_p2;
wire   [31:0] p_1_fu_152_p3;
wire   [3:0] tmp_152_fu_158_p4;
wire   [4:0] n_1_fu_145_p3;
wire   [0:0] icmp7_fu_168_p2;
wire   [4:0] n_5_fu_174_p2;
wire   [31:0] tmp_153_fu_180_p2;
wire   [31:0] p_2_fu_194_p3;
wire   [1:0] tmp_154_fu_202_p4;
wire   [4:0] n_2_fu_186_p3;
wire   [0:0] icmp1_fu_212_p2;
wire   [4:0] n_6_fu_218_p2;
wire   [0:0] tmp_155_fu_232_p3;
wire   [0:0] tmp_156_fu_240_p3;
wire   [0:0] tmp_157_fu_248_p3;
wire   [4:0] n_3_fu_224_p3;
wire   [4:0] n_7_fu_256_p3;

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce))) begin
        icmp4_reg_282 <= icmp4_fu_120_p2;
        icmp_reg_270 <= icmp_fu_84_p2;
        p_x_reg_276 <= p_x_fu_102_p3;
    end
end

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_return = (n_7_fu_256_p3 | n_3_fu_224_p3);

assign icmp1_fu_212_p2 = ((tmp_154_fu_202_p4 == 2'd0) ? 1'b1 : 1'b0);

assign icmp4_fu_120_p2 = ((tmp_150_fu_110_p4 == 8'd0) ? 1'b1 : 1'b0);

assign icmp7_fu_168_p2 = ((tmp_152_fu_158_p4 == 4'd0) ? 1'b1 : 1'b0);

assign icmp_fu_84_p2 = ((tmp_fu_74_p4 == 15'd0) ? 1'b1 : 1'b0);

assign n_1_fu_145_p3 = ((icmp4_reg_282[0:0] === 1'b1) ? n_fu_133_p3 : p_s_fu_126_p3);

assign n_2_fu_186_p3 = ((icmp7_fu_168_p2[0:0] === 1'b1) ? n_5_fu_174_p2 : n_1_fu_145_p3);

assign n_3_fu_224_p3 = ((icmp1_fu_212_p2[0:0] === 1'b1) ? n_6_fu_218_p2 : n_2_fu_186_p3);

assign n_5_fu_174_p2 = (n_1_fu_145_p3 | 5'd4);

assign n_6_fu_218_p2 = (n_2_fu_186_p3 | 5'd2);

assign n_7_fu_256_p3 = ((tmp_157_fu_248_p3[0:0] === 1'b1) ? 5'd0 : 5'd1);

assign n_fu_133_p3 = ((icmp_reg_270[0:0] === 1'b1) ? 5'd24 : 5'd8);

assign p_1_fu_152_p3 = ((icmp4_reg_282[0:0] === 1'b1) ? tmp_151_fu_140_p2 : p_x_reg_276);

assign p_2_fu_194_p3 = ((icmp7_fu_168_p2[0:0] === 1'b1) ? tmp_153_fu_180_p2 : p_1_fu_152_p3);

assign p_s_fu_126_p3 = ((icmp_reg_270[0:0] === 1'b1) ? 5'd16 : 5'd0);

assign p_x_fu_102_p3 = ((icmp_fu_84_p2[0:0] === 1'b1) ? x_assign_fu_94_p3 : x_cast1_fu_70_p1);

assign tmp_149_fu_90_p1 = x[15:0];

assign tmp_150_fu_110_p4 = {{p_x_fu_102_p3[31:24]}};

assign tmp_151_fu_140_p2 = p_x_reg_276 << 32'd8;

assign tmp_152_fu_158_p4 = {{p_1_fu_152_p3[31:28]}};

assign tmp_153_fu_180_p2 = p_1_fu_152_p3 << 32'd4;

assign tmp_154_fu_202_p4 = {{p_2_fu_194_p3[31:30]}};

assign tmp_155_fu_232_p3 = p_2_fu_194_p3[32'd29];

assign tmp_156_fu_240_p3 = p_2_fu_194_p3[32'd31];

assign tmp_157_fu_248_p3 = ((icmp1_fu_212_p2[0:0] === 1'b1) ? tmp_155_fu_232_p3 : tmp_156_fu_240_p3);

assign tmp_fu_74_p4 = {{x[30:16]}};

assign x_assign_fu_94_p3 = {{tmp_149_fu_90_p1}, {16'd0}};

assign x_cast1_fu_70_p1 = x;

endmodule //clz

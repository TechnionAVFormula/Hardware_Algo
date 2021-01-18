module SR_NAND_latch(
           input wire S, R, C,
           output wire Q, Qbar);

assign #2 Q_i = Q;
assign #2 Qbar_i = Qbar;
assign #2 Q = ~ (S & Qbar_i);
assign #2 Qbar = ~ (R & Q_i);
endmodule 
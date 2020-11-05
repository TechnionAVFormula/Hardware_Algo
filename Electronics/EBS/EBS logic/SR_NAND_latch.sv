module SR_NAND_latch(
    output logic Q,
    output logic Qn,
    input logic Sbar,
    input logic Rbar
);

assign Q = ~(Sbar & Qn);
assign Qn = ~(Rbar & Q);

endmodule
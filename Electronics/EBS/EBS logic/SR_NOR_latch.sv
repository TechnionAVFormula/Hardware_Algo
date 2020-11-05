module SR_NOR_latch(
    output logic Q,
    output logic Qn,
    input logic S,
    input logic R
);

assign Q = ~(R | Qn);
assign Qn = ~(S | Q);

endmodule
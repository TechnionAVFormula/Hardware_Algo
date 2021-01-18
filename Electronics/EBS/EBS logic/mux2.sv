module mux2(
    output logic Z,
    input logic d0,
    input logic d1,
    input logic sel
);

	assign Z = sel? d1 : d0;

endmodule
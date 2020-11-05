module mux2(
    output logic Z,
    input logic d0,
    input logic d1,
    input logic sel
);

always_comb begin
    if (sel == 1'b1) begin
    assign Z = d1;
    end
    else begin
    assign Z = d0;
    end
end

endmodule
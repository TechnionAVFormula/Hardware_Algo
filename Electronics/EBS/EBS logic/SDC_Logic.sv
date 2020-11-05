module SDC(
    output logic SDC_to_relais,
    output logic SDC_is_ready,
    input logic AS_close_SDC,
    input logic AS_driving_mode,
    input logic TS_Activation_button_cockpit,
    input logic TS_Activation_button_external,
    input logic PowerOnReset,
    input logic Watchdog_Out,
    input logic Shutdown_Circuit
);

logic [7:0]w;

mux2 mux_inst1 (.Z(w[0]), .d0(TS_Activation_button_cockpit), .d1(TS_Activation_button_external), .sel(AS_driving_mode));

nand (w[1],w[0],AS_close_SDC);

SR_NAND_latch K1 (.Q(w[2]), .Qn(w[3]), .Sbar(w[1]), .Rbar(PowerOnReset));

nand (w[4], Watchdog_Out, Shutdown_Circuit);

or (w[5], w[4], w[3]);

SR_NOR_latch K2 (.Q(w[6]), .Qn(), .S(PowerOnReset), .R(w[5]));

not (w[7], w[6]);
and (SDC_to_relais, w[2], w[6]);
and (SDC_is_ready, w[6], w[7]);

endmodule
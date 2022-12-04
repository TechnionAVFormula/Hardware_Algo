module newSDC(
    output logic SDC_to_relais,
    output logic SDC_is_Ready,
    input logic AS_close_SDC,
    input logic AS_driving_mode,
    input logic TS_Activation_Button_cockpit,
    input logic TS_Activation_Button_external,
    input logic Watchdog,
    input logic Shutdown_circuit,
    input logic Power_on_Reset
);

logic nandout = 0;
logic nandwatch = 0;
logic muxout = 0;
logic K1Out1 = 0;
logic K2out = 0;
logic K1Qbar = 1;
logic K2Rin = 0;
SR_NAND_latch K1 (.S(~nandout), .R(Power_on_Reset)  , .C(0) , .Q(K1Out1) , .Qbar(K1Qbar));
SR_NAND_latch K2 (.S(Power_on_Reset), .R(~K2Rin)   , .C(0) , .Q(K2out));
mux2 mux (.Z(muxout), .d0(TS_Activation_Button_cockpit), .d1(TS_Activation_Button_external), .sel(AS_driving_mode));


always_comb
begin
	nandout = ~(muxout & AS_close_SDC);
	nandwatch = (Shutdown_circuit & Watchdog);
	K2Rin = (nandwatch | ~K1Qbar);
	SDC_is_Ready = (nandwatch & K2out);
	SDC_to_relais = (K1Out1 & K2out);
end



endmodule

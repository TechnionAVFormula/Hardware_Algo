module newSDC(
    output logic To_SDC_relais,
    output logic SDC_is_Ready,
    input logic AS_close_SDC,
    input logic AS_driving_mode,
    input logic TS_Activation_Button_cockpit,
    input logic TS_Activation_Button_external,
    input logic Watchdog,
    input logic Shutdown_circuit,
    input logic Power_on_Reset
);


logic Activation;
logic w[3:0];
logic k1_S;
logic k1_R;
logic k1_Q;

logic k2_S;
logic k2_R;
logic k2_Q;

always_comb
begin
    Activation = (AS_driving_mode == 1'b1) ? TS_Activation_Button_external :
                TS_Activation_Button_cockpit;
    w[0] = AS_close_SDC & Activation;
    w[1] = Watchdog & Shutdown_circuit;
    w[2] = (k1_Q | w[1]);
    k1_R = Power_on_Reset;
    k2_S = Power_on_Reset;
    k1_S = w[0];
    k2_S = ~w[2];
end


always_ff @(posedge k1_R or posedge k1_S)
begin
    if(k1_R) k1_Q <= 1'b0;
    else if(k1_S) k1_Q <= 1'b1;
end

always_ff @(posedge k2_R or posedge k2_S)
begin
    if(k2_R) k2_Q <= 1'b0;
    else if(k2_S) k2_Q <= 1'b1;
end

always_comb
begin
    To_SDC_relais = k1_Q & k2_Q;
    SDC_is_Ready = k2_Q & w[1];
end


endmodule

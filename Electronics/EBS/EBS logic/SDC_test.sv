module SDC_test;

logic driving_mode;
logic manual_ignition;
logic Auto_ignition;
logic SDC_close;
logic PowerOnreset;
logic WatchdogOutput;
logic Shutdown;
logic SDCrelais;
logic SDCready;

newSDC dut (.To_SDC_relais(SDCrelais), .SDC_is_Ready(SDCready),
 .AS_close_SDC(SDC_close), .AS_driving_mode(driving_mode),
 .TS_Activation_Button_cockpit(manual_ignition), .TS_Activation_Button_external(Auto_ignition),
 .Power_on_Reset(PowerOnreset), .Watchdog(WatchdogOutput), .Shutdown_circuit(SDCrelais));

 initial begin
     //resetting the system

     PowerOnreset=1'b1;

     #10

     WatchdogOutput= 1'b1;
     PowerOnreset = 1'b0;
     #10
     SDC_close = 1'b1;
     driving_mode = 1'b1;
     Auto_ignition = 1'b1;
     #1
     Auto_ignition = 1'b0;
     #9
     WatchdogOutput = 1'b0;

     

 end
endmodule
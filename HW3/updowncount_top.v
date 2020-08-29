module tb_updowncount;

reg [7:0] R;
reg Clock,Resetn,L,E,up_down;
wire [7:0] Q;

updowncount udc (R, Resetn, Clock, E, up_down, L, Q);

initial begin
Clock = 0;
Resetn = 1;
R = 9;
#10 Resetn = 0;
#10 Resetn = 1;

#10 E=1; up_down=1;
#50 up_down=0;
#30 L=1;
#30 L=0;

end


always begin
#5 Clock = ~Clock;
end


endmodule

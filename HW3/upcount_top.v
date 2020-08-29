module tb_upcount;

reg [3:0] R;
reg Clock,Resetn,L,E;
wire [3:0] Q;

upcount uc (R, Resetn, Clock, E, L, Q);

initial begin
Clock = 0;
Resetn = 1;
R = 3;
#10 Resetn = 0;
#10 Resetn = 1;

#10 E=1;
#50
#10 L=1;
#30 L=0;

end


always begin
#5 Clock = ~Clock;
end


endmodule

module tb_downcount;

reg [7:0] R;
reg Clock,Resetn,L,E;
wire [7:0] Q;

downcount dc (R, Resetn, Clock, E, L, Q);

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

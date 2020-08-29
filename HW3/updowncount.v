module updowncount (R, Resetn, Clock, E, up_down, L, Q);
parameter n = 8;
input [n-1:0] R;
input Resetn, Clock, L, E, up_down;
output reg [n-1:0] Q;

always @(negedge Resetn or posedge Clock)
if(!Resetn)
Q <= 0;

else if(L)
Q <= R;

else
if(E) begin
if(up_down) Q <= Q + 1;
else Q <= Q - 1;
end


endmodule
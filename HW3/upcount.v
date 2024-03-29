module upcount (R, Resetn, Clock, E, L, Q);
input [3:0] R;
input Resetn, Clock, E, L;
output reg [3:0] Q;

always @(negedge Resetn or posedge Clock)
if(!Resetn) begin
Q<=0;
end

else if(L) begin
Q<=R;
end

else begin
if(E) begin
Q<=Q + 1;
end
end

endmodule
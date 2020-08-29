module stimulus;

reg [7:0]IN;
reg [2:0]S;

wire OUT_AS, OUT_IF, OUT_CA;

mux8to1_assign asmux (IN, S, OUT_AS);
mux8to1_ifelse ifmux (IN, S, OUT_IF);
mux8to1_case camux (IN, S, OUT_CA);

initial
begin
 IN[0] = 1; IN[1] = 0; IN[2] = 1; IN[3] = 0;
 IN[4] = 1; IN[5] = 0; IN[6] = 1; IN[7] = 0;

 S[2] = 0; S[1] = 0; S[0] = 0; #1
 S[2] = 0; S[1] = 0; S[0] = 1; #1
 S[2] = 0; S[1] = 1; S[0] = 0; #1
 S[2] = 0; S[1] = 1; S[0] = 1; #1

 S[2] = 1; S[1] = 0; S[0] = 0; #1
 S[2] = 1; S[1] = 0; S[0] = 1; #1
 S[2] = 1; S[1] = 1; S[0] = 0; #1
 S[2] = 1; S[1] = 1; S[0] = 1; #1;
end

endmodule

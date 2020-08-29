module mux8to1_assign (W, S, f);

input [7:0] W;
input [2:0] S;
output f;

assign f = (S == 0) ? W[0] :
              (S == 1) ? W[1] :
              (S == 2) ? W[2] :
              (S == 3) ? W[3] :
              (S == 4) ? W[4] :
              (S == 5) ? W[5] :
              (S == 6) ? W[6] : W[7];

endmodule
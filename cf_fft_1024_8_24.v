module cf_fft_1024_8_24 (clock_c, i1, i2, i3, o1, o2);
input  clock_c;
input  i1;
input  i2;
input  i3;
output [8:0] o1;
output o2;
wire   [8:0] n1;
wire   [8:0] n2;
reg    [8:0] n3;
wire   [8:0] n4;
wire   n5;
wire   [1:0] n6;
reg    n7;
wire   n8;
wire   n9;
wire   n10;
wire   s11_1;
assign n1 = 9'b000000001;
assign n2 = n3 + n1;
initial n3 = 9'b000000000;
always @ (posedge clock_c)
  if (n9 == 1'b1)
    n3 <= 9'b000000000;
  else if (n10 == 1'b1)
    n3 <= n2;
assign n4 = 9'b111111111;
assign n5 = n3 == n4;
assign n6 = {i1, n5};
initial n7 = 1'b0;
always @ (posedge clock_c)
  if (i3 == 1'b1)
    n7 <= 1'b0;
  else if (i2 == 1'b1)
    n7 <= s11_1;
assign n8 = n7 & n5;
assign n9 = i1 | i3;
assign n10 = s11_1 & i2;
cf_fft_1024_8_25 s11 (clock_c, n6, i2, i3, s11_1);
assign o2 = n8;
assign o1 = n3;
endmodule

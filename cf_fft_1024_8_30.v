module cf_fft_1024_8_30 (clock_c, i1, i2, i3, o1);
input  clock_c;
input  i1;
input  i2;
input  i3;
output o1;
wire   n1;
wire   n2;
wire   n3;
wire   n4;
wire   [1:0] n5;
reg    n6;
wire   s7_1;
wire   s8_1;
assign n1 = 1'b0;
assign n2 = 1'b1;
assign n3 = 1'b1;
assign n4 = 1'b0;
assign n5 = {i1, n6};
initial n6 = 1'b0;
always @ (posedge clock_c)
  if (i3 == 1'b1)
    n6 <= 1'b0;
  else if (i2 == 1'b1)
    n6 <= s7_1;
cf_fft_1024_8_32 s7 (n1, n2, n3, n4, n5, s7_1);
cf_fft_1024_8_31 s8 (n5, s8_1);
assign o1 = s8_1;
endmodule

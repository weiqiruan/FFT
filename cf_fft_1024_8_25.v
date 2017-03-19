module cf_fft_1024_8_25 (clock_c, i1, i2, i3, o1);
input  clock_c;
input  [1:0] i1;
input  i2;
input  i3;
output o1;
wire   n1;
wire   n2;
wire   n3;
wire   n4;
wire   n5;
wire   n6;
wire   n7;
wire   n8;
wire   n9;
wire   n10;
wire   n11;
wire   n12;
wire   [2:0] n13;
reg    n14;
wire   s15_1;
wire   s16_1;
assign n1 = 1'b0;
assign n2 = 1'b1;
assign n3 = 1'b1;
assign n4 = 1'b1;
assign n5 = 1'b0;
assign n6 = 1'b0;
assign n7 = 1'b0;
assign n8 = 1'b1;
assign n9 = 1'b1;
assign n10 = 1'b1;
assign n11 = 1'b0;
assign n12 = 1'b0;
assign n13 = {i1, n14};
initial n14 = 1'b0;
always @ (posedge clock_c)
  if (i3 == 1'b1)
    n14 <= 1'b0;
  else if (i2 == 1'b1)
    n14 <= s15_1;
cf_fft_1024_8_26 s15 (n1, n2, n3, n4, n5, n6, n13, s15_1);
cf_fft_1024_8_26 s16 (n7, n8, n9, n10, n11, n12, n13, s16_1);
assign o1 = s16_1;
endmodule

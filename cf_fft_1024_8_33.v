module cf_fft_1024_8_33 (clock_c, i1, i2, i3, o1);
input  clock_c;
input  [1:0] i1;
input  i2;
input  i3;
output o1;
wire   [2:0] n1;
wire   [2:0] n2;
wire   n3;
wire   n4;
reg    n5;
wire   s6_1;
wire   s7_1;
wire   s7_2;
wire   s7_3;
wire   s7_4;
wire   s7_5;
wire   s7_6;
wire   s7_7;
wire   s7_8;
wire   s8_1;
assign n1 = 3'b000;
assign n2 = {i1, n5};
assign n3 = n2 == n1;
assign n4 = n3 ? s7_8 : s6_1;
initial n5 = 1'b0;
always @ (posedge clock_c)
  if (i3 == 1'b1)
    n5 <= 1'b0;
  else if (i2 == 1'b1)
    n5 <= n4;
cf_fft_1024_8_37 s6 (s7_1, s7_2, s7_3, s7_4, s7_5, s7_6, s7_7, n2, s6_1);
cf_fft_1024_8_36 s7 (s7_1, s7_2, s7_3, s7_4, s7_5, s7_6, s7_7, s7_8);
cf_fft_1024_8_34 s8 (n2, s8_1);
assign o1 = s8_1;
endmodule

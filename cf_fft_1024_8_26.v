module cf_fft_1024_8_26 (i1, i2, i3, i4, i5, i6, i7, o1);
input  i1;
input  i2;
input  i3;
input  i4;
input  i5;
input  i6;
input  [2:0] i7;
output o1;
wire   [2:0] n1;
wire   [2:0] n2;
wire   [2:0] n3;
wire   n4;
wire   n5;
wire   n6;
wire   n7;
wire   n8;
wire   n9;
wire   s10_1;
assign n1 = 3'b000;
assign n2 = 3'b010;
assign n3 = 3'b100;
assign n4 = i7 == n1;
assign n5 = i7 == n2;
assign n6 = i7 == n3;
assign n7 = n6 ? i4 : s10_1;
assign n8 = n5 ? i5 : n7;
assign n9 = n4 ? i6 : n8;
cf_fft_1024_8_27 s10 (i1, i2, i3, i7, s10_1);
assign o1 = n9;
endmodule

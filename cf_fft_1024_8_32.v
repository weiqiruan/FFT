module cf_fft_1024_8_32 (i1, i2, i3, i4, i5, o1);
input  i1;
input  i2;
input  i3;
input  i4;
input  [1:0] i5;
output o1;
wire   [1:0] n1;
wire   [1:0] n2;
wire   [1:0] n3;
wire   n4;
wire   n5;
wire   n6;
wire   n7;
wire   n8;
wire   n9;
assign n1 = 2'b00;
assign n2 = 2'b10;
assign n3 = 2'b01;
assign n4 = i5 == n1;
assign n5 = i5 == n2;
assign n6 = i5 == n3;
assign n7 = n6 ? i2 : i1;
assign n8 = n5 ? i3 : n7;
assign n9 = n4 ? i4 : n8;
assign o1 = n9;
endmodule

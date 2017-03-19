module cf_fft_1024_8_27 (i1, i2, i3, i4, o1);
input  i1;
input  i2;
input  i3;
input  [2:0] i4;
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
wire   n10;
assign n1 = 3'b110;
assign n2 = 3'b001;
assign n3 = 3'b011;
assign n4 = i4 == n1;
assign n5 = i4 == n2;
assign n6 = i4 == n3;
assign n7 = n6 ? i1 : n10;
assign n8 = n5 ? i2 : n7;
assign n9 = n4 ? i3 : n8;
assign n10 = 1'b1;
assign o1 = n9;
endmodule

module cf_fft_1024_8_31 (i1, o1);
input  [1:0] i1;
output o1;
wire   n1;
wire   n2;
wire   [1:0] n3;
wire   [1:0] n4;
wire   n5;
wire   n6;
wire   n7;
wire   n8;
wire   n9;
assign n1 = 1'b0;
assign n2 = 1'b0;
assign n3 = 2'b00;
assign n4 = 2'b10;
assign n5 = i1 == n3;
assign n6 = i1 == n4;
assign n7 = n6 ? n1 : n9;
assign n8 = n5 ? n2 : n7;
assign n9 = 1'b1;
assign o1 = n8;
endmodule

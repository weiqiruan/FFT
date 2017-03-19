module cf_fft_1024_8_2 (clock_c, i1, i2, i3, i4, i5, o1, o2, o3);
input  clock_c;
input  i1;
input  [15:0] i2;
input  [15:0] i3;
input  i4;
input  i5;
output o1;
output [15:0] o2;
output [15:0] o3;
wire   [31:0] n1;
wire   n2;
wire   n3;
wire   [7:0] n4;
wire   [7:0] n5;
wire   [1:0] n6;
wire   [15:0] n7;
wire   [15:0] n8;
wire   [15:0] n9;
wire   [15:0] n10;
wire   [15:0] n11;
wire   [15:0] n12;
wire   s13_1;
wire   [31:0] s14_1;
wire   s15_1;
wire   s15_2;
wire   [31:0] s15_3;
wire   [8:0] s16_1;
wire   s16_2;
assign n1 = {i2, i3};
assign n2 = s16_1[8];
assign n3 = ~n2;
assign n4 = {s16_1[7],
  s16_1[6],
  s16_1[5],
  s16_1[4],
  s16_1[3],
  s16_1[2],
  s16_1[1],
  s16_1[0]};
assign n5 = {n4[0],
  n4[1],
  n4[2],
  n4[3],
  n4[4],
  n4[5],
  n4[6],
  n4[7]};
assign n6 = {s15_2, s15_1};
assign n7 = {s15_3[31],
  s15_3[30],
  s15_3[29],
  s15_3[28],
  s15_3[27],
  s15_3[26],
  s15_3[25],
  s15_3[24],
  s15_3[23],
  s15_3[22],
  s15_3[21],
  s15_3[20],
  s15_3[19],
  s15_3[18],
  s15_3[17],
  s15_3[16]};
assign n8 = {s15_3[15],
  s15_3[14],
  s15_3[13],
  s15_3[12],
  s15_3[11],
  s15_3[10],
  s15_3[9],
  s15_3[8],
  s15_3[7],
  s15_3[6],
  s15_3[5],
  s15_3[4],
  s15_3[3],
  s15_3[2],
  s15_3[1],
  s15_3[0]};
assign n9 = {s14_1[31],
  s14_1[30],
  s14_1[29],
  s14_1[28],
  s14_1[27],
  s14_1[26],
  s14_1[25],
  s14_1[24],
  s14_1[23],
  s14_1[22],
  s14_1[21],
  s14_1[20],
  s14_1[19],
  s14_1[18],
  s14_1[17],
  s14_1[16]};
assign n10 = {s14_1[15],
  s14_1[14],
  s14_1[13],
  s14_1[12],
  s14_1[11],
  s14_1[10],
  s14_1[9],
  s14_1[8],
  s14_1[7],
  s14_1[6],
  s14_1[5],
  s14_1[4],
  s14_1[3],
  s14_1[2],
  s14_1[1],
  s14_1[0]};
assign n11 = s13_1 ? n8 : n7;
assign n12 = s13_1 ? n10 : n9;
cf_fft_1024_8_33 s13 (clock_c, n6, i4, i5, s13_1);
cf_fft_1024_8_4 s14 (clock_c, s16_2, n1, n2, n5, i4, i5, s14_1);
cf_fft_1024_8_3 s15 (clock_c, s16_2, n1, n3, n5, i4, i5, s15_1, s15_2, s15_3);
cf_fft_1024_8_24 s16 (clock_c, i1, i4, i5, s16_1, s16_2);
assign o3 = n12;
assign o2 = n11;
assign o1 = s15_1;
endmodule

module cf_fft_1024_8_11 (clock_c, i1, i2, i3, i4, i5, o1, o2, o3);
input  clock_c;
input  i1;
input  [15:0] i2;
input  [15:0] i3;
input  i4;
input  i5;
output o1;
output [15:0] o2;
output [15:0] o3;
wire   [3:0] n1;
wire   [31:0] n2;
reg    n3;
reg    n4;
reg    n5;
reg    n6;
wire   [7:0] n7;
reg    [7:0] n8;
reg    [7:0] n9;
reg    [7:0] n10;
reg    [7:0] n11;
wire   n12;
reg    n13;
reg    n14;
reg    n15;
reg    n16;
wire   n17;
wire   [1:0] n18;
wire   [15:0] n19;
wire   [15:0] n20;
wire   [15:0] n21;
wire   [15:0] n22;
wire   [15:0] n23;
wire   [15:0] n24;
wire   s25_1;
wire   [15:0] s26_1;
wire   [15:0] s26_2;
wire   [8:0] s27_1;
wire   s27_2;
wire   s28_1;
wire   s28_2;
wire   [31:0] s28_3;
wire   [31:0] s29_1;
assign n1 = {s27_1[8],
  s27_1[7],
  s27_1[6],
  s27_1[5]};
assign n2 = {s26_1, s26_2};
initial n3 = 1'b0;
always @ (posedge clock_c)
  if (i5 == 1'b1)
    n3 <= 1'b0;
  else if (i4 == 1'b1)
    n3 <= s27_2;
initial n4 = 1'b0;
always @ (posedge clock_c)
  if (i5 == 1'b1)
    n4 <= 1'b0;
  else if (i4 == 1'b1)
    n4 <= n3;
initial n5 = 1'b0;
always @ (posedge clock_c)
  if (i5 == 1'b1)
    n5 <= 1'b0;
  else if (i4 == 1'b1)
    n5 <= n4;
initial n6 = 1'b0;
always @ (posedge clock_c)
  if (i5 == 1'b1)
    n6 <= 1'b0;
  else if (i4 == 1'b1)
    n6 <= n5;
assign n7 = {s27_1[8],
  s27_1[7],
  s27_1[6],
  s27_1[5],
  s27_1[4],
  s27_1[3],
  s27_1[2],
  s27_1[1]};
initial n8 = 8'b00000000;
always @ (posedge clock_c)
  if (i5 == 1'b1)
    n8 <= 8'b00000000;
  else if (i4 == 1'b1)
    n8 <= n7;
initial n9 = 8'b00000000;
always @ (posedge clock_c)
  if (i5 == 1'b1)
    n9 <= 8'b00000000;
  else if (i4 == 1'b1)
    n9 <= n8;
initial n10 = 8'b00000000;
always @ (posedge clock_c)
  if (i5 == 1'b1)
    n10 <= 8'b00000000;
  else if (i4 == 1'b1)
    n10 <= n9;
initial n11 = 8'b00000000;
always @ (posedge clock_c)
  if (i5 == 1'b1)
    n11 <= 8'b00000000;
  else if (i4 == 1'b1)
    n11 <= n10;
assign n12 = s27_1[0];
initial n13 = 1'b0;
always @ (posedge clock_c)
  if (i5 == 1'b1)
    n13 <= 1'b0;
  else if (i4 == 1'b1)
    n13 <= n12;
initial n14 = 1'b0;
always @ (posedge clock_c)
  if (i5 == 1'b1)
    n14 <= 1'b0;
  else if (i4 == 1'b1)
    n14 <= n13;
initial n15 = 1'b0;
always @ (posedge clock_c)
  if (i5 == 1'b1)
    n15 <= 1'b0;
  else if (i4 == 1'b1)
    n15 <= n14;
initial n16 = 1'b0;
always @ (posedge clock_c)
  if (i5 == 1'b1)
    n16 <= 1'b0;
  else if (i4 == 1'b1)
    n16 <= n15;
assign n17 = ~n16;
assign n18 = {s28_2, s28_1};
assign n19 = {s28_3[31],
  s28_3[30],
  s28_3[29],
  s28_3[28],
  s28_3[27],
  s28_3[26],
  s28_3[25],
  s28_3[24],
  s28_3[23],
  s28_3[22],
  s28_3[21],
  s28_3[20],
  s28_3[19],
  s28_3[18],
  s28_3[17],
  s28_3[16]};
assign n20 = {s28_3[15],
  s28_3[14],
  s28_3[13],
  s28_3[12],
  s28_3[11],
  s28_3[10],
  s28_3[9],
  s28_3[8],
  s28_3[7],
  s28_3[6],
  s28_3[5],
  s28_3[4],
  s28_3[3],
  s28_3[2],
  s28_3[1],
  s28_3[0]};
assign n21 = {s29_1[31],
  s29_1[30],
  s29_1[29],
  s29_1[28],
  s29_1[27],
  s29_1[26],
  s29_1[25],
  s29_1[24],
  s29_1[23],
  s29_1[22],
  s29_1[21],
  s29_1[20],
  s29_1[19],
  s29_1[18],
  s29_1[17],
  s29_1[16]};
assign n22 = {s29_1[15],
  s29_1[14],
  s29_1[13],
  s29_1[12],
  s29_1[11],
  s29_1[10],
  s29_1[9],
  s29_1[8],
  s29_1[7],
  s29_1[6],
  s29_1[5],
  s29_1[4],
  s29_1[3],
  s29_1[2],
  s29_1[1],
  s29_1[0]};
assign n23 = s25_1 ? n20 : n19;
assign n24 = s25_1 ? n22 : n21;
cf_fft_1024_8_33 s25 (clock_c, n18, i4, i5, s25_1);
cf_fft_1024_8_12 s26 (clock_c, i2, i3, n1, i4, i5, s26_1, s26_2);
cf_fft_1024_8_24 s27 (clock_c, i1, i4, i5, s27_1, s27_2);
cf_fft_1024_8_28 s28 (clock_c, n2, n6, n11, n17, i4, i5, s28_1, s28_2, s28_3);
cf_fft_1024_8_29 s29 (clock_c, n2, n6, n11, n16, i4, i5, s29_1);
assign o3 = n24;
assign o2 = n23;
assign o1 = s28_1;
endmodule

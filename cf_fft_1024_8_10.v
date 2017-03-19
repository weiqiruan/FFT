module cf_fft_1024_8_10 (clock_c, i1, i2, i3, i4, i5, o1, o2);
input  clock_c;
input  [15:0] i1;
input  [15:0] i2;
input  [2:0] i3;
input  i4;
input  i5;
output [15:0] o1;
output [15:0] o2;
reg    [15:0] n1;
wire   [7:0] n2;
wire   [7:0] n3;
reg    [15:0] n4;
wire   [7:0] n5;
wire   [7:0] n6;
reg    [7:0] n7;
reg    [7:0] n8;
reg    [7:0] n9;
reg    [7:0] n10;
reg    [15:0] n11;
wire   [7:0] n12;
wire   [7:0] n13;
wire   [15:0] n14;
wire   [7:0] n15;
reg    [7:0] n16;
wire   [15:0] n17;
wire   [7:0] n18;
reg    [7:0] n19;
wire   [7:0] n20;
reg    [7:0] n21;
wire   [15:0] n22;
wire   [7:0] n23;
reg    [7:0] n24;
wire   [15:0] n25;
wire   [7:0] n26;
reg    [7:0] n27;
wire   [7:0] n28;
reg    [7:0] n29;
wire   [7:0] n30;
wire   [7:0] n31;
wire   [15:0] n32;
reg    [15:0] n33;
wire   [7:0] n34;
wire   [7:0] n35;
wire   [15:0] n36;
reg    [15:0] n37;
initial n1 = 16'b0000000000000000;
always @ (posedge clock_c)
  if (i5 == 1'b1)
    n1 <= 16'b0000000000000000;
  else if (i4 == 1'b1)
    n1 <= i1;
assign n2 = {n1[15],
  n1[14],
  n1[13],
  n1[12],
  n1[11],
  n1[10],
  n1[9],
  n1[8]};
assign n3 = {n1[7],
  n1[6],
  n1[5],
  n1[4],
  n1[3],
  n1[2],
  n1[1],
  n1[0]};
initial n4 = 16'b0000000000000000;
always @ (posedge clock_c)
  if (i5 == 1'b1)
    n4 <= 16'b0000000000000000;
  else if (i4 == 1'b1)
    n4 <= i2;
assign n5 = {n4[15],
  n4[14],
  n4[13],
  n4[12],
  n4[11],
  n4[10],
  n4[9],
  n4[8]};
assign n6 = {n4[7],
  n4[6],
  n4[5],
  n4[4],
  n4[3],
  n4[2],
  n4[1],
  n4[0]};
initial n7 = 8'b00000000;
always @ (posedge clock_c)
  if (i5 == 1'b1)
    n7 <= 8'b00000000;
  else if (i4 == 1'b1)
    n7 <= n2;
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
    n9 <= n3;
initial n10 = 8'b00000000;
always @ (posedge clock_c)
  if (i5 == 1'b1)
    n10 <= 8'b00000000;
  else if (i4 == 1'b1)
    n10 <= n9;
initial n11 = 16'b0000000000000000;
always @ (posedge clock_c)
  if (i4 == 1'b1)
    case (i3)
      3'b000 : n11 <= 16'b0111111100000000;
      3'b001 : n11 <= 16'b0111011011001111;
      3'b010 : n11 <= 16'b0101101010100101;
      3'b011 : n11 <= 16'b0011000010001001;
      3'b100 : n11 <= 16'b0000000010000000;
      3'b101 : n11 <= 16'b1100111110001001;
      3'b110 : n11 <= 16'b1010010110100101;
      3'b111 : n11 <= 16'b1000100111001111;
      default : n11 <= 16'bxxxxxxxxxxxxxxxx;
    endcase
assign n12 = {n11[15],
  n11[14],
  n11[13],
  n11[12],
  n11[11],
  n11[10],
  n11[9],
  n11[8]};
assign n13 = {n11[7],
  n11[6],
  n11[5],
  n11[4],
  n11[3],
  n11[2],
  n11[1],
  n11[0]};
assign n14 = {{8{n5[7]}}, n5} * {{8{n12[7]}}, n12};
assign n15 = {n14[14],
  n14[13],
  n14[12],
  n14[11],
  n14[10],
  n14[9],
  n14[8],
  n14[7]};
initial n16 = 8'b00000000;
always @ (posedge clock_c)
  if (i5 == 1'b1)
    n16 <= 8'b00000000;
  else if (i4 == 1'b1)
    n16 <= n15;
assign n17 = {{8{n6[7]}}, n6} * {{8{n13[7]}}, n13};
assign n18 = {n17[14],
  n17[13],
  n17[12],
  n17[11],
  n17[10],
  n17[9],
  n17[8],
  n17[7]};
initial n19 = 8'b00000000;
always @ (posedge clock_c)
  if (i5 == 1'b1)
    n19 <= 8'b00000000;
  else if (i4 == 1'b1)
    n19 <= n18;
assign n20 = n16 - n19;
initial n21 = 8'b00000000;
always @ (posedge clock_c)
  if (i5 == 1'b1)
    n21 <= 8'b00000000;
  else if (i4 == 1'b1)
    n21 <= n20;
assign n22 = {{8{n5[7]}}, n5} * {{8{n13[7]}}, n13};
assign n23 = {n22[14],
  n22[13],
  n22[12],
  n22[11],
  n22[10],
  n22[9],
  n22[8],
  n22[7]};
initial n24 = 8'b00000000;
always @ (posedge clock_c)
  if (i5 == 1'b1)
    n24 <= 8'b00000000;
  else if (i4 == 1'b1)
    n24 <= n23;
assign n25 = {{8{n6[7]}}, n6} * {{8{n12[7]}}, n12};
assign n26 = {n25[14],
  n25[13],
  n25[12],
  n25[11],
  n25[10],
  n25[9],
  n25[8],
  n25[7]};
initial n27 = 8'b00000000;
always @ (posedge clock_c)
  if (i5 == 1'b1)
    n27 <= 8'b00000000;
  else if (i4 == 1'b1)
    n27 <= n26;
assign n28 = n24 + n27;
initial n29 = 8'b00000000;
always @ (posedge clock_c)
  if (i5 == 1'b1)
    n29 <= 8'b00000000;
  else if (i4 == 1'b1)
    n29 <= n28;
assign n30 = n8 + n21;
assign n31 = n10 + n29;
assign n32 = {n30, n31};
initial n33 = 16'b0000000000000000;
always @ (posedge clock_c)
  if (i5 == 1'b1)
    n33 <= 16'b0000000000000000;
  else if (i4 == 1'b1)
    n33 <= n32;
assign n34 = n8 - n21;
assign n35 = n10 - n29;
assign n36 = {n34, n35};
initial n37 = 16'b0000000000000000;
always @ (posedge clock_c)
  if (i5 == 1'b1)
    n37 <= 16'b0000000000000000;
  else if (i4 == 1'b1)
    n37 <= n36;
assign o2 = n37;
assign o1 = n33;
endmodule

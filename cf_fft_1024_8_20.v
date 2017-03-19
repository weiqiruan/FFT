module cf_fft_1024_8_20 (clock_c, i1, i2, i3, i4, i5, o1, o2);
input  clock_c;
input  [15:0] i1;
input  [15:0] i2;
input  [7:0] i3;
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
      8'b00000000 : n11 <= 16'b0111111100000000;
      8'b00000001 : n11 <= 16'b0111111111111110;
      8'b00000010 : n11 <= 16'b0111111111111100;
      8'b00000011 : n11 <= 16'b0111111111111011;
      8'b00000100 : n11 <= 16'b0111111111111001;
      8'b00000101 : n11 <= 16'b0111111111111000;
      8'b00000110 : n11 <= 16'b0111111111110110;
      8'b00000111 : n11 <= 16'b0111111111110101;
      8'b00001000 : n11 <= 16'b0111111111110011;
      8'b00001001 : n11 <= 16'b0111111111110001;
      8'b00001010 : n11 <= 16'b0111111111110000;
      8'b00001011 : n11 <= 16'b0111111011101110;
      8'b00001100 : n11 <= 16'b0111111011101101;
      8'b00001101 : n11 <= 16'b0111111011101011;
      8'b00001110 : n11 <= 16'b0111111011101010;
      8'b00001111 : n11 <= 16'b0111110111101000;
      8'b00010000 : n11 <= 16'b0111110111100111;
      8'b00010001 : n11 <= 16'b0111110111100101;
      8'b00010010 : n11 <= 16'b0111110011100011;
      8'b00010011 : n11 <= 16'b0111110011100010;
      8'b00010100 : n11 <= 16'b0111110011100000;
      8'b00010101 : n11 <= 16'b0111101111011111;
      8'b00010110 : n11 <= 16'b0111101111011101;
      8'b00010111 : n11 <= 16'b0111101011011100;
      8'b00011000 : n11 <= 16'b0111101011011010;
      8'b00011001 : n11 <= 16'b0111101011011001;
      8'b00011010 : n11 <= 16'b0111100111010111;
      8'b00011011 : n11 <= 16'b0111100111010110;
      8'b00011100 : n11 <= 16'b0111100011010100;
      8'b00011101 : n11 <= 16'b0111011111010011;
      8'b00011110 : n11 <= 16'b0111011111010001;
      8'b00011111 : n11 <= 16'b0111011011010000;
      8'b00100000 : n11 <= 16'b0111011011001111;
      8'b00100001 : n11 <= 16'b0111010111001101;
      8'b00100010 : n11 <= 16'b0111010111001100;
      8'b00100011 : n11 <= 16'b0111010011001010;
      8'b00100100 : n11 <= 16'b0111001111001001;
      8'b00100101 : n11 <= 16'b0111001111000111;
      8'b00100110 : n11 <= 16'b0111001011000110;
      8'b00100111 : n11 <= 16'b0111000111000101;
      8'b00101000 : n11 <= 16'b0111000011000011;
      8'b00101001 : n11 <= 16'b0111000011000010;
      8'b00101010 : n11 <= 16'b0110111111000000;
      8'b00101011 : n11 <= 16'b0110111010111111;
      8'b00101100 : n11 <= 16'b0110110110111110;
      8'b00101101 : n11 <= 16'b0110110010111100;
      8'b00101110 : n11 <= 16'b0110110010111011;
      8'b00101111 : n11 <= 16'b0110101110111010;
      8'b00110000 : n11 <= 16'b0110101010111000;
      8'b00110001 : n11 <= 16'b0110100110110111;
      8'b00110010 : n11 <= 16'b0110100010110110;
      8'b00110011 : n11 <= 16'b0110011110110101;
      8'b00110100 : n11 <= 16'b0110011010110011;
      8'b00110101 : n11 <= 16'b0110010110110010;
      8'b00110110 : n11 <= 16'b0110010010110001;
      8'b00110111 : n11 <= 16'b0110001110110000;
      8'b00111000 : n11 <= 16'b0110001010101110;
      8'b00111001 : n11 <= 16'b0110000110101101;
      8'b00111010 : n11 <= 16'b0110000010101100;
      8'b00111011 : n11 <= 16'b0101111110101011;
      8'b00111100 : n11 <= 16'b0101111010101010;
      8'b00111101 : n11 <= 16'b0101110110101000;
      8'b00111110 : n11 <= 16'b0101110010100111;
      8'b00111111 : n11 <= 16'b0101101110100110;
      8'b01000000 : n11 <= 16'b0101101010100101;
      8'b01000001 : n11 <= 16'b0101100110100100;
      8'b01000010 : n11 <= 16'b0101100010100011;
      8'b01000011 : n11 <= 16'b0101011110100010;
      8'b01000100 : n11 <= 16'b0101010110100001;
      8'b01000101 : n11 <= 16'b0101010010100000;
      8'b01000110 : n11 <= 16'b0101001110011111;
      8'b01000111 : n11 <= 16'b0101001010011110;
      8'b01001000 : n11 <= 16'b0101000110011101;
      8'b01001001 : n11 <= 16'b0100111110011100;
      8'b01001010 : n11 <= 16'b0100111010011011;
      8'b01001011 : n11 <= 16'b0100110110011010;
      8'b01001100 : n11 <= 16'b0100110010011001;
      8'b01001101 : n11 <= 16'b0100101010011000;
      8'b01001110 : n11 <= 16'b0100100110010111;
      8'b01001111 : n11 <= 16'b0100100010010110;
      8'b01010000 : n11 <= 16'b0100011110010101;
      8'b01010001 : n11 <= 16'b0100010110010100;
      8'b01010010 : n11 <= 16'b0100010010010011;
      8'b01010011 : n11 <= 16'b0100001110010011;
      8'b01010100 : n11 <= 16'b0100000110010010;
      8'b01010101 : n11 <= 16'b0100000010010001;
      8'b01010110 : n11 <= 16'b0011111110010000;
      8'b01010111 : n11 <= 16'b0011110110001111;
      8'b01011000 : n11 <= 16'b0011110010001111;
      8'b01011001 : n11 <= 16'b0011101010001110;
      8'b01011010 : n11 <= 16'b0011100110001101;
      8'b01011011 : n11 <= 16'b0011100010001100;
      8'b01011100 : n11 <= 16'b0011011010001100;
      8'b01011101 : n11 <= 16'b0011010110001011;
      8'b01011110 : n11 <= 16'b0011001110001010;
      8'b01011111 : n11 <= 16'b0011001010001010;
      8'b01100000 : n11 <= 16'b0011000010001001;
      8'b01100001 : n11 <= 16'b0010111110001001;
      8'b01100010 : n11 <= 16'b0010111010001000;
      8'b01100011 : n11 <= 16'b0010110010001000;
      8'b01100100 : n11 <= 16'b0010101110000111;
      8'b01100101 : n11 <= 16'b0010100110000110;
      8'b01100110 : n11 <= 16'b0010100010000110;
      8'b01100111 : n11 <= 16'b0010011010000101;
      8'b01101000 : n11 <= 16'b0010010110000101;
      8'b01101001 : n11 <= 16'b0010001110000101;
      8'b01101010 : n11 <= 16'b0010001010000100;
      8'b01101011 : n11 <= 16'b0010000010000100;
      8'b01101100 : n11 <= 16'b0001111110000011;
      8'b01101101 : n11 <= 16'b0001110110000011;
      8'b01101110 : n11 <= 16'b0001110010000011;
      8'b01101111 : n11 <= 16'b0001101010000010;
      8'b01110000 : n11 <= 16'b0001100010000010;
      8'b01110001 : n11 <= 16'b0001011110000010;
      8'b01110010 : n11 <= 16'b0001010110000001;
      8'b01110011 : n11 <= 16'b0001010010000001;
      8'b01110100 : n11 <= 16'b0001001010000001;
      8'b01110101 : n11 <= 16'b0001000110000001;
      8'b01110110 : n11 <= 16'b0000111110000000;
      8'b01110111 : n11 <= 16'b0000111010000000;
      8'b01111000 : n11 <= 16'b0000110010000000;
      8'b01111001 : n11 <= 16'b0000101010000000;
      8'b01111010 : n11 <= 16'b0000100110000000;
      8'b01111011 : n11 <= 16'b0000011110000000;
      8'b01111100 : n11 <= 16'b0000011010000000;
      8'b01111101 : n11 <= 16'b0000010010000000;
      8'b01111110 : n11 <= 16'b0000001110000000;
      8'b01111111 : n11 <= 16'b0000000110000000;
      8'b10000000 : n11 <= 16'b0000000010000000;
      8'b10000001 : n11 <= 16'b1111111010000000;
      8'b10000010 : n11 <= 16'b1111110010000000;
      8'b10000011 : n11 <= 16'b1111101110000000;
      8'b10000100 : n11 <= 16'b1111100110000000;
      8'b10000101 : n11 <= 16'b1111100010000000;
      8'b10000110 : n11 <= 16'b1111011010000000;
      8'b10000111 : n11 <= 16'b1111010110000000;
      8'b10001000 : n11 <= 16'b1111001110000000;
      8'b10001001 : n11 <= 16'b1111000110000000;
      8'b10001010 : n11 <= 16'b1111000010000000;
      8'b10001011 : n11 <= 16'b1110111010000001;
      8'b10001100 : n11 <= 16'b1110110110000001;
      8'b10001101 : n11 <= 16'b1110101110000001;
      8'b10001110 : n11 <= 16'b1110101010000001;
      8'b10001111 : n11 <= 16'b1110100010000010;
      8'b10010000 : n11 <= 16'b1110011110000010;
      8'b10010001 : n11 <= 16'b1110010110000010;
      8'b10010010 : n11 <= 16'b1110001110000011;
      8'b10010011 : n11 <= 16'b1110001010000011;
      8'b10010100 : n11 <= 16'b1110000010000011;
      8'b10010101 : n11 <= 16'b1101111110000100;
      8'b10010110 : n11 <= 16'b1101110110000100;
      8'b10010111 : n11 <= 16'b1101110010000101;
      8'b10011000 : n11 <= 16'b1101101010000101;
      8'b10011001 : n11 <= 16'b1101100110000101;
      8'b10011010 : n11 <= 16'b1101011110000110;
      8'b10011011 : n11 <= 16'b1101011010000110;
      8'b10011100 : n11 <= 16'b1101010010000111;
      8'b10011101 : n11 <= 16'b1101001110001000;
      8'b10011110 : n11 <= 16'b1101000110001000;
      8'b10011111 : n11 <= 16'b1101000010001001;
      8'b10100000 : n11 <= 16'b1100111110001001;
      8'b10100001 : n11 <= 16'b1100110110001010;
      8'b10100010 : n11 <= 16'b1100110010001010;
      8'b10100011 : n11 <= 16'b1100101010001011;
      8'b10100100 : n11 <= 16'b1100100110001100;
      8'b10100101 : n11 <= 16'b1100011110001100;
      8'b10100110 : n11 <= 16'b1100011010001101;
      8'b10100111 : n11 <= 16'b1100010110001110;
      8'b10101000 : n11 <= 16'b1100001110001111;
      8'b10101001 : n11 <= 16'b1100001010001111;
      8'b10101010 : n11 <= 16'b1100000010010000;
      8'b10101011 : n11 <= 16'b1011111110010001;
      8'b10101100 : n11 <= 16'b1011111010010010;
      8'b10101101 : n11 <= 16'b1011110010010011;
      8'b10101110 : n11 <= 16'b1011101110010011;
      8'b10101111 : n11 <= 16'b1011101010010100;
      8'b10110000 : n11 <= 16'b1011100010010101;
      8'b10110001 : n11 <= 16'b1011011110010110;
      8'b10110010 : n11 <= 16'b1011011010010111;
      8'b10110011 : n11 <= 16'b1011010110011000;
      8'b10110100 : n11 <= 16'b1011001110011001;
      8'b10110101 : n11 <= 16'b1011001010011010;
      8'b10110110 : n11 <= 16'b1011000110011011;
      8'b10110111 : n11 <= 16'b1011000010011100;
      8'b10111000 : n11 <= 16'b1010111010011101;
      8'b10111001 : n11 <= 16'b1010110110011110;
      8'b10111010 : n11 <= 16'b1010110010011111;
      8'b10111011 : n11 <= 16'b1010101110100000;
      8'b10111100 : n11 <= 16'b1010101010100001;
      8'b10111101 : n11 <= 16'b1010100010100010;
      8'b10111110 : n11 <= 16'b1010011110100011;
      8'b10111111 : n11 <= 16'b1010011010100100;
      8'b11000000 : n11 <= 16'b1010010110100101;
      8'b11000001 : n11 <= 16'b1010010010100110;
      8'b11000010 : n11 <= 16'b1010001110100111;
      8'b11000011 : n11 <= 16'b1010001010101000;
      8'b11000100 : n11 <= 16'b1010000110101010;
      8'b11000101 : n11 <= 16'b1010000010101011;
      8'b11000110 : n11 <= 16'b1001111110101100;
      8'b11000111 : n11 <= 16'b1001111010101101;
      8'b11001000 : n11 <= 16'b1001110110101110;
      8'b11001001 : n11 <= 16'b1001110010110000;
      8'b11001010 : n11 <= 16'b1001101110110001;
      8'b11001011 : n11 <= 16'b1001101010110010;
      8'b11001100 : n11 <= 16'b1001100110110011;
      8'b11001101 : n11 <= 16'b1001100010110101;
      8'b11001110 : n11 <= 16'b1001011110110110;
      8'b11001111 : n11 <= 16'b1001011010110111;
      8'b11010000 : n11 <= 16'b1001010110111000;
      8'b11010001 : n11 <= 16'b1001010010111010;
      8'b11010010 : n11 <= 16'b1001001110111011;
      8'b11010011 : n11 <= 16'b1001001110111100;
      8'b11010100 : n11 <= 16'b1001001010111110;
      8'b11010101 : n11 <= 16'b1001000110111111;
      8'b11010110 : n11 <= 16'b1001000011000000;
      8'b11010111 : n11 <= 16'b1000111111000010;
      8'b11011000 : n11 <= 16'b1000111111000011;
      8'b11011001 : n11 <= 16'b1000111011000101;
      8'b11011010 : n11 <= 16'b1000110111000110;
      8'b11011011 : n11 <= 16'b1000110011000111;
      8'b11011100 : n11 <= 16'b1000110011001001;
      8'b11011101 : n11 <= 16'b1000101111001010;
      8'b11011110 : n11 <= 16'b1000101011001100;
      8'b11011111 : n11 <= 16'b1000101011001101;
      8'b11100000 : n11 <= 16'b1000100111001111;
      8'b11100001 : n11 <= 16'b1000100111010000;
      8'b11100010 : n11 <= 16'b1000100011010001;
      8'b11100011 : n11 <= 16'b1000100011010011;
      8'b11100100 : n11 <= 16'b1000011111010100;
      8'b11100101 : n11 <= 16'b1000011011010110;
      8'b11100110 : n11 <= 16'b1000011011010111;
      8'b11100111 : n11 <= 16'b1000010111011001;
      8'b11101000 : n11 <= 16'b1000010111011010;
      8'b11101001 : n11 <= 16'b1000010111011100;
      8'b11101010 : n11 <= 16'b1000010011011101;
      8'b11101011 : n11 <= 16'b1000010011011111;
      8'b11101100 : n11 <= 16'b1000001111100000;
      8'b11101101 : n11 <= 16'b1000001111100010;
      8'b11101110 : n11 <= 16'b1000001111100011;
      8'b11101111 : n11 <= 16'b1000001011100101;
      8'b11110000 : n11 <= 16'b1000001011100111;
      8'b11110001 : n11 <= 16'b1000001011101000;
      8'b11110010 : n11 <= 16'b1000000111101010;
      8'b11110011 : n11 <= 16'b1000000111101011;
      8'b11110100 : n11 <= 16'b1000000111101101;
      8'b11110101 : n11 <= 16'b1000000111101110;
      8'b11110110 : n11 <= 16'b1000000011110000;
      8'b11110111 : n11 <= 16'b1000000011110001;
      8'b11111000 : n11 <= 16'b1000000011110011;
      8'b11111001 : n11 <= 16'b1000000011110101;
      8'b11111010 : n11 <= 16'b1000000011110110;
      8'b11111011 : n11 <= 16'b1000000011111000;
      8'b11111100 : n11 <= 16'b1000000011111001;
      8'b11111101 : n11 <= 16'b1000000011111011;
      8'b11111110 : n11 <= 16'b1000000011111100;
      8'b11111111 : n11 <= 16'b1000000011111110;
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
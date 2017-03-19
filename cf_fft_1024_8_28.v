module cf_fft_1024_8_28 (clock_c, i1, i2, i3, i4, i5, i6, o1, o2, o3);
input  clock_c;
input  [31:0] i1;
input  i2;
input  [7:0] i3;
input  i4;
input  i5;
input  i6;
output o1;
output o2;
output [31:0] o3;
wire   [7:0] n1;
wire   [7:0] n2;
reg    [7:0] n3;
wire   n4;
reg    n5;
wire   [7:0] n6;
wire   n7;
wire   n8;
wire   [31:0] n9;
reg    [7:0] n9a;
reg    [31:0] n9m [255:0];
wire   n10;
wire   [31:0] n11;
reg    [7:0] n11a;
reg    [31:0] n11m [255:0];
reg    n12;
wire   [31:0] n13;
wire   n14;
wire   s15_1;
assign n1 = 8'b00000001;
assign n2 = n3 + n1;
initial n3 = 8'b00000000;
always @ (posedge clock_c)
  if (n14 == 1'b1)
    n3 <= 8'b00000000;
  else if (i5 == 1'b1)
    n3 <= n2;
assign n4 = ~s15_1;
initial n5 = 1'b0;
always @ (posedge clock_c)
  if (i6 == 1'b1)
    n5 <= 1'b0;
  else if (i5 == 1'b1)
    n5 <= i2;
assign n6 = 8'b00000000;
assign n7 = n3 == n6;
assign n8 = i4 & n4;
initial n9a = 8'b00000000;
always @ (posedge clock_c)
  if (i5 == 1'b1) begin
    if (n8 == 1'b1)
      n9m[i3] <= i1;
    n9a <= n3;
  end
assign n9 = n9m[n9a];
assign n10 = i4 & s15_1;
initial n11a = 8'b00000000;
always @ (posedge clock_c)
  if (i5 == 1'b1) begin
    if (n10 == 1'b1)
      n11m[i3] <= i1;
    n11a <= n3;
  end
assign n11 = n11m[n11a];
initial n12 = 1'b0;
always @ (posedge clock_c)
  if (i6 == 1'b1)
    n12 <= 1'b0;
  else if (i5 == 1'b1)
    n12 <= n4;
assign n13 = n12 ? n11 : n9;
assign n14 = i2 | i6;
cf_fft_1024_8_30 s15 (clock_c, i2, i5, i6, s15_1);
assign o3 = n13;
assign o2 = n7;
assign o1 = n5;
endmodule

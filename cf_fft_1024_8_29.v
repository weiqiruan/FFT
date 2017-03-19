module cf_fft_1024_8_29 (clock_c, i1, i2, i3, i4, i5, i6, o1);
input  clock_c;
input  [31:0] i1;
input  i2;
input  [7:0] i3;
input  i4;
input  i5;
input  i6;
output [31:0] o1;
wire   [7:0] n1;
wire   [7:0] n2;
reg    [7:0] n3;
wire   n4;
wire   n5;
wire   [31:0] n6;
reg    [7:0] n6a;
reg    [31:0] n6m [255:0];
wire   n7;
wire   [31:0] n8;
reg    [7:0] n8a;
reg    [31:0] n8m [255:0];
reg    n9;
wire   [31:0] n10;
wire   n11;
wire   s12_1;
assign n1 = 8'b00000001;
assign n2 = n3 + n1;
initial n3 = 8'b00000000;
always @ (posedge clock_c)
  if (n11 == 1'b1)
    n3 <= 8'b00000000;
  else if (i5 == 1'b1)
    n3 <= n2;
assign n4 = ~s12_1;
assign n5 = i4 & n4;
initial n6a = 8'b00000000;
always @ (posedge clock_c)
  if (i5 == 1'b1) begin
    if (n5 == 1'b1)
      n6m[i3] <= i1;
    n6a <= n3;
  end
assign n6 = n6m[n6a];
assign n7 = i4 & s12_1;
initial n8a = 8'b00000000;
always @ (posedge clock_c)
  if (i5 == 1'b1) begin
    if (n7 == 1'b1)
      n8m[i3] <= i1;
    n8a <= n3;
  end
assign n8 = n8m[n8a];
initial n9 = 1'b0;
always @ (posedge clock_c)
  if (i6 == 1'b1)
    n9 <= 1'b0;
  else if (i5 == 1'b1)
    n9 <= n4;
assign n10 = n9 ? n8 : n6;
assign n11 = i2 | i6;
cf_fft_1024_8_30 s12 (clock_c, i2, i5, i6, s12_1);
assign o1 = n10;
endmodule


`timescale 1ns / 1ps
module pipo_design(input clk,input [3:0]b,output[3:0]a);

d_ff d1(.clk(clk),.d(b[3]),.q(a[3]),.rst());
d_ff d2(.clk(clk),.d(b[2]),.q(a[2]),.rst());
d_ff d3(.clk(clk),.d(b[1]),.q(a[1]),.rst());
d_ff d4(.clk(clk),.d(b[0]),.q(a[0]),.rst());

endmodule


// d flip flop

module d_ff (
  input clk,    // clock input
  input d,      // data input
  input rst,    // asynchronous reset input
  output reg q  // output
);

  always @(posedge clk ) begin
    if (rst) // asynchronous reset
      q <= 1'b0;
    else // normal operation
      q <= d;
  end

endmodule

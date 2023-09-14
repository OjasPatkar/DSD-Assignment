`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2023 01:01:24
// Design Name: 
// Module Name: 
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
module onehot_enc 
  (parameter WIDTH;
  input logic [WIDTH-1:0] in,
  input logic [$clog2(WIDTH-1:0)] out
);
genvar i;
generate
  for(i = 0; i < WIDTH; i++) begin
    assign out |= in[i] ? i : 0;
  end
endgenerate
endmodule
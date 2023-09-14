`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2023 15:42:00
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
//////////////////////////////////////////////////////////////////////////////////
module shift_reg #(parameter MSB = 8)(input d,
input clk,
input en,
input dir,
input rstn, 
output reg [MSB-1:0] out);
always @ (posedge clk)
if (!rstn)
out <= 0;
else begin
if (en)
case (dir)
0 : out <= {out[MSB-2:0], d};
1 : out <= {d, out[MSB-1:1]};
endcase
else
out <= out;
end
endmodule


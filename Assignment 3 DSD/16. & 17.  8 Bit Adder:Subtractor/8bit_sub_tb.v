`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.09.2023 01:07:47
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


module par_sub_tb;
reg [7:0] a;
reg [7:0] b;
reg cin;
wire [7:0] diff;
wire bout;

par_sub_uut(.a(a),.b(b),.cin(cin),.diff(diff),.bout(bout));
initial begin
#10 a=8'b00000001;b=8'b00000001;cin=1'b0;
#10 a=8'b00001101;b=8'b11100001;cin=1'b0;
#10 a=8'b00000001;b=8'b10000001;cin=1'b0;
#10 a=8'b01110001;b=8'b00100100;cin=1'b1;
#10 a=8'b00000001;b=8'b01100001;cin=1'b0;
#10 a=8'b01100001;b=8'b10011101;cin=1'b0;
#10 a=8'b11111111;b=8'b01011001;cin=1'b1;
#10 a=8'b01110111;b=8'b01010001;cin=1'b1;
end
endmodule

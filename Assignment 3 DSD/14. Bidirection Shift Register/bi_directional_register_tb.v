`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.09.2023 00:51:27
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
module tb_sr;
parameter MSB=16;
reg data;
reg clk;
reg en;
reg dir;
reg rstn;
wire[MSB-1:0] out;
shift_reg #(MSB) sr0(.d(data),.clk(clk),.en(en),.dir(dir),.rstn(rstn),.out(out));
always #10 clk=~clk;
initial begin 
clk <= 0;
en <= 0;
dir <=0;
rstn <=0;
data <=1'h1;
end
initial begin
rstn <= 0;
#20 rstn<= 1;
    en<= 1;
    repeat(7) @ (posedge clk)
        data<=~data;
#10 dir <= 1;
repeat(7) @ (posedge clk)
        data<=~data;
end 
endmodule
        



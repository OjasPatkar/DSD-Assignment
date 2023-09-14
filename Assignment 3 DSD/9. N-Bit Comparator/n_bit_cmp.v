`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2023 02:15:53
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


module comparator (
    input wire [3:0] a,
    input wire [3:0] b,
    output reg equal,
    output reg lower,
    output reg greater
    );

    always @* begin
      if (a<b) begin
        equal = 0;
        lower = 1;
        greater = 0;
      end
      else if (a==b) begin
        equal = 1;
        lower = 0;
        greater = 0;
      end
      else begin
        equal = 0;
        lower = 0;
        greater = 1;
      end
    end
endmodule

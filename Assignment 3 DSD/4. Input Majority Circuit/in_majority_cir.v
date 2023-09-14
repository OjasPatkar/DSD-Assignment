`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2023 00:10:56
// Design Name: 
// Module Name: majority_of_five
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


module majority_of_five(
    input [4:0] sw,
    output led
    );
assign led =(sw[0] & sw[1] & sw[2]) | 
		(sw[0] & sw[1] & sw[3]) | 
		(sw[0] & sw[1] & sw[4]) | 
		(sw[0] & sw[2] & sw[3]) | 
		(sw[0] & sw[2] & sw[4]) | 
		(sw[0] & sw[3] & sw[4]) | 
		(sw[1] & sw[2] & sw[3]) | 
		(sw[1] & sw[2] & sw[4]) | 
		(sw[1] & sw[3] & sw[4]) | 
		(sw[2] & sw[3] & sw[4]);  
endmodule

`timescale 1ns / 1ps
module test_decoder;
reg a, b,c;
wire [7:0] out;
decoder_3_8 DUT(a,b,c,out);
initial
begin
$monitor($time,"a=%b , b=%b , c=%b , out = %b" , a,b,c,out);
a=0 ; b=0 ;c=0 ;
# 100
a=0 ; b=0 ;c=1 ;
#100
a=0 ; b=1 ;c=0 ;
#100 
a=1 ; b=1 ;c=1 ;
#100 $finish;
end
endmodule


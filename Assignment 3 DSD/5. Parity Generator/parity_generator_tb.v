module parity_tb;
reg x;
reg y;
reg z;
wire result;
initial
 begin
x = 0;
y = 0;
z = 0
#100
x = 0;
y = 0;
z = 1;
#100
x = 0;
y = 1;
z = 0;



#100
x = 0;
y = 1;
z = 1;
#100
x = 1;
y = 0;
z = 0;
#100
x = 1;
y = 0;
z = 1;
#100
x = 1;
y = 1;
z = 0;


#100
x = 1;
y = 1;
z = 1;
#100
end
endmodule

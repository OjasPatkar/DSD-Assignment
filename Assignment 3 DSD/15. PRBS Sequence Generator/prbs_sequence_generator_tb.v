module pbrs_tb;
reg clk, reset;
wire rand;
prbs pr (rand, clk, reset);
initial begin
forever begin
clk <= 0;
#5
clk <= 1;
#5
clk <= 0;
end
end
initial begin
reset = 1;
#12
reset = 0;
#90
reset = 1;
#12
reset = 0;
end
endmodule

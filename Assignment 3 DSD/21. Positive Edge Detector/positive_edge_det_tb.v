module tb;
	reg nrst;                                  
	reg clk;                
reg din;
wire dout;                  
		pos_edge_det ped0 (  .nrst(nrst),           
    					 .clk(clk),
 			      		 .din(din),
.dout(dout));

	always #5 clk = ~clk;           
	

	initial begin
		clk <= 0;
		nrst<= 0;
		#15 nrst <= 1;
		#20 nrst <= 0;
		#15 nrst<= 1;
		#10 nrst <= 0;
		#20 $finish;
	end	
  
  	initial begin
      	$dumpvars;
      $dumpfile("dump.vcd");
    end
endmodule

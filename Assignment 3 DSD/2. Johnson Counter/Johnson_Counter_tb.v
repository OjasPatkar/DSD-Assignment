module jc_tb;
  reg clk,reset;
  wire [3:0] out;
  
  johnson_counter dut (.out(out), .reset(reset), .clk(clk));
  
  always 
    #5 clk =~clk;
  
  initial begin
    reset=1'b1; clk=1'b0;
   #20 reset= 1'b0;
  end
  
  initial 
    begin 
   	 $monitor( $time, " clk=%b, out= %b, reset=%b", clk,out,reset);
  	 #105  $stop;  
   end
 
endmodule

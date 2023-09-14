module JK_ff_tb;
 
reg C;
reg RESETn;
reg J,K;
 
wire Q;
wire Qn;
 
jk_flip_flop_master_slave jkflipflop( .C(C), .RESETn(RESETn), .J(J), .K(K), .Q(Q), .Qn(Qn) );
 
initial begin
  $dumpfile("dump.vcd"); $dumpvars;
$monitor(clk,j,k,q,qb,reset);
 
J = 1'b0;
K = 1'b0;
RESETn = 1;
C=1;
 
#10
RESETn =0;
J=1'b1;
K=1'b0;
 
#100
RESETn =0;
J=1'b0;
K=1'b1;
 
#100
RESETn =0;
J=1'b1;
K=1'b1;
 
#100
RESETn =0;
J=1'b0;
K=1'b0;
 
#100
RESETn=1;
J=1'b1;
K=1'b0;
 
end
always #25 C <= ~ C;
 
endmodule


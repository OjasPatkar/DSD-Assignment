module pos_edge_detect(clk,nrst,din,dout);
input clk;
input nrst;
input din;
output dout;
reg d_ff;

always @(posedge clk or negedge nrst)
begin
if(!nrst)
d_ff<=1'b0;
else
d_ff<=din;
end
 assign dout=din&&(d_ff^din);
 endmodule
 

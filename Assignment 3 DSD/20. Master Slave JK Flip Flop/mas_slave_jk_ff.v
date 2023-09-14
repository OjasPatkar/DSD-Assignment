module jk_flip_flop_master_slave(Q, Qn, C, J, K, RESETn);
   output Q;
   output Qn;
   input  C;
   input  J;
   input  K;
   input  RESETn; 
   
   wire   MQ;  
   wire   MQn; 
   wire   Cn;  
   wire   J1;  
   wire   K1;  
   wire   J2;  
   wire   K2;  
   assign J2 = !RESETn ? 0 : J1;  
   assign K2 = !RESETn ? 1 : K1;  
   
   and(J1, J, Qn);
   and(K1, K, Q);   
   not(Cn, C);   
   sr_latch_gated master(MQ, MQn, C, J2, K2);
   sr_latch_gated slave(Q, Qn, Cn, MQ, MQn);   
endmodule 

module sr_latch_gated(Q, Qn, G, S, R);
   output Q;
   output Qn;
   input  G;   
   input  S;
   input  R;
   
   wire   S1;
   wire   R1;
   
   and(S1, G, S);
   and(R1, G, R);   
   nor(Qn, S1, Q);
   nor(Q, R1, Qn);
endmodule

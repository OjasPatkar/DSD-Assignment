module tb_ring;
    reg Clock;
    reg Reset;
    wire [3:0] Count_out;
    ring_counter uut (
        .Clock(Clock), 
        .Reset(Reset), 
        .Count_out(Count_out)
    );
    initial Clock = 0; 
    always #10 Clock = ~Clock; 

    initial begin
        Reset = 1; 
        #50;       
        Reset = 0; 
    end
endmodule


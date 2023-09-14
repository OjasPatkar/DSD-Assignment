module testcomp;
    reg [3:0] a, b;
    wire eq, lw, gr;

    comparator uut (
       .a(a),
       .b(b),
       .equal(eq),
       .lower(lw),
       .greater(gr)
    );

    initial begin
      a = 0;
      repeat (16) begin
        b = 0;
        repeat (16) begin
          #10;
          $display ("TESTING %d and %d yields eq=%d lw=%d gr=%d", a, b, eq, lw, gr);
          if (a==b && eq!=1'b1 && gr!=1'b0 && lw!=1'b0) begin
            $display ("ERROR!");
            $finish;
          end
          if (a>b && eq!=1'b0 && gr!=1'b1 && lw!=1'b0) begin
            $display ("ERROR!");
            $finish;
          end
          if (a<b && eq!=1'b1 && gr!=1'b0 && lw!=1'b1) begin
            $display ("ERROR!");
            $finish;
          end
          b = b + 1;
        end
        a = a + 1;
      end
      $display ("PASSED!");
      $finish;
    end
endmodule

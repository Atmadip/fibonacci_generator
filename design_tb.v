`timescale 1ns / 1ps

module design_tb();

reg clk, reset;
wire [31:0] d_out;

fibonacci_gen uut(clk, reset, d_out);

always #5 clk = ~clk;

initial begin

clk = 1'b 0;
reset = 1'b 1;
#30;

reset = 1'b 0;
#300;

$finish;
end

endmodule


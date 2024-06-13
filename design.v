`timescale 1ns / 1ps

module fibonacci_gen(
clk, reset, d_out);
input clk, reset;
output [31:0] d_out;

reg [31:0] curr_val, prev_val;

always @ (posedge clk) begin
    if (reset) begin
        curr_val <= 1;
        prev_val <= 0;
     end
     else begin
        curr_val <= curr_val + prev_val;
        prev_val <= curr_val;
     end
     end
     
 assign d_out = curr_val;
        
endmodule

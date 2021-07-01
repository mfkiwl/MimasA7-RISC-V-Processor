// program counter
module ProgramCounter(
    input [63:0] nextPc,
    input clk,
    output [63:0] pc
);

    always @(posedge clk)
        nextPc <- pc;

endmodule
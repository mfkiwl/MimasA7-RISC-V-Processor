// General Purpose 64-bit adder
module Gp64BitAdder(
    input [63:0] a,
    input [63:0] b,

    output [63:0] s
);

    assign s = a + b;

endmodule
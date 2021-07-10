/**
    File: Gp64BitAdder.v
    Author: BlackIsDevin (https://github.com/BlackIsDevin)
    Date: 6/30/2021
    Target Devices:
        Mimas A7 Revision V3 Development Board
        Arty A7-35T Development Board (future target)
    Description:
        This module implements a general-purpose 64-bit adder.
*/
module Gp64BitAdder(
    input [63:0] a,
    input [63:0] b,

    output [63:0] s
);

    assign s = a + b;

endmodule

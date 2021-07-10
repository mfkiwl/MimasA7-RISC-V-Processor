/**
    File: GpAdder.v
    Author: BlackIsDevin (https://github.com/BlackIsDevin)
    Date: 6/30/2021
    Target Devices:
        Mimas A7 Revision V3 Development Board
        Arty A7-35T Development Board (future target)
    Description:
        This module implements a general-purpose adder with configurable width.
*/
module GpAdder #(
    parameter WIDTH = 64
) (
    input [WIDTH - 1:0] a,
    input [WIDTH - 1:0] b,

    output [WIDTH - 1:0] s
);

    assign s = a + b;

endmodule

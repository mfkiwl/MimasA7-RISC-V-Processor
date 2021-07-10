/**
    File: Gp2Way64BitMix.v
    Author: BlackIsDevin (https://github.com/BlackIsDevin)
    Date: 7/8/2021
    Target Devices:
        Mimas A7 Revision V3 Development Board
        Arty A7-35T Development Board (future target)
    Description:
        This module implements a general-purpose 2:1 multiplexer with
        64-bit wide inputs/outputs.
*/
module Gp2Way64BitMux(
    input [63:0] a,
    input [63:0] b,
    input select,

    output reg [63:0] out
);

    always @(*) begin
        case(select)
            1'b0: out = a;
            1'b1: out = b;
            default: dout = 64'hX; 
        endcase
    end

endmodule

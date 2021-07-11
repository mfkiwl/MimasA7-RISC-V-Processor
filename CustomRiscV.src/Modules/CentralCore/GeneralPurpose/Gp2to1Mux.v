/**
    File: Gp2to1Mux.v
    Author: BlackIsDevin (https://github.com/BlackIsDevin)
    Date: 7/8/2021
    Target Devices:
        Mimas A7 Revision V3 Development Board
        Arty A7-35T Development Board (future target)
    Description:
        This module implements a general-purpose 2:1 multiplexer with
        a configurable input/output width.
*/
module Gp2to1Mux #(
    parameter WIDTH = 64
) (
    input [WIDTH - 1:0] a,
    input [WIDTH - 1:0] b,
    input select,

    output reg [WIDTH - 1:0] out
);

    always @(*) begin
        case(select)
            1'b0: out = a;
            1'b1: out = b;
            default: out = {WIDTH{1'bX}}; 
        endcase
    end

endmodule

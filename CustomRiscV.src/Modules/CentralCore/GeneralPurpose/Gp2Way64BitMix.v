// General Purpose 2 to 1 64-bit Mux
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
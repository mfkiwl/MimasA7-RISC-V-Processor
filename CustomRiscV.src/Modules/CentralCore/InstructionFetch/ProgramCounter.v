/**
    File: ProgramCounter.v
    Author: BlackIsDevin (https://github.com/BlackIsDevin)
    Date: 7/1/2021
    Target Devices:
        Mimas A7 Revision V3 Development Board
        Arty A7-35T Development Board (future target)
    Description:
        This modules implements a 64-bit wide program counter, which is
        effectively just a D flip flop array. 
*/
module ProgramCounter(
    input [63:0] nextPc,
    input clk,
    output [63:0] pc
);

    always @(posedge clk)
        nextPc <= pc;

endmodule

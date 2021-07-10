/**
    File: HardInstructionMemory.v
    Author: BlackIsDevin (https://github.com/BlackIsDevin)
    Date: 6/30/2021
    Target Devices:
        Mimas A7 Revision V3 Development Board
        Arty A7-35T Development Board (future target)
    Description:
        This module acts as a hard-coded instruction memory module. This will
        be used for storing all code for the time being, and later will be
        repurposed as a hard-coded BIOS-like ROM for loading code from an SD
        card into RAM. This might also be potentially used for storing system
        call handlers or other potentially useful things.
*/

module HardInstructionMemory(
    input [63:0] address,

    output reg [31:0] instruction
);

    reg [31:0] hardMemory [0:1023];

    integer i;

    initial begin
        for (i = 0; i < 1024; i = i + 1)
            hardMemory[i] = 32'b10011; // NOP instructions

        // TODO program will go here

    end
    
    always @(*) begin
        instruction = hardMemory[address[11:2]];
    end

endmodule

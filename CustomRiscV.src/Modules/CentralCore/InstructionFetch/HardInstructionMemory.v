// a hard-coded instruction memory module. This will be used for storing code
// for the time being, and later will be repurposed as a hard-coded method for
// loading code from an SD card and system calls, or possibly other things.
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
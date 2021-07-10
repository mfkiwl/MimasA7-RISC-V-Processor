/**
    File: PipelineRegIFID.v
    Author: BlackIsDevin (https://github.com/BlackIsDevin)
    Date: 7/10/2021
    Target Devices:
        Mimas A7 Revision V3 Development Board
        Arty A7-35T Development Board (future target)
    Description:
        This modules implements the IF/ID pipeline register in our pipelined
        RV64 CPU. This is effectively just an array of D flip flops.
*/

module PipelineRegIFID (
    input [63:0] pc,
    input [63:0] inst,
    input clk,
    input stall,

    output reg [63:0] dpc,
    output reg [63:0] dinst
);

    always @(posedge clk) begin
        if (stall == 1'b0) begin
            dpc <= pc;
            dinst <= inst;
        end
    end

endmodule

/**
    This module implements the control unit of our RISC-V core. It handles
        signal generation for execution of all instructions, as well as ALUC
        and forwarding signals.
    @author BlackIsDevin (https://github.com/BlackIsDevin)

    @param dinst input instruction to decode
    @param eq input from comparator in EXE stage, indicates eqa = eqb 
    @param lt input from comparator in EXE stage, indicates eqa < eqb
    @param erd input destination address from EXE stage
    @param mrd input destination address from MEM stage
    
    @param aSel output selector for EXE A Mux, which selects a input for ALU
    @param bSel output selector for EXE B Mux, which selects b input for ALU
    @param aluc output operation indicator for ALU
    @param rSel output selector for EXE R Mux, which selects whether result for
        MEM & WB stages should use output of ALU or Comparator as result value
    @param wmem output write-enable for data memory
    @param m2reg output selextor for WB Mux, which selects data for writeback
    @param wreg output write-enable for the regfile
    @param qaSel output selector for FWD A Mux, which handles forwarding the
        value of A from the EXE or MEM stages to the ID stage if needed
    @param qbSel output selector for FWD B Mux, which handles forwarding the
        value of B from the EXE or MEM stages to the ID stage if needed
    @param immType output that determines the type of immediate we're using
    @param isJalr output selector for JALR Mux, which handles using the value
        of qa instead of dpc if executing a JALR vs a JAL instruction
    @param signedComp output control signal for comparator indicating whether
        the comparison should be signed or unsigned
    @param pcSel output selector for PCSel Mux, which handles selecting the
        value for the next PC
    @param pcStall output control signal for stalling the PC
    @param ifidStall output control signal for stalling the IFID pipeline reg    
*/
module ControlUnit (
    input [31:0] dinst,
    input eq, lt,
    input [4:0] erd, mrd,

    output reg aSel,
    output reg [1:0] bSel,
    output reg [2:0] aluc,
    output reg rSel,
    output reg wmem, m2reg, wreg,
    output reg [1:0] qaSel, qbSel,
    output reg [2:0] immType,
    output reg isJalr, signedComp,
    output reg [1:0] pcSel,
    output reg pcStall, ifidStall
);

endmodule
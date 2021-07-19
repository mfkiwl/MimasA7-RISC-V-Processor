/**
    This module implements the control unit of our RISC-V core. It handles
        signal generation for execution of all instructions, as well as ALUC
        and forwarding signals.
    @author BlackIsDevin (https://github.com/BlackIsDevin)

    @param {7} funct7: input 7-bit function field from instruction
    @param {5} rs2: input 5-bit register 2 field from instruction
    @param {5} rs1: input 5-bit register 1 field from instruction
    @param {3} funct3: input 3-bit function field from instruction
    @param {7} opcode: input 7-bit opcode field from instruction
    @param {1} eq: input 1-bit equal flag from EXE stage, indicates eqa = eqb
    @param {1} lt: input 1-bit less-than flag from EXE stage, indicates eqa < eqb
    @param {5} erd: input 5-bit destination register from EXE stage
    @param {5} mrd: input 5-bit destination register from MEM stage

    @param {1} aSel: output 1-bit EXE A Mux select flag, selects a input for ALU
    @param {1} bSel: output 1-bit EXE B Mux select flag, selects b input for ALU
    @param {3} aluc: output 3-bit ALU control field, selects ALU operation
    @param {1} rSel: output 1-bit EXE R Mux select flag, selects whether result for
        MEM & WB stages should use output from ALU or Comparator as a result value
    @param {1} wmem: output 1-bit MEM stage write flag, indicates whether MEM stage
        should write to memory
    @param {1} m2reg: output 1-bit WB Mux select flag, selects whether result from
        EXE or MEM stage should be written to register file
    @param {1} wreg: output 1-bit WB stage write flag, indicates whether WB stage
        should write to register file
    @param {3} immType: output 3-bit immediate type field, selects immediate type
    @param {1} isJalr: output 1-bit JALR flag, indicates whether instruction is JALR
    @param {1} signedComp: output 1-bit signed comparison flag, indicates whether
        comparison is signed or unsigned
    @param {2} qaSel: output 2-bit FWD A Mux select flag, selects a input for
        forwarding values from EXE or MEM stage to the ID stage if needed
    @param {2} qbSel: output 2-bit FWD B Mux select flag, selects b input for
        forwarding values from EXE or MEM stage to the ID stage if needed
    @param {2} pcSel: output 2-bit PCSel Mux select flag, selects the value
        for the next PC to be written to the PC register
    @param {1} pcStall: output 1-bit PC stall flag, indicates whether Program
        Counter should stall
    @param {1} ifidStall: output 1-bit IFID stall flag, indicates whether IFID
        Pipeline Register should stall
*/

module ControlUnit (
    input [6:0] funct7,
    input [4:0] rs2, rs1,
    input [2:0] funct3,
    input [6:0] opcode,
    input eq, lt,
    input [4:0] erd, mrd,

    output reg aSel,
    output reg [1:0] bSel,
    output reg [2:0] aluc,
    output reg rSel,
    output reg wmem, m2reg, wreg,
    output reg [2:0] immType,
    output reg isJalr, signedComp,
    output reg [1:0] qaSel, qbSel,
    output reg [1:0] pcSel,
    output reg pcStall, ifidStall
);

    always @(*) begin
        case (opcode) 
            7'b0110011: begin // register arithmetic operations

                case (funct3)
                    3'b000: begin // ADD & SUB

                    end
                    3'b111: begin // AND

                    end
                    3'b110: begin // OR

                    end
                    3'b100: begin // XOR

                    end
                    3'b001: begin // SLL

                    end
                    3'b101: begin // SRL & SRA

                    end
                    3'b010: begin // SLT

                    end
                    3'b011: begin // SLTU

                    end
                endcase
            end
            7'b0111011: begin // 32-bit register arithmetic operations

                case (funct3)
                    3'b000: begin // ADDW & SUBW

                    end
                    3'b001: begin // SLLW

                    end
                    3'b101: begin // SRLW & SRAW                    

                    end
                endcase
            end
            7'b0010011: begin // immediate arithmetic operations

                case (funct3)
                    3'b000: begin // ADDI

                    end
                    3'b111: begin // ANDI

                    end
                    3'b110: begin // ORI

                    end
                    3'b100: begin // XORI

                    end
                    3'b001: begin // SLLI

                    end
                    3'b101: begin // SRLI & SRAI

                    end
                    3'b010: begin // SLTI

                    end
                    3'b011: begin // SLTIU
                    
                    end
                endcase
            end
            7'b0011011: begin // 32-bit immediate arithmetic operations

                case (funct3)
                    3'b000: begin // ADDIW

                    end
                    3'b001: begin // SLLIW

                    end
                    3'b101: begin // SRLIW & SRAWI

                    end
                endcase
            end
            7'b1100011: begin // Branch operations

                case (funct3)
                    3'b000: begin // BEQ

                    end
                    3'b001: begin // BNE

                    end
                    3'b100: begin // BLT

                    end
                    3'b101: begin // BGE

                    end
                    3'b110: begin // BLTU

                    end
                    3'b111: begin // BGEU

                    end
                endcase
            end
            7'b0000011: begin // Loads
                
            end
            7'b0100011: begin // Stores

            end
            7'b0001111: begin // FENCE

            end
            7'b1110011: begin // ECALL & EBREAK

            end
            7'b0110111: begin // LUI

            end
            7'b0010111: begin // AUIPC

            end
            7'b1101111: begin // JAL

            end
            7'b1100111: begin // JALR

            end
            default: begin // handle invalid or unimplemented instructions

            end
        endcase
    end


endmodule
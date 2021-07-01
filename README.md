# Custom RISC-V Processor for Mimas A7
This repo contains a processor implementation of the RISC-V RV64I ISA specification. This processor and supporting components are designed to run on the Mimas A7 Revision 3 Development Board.

## Future Goals
My plan is to implement the RV64I base ISA, as well as the following extension ISAs, listed in order of priority:
- Zicsr (Control and Status Register (CSR))
- C (Standard Extension for Compressed Instructions)
- A (Standard Extension for Atomic Instructions)
- M (Standard Extension for Integer Multiplication and Division)
- F (Standard Extension for Single-Precision Floating-Point)
- D (Standard Extension for Double-Precision Floating-Point)
- Q (Standard Extension for Quad-Precision Floating-Point)

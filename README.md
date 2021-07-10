# Custom RISC-V Processor for Mimas A7
This repo contains the beginnings of a processor implementation of the RISC-V
RV64I ISA specification. This processor and supporting components are designed
to run on the Mimas A7 Revision 3 Development Board, although I am considering
porting this to run on the more popular Arty A7 Development Board once I can
get my hands on one.

## Future Goals
My plan is to implement the RV64I base ISA, as well as the following extension
ISAs, listed in order of priority:

- Zicsr (Control and Status Register (CSR))
- Zmmul (Integer Multiplication, no Division)
- C (Compressed Instructions)
- F (Single-Precision Floating-Point)
- D (Double-Precision Floating-Point)
- A (Atomic Instructions)
- Q (Quad-Precision Floating-Point)

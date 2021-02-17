# assignment4_RISC-V_Disassembler
RISC-V 32 Bit Disassembler

Project for Computer Architecture Class

Essentially this project reads a binary file for RISC-V 32 bit systems, and disassembles the binary into readable assembly code. 
Being RISC-V, there are roughly only ~35 or so instructions needed to disassemble. 

Problems this project posed that needed to be solved, various instructions jumble the bits they're assembled into rather from sequentially, to in various positions based
on the type of instruction provided. E.g, add, subtract and set register may have had the same sequence pattern designated as their instructions, but instructions like jump 
could not be decoded the same way based on the addressing of the value it needed to jump to. 

10/10 project. Very interesting learning how to create a dissassembler.

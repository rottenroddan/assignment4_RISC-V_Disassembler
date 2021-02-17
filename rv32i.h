//
// Created by steve on 3/31/2020.
//

#ifndef ASSIGNMENT4_RISC_V_DISASSEMBLER_RV32I_H
#define ASSIGNMENT4_RISC_V_DISASSEMBLER_RV32I_H

#include "memory.h"

class rv32i
{
private:
    memory *mem;    // memory object.
    uint32_t pc;    // Instruction counter.
    static constexpr uint32_t XLEN = 32;    // 32 bit cpu.

public:
    /* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
     * Function:        rv32i(memory *m)                                *
     * @params:         @memory *m - Pointer to memory object. Use the  *
     *                  memory block to load instructions and all.      *
     *                                                                  *
     * Description:     The only rv32i constructor since the object must*
     *                  have a memory block for any binary file to be   *
     *                  decoded. Hence why its the only constructor.    *
     *                                                                  *
     * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
    rv32i(memory *m);

    /* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
     * Function:        run(void)                                       *
     * @params:         -none-                                          *
     *                                                                  *
     * Description:     This function is used to run a memory block and *
     *                  decode the binary file it was provided. It uses *
     *                  a while loop that keeps looping through until   *
     *                  it reaches the end of the memory block as       *
     *                  provided via the command line arguments. It uses*
     *                  the decode function to simplify the loop.       *
     *                                                                  *
     * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
    void run(void);

    /* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
     * Function:        get_opcode(uint32_t insn)                       *
     * @params:         uint32_t insn - 32 bit value containing         *
     *                  instruction value.                              *
     *                                                                  *
     * Description:     Return the first 7 bits of the parameter.       *
     *                  The first 7 bits are always the OPCODE for a    *
     *                  32 bit system for RISC-V.                       *
     *                                                                  *
     * &returns:        &uint32_t - The 7 bits of opcode.
     * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
    static uint32_t get_opcode(uint32_t insn);

    /* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
     * Function:        get_rd(uint32_t insn)                           *
     * @params:         uint32_t insn - 32 bit value containing         *
     *                  instruction value.                              *
     *                                                                  *
     * Description:     The purpose of this function is to return the   *
     *                  5 bits in ranges 7-11.                          *
     *                                                                  *
     * &returns:        &uint32_t - The 5 bits of the register dest.    *
     * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
    static uint32_t get_rd(uint32_t insn);

    /* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
     * Function:        get_funct3(uint32_t insn)                       *
     * @params:         uint32_t insn - 32 bit value containing         *
     *                  instruction value.                              *
     *                                                                  *
     * Description:     The purpose of this function is to return the   *
     *                  value associated in bits 12-14, as most insns   *
     *                  opcode are the same thing, therefor a funct3    *
     *                  is needed to differ between various operations. *
     *                                                                  *
     * &returns:        &uint32_t - 3 bits in bits 12-14.               *
     * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
    static uint32_t get_funct3(uint32_t insn);

    /* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
     * Function:        get_rs1(uint32_t insn)                          *
     * @params:         uint32_t insn - 32 bit value containing         *
     *                  instruction value.                              *
     *                                                                  *
     * Description:     The purpose of this function is to return the   *
     *                  bits in ranges 15-19. Which is the rs1 value for*
     *                  some instructions.                              *
     *                                                                  *
     * &returns:        &uint32_t - The 5 bits of rs1.                  *
     * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
    static uint32_t get_rs1(uint32_t insn);

    /* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
     * Function:        get_rs2(uint32_t insn)                          *
     * @params:         uint32_t insn - 32 bit value containing         *
     *                  instruction value.                              *
     *                                                                  *
     * Description:     The purpose of this function is to return the   *
     *                  bits in ranges 20-24. Which is the rs2 value for*
     *                  some instructions.                              *
     *                                                                  *
     * &returns:        &uint32_t - The 5 bits of rs2.                  *
     * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
    static uint32_t get_rs2(uint32_t insn);

    /* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
     * Function:        get_funct7(uint32_t insn)                       *
     * @params:         uint32_t insn - 32 bit value containing         *
     *                  instruction value.                              *
     *                                                                  *
     * Description:     This function is used to extract bits 25-31.    *
     *                  As some functions share similar funct3 and op-  *
     *                  codes, this is used to differentiate between    *
     *                  those instructions.                             *
     *                                                                  *
     * &returns:        &uint32_t - bits 25-31.                         *
     * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
    static uint32_t get_funct7(uint32_t insn);

    /* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
     * Function:        get_imm_i(uint32_t insn)                        *
     * @params:         uint32_t insn - 32 bit value containing         *
     *                  instruction value.                              *
     *                                                                  *
     * Description:     The purpose of this function is to return bits  *
     *                  20-31. The bits of insn 20-31 are moved to 11-0 *
     *                  as the return value.                            *
     *                                                                  *
     * &returns:        &uint32_t - bits 20-31 moved to 0-11            *
     * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
    static int32_t get_imm_i(uint32_t insn);

    /* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
     * Function:        get_imm_u(uint32_t insn)                        *
     * @params:         uint32_t insn - 32 bit value containing         *
     *                  instruction value.                              *
     *                                                                  *
     * Description:     The purpose this function is to extract imm_u   *
     *                  in bits  12-31, and the bits before are forced  *
     *                  or hardcoded to zero.                           *
     *                                                                  *
     * &returns:        &uint32_t - bits 31-12 and zeroes hardcoded     *
     *                  in bits 11-0.                                   *
     * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
    static int32_t get_imm_u(uint32_t insn);

    /* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
     * Function:        get_imm_b(uint32_t insn)                        *
     * @params:         uint32_t insn - 32 bit value containing         *
     *                  instruction value.                              *
     *                                                                  *
     * Description:     The use of this function is to extract bits     *
     *                  31-25, and bits 11-7, where bit 31 is moved to  *
     *                  12, return bits 13-31 inherit the 31st bit of   *
     *                  the instruction. 7th bit of insn gets moved to  *
     *                  11th bit in the return value, nad 30-25 get     *
     *                  shifted to 10-5. 11-8 go to 4-1, and the 0  bit *
     *                  is a zero.                                      *
     *                                                                  *
     * &returns:        &uint32_t - The imm_b value.                    *
     * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
    static int32_t get_imm_b(uint32_t insn);

    /* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
     * Function:        get_imm_s(uint32_t insn)                        *
     * @params:         uint32_t insn - 32 bit value containing         *
     *                  instruction value.                              *
     *                                                                  *
     * Description:     This function is used to extract the imm_s value*
     *                  of the provided parameter instruction. It is    *
     *                  fairly simple, as the bits 31-12 inherit the    *
     *                  first bit of the insn. Insn bit 31-25 gets moved*
     *                  to 11-5, and bits 11-7 get moved 4-0.           *
     *                                                                  *
     * &returns:        &uint32_t - The imm_s value.                    *
     * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
    static int32_t get_imm_s(uint32_t insn);

    /* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
     * Function:        get_imm_j(uint32_t insn)                        *
     * @params:         uint32_t insn - 32 bit value containing         *
     *                  instruction value.                              *
     *                                                                  *
     * Description:     To return the imm_j value, the return value     *
     *                  bits 31-21 must inherit the first bit for all.  *
     *                  31st bit gets moved to 20th bits, 30-21 get     *
     *                  moved to 10-1. Zero bit is always a zero. Bit   *
     *                  20 is moved to 11, and bits 12-19 are the same. *
     *                                                                  *
     * &returns:        &uint32_t - The imm_j value.
     * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
    static int32_t get_imm_j(uint32_t insn);

    /* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
     * Function:        get_shamt(uint32_t insn)                        *
     * @params:         uint32_t insn - 32 bit value containing         *
     *                  instruction value.                              *
     *                                                                  *
     * Description:     Similar to the i-type instructions, this is     *
     *                  used to return bits 20-24 to bits 0-4. The rest *
     *                  are hardcoded zeros.                            *
     *                                                                  *
     * &returns:        &uint32_t - bits 20-24 moved to 0-4             *
     * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
    static uint32_t get_shamt(uint32_t insn);

    /* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
     * Function:        decode(uint32_t insn) const                     *
     * @params:         uint32_t insn - The instruction we need to      *
     *                  decode and return as a string.                  *
     *                                                                  *
     * Description:     This function is rather large, however is rather*
     *                  necessary to handle the provided case. The      *
     *                  provided argument is first ran with get_opcode()*
     *                  This way we can find out what instruction we are*
     *                  dealing with. E.g. opcode 0b0110111 tells us    *
     *                  that we are dealing with lui instruction. As for*
     *                  instructions with similiar opcodes, we have to  *
     *                  nest more switch statements to derive the actual*
     *                  opcode from that. For example: lb and lh share  *
     *                  opcodes with one another, however, using        *
     *                  get_funct3() we can differentiate between one   *
     *                  another. This is useful. Each case in the switch*
     *                  statement allows us to append to our string     *
     *                  object. Or in this case string stream which is  *
     *                  returned as a string back to the caller.        *
     *                                                                  *
     * &returns:        &string - The appended instruction string.      *
     * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
std::string decode(uint32_t insn) const;

};

#endif //ASSIGNMENT4_RISC_V_DISASSEMBLER_RV32I_H

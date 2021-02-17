//
// Created by steve on 3/31/2020.
//

#include "rv32i.h"
#include <bitset>

const int EMPTY = 0xa5;

rv32i::rv32i(memory *m)
{
    this->pc = 0;       // Initialize instruction counter to zero.
    this->mem = m;      // Set the memory pointer to the file provided.
}


void rv32i::run(void)
{
    get_imm_s(0x4c000923);

    // While pc less than the memory block size, and while there is some code that is not empty.
    while(pc < mem->get_size())
    {
        // Output the following information:
        //  Address: Hex Inscn: Inscn Name:  Parameters:
        // 00000008:   4d7ab06f         lui   x0,0xabcde
        std::cout << hex32(pc) << ": " << decode(mem->get32(pc)) << std::endl ;
        pc += XLEN / 8;    // Increment instruction pointer by 4 bytes.
    }
    this->mem->dump();
}


uint32_t rv32i::get_opcode(uint32_t insn)
{
    return ((insn << 25) >> 25 );   // Shift the bits to left 23 bits to give
}


uint32_t rv32i::get_rd(uint32_t insn)
{
    return ((insn << 20) >> 27);    // shift left to remove left bits, move it 27 places to the right/
}


uint32_t rv32i::get_funct3(uint32_t insn)
{
    return (insn << (31-14) ) >> 29;    // Get the Function 3 of the instruction. Lies in bits 12-14.
}


uint32_t rv32i::get_rs1(uint32_t insn)
{
    return (insn << (12)) >> 27;    // shift bits to left twelve to remove left most bits.
}


uint32_t rv32i::get_rs2(uint32_t insn)
{
    return (insn << (31 - 24)) >> 27;   // shift left 7 bits to move to the right 27.
}


uint32_t rv32i::get_funct7(uint32_t insn)
{
    return (insn >> 25);    // move bits 25-31 to 0-6.
}

uint32_t rv32i::get_shamt(uint32_t insn)
{
    uint32_t r = 0; // set r to zero to add to 20-24 bits.
    uint32_t twentyToTwentyFour = (insn << 7) >> 27;
    return r + twentyToTwentyFour;
}


int32_t rv32i::get_imm_i(uint32_t insn)
{


    int32_t i = insn >> 20;    // Move the MSB range of 31-20 to positions 11-0.

    // If the first bit 8 in hex to binary is 0b1000. Therefore if both bits are that, then we or 0xfffff000 to
    // the i value, that way all ones are set to these values as the first bit was a one.
    if (insn & 0x80000000) {
        i |= 0xfffff000;
    }

    return i;   // return i back to the caller.
}


int32_t rv32i::get_imm_u(uint32_t insn)
{
    return (insn >> 12);    // shift bits to the right 12 to get the imm_u
}


int32_t rv32i::get_imm_b(uint32_t insn)
{
    //std::cout << "Orig:   " << std::bitset<32>(insn) << std::endl;
    int32_t r = 0; // initializing return value.

    if(insn & 0x80000000)
    {
        r |= 0xfffff000;    // Set bits 31-12 to the first bit.
    }

    int32_t seventhBit = ((insn << (31-7)) >> 31) << 11;   // Get the Seventh bit, put it in place.
    int32_t thirtyToTwentyFive = ((insn << 1) >> 26) << 5;
    int32_t elevenToEight = ((insn << 20) >> 28) << 1;

    //std::cout << "========|31 |27 |23 |19 |15 |11 |7  |3  " << std::endl;
    //std::cout << "31-12:  " << std::bitset<32>(r) << std::endl;
    //std::cout << "7th:    " << std::bitset<32>(seventhBit) << std::endl;
    //std::cout << "30-25   " << std::bitset<32>(thirtyToTwentyFive) << std::endl;
    //std::cout << "11-8    " << std::bitset<32>(elevenToEight) << std::endl;

    return (r + seventhBit + thirtyToTwentyFive + elevenToEight);




}


int32_t rv32i::get_imm_s(uint32_t insn)
{
    int32_t r = 0; // Initialize return value to zero.
    int32_t thirtyOneToTwentyFive = ((insn) >> 25) << 5;   // Grab bits 31-25 and put them in bits 11-5.
    int32_t elevenToSeven = ((insn << 20) >> 27);          // Grab bits 11-7 and put them in bits 0-4.

    r += elevenToSeven + thirtyOneToTwentyFive; // Add them together.

    // If the first bit 8 in hex to binary is 0b1000. Therefore if both bits are that, then we or 0xfffff000 to
    // the i value, that way all ones are set to these values as the first bit was a one.
    if(insn & 0x80000000)
    {
        r |= 0xfffff000;
    }
    return r;   // return to the caller.
}


int32_t rv32i::get_imm_j(uint32_t insn)
{
    //std::cout << "      abcdefghijklmnopqrst||||||||||||" << std::endl;
    //std::cout << "      " << std::bitset<32>(insn) << std::endl;                //
    int32_t twelveToNineTeen = (((insn) << 12) >> 24) << 12;
    int32_t firstBit = (insn >> 31) << 20;
    int32_t twentyOneToThirty = ((insn << 1) >> 22) << 1;
    int32_t twentyBit = (((insn) >> 20) << 31) >> 20 ;
    int32_t r = twelveToNineTeen + firstBit + twentyOneToThirty + twentyBit;
    if(insn & 0x80000000)
        r |= 0xfff00000;


    /*std::cout << "12:19 " << std::bitset<32>(twelveToNineTeen) << std::endl
              << "1st   " << std::bitset<32>(firstBit) << std::endl
              << "21:30 " << std::bitset<32>(twentyOneToThirty) << std::endl
              << "20:   " << std::bitset<32>(twentyBit) << std::endl
              << "Total " << std::bitset<32>(r) << std::endl;

    std::cout << std::endl << std::endl;*/
    return r;
}

std::string rv32i::decode(uint32_t insn) const
{
    std::ostringstream os;
    os << hex32(insn) << "  ";

    switch(get_opcode(insn))
    {
        // LUI instruction: 0110111.
        case 0b0110111:
            os << "lui    x" << std::dec << get_rd(insn) << ",0x"
                << std::hex << get_imm_u(insn);
            break;

        // auipc instruction: 0010111
        case 0b0010111:
            os << "auipc  x" << std::dec << get_rd(insn) << ",0x"
                << std::hex << get_imm_u(insn);
            break;

        //jal
        case 0b1101111:
            os << "jal    x" << std::dec << get_rd(insn) << ",0x"
                << std::hex << ((int)get_imm_j(insn) + this->pc);
            break;

        //jalr
        case 0b1100111:
            os << "jalr   x" << std::dec << get_rd(insn) << ","
                << (int)get_imm_i(insn)
                << "(x" << get_rs1(insn) << ")";
            break;

        //beq, bne, blt, bge, bltu, bgeu
        case 0b1100011:
            switch(get_funct3(insn))
            {
                //beq
                case 0b000:
                    os << "beq    x" << std::dec
                        << get_rs1(insn) << ",x"
                        << get_rs2(insn) << ",0x"
                        << std::hex << get_imm_b(insn) + pc;
                    break;

                //bne
                case 0b001:
                    os << "bne    x" << std::dec
                       << get_rs1(insn) << ",x"
                       << get_rs2(insn) << ",0x"
                       << std::hex << get_imm_b(insn) + pc;
                    break;

                // blt
                case 0b100:
                    os << "blt    x" << std::dec
                       << get_rs1(insn) << ",x"
                       << get_rs2(insn) << ",0x"
                       << std::hex << get_imm_b(insn) + pc;
                    break;

                // bge
                case 0b101:
                    os << "bge    x" << std::dec
                       << get_rs1(insn) << ",x"
                       << get_rs2(insn) << ",0x"
                       << std::hex << get_imm_b(insn) + pc;
                    break;

                // bltu
                case 0b110:
                    os << "bltu   x" << std::dec
                       << get_rs1(insn) << ",x"
                       << get_rs2(insn) << ",0x"
                       << std::hex << get_imm_b(insn) + pc;
                    break;

                // bgue
                case 0b111:
                    os << "bgeu   x" << std::dec
                       << get_rs1(insn) << ",x"
                       << get_rs2(insn) << ",0x"
                       << std::hex << get_imm_b(insn) + pc;
                    break;
                default:
                    os << "ERROR";  // Should be unreachable, incase its not.
            }
            break;
        case 0b0000011:
            switch(get_funct3(insn))
            {
                // lb
                case 0b000:
                    os << "lb     x" << std::dec
                       << get_rd(insn) << ","
                       << (int)get_imm_i(insn) << "(x"
                       << get_rs1(insn) << ")";
                    break;
                // lh
                case 0b001:
                    os << "lh     x" << std::dec
                       << get_rd(insn) << ","
                       << (int)get_imm_i(insn) << "(x"
                       << get_rs1(insn) << ")";
                    break;

                // lw
                case 0b010:
                    os << "lw     x" << std::dec
                       << get_rd(insn) << ","
                       << (int)get_imm_i(insn) << "(x"
                       << get_rs1(insn) << ")";
                    break;

                // lbu
                case 0b100:
                    os << "lbu    x" << std::dec
                       << get_rd(insn) << ","
                       << (int)get_imm_i(insn) << "(x"
                       << get_rs1(insn) << ")";
                    break;

                // lhu
                case 0b101:
                    os << "lhu    x" << std::dec
                       << get_rd(insn) << ","
                       << (int)get_imm_i(insn) << "(x"
                       << get_rs1(insn) << ")";
                    break;

                default:
                    os << "ERROR";
            }
            break;

        case 0b0100011:
            // sb, sh, sw instructions.
            switch(get_funct3(insn))
            {
                // sb
                case 0b000:
                    os << "sb     x" << std::dec
                        << get_rs2(insn) << ","
                        << (int)get_imm_s(insn) << "(x"
                        << get_rs1(insn) << ")";
                    break;

                // sh
                case 0b001:
                    os << "sh     x" << std::dec
                        << get_rs2(insn) << ","
                        << (int)get_imm_s(insn) << "(x"
                        << get_rs1(insn) << ")";
                    break;

                // sw
                case 0b010:
                    os << "sw     x" << std::dec
                       << get_rs2(insn) << ","
                       << (int)get_imm_s(insn) << "(x"
                       << get_rs1(insn) << ")";
                    break;
                default:
                    os<<"ERROR";
            }
            break;
        case 0b0010011:
            // addi, slti, sltiu, xori, ori, andi, slli, slri, srai.
            switch(get_funct3(insn))
            {
                // addi
                case 0b000:
                    os << "addi   x" << std::dec
                        << get_rd(insn) << ",x"
                        << get_rs1(insn) << ","
                        << (int)get_imm_i(insn);
                    break;

                // slti
                case 0b010:
                    os << "slti   x" << std::dec
                       << get_rd(insn) << ",x"
                       << get_rs1(insn) << ","
                       << (int)get_imm_i(insn);
                    break;

                // sltiu
                case 0b011:
                    os << "sltiu  x" << std::dec
                       << get_rd(insn) << ",x"
                       << get_rs1(insn) << ","
                       << (int)get_imm_i(insn);
                    break;

                // xori
                case 0b100:
                    os << "xori   x" << std::dec
                       << get_rd(insn) << ",x"
                       << get_rs1(insn) << ","
                       << (int)get_imm_i(insn);
                    break;

                // ori
                case 0b110:
                    os << "ori    x" << std::dec
                       << get_rd(insn) << ",x"
                       << get_rs1(insn) << ","
                       << (int)get_imm_i(insn);
                    break;

                // andi
                case 0b111:
                    os << "andi   x" << std::dec
                       << get_rd(insn) << ",x"
                       << get_rs1(insn) << ","
                       << (int)get_imm_i(insn);
                    break;

                case 0b001:
                    os << "slli   x" << std::dec
                        << get_rd(insn) << ",x"
                        << get_rs1(insn) << ","
                        << get_shamt(insn);
                    break;

                case 0b101:
                    switch(get_funct7(insn))
                    {
                        case 0b0000000:
                            os << "srli   x" << std::dec
                                << get_rd(insn) << ",x"
                                << get_rs1(insn) << ","
                                << get_shamt(insn);
                            break;
                        case 0b0100000:
                            os << "srai   x" << std::dec
                               << get_rd(insn) << ",x"
                               << get_rs1(insn) << ","
                               << get_shamt(insn);
                            break;
                        default:
                            os << "ERROR";
                    }
                    break;

                default:
                    os << "ERROR";
            }
            break;
        case 0b0110011:
            switch(get_funct3(insn))
            {
                // add or subtract case.
                case 0b000:
                    switch(get_funct7(insn))
                    {
                        // add instruction.
                        case 0b0000000:
                            os << "add    x" << std::dec
                                << get_rd(insn) << ",x"
                                << get_rs1(insn) << ",x"
                                << get_rs2(insn);
                            break;

                        // sub instruction.
                        case 0b0100000:
                            os << "sub    x" << std::dec
                               << get_rd(insn) << ",x"
                               << get_rs1(insn) << ",x"
                               << get_rs2(insn);
                            break;
                        default:
                            os << "ERROR";
                    }
                    break;

                // sll instruction.
                case 0b001:
                    os << "sll    x" << std::dec
                       << get_rd(insn) << ",x"
                       << get_rs1(insn) << ",x"
                       << get_rs2(insn);
                    break;

                // slt instruction.
                case 0b010:
                    os << "slt    x" << std::dec
                       << get_rd(insn) << ",x"
                       << get_rs1(insn) << ",x"
                       << get_rs2(insn);
                    break;

                // sltu instruction.
                case 0b011:
                    os << "sltu   x" << std::dec
                       << get_rd(insn) << ",x"
                       << get_rs1(insn) << ",x"
                       << get_rs2(insn);
                    break;

                // xor instruction.
                case 0b100:
                    os << "xor    x" << std::dec
                       << get_rd(insn) << ",x"
                       << get_rs1(insn) << ",x"
                       << get_rs2(insn);
                    break;

                // srl and sra.
                case 0b101:
                    switch(get_funct7(insn))
                    {
                        // srl Instruction.
                        case 0b0000000:
                            os << "srl    x" << std::dec
                               << get_rd(insn) << ",x"
                               << get_rs1(insn) << ",x"
                               << get_rs2(insn);
                            break;
                        // sra Instruction.
                        case 0b0100000:
                            os << "sra    x" << std::dec
                               << get_rd(insn) << ",x"
                               << get_rs1(insn) << ",x"
                               << get_rs2(insn);
                            break;
                        default:
                            os << "ERROR";
                    }
                    break;
                // or Instruction.
                case 0b110:
                    os << "or     x" << std::dec
                       << get_rd(insn) << ",x"
                       << get_rs1(insn) << ",x"
                       << get_rs2(insn);
                    break;

                // and Instruction.
                case 0b111:
                    os << "and    x" << std::dec
                       << get_rd(insn) << ",x"
                       << get_rs1(insn) << ",x"
                       << get_rs2(insn);
                    break;
                default:
                    os << "ERROR";
            }
            break;
        case 0b1110011:
            // if 20th bit in insn is a bit.
            if(0x00100000 & insn)
            {
                os << "ebreak    ";
            }
            else
            {
                os << "ecall    ";
            }
            break;
        case 0b0001111:
            os << "fence  ";
            if(insn & 0x08000000)
            {
                os << "i";
            }
            if(insn & 0x04000000)
            {
                os << "o";
            }
            if(insn & 0x02000000)
            {
                os << "r";
            }
            if(insn & 0x01000000)
            {
                os << "w";
            }

            os << ",";
            if(insn & 0x00800000)
            {
                os << "i";
            }
            if(insn & 0x00400000)
            {
                os << "o";
            }
            if(insn & 0x00200000)
            {
                os << "r";
            }
            if(insn & 0x00100000)
            {
                os << "w";
            }

            break;

        default:    // None of the above Cases.
            os << "ERROR";
    }

    return os.str();
}
cmake_minimum_required(VERSION 3.10)
project(assignment4_RISC_V_Disassembler)

set(CMAKE_CXX_STANDARD 17)

add_executable(assignment4_RISC_V_Disassembler main.cpp hex.h hex.cpp memory.h memory.cpp rv32i.h rv32i.cpp)
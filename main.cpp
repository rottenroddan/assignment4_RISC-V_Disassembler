/* * * * * * * * * * * * * * * * * * * * * * * *
 * Program: Assignment 4                        *
 * Author:  Steven Roddan(z1859888)             *
 * Date:    04/03/2020                          *
 * Purpose: To create a decoder for rv32i       *
 *          instructions. Memory will be loaded *
 *          from binary files, and rv32i will   *
 *          extract 4 bytes at a time to decoded*
 *          the instructions into a readable    *
 *          assembly language.                  *
 * * * * * * * * * * * * * * * * * * * * * * * */
#include "hex.h"
#include "memory.h"
#include "rv32i.h"
#include <iostream>
#include <sstream>
#include <string>



// The use of this function is provide a simple error message to stdout.
void usage(std::ostringstream *err)
{
    std::cout << "Error: " << err->str() << std::endl;
}

int  main(int argc , char **argv)
{

    // setbuf(stdout, 0);  // For debugging uses on CLION

    if (argc != 3)
    {
        std::ostringstream os;
        os << "Expected 3 Args, got: " << argc;
        usage(&os);
        return 13;
    }

    memory mem(std::stoul(argv[1], 0, 16)); // Create memory object with second arg as size const.

    // Load File.
    if (!mem.load_file(argv [2]))
    {
        std::ostringstream os;
        os << "File: " << argv[2] << " could not be opened! ";
        usage(&os); // Return
        return 14;
    }
    //mem.dump(); // Dump memory contents.

    rv32i sim(&mem);    // create rv32i object with mem object.
    sim.run();          // run the function: run

    return 0;
}
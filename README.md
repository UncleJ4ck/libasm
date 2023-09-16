# libasm

libasm is a minor implementation of the C standard library, recoded in the x86-64 assembly language using the Netwide Assembler (NASM) tool. It is intended as an educational project to help me understand the low level side of C and having fun.

> but first let's explain some basic stuff

## CPU architecture and registers

A central processing unit (CPU) is the electronic circuitry within a computer that carries out the instructions of a computer program by performing the basic arithmetic, logical, control, and input/output (I/O) operations specified by the instructions. It is the "brain" of the computer, responsible for executing most of the instructions that make up a computer program.

The CPU is built up of a number of different components, including an arithmetic and logical unit (ALU) and a control unit (CU). The ALU is responsible for carrying out arithmetic and logical operations on data, such as addition, subtraction, multiplication, and comparison. The CU is responsible for decoding instructions and coordinating the flow of data and instructions within the CPU and between the CPU and other components of the computer.

One of the key components of the CPU are its registers, which are small, high-speed storage locations that are built into the CPU itself. Registers are used to store data and instructions that are currently being worked on by the CPU. There are several different types of registers, each serving a different purpose. For example, the instruction pointer (IP) register holds the address of the next instruction to be executed by the CPU, while the accumulator register (ACC) is used to store the result of arithmetic and logical operations.

## NASM x86-64

NASM (Netwide Assembler) is an open-source assembler for the x86-64 architecture, which is a 64-bit extension of the x86 instruction set used by most personal computers. NASM allows users to write assembly language programs that can be run on a variety of operating systems, including Linux, Windows, and macOS.

x86-64 is a backward-compatible extension of the x86 instruction set, which adds new features and instructions to support 64-bit addressing and data operations. This allows programs written in x86-64 assembly to take advantage of the increased memory and processing capabilities of modern computers.

libasm is written in x86-64 assembly using NASM, making it portable and easy to integrate with other programs written in a variety of languages and for a variety of platforms.

## Resources

- https://en.wikibooks.org/wiki/X86_Disassembly/
- https://wiki.osdev.org/Assembly
...

## TO-DO
- [ ] Using ring-0 instructions to do simple stuff (exploring the other side)
- [ ] Malloc from scratch
- [ ] Fixing bugs
- [ ] Optimizing the code by deleting loops
.....

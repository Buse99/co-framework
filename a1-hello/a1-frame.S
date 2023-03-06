# *********************************************************************************
# * Program name: Hello World                                                     *
# * Description :                                                                 *
# *********************************************************************************

#ifndef MACOS
.ifndef CODEGRADE
    .global main
    main: jmp my_main
.endif
#else
    .global _main
    _main: jmp my_main
    printf: jmp _printf
    exit: jmp _exit
#endif

.text
# your strings here
message:                                # I am initializing a variable named message
    .asciz "Buse Basavci & Shabnam Alizada, 2769468 & 2666615, Assignment 1: your first simple program..\n" # In the variabel I mentioned above, I store a string with all the information I have to output on the terminal for the assignment.

.global my_main                         # make my_main accessible globally
my_main:                                # I create a subroutine called: my_main
    pushq $49                           # stores a random constant onto the stack
    movq $0 , %rax                      # moves the 1st argument to its place on the stack
    leaq message(%rip) , %rdi           # load string variable from rip to rdi

    call printf                         # send a formatted string to the standard output (the display)

	# IMPLEMENT ME   


end:                                    # assembler has reached the end of the source file
    movq $0 , %rdi                      # put 0 to rdi
    call exit                           # causes a program to unconditionally end and return to where the program was called

#test
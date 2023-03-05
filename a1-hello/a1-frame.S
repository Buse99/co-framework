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
message:
    .asciz "Buse Basavci & Shabnam Alizada, 2769468 & ....., Assignment 1: your first simple program\n"

.global my_main                         # make my_main accessible globally
my_main:
    pushq $49
    movq $0 , %rax
    leaq message(%rip) , %rdi

    call printf

	# IMPLEMENT ME   


end:
    movq $0 , %rdi
    call exit 

#test
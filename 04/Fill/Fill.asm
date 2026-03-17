// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

//// Replace this comment with your code.
@i
M=0
@SCREEN
D=A
@addr
M=D
@131
D=A
@uparrow
M=D


(MAINLOOP)
@SCREEN
D=A
@addr
M=D
@i
M=0
@KBD
D=M
@uparrow
D=D-M
@BLACKLOOP
D;JEQ
@WHITELOOP
0;JMP

(BLACKLOOP)
    @i
    D=M
    @8192
    D=D-A
    @MAINLOOP
    D;JGE
    @addr
    A=M
    M=-1
    @addr
    M=M+1
    @i
    M=M+1
    @BLACKLOOP
    0;JMP

(WHITELOOP)
    @i
    D=M
    @8192
    D=D-A
    @MAINLOOP
    D;JGE
    @addr
    A=M
    M=0
    @addr
    M=M+1
    @i
    M=M+1
    @WHITELOOP
    0;JMP



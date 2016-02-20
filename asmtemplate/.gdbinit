set architecture arm
target remote :1234
symbol-file hw05.elf
b _start
b iloop
Pause

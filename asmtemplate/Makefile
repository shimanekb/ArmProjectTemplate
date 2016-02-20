CROSS_COMPILE ?= arm-none-eabi

AOPS = --warn --fatal-warnings -g
COPS = -Wall -Werror -g -O2 -nostdlib -nostartfiles -ffreestanding 

$(HW_NAME).bin : $(HW_NAME).s $(HW_NAME)_memmap
	$(CROSS_COMPILE)-as $(AOPS) $(HW_NAME).s -o $(HW_NAME).o
	$(CROSS_COMPILE)-ld $(HW_NAME).o -T $(HW_NAME)_memmap -o $(HW_NAME).elf
	$(CROSS_COMPILE)-objdump -D $(HW_NAME).elf > $(HW_NAME).list
	$(CROSS_COMPILE)-objcopy $(HW_NAME).elf -O binary $(HW_NAME).bin


# run with: qemu-system-arm -S -s -M versatilepb -daemonize -m 128M -d in_asm,cpu,exec -kernel hw00.bin
# gdb-multiarch --batch --command=hw00.gdb
#
# qemu-system-arm launches the bare metal ARM processor emulator (along with some other devices, like a UART interface, etc.)
# the -M versatilepb indicates a particular machine mode
# the -m 128M gives the processor access to 128MB RAM
# the program is hw04.bin
# the gdb-multiarch enables a GDB connection to the QEMU system for debugging purposes
#
# to see if the given program works, once running, it should have launched a QEMU console window, then press control+alt+3, which opens the UART port


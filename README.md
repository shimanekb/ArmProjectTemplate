# ArmProjectTemplate
Project template for running simple arm programs in GDB.

##Prerequisites
1. 32-bit Linux operating system. I used Ubuntu.
2. Install QEMU 
  - Install command: *sudo apt-get install qemu qemu-system qemu-user qemu-utils*
3. Install GCC Compiler
  - Installation steps: 
    1. wget https://launchpad.net/gcc-arm-embedded/4.7/4.7-2013-q3-update/+download/gcc-arm-none-eabi-4_7-2013q3-20130916-linux.tar.bz2
    1. tar -xjvf gcc-arm-none-eabi-4_7-2013q3-20130916-linux.tar.bz2 
    2. sudo mv gcc-arm-none-eabi-4_7-2013q3 /opt/ARM
    3. echo "PATH=$PATH:/opt/ARM/bin" >> /home/"$(whoami)"/.bashrc 
    4. source /home/"$(whoami)"/.bashrc
4. Install GDB
  - Install command: *sudo apt-get install gdb-multiarch*

##How to use
1. Download ArmProjectTemplate and change file names, code within hw.s to the desired assembly program.
2. Execute assembly program by running the make_and_run script with the *.s file name minus the .s .
  - Example: ./make_and_run hw
  - Run make_and_run script with the '-h' option to get help text.

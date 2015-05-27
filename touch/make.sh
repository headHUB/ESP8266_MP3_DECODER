#!/bin/bash -e
make COMPILE=gcc BOOT=none APP=0 SPI_SPEED=40 SPI_MODE=QIO SPI_SIZE=512
#xtensa-lx106-elf-size 
${ESPTOOL} --port ${ESPPORT} --baud ${ESPBAUD} write_flash 0x00000 ../bin/eagle.flash.bin 0xa0000 ../bin/eagle.irom0text.bin


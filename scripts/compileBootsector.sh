#!/bin/bash

# Assemble bootloader
nasm bootloader/bootsector.asm -f bin -o target/bootsector.bin

# For now compile target/bootsector.bin to valid bootable iso
truncate target/bootsector.bin -s 1200k
genisoimage -o target/KiwiOS.iso -b bootsector.bin target/

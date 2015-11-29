#!/bin/bash

# Create KiwiOS.iso

# For now compile bootloader/bootsector.bin to valid bootable iso
truncate bootloader/bootsector.bin -s 1200k
genisoimage -o target/KiwiOS.iso -b bootsector.bin bootloader/

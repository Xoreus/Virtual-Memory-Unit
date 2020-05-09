#!/bin/bash -e
echo "Compiling"
gcc mmu_256.c -o mmu_256.o
echo "Running"
./mmu_256.o BACKING_STORE.bin addresses.txt > out_256.txt
echo "Comparing"
diff out_256.txt correct.txt

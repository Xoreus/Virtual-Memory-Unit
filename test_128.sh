#!/bin/bash -e
echo "Compiling"
gcc mmu_128.c -o mmu_128.o
echo "Running"
./mmu_128.o BACKING_STORE.bin addresses.txt > out_128.txt
echo "Comparing"
diff out_128.txt correct.txt

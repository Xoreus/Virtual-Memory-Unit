There are two versions of the MMU in this folder. One is the mmu_128 which is a mmu with a page table of size 128
and another is a mmu with a page table of size 256 called mmu_256.

To use this program there is a test_XXX.sh file associated with each of the versions of the mmu.

For example if you would like the run the mmu with a page table of size 128 you should do the following
1.	./test_128.sh
Running this file will compile the C code and output STDOUT of the program into a text file called "out_128.txt"
The information within "out_128.txt" is similar to what you would find in "correct.txt execpt for a few key 
differences. In "out_128.txt" you will find the page fault rate and TLB hit rate which is unlike the "correct.txt"
which only shows the number of times each of these happen. Another file that will be generated is OUTPUT_xxx.csv
in this csv file there are three columns with 
    Column 1: The logical address being translated (the integer value being read from addresses.txt).
    Column 2: The corresponding physical address (what your program translates the logical address to).
    Column 3: The signed byte value (i.e., the binary value) stored in physical memory at the translated physical 		      address.
The exact same things happen when you call ./test_256.sh which uses a mmu with a page table of size 256.

At the end of the run you can use the make file to remove all generated files. In order to do so you may use the
following command:
    For mmu_128: make clean_128
    For mmu_256: make clean_256
The command will remove all associated generated files from ./test_128.sh or ./test_256.



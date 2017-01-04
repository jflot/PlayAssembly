# PlayAssembly
Test assembly

Create reads file from random genome
./mutareads random.fa readrandom  4000000 100 0.01 0 0

Create reads file from E.coli genome
./mutareads ecoli.fa readecoli  4000000 100 0.01 0 0

Correct a read file, output a file *_corrected.fasta
./Bloocoo -file readrandom.fasta

Assemble a read file
./minia -in  readrandom.fasta

Assemble a read file with custom k
./minia -in  readrandom_corrected.fasta -kmer-size 63

Evaluate the assembly
n50 readrandom_corrected.contigs.fa


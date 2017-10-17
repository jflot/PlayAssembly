# PlayAssembly
## Basic commands

Create reads file from random genome with sim_reads
`sim_reads --depth 50 --read_length 100  random.fa ecoli.100bp.50x.fa`

Create reads file from E.coli genome
`sim_reads --depth 50 --read_length 100  ecoli.fa ecoli.100bp.50x.fa`

Correct a read file, output a file *_corrected.fasta
`Bloocoo -file readrandom.fasta`

Assemble a read file
`minia -in  readrandom.fasta`

Assemble a read file with custom k
`minia -in  readrandom_corrected.fasta -kmer-size 63`

Evaluate the assembly
`n50 nadine.contigs.fa`


## Try assembly


Compare the E. coli assembly with the random sequence

Compare an E. coli assembly with and without correction

What is the best assembly you can obtain with and without correction, which kmer size did you use ?
(ntcard can help you)

What happens with longer reads (250 bp) ?

What happens with a higher (or lower) error rate ?

Try to map the contigs on the reference genome using BWA





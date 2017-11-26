# PlayAssembly: a genome assembly practical

## Installation

`git clone https://github.com/jflot/PlayAssembly`
`cd PlayAssembly`
`./install.sh`

add the PlayAssembly and PlayAssembly/BRAW folder to your $PATH:
`export PATH=~/PlayAssembly/:~/PlayAssembly/BRAW/:$PATH`

## Basic tools

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


## Practical


Compare the E. coli assembly with the random sequence

Compare an E. coli assembly with and without correction

How the N50 change according to K (k=21,k=31,k=41 etc) ?
(R Plot would be nice)

What is the best assembly you can obtain with and without correction, which kmer size did you use ?
(ntcard can help you)

What happens with longer reads (250 bp) ?

What happens with a higher (or lower) error rate ?

Try to map the contigs on the reference genome using BWA

Try to assemble other genome from NCBI https://www.ncbi.nlm.nih.gov/genome/browse/





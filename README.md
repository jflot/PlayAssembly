# PlayAssembly: a genome assembly practical

## Installation

`git clone https://github.com/jflot/PlayAssembly`

`cd PlayAssembly`

`./install.sh`

Add the PlayAssembly and PlayAssembly/BRAW folder to your $PATH:

`export PATH=~/PlayAssembly/:~/PlayAssembly/BRAW/:$PATH`

## Basic commands

To generate single reads 150-bp long with a 50X coverage and a 0.01 (=1%) error rate

`simulator ecoli.fa 150 50 0.01 ecoli_15_50_0.01` (the perfect reads are stored in a file named p.ecoli_15.50_0.01.fasta, and the simulated reads with errors in ecoli_15.50_0.01.fasta)

To generate paired reads 150-bp long with 700 bp fragment size (= read lengths + distance between the reads), a 50X coverage and a 0.01 (=1%) error rate in the PE (→ ←) orientation (for the ← → choose MP)

`pairedSimulator random.fa 150 700 50 0.01 random_150_700_50_0.01 PE`

To correct a read file using bloocoo

`Bloocoo -file random_150_700_50_0.01.fasta` (this outputs a file with name ending with *_corrected.fasta)

To check the result of the correction

`correctionEvaluator p.ecoli_15_50_0.01.fa  ecoli_15_50_0.01.fa ecoli_15_50_0.01_corrected.fasta`

To assemble a file of reads using minia

`minia -in readrandom.fasta`

To assemble a file of reads using a specific k value

`minia -in  readrandom_corrected.fasta -kmer-size 63`

To check the statistics of the resulting assembly

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





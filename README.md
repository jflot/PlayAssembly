# PlayAssembly: a genome assembly practical

## Installation

`git clone https://github.com/jflot/PlayAssembly`

`cd PlayAssembly`

`./install.sh`

Add the PlayAssembly and PlayAssembly/BRAW folder to your $PATH:

`export PATH=~/PlayAssembly/:~/PlayAssembly/BRAW/:$PATH`

## Basic commands

To generate single reads 150-bp long with a 50X coverage and a 0.01 (=1%) error rate:

`simulator ecoli.fa 150 50 0.01 ecoli_15_50_0.01` (the perfect reads are stored in a file named p.ecoli_15.50_0.01.fasta, and the simulated reads with errors in ecoli_15.50_0.01.fasta)

To generate paired reads 150-bp long with 700 bp fragment size (= read lengths + distance between the reads), a 50X coverage and a 0.01 (=1%) error rate in the PE (→ ←) orientation (for the ← → choose MP):

`pairedSimulator random.fa 150 700 50 0.01 random_150_700_50_0.01 PE`

To correct a read file using Bloocoo:

`Bloocoo -file random_150_700_50_0.01.fasta` (this outputs a file with name ending with *_corrected.fasta)

To check the result of the correction:

`correctionEvaluator p.ecoli_15_50_0.01.fa  ecoli_15_50_0.01.fa ecoli_15_50_0.01_corrected.fasta`

To assemble a file of reads using minia

`minia -in ecoli_15_50_0.01.fa`

To assemble a file of reads using a specific k value

`minia -in ecoli_15_50_0.01.fa -kmer-size 63`

To check the statistics of the resulting assembly

`n50 ecoli_15_50_0.contigs.fa`


## Practical questions


Compare the assembly of 150-bp reads without error, with 1% error or with 1% error but corrected with Bloocoo: what difference do you see? What happens with a higher (e.g. 5%) error rate? What is the effect of using paired-end reads rather than single reads? What difference do you see when using longer reads (250 bp)?

How does the N50 of the assembly by minia change according to the k value chosen (you can try e.g. k=21, k=31, k=41 etc. and plot the results using e.g. R or xmgrace)?

Compare the assembly of reads generated from the *E. coli* genome with the assembly of reads generated from the random sequence (of the same length): which one has the greater degree of continuity (i.e. the greater N50)? What could explain this?










#!/bin/bash

##this script was executed on the Auburn Supercomputer Cluster - Easley and script/job submission is formatted for this platform.
##The program bcftools is a package that can be loaded in on Easley.

module load bcftools

##BCFTools annotate can perform the function of renaming chromosomes within a VCF file as long as a rename.txt file is referenced (made in script #2).
###This will put our VCF into the correct format for the next software needed to go through our analysis.
####The new file outputted can be denoted by the addition of "renamed" in the file name.
bcftools annotate --rename-chrs renamefinal.txt SOSP_RADseq_SNPs_NoMAF.vcf.gz > SOSP_RADseq_SNPs_NoMAF_renamed.vcf.gz

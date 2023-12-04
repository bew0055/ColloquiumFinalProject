#!/bin/bash

##this script was executed on the Auburn Supercomputer Cluster - Easley and script/job submission is formatted for this platform.
##Plink version 1.9 is a package accessible through the Easley Cluster.
module load plink/1.9

##Plink is a program used to put files into a more managable format for many informatics programs (it is what Admixture expects as an input).
###The files created here by the make bed flag are .bim, .bam, and .fam files. Allowing extra chr and double id are used to ensure the scaffold format is still acceptible for this program to run since it is outside of the "normal" format.
####The output files will have the names PaperData.(insert file type ending here).
#####Plink files are the recommended input format for Admxiture analyses, which is the ultimate goal of this pipeline.
plink --make-bed --double-id  --out PaperData --vcf SOSP_RADseq_SNPs_NoMAF_renamed.vcf.gz --allow-extra-chr 

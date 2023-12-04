#!/bin/bash

##this script was executed on the Auburn Supercomputer Cluster - Easley and script/job submission is formatted for this platform.
##The first step in this pipeline is to run zipping and indexing on the original VCF file. These steps get the data ready for processing down the line and creates an index file used by programs to read data.
##These two programs can be loaded in from the htslib package on Easley

module load htslib

##Flag -c keeps the original files unchanged and exports data to standard out or a specified file as seen below.

bgzip -c SOSP_RADseq_SNPs_NoMAF.vcf > SOSP_RADseq_SNPs_NoMAF.vcf.gz

##Flag -p denotes a standard index format will be used. VCF is one of those types. This will be run on the output from the bgzip step.
tabix -p vcf SOSP_RADseq_SNPs_NoMAF.vcf.gz

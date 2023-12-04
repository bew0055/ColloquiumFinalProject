#!/bin/bash 

##this script was executed on the Auburn Supercomputer Cluster - Easley and script/job submission is formatted for this platform.
##This script is sued to change the naming convention in the VCF file. As it is currently formatted from the original data, it represents scaffold IDs since the data was not aligned to a reference genome and uses DeNovo sequencing.
###The programs used down the line cannot read this formatting, so it must be changed. The author of PLINK (to be used in the next scripts) suggested changing the scaffold numbers to include "scaffold" infront of the number to show the program it is an acceptable input.

##These command line functions are creating a rename text file. This file is used in the next script in order to change the naming within a VCF column. 

##Here we are printing the first column of the VCF file into a new text file.
awk '{ print $1 }' SOSP_RADseq_SNPs_NoMAF.vcf > rename.txt

##This sed function makes it so that column of scaffold IDs will have the word "scaffold" in front of them.
sed 's/^/scaffold/' rename.txt >rename2.txt

##The final rename.txt file will need to showcase first what the naming convention currently is in the file followed directly by the naming convention that is wanted. This will set up the next script to run correctly.
paste rename.txt rename2.txt >renamefinal.txt


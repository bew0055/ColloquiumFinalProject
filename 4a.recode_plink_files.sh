#!/bin/bash

##this script was executed on the Auburn Supercomputer Cluster - Easley and script/job submission is formatted for this platform.
##Plink was described in the previous script.

module load plink/1.9 

##Since the data in the original VCF was DeNovo sequenced, it created some challenges in formatting and getting it accepted by Admixture. 
###A work around suggested by online forums was to put it into an older Plink format, which would be .ped files.
####We now use the bim/bam/fam files as the input set of data
##### From Plink's manual: The '12' modifier causes A1 (usually minor) alleles to be coded as '1' and A2 alleles to be coded as '2', while '01' maps A1→0 and A2→1. (PLINK forces you to combine '01' with --[output-]missing-genotype when this is necessary to prevent missing genotypes from becoming indistinguishable from A1 calls.)
######I found doing this allowed for me to move forward in my analysis and the errors coming out of the bim/bam/fam files down the line were resolved using this format.
plink -bfile PaperData --recode12 -out PaperData_trial --allow-extra-chr

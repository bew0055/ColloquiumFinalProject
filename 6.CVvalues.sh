#!/bin/bash
##this script was executed on the Auburn Supercomputer Cluster - Easley and script/job submission is formatted for this platform.

##Here is the final part of the script framework from the Admixture Manual located at: https://dalexander.github.io/admixture/admixture-manual.pdf.
##This will print the calculated CV values for each runthrough of K from the output files, which were named "iteration of K".slurm.
###Slurm files are the output file format of the Easley Supercomputer Cluster at Auburn.
####All CV error values are compiled into a final text file.

grep -h CV slurm*.out >> finalCV.txt

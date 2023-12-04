#!/bin/bash

##this script was executed on the Auburn Supercomputer Cluster - Easley and script/job submission is formatted for this platform.
##Admixture is NOT (as of the time I ran these) a program avaiable as a tool on the Easley cluster. Because of this, I had to download the executable files from the original website and they reside in my home directory.
###If you would like access to the Admixture program files please visit: https://dalexander.github.io/admixture/download.html

##This pathway is to the executable admixture file, yours will change deoending on where you are accessing that file.
##This function is the main purpose of the Admixture program. This submission format should have the executable file followed by the file the analysis will be run on (the reformatted Plink file) ended with the value of K deemed to be a best fit.
###The K iteration with the lowest value is considered to have the best fit.
####The outputs from this are a .P and a .Q file. The .Q file has the percent breakdown of each sample included in the .ped file for how much of each population they fit into out of 100% total makeup.
 
/hosted/cvmpt/archive/WGS_Human/BW_Projects/BW_Admixture_trials/dist/admixture_linux-1.3.0/admixture PaperData_trial.ped 2

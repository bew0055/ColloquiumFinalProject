#!/bin/bash

##this script was executed on the Auburn Supercomputer Cluster - Easley and script/job submission is formatted for this platform.
##Admixture is NOT (as of the time I ran these) a program avaiable as a tool on the Easley cluster. Because of this, I had to download the executable files from the original website and they reside in my home directory.
###If you would like access to the Admixture program files please visit: https://dalexander.github.io/admixture/download.html

##The framework for this script is taken from the Admixture Manual. It lays out what to do and how to output your final values for K. If you would like more information, please visit:https://dalexander.github.io/admixture/admixture-manual.pdf
###I set my K values between 1 and 5 just to go through a round 5 iterations. This is up to your disgression.

for K in 1 2 3 4 5

do 
##This pathway is to the executable admixture file, yours will change deoending on where you are accessing that file.
##Tee command writes the information that would go to standard out to files named "iteration of K".log
##Our input file here would be the format filtered .ped file created in the previous script.
###CV flag means cross validation values for this file will be calculated for each iteration of K specified in the for line.
/hosted/cvmpt/archive/WGS_Human/BW_Projects/BW_Admixture_trials/dist/admixture_linux-1.3.0/admixture --cv PaperData_trial.ped $K | tee log$(K).out

done

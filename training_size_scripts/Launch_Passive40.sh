#!/bin/bash
#SBATCH -N  1
#SBATCH -n  1
#SBATCH -p lirmm

# Clear the environment from any previously loaded modules
module purge > /dev/null 100 2>&1

# Load the module environment suitable for the job
module load jre/jre.8_x64
module load R/3.6.1



cd SVM_Random40/
make
cd ..

 
###############################################################################
 java -Xmx70024m -jar AHPRank_Run_Passive_TS.jar retail 40 1



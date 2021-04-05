#!/bin/bash
#SBATCH -N  2
#SBATCH -n  2
#SBATCH -p lirmm
#SBATCH --output=T40_Active_Learning_rho.out
# Clear the environment from any previously loaded modules
module purge > /dev/null 100 5>&1

# Load the module environment suitable for the job
module load jre/jre.8_x64
module load R/3.6.1

# 
cd ..
cd SVM_Random50/
make
cd ..


# args :  dataset querysize rho maxiterations
###############################################################################


###############################################################################
java -Xmx70054m -jar AHPRank_Run_Active_rho.jar T40I10D100K 2 200 3600000 50


#!/bin/bash
#SBATCH -N  2
#SBATCH -n  2
#SBATCH -p lirmm

# Clear the environment from any previously loaded modules
module purge > /dev/null 100 2>&1

# Load the module environment suitable for the job
module load jre/jre.8_x64
module load R/3.6.1



cd SVM_Random/
make
cd ..


# args :  dataset querysize nb_folds timeout nb_runs 
###############################################################################
java -Xmx70024m -jar AHPRank_Run_Passive_chain.jar zoo p 5 900000 10

###############################################################################
java -Xmx70024m -jar AHPRank_Run_Passive_chain.jar vote p 5 900000 10
###############################################################################
java -Xmx70024m -jar AHPRank_Run_Passive_chain.jar anneal p 5 900000 10
 ###############################################################################
java -Xmx70024m -jar AHPRank_Run_Passive_chain.jar chess p 5 900000 10
###############################################################################

java -Xmx70024m -jar AHPRank_Run_Passive_chain.jar Mushroom p 5 900000 10

###############################################################################
java -Xmx70024m -jar AHPRank_Run_Passive_chain.jar connect p 5 900000 10
 
###############################################################################
java -Xmx70024m -jar AHPRank_Run_Passive_chain.jar T10I4D100K p 5 900000 10

###############################################################################
java -Xmx70024m -jar AHPRank_Run_Passive_chain.jar T40I10D100K p 5 900000 10

###############################################################################
java -Xmx70024m -jar AHPRank_Run_Passive_chain.jar pumsb p 5 900000 10
 
###############################################################################
 java -Xmx70024m -jar AHPRank_Run_Passive_chain.jar retail p 5 900000 10

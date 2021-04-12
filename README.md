# AHPRank

# The Mined Rules are in the folder Mining
# In order to reproduce the results here are the commands
## Compile RankingSVM for each folder SVM_Random run this command:
### Example : 

cd SVM_Random

make 

cd ..

## Passive Learning Cross-Validation:

java -jar AHPRank_Run_Passive_chain.jar \<dataset> p \<nb_folds> \<timeout(ms)> \<nb_runs> 

### Example: 
java -jar AHPRank_Run_Passive_chain.jar zoo p 5 3600000 10


## Passive Learning Training size:
java -jar AHPRank_Run_Passive_TS.jar  \<dataset> \<trainingsize>  \<number of runs> \<timeout(ms)>
  
### Example:
java -jar AHPRank_Run_TS.jar retail 10 10 3600000 


## Active Learning Random Pattern Selection:

java -jar AHPRank_Run_Active_rho.jar \<dataset> \<querysize> \<max number of iterations> \<timeout (ms)> \<RankingSVMfolderid> 

<RankingSVMfolderid> example : 10 (for multiple parallel launches) 
 
 
 
### Example : 
java -jar AHPRank_Run_Active_rho.jar zoo 2 200 3600000 10



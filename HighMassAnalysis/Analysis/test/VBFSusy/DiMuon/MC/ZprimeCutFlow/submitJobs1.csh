cd TTBar  
crab -create -cfg crab_cut.cfg
crab -submit 1-500 -c CutCrab
cd ./..

cd WWinclusive   
crab -create -cfg crab_cut.cfg
crab -submit 1-500 -c CutCrab
cd ./..

cd WZJetsTo2Q2Nu  
crab -create -cfg crab_cut.cfg
crab -submit 1-500 -c CutCrab
cd ./..

cd WZJetsTo2L2Q  
crab -create -cfg crab_cut.cfg
crab -submit 1-500 -c CutCrab
cd ./..

cd WZJetsTo3LNu   
crab -create -cfg crab_cut.cfg
crab -submit 1-500 -c CutCrab
cd ./..

cd ZZJetsTo2L2Nu  
crab -create -cfg crab_cut.cfg
crab -submit 1-500 -c CutCrab
cd ./..

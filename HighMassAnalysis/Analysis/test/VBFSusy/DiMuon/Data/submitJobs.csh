cd Run2012A-13Jul2012          
crab -create -cfg crab_cut.cfg
crab -submit 1-500 -c CutCrab
cd ./..

cd Run2012B-13Jul2012  
crab -create -cfg crab_cut.cfg
crab -submit 1-500 -c CutCrab
cd ./..

cd Run2012C-EcalRecover_11Dec2012  
crab -create -cfg crab_cut.cfg
crab -submit 1-500 -c CutCrab
cd ./..

cd Run2012D-PromptReco  
crab -create -cfg crab_cut.cfg
crab -submit 1-500 -c CutCrab
cd ./..

cd Run2012A-recover-06Aug2012  
crab -create -cfg crab_cut.cfg
crab -submit 1-500 -c CutCrab
cd ./..

cd Run2012C-24Aug2012  
crab -create -cfg crab_cut.cfg
crab -submit 1-500 -c CutCrab
cd ./..

cd Run2012C-PromptReco          
crab -create -cfg crab_cut.cfg
crab -submit 1-500 -c CutCrab
crab -submit 501-1000 -c CutCrab
crab -submit 1001-1500 -c CutCrab
cd ./..


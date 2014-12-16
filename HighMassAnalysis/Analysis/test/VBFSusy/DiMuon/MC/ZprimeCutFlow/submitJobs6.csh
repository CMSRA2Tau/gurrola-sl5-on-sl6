cd W0JetsToLNu
crab -create -cfg crab_cut.cfg
crab -submit 1-500 -c CutCrab
crab -submit 501-1000 -c CutCrab
crab -submit 1001-1500 -c CutCrab
cd ./..

cd W1JetsToLNu
crab -create -cfg crab_cut.cfg
crab -submit 1-500 -c CutCrab
crab -submit 501-1000 -c CutCrab
crab -submit 1001-1500 -c CutCrab
cd ./..

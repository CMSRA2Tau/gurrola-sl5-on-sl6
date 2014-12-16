cd DY2JetsToLL_M-50
crab -create -cfg crab_cut.cfg
crab -submit 1-500 -c CutCrab
crab -submit 501-1000 -c CutCrab
crab -submit 1001-1500 -c CutCrab
cd ./..

cd DY3JetsToLL_M-50
crab -create -cfg crab_cut.cfg
crab -submit 1-500 -c CutCrab
crab -submit 501-1000 -c CutCrab
crab -submit 1001-1500 -c CutCrab
cd ./..




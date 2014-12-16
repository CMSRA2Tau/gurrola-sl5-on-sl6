cd ZZJetsTo2Q2Nu
crab -create -cfg crab_cut.cfg
crab -submit 1-500 -c CutCrab
cd ./..

cd ZZJetsTo2L2Q
crab -create -cfg crab_cut.cfg
crab -submit 1-500 -c CutCrab
cd ./..

cd ZZJetsTo4L
crab -create -cfg crab_cut.cfg
crab -submit 1-500 -c CutCrab
cd ./..


rm Run2012C-PromptReco.root 
cd Run2012C-PromptReco
mkdir root1
mkdir root2
mkdir root3
mkdir root4
mv CutCrab/res/analysis_1*root root1
mv CutCrab/res/analysis_2*root root2
mv CutCrab/res/analysis_3*root root3
mv CutCrab/res/analysis_4*root root4
hadd tempa.root CutCrab/res/*root
hadd tempb.root root1/*root
hadd tempc.root root2/*root
hadd tempd.root root3/*root
hadd tempe.root root4/*root
hadd Run2012C-PromptReco.root temp*root
mv Run2012C-PromptReco.root ./..
cd ./..

for y in `ls -d */`
do

  new_file=`echo $y | sed 's!/!!'`
  cd ${new_file}
  rm *pyc
  rm -rf CutCrab
  rm crab.history
  cd ./..

done

#cd Run2012C-PromptReco
#rm temp*root
#rm -rf root*
#cd ./..
#rm *root

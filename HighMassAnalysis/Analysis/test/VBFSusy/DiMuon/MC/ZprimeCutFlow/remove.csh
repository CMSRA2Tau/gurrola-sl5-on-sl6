for y in `ls -d */`
do

  new_file=`echo $y | sed 's!/!!'`
  cd ${new_file}
  rm *pyc
  rm -rf CutCrab
  rm crab.history
  rm MulticondorCreate_2-1-1.exe
  rm MulticondorSubmit_2-1-1.exe
  rm PatchMultiNRel211.exe
  rm clean.csh
  rm clearMultiCondorFiles.csh
  rm getCrabOutput.csh
  rm mergeRootFiles.csh
  rm mergeRootFilesFromCrab.csh
  rm outputFiles.log
  rm -rf CRAB-PBSV2
  cd ./..

done


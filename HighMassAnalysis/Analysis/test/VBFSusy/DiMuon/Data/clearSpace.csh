for y in `ls -d */`
do

  new_file=`echo $y | sed 's!/!!'`
  cd ${new_file}
  rm CutCrab/res/*stdout
  rm CutCrab/res/*stderr
  rm CutCrab/res/Watchdog*log.gz
  rm CutCrab/res/*xml
  rm -rf CutCrab/res/2012*

  cd ./..

done


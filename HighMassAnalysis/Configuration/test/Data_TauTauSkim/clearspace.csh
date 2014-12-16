for y in `ls -d */`
do

  new_file=`echo $y | sed 's!/!!'`
  rm ${new_file}/res/*stdout
  rm ${new_file}/res/*stderr
  rm ${new_file}/res/Watchdog*log.gz

done


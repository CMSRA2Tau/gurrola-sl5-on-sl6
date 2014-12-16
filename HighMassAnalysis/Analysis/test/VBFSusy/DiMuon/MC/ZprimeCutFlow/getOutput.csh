for y in `ls -d */`
do

  new_file=`echo $y | sed 's!/!!'`
  cd ${new_file}

  for yy in `ls -d */`
  do

    crab_file=`echo $yy | sed 's!/!!'`
    crab -status -c ${crab_file}
    crab -getoutput -c ${crab_file}
    rm ${crab_file}/res/*stdout
    rm ${crab_file}/res/*stderr
    rm ${crab_file}/res/Watchdog*log.gz
    rm ${crab_file}/res/*xml

  done

  cd ./..

done


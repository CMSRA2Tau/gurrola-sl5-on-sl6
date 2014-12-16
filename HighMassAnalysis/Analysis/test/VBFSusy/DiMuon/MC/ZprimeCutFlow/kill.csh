for y in `ls -d */`
do

  new_file=`echo $y | sed 's!/!!'`
  cd ${new_file}

  for yy in `ls -d */`
  do

    crab_file=`echo $yy | sed 's!/!!'`
    crab -status -c ${crab_file}
    crab -kill all -c ${crab_file}

  done

  cd ./..

done


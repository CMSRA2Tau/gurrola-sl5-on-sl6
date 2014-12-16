for y in `ls -d */`
do

  new_file=`echo $y | sed 's!/!!'`
  cd ${new_file}

  for yy in `ls -d */`
  do

    crab_file=`echo $yy | sed 's!/!!'`
    crab -status -c ${crab_file}

    hadd ${new_file}.root ${crab_file}/res/*root
    mv ${new_file}.root ./..

  done

  cd ./..

done


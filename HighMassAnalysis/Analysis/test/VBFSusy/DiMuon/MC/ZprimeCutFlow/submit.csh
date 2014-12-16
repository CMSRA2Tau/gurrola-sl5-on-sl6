for y in `ls -d */`
do

  new_file=`echo $y | sed 's!/!!'`
  cd ${new_file}

  for x in `ls *.cfg`;
  do
    crab -create -cfg $x;
  done

  for yy in `ls -d */`
  do

    crab_file=`echo $yy | sed 's!/!!'`
    crab -submit 1-500 -c ${crab_file}
    crab -submit 501-1000 -c ${crab_file}
    crab -submit 1001-1500 -c ${crab_file}
    crab -submit 1501-2000 -c ${crab_file}
    crab -submit 2001-2500 -c ${crab_file}

  done

  cd ./..

done

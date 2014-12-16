for y in `ls -d */`
do

  new_file=`echo $y | sed 's!/!!'`
  cd ${new_file}

  for x in `ls *.cfg`;
  do
    crab -create -cfg $x;
  done

#  for yy in `ls -d */`
#  do
#
#    crab_file=`echo $yy | sed 's!/!!'`
#    crab -submit 1-500 -c ${crab_file}
#    crab -submit 501-1000 -c ${crab_file}
#    crab -submit 1001-1500 -c ${crab_file}
#    crab -submit 1501-2000 -c ${crab_file}
#    crab -submit 2001-2500 -c ${crab_file}
#    crab -submit 2501-3000 -c ${crab_file}
#    crab -submit 3001-3500 -c ${crab_file}
#    crab -submit 3501-4000 -c ${crab_file}
#    crab -submit 4001-4500 -c ${crab_file}
#    crab -submit 4501-5000 -c ${crab_file}
#    crab -submit 5001-5500 -c ${crab_file}
#    crab -submit 5501-6000 -c ${crab_file}
#
#  done

  cd ./..

done

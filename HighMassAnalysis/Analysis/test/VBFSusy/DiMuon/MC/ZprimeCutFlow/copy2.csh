for y in `ls -d */`
do

  new_file=`echo $y | sed 's!/!!'`
  cp haddRoot2.csh ${new_file}

done


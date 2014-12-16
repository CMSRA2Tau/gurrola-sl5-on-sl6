for y in `ls -d */`
do

  new_file=`echo $y | sed 's!/!!'`
  cp Cut.py ${new_file}

done


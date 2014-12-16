for y in `ls *root`
do

  new_file=`echo $y | sed 's!/!!'`
  cp ${new_file} ${new_file}_ZprimeSR.root

done

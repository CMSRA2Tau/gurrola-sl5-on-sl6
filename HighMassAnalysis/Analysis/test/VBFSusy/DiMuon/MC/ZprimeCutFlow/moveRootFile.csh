for y in `ls -d */`
do
  new_file=`echo $y | sed 's!/!!'`
  mv ${new_file}/Dir.root ${new_file}.root
done

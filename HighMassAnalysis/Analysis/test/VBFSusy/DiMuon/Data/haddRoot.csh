for y in `ls -d */`
do
  new_file=`echo $y | sed 's!/!!'`
  ls ${new_file}/CutCrab/res/*root > ${new_file}_outputFiles.log
  NUMOFLINES=$(wc -l <  ${new_file}_outputFiles.log)
  counter=0
  for f in `cat ${new_file}_outputFiles.log`   
  do
    counter=`expr $counter + 1`
    if [ "$counter" -ge 1 ] && [ "$counter" -lt 201 ] ; then 
      if [ "$counter" -lt 2 ] ; then
        mkdir ${new_file}/CutCrab/res/${new_file}_1
      fi   
      mv $f  ${new_file}/CutCrab/res/${new_file}_1
    fi

    if [ "$counter" -ge 201 ] && [ "$counter" -lt 401 ] ; then 
      if [ "$counter" -lt 202 ] ; then
        mkdir ${new_file}/CutCrab/res/${new_file}_2
      fi
      mv $f ${new_file}/CutCrab/res/${new_file}_2
    fi
    
    if [ "$counter" -ge 401 ] && [ "$counter" -lt 601 ] ; then
      if [ "$counter" -lt 402 ] ; then
        mkdir ${new_file}/CutCrab/res/${new_file}_3
      fi
      mv $f ${new_file}/CutCrab/res/${new_file}_3
    fi
    
    if [ "$counter" -ge 601 ] && [ "$counter" -lt 801 ] ; then
      if [ "$counter" -lt 602 ] ; then
        mkdir ${new_file}/CutCrab/res/${new_file}_4
      fi
      mv $f  ${new_file}/CutCrab/res/${new_file}_4
    fi
  
    if [ "$counter" -ge 801 ] && [ "$counter" -lt 1001 ] ; then
      if [ "$counter" -lt 802 ] ; then
        mkdir ${new_file}/CutCrab/res/${new_file}_5
      fi
      mv $f ${new_file}/CutCrab/res/${new_file}_5
    fi

    if [ "$counter" -ge 1001 ] && [ "$counter" -lt 1201 ] ; then
      if [ "$counter" -lt 1002 ] ; then
        mkdir ${new_file}/CutCrab/res/${new_file}_6
      fi
      mv $f ${new_file}/CutCrab/res/${new_file}_6
    fi

    if [ "$counter" -ge 1201 ] && [ "$counter" -lt 1401 ] ; then
      if [ "$counter" -lt 1202 ] ; then
        mkdir ${new_file}/CutCrab/res/${new_file}_7
      fi
      mv $f ${new_file}/CutCrab/res/${new_file}_7
    fi

    if [ "$counter" -ge 1401 ] && [ "$counter" -lt 1601 ] ; then
      if [ "$counter" -lt 1402 ] ; then
        mkdir ${new_file}/CutCrab/res/${new_file}_8
      fi
      mv $f ${new_file}/CutCrab/res/${new_file}_8
    fi 

    if [ "$counter" -ge 1601 ] && [ "$counter" -lt 1801 ] ; then
      if [ "$counter" -lt 1602 ] ; then
        mkdir ${new_file}/CutCrab/res/${new_file}_9
      fi
      mv $f ${new_file}/CutCrab/res/${new_file}_9
    fi 

    if [ "$counter" -ge 1801 ] && [ "$counter" -lt 2001 ] ; then
      if [ "$counter" -lt 1802 ] ; then
        mkdir ${new_file}/CutCrab/res/${new_file}_10
      fi
      mv $f ${new_file}/CutCrab/res/${new_file}_10
    fi 

    if [ "$counter" -ge 2001 ] && [ "$counter" -lt 2201 ] ; then
      if [ "$counter" -lt 2002 ] ; then
        mkdir ${new_file}/CutCrab/res/${new_file}_11
      fi
      mv $f ${new_file}/CutCrab/res/${new_file}_11
    fi 

    if [ "$counter" -ge 2201 ] && [ "$counter" -lt 2401 ] ; then
      if [ "$counter" -lt 2202 ] ; then
        mkdir ${new_file}/CutCrab/res/${new_file}_12
      fi
      mv $f ${new_file}/CutCrab/res/${new_file}_12
    fi 

    if [ "$counter" -ge 2401 ] && [ "$counter" -lt 2601 ] ; then
      if [ "$counter" -lt 2402 ] ; then
        mkdir ${new_file}/CutCrab/res/${new_file}_13
      fi
      mv $f ${new_file}/CutCrab/res/${new_file}_13
    fi 

    if [ "$counter" -ge 2601 ] && [ "$counter" -lt 2801 ] ; then
      if [ "$counter" -lt 2602 ] ; then
        mkdir ${new_file}/CutCrab/res/${new_file}_14
      fi
      mv $f ${new_file}/CutCrab/res/${new_file}_14
    fi 

    if [ "$counter" -ge 2801 ] && [ "$counter" -lt 3001 ] ; then
      if [ "$counter" -lt 2802 ] ; then
        mkdir ${new_file}/CutCrab/res/${new_file}_15
      fi
      mv $f ${new_file}/CutCrab/res/${new_file}_15
    fi 

    if [ "$counter" -ge 3001 ] && [ "$counter" -lt 3201 ] ; then
      if [ "$counter" -lt 3002 ] ; then
        mkdir ${new_file}/CutCrab/res/${new_file}_16
      fi
      mv $f ${new_file}/CutCrab/res/${new_file}_16
    fi 

    if [ "$counter" -ge 3201 ] && [ "$counter" -lt 3401 ] ; then
      if [ "$counter" -lt 3202 ] ; then
        mkdir ${new_file}/CutCrab/res/${new_file}_17
      fi
      mv $f ${new_file}/CutCrab/res/${new_file}_17
    fi 

    if [ "$counter" -ge 3401 ] && [ "$counter" -lt 3601 ] ; then
      if [ "$counter" -lt 3402 ] ; then
        mkdir ${new_file}/CutCrab/res/${new_file}_18
      fi
      mv $f ${new_file}/CutCrab/res/${new_file}_18
    fi 

    if [ "$counter" -ge 3601 ] && [ "$counter" -lt 3801 ] ; then
      if [ "$counter" -lt 3602 ] ; then
        mkdir ${new_file}/CutCrab/res/${new_file}_19
      fi
      mv $f ${new_file}/CutCrab/res/${new_file}_19
    fi 

    if [ "$counter" -ge 3801 ] && [ "$counter" -lt 4001 ] ; then
      if [ "$counter" -lt 3802 ] ; then
        mkdir ${new_file}/CutCrab/res/${new_file}_20
      fi
      mv $f ${new_file}/CutCrab/res/${new_file}_20
    fi 

  done

  if [ "$NUMOFLINES" -lt 201 ] ; then
    hadd ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}_1/*root
    mkdir ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}
    hadd ${new_file}/CutCrab/res/${new_file}/${new_file}.root ${new_file}/CutCrab/res/${new_file}/*root
    mv ${new_file}/CutCrab/res/${new_file}/${new_file}.root ../CombinedROOTfiles/
  fi

  if [ "$NUMOFLINES" -ge 201 ] && [ "$NUMOFLINES" -lt 401 ] ; then
    hadd ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}_1/*root
    hadd ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}_2/*root
    mkdir ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}
    hadd ${new_file}/CutCrab/res/${new_file}/${new_file}.root ${new_file}/CutCrab/res/${new_file}/*root
    mv ${new_file}/CutCrab/res/${new_file}/${new_file}.root ../CombinedROOTfiles/
  fi

  if [ "$NUMOFLINES" -ge 401 ] && [ "$NUMOFLINES" -lt 601 ] ; then
    hadd ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}_1/*root
    hadd ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}_2/*root
    hadd ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}_3/*root
    mkdir ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}
    hadd ${new_file}/CutCrab/res/${new_file}/${new_file}.root ${new_file}/CutCrab/res/${new_file}/*root
    mv ${new_file}/CutCrab/res/${new_file}/${new_file}.root ../CombinedROOTfiles/
  fi 

  if [ "$NUMOFLINES" -ge 601 ] && [ "$NUMOFLINES" -lt 801 ] ; then
    hadd ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}_1/*root
    hadd ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}_2/*root
    hadd ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}_3/*root
    hadd ${new_file}/CutCrab/res/${new_file}_4/${new_file}_4.root ${new_file}/CutCrab/res/${new_file}_4/*root
    mkdir ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_4/${new_file}_4.root ${new_file}/CutCrab/res/${new_file}
    hadd ${new_file}/CutCrab/res/${new_file}/${new_file}.root ${new_file}/CutCrab/res/${new_file}/*root
    mv ${new_file}/CutCrab/res/${new_file}/${new_file}.root ../CombinedROOTfiles/
  fi

  if [ "$NUMOFLINES" -ge 801 ] && [ "$NUMOFLINES" -lt 1001 ] ; then
    hadd ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}_1/*root
    hadd ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}_2/*root
    hadd ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}_3/*root
    hadd ${new_file}/CutCrab/res/${new_file}_4/${new_file}_4.root ${new_file}/CutCrab/res/${new_file}_4/*root
    hadd ${new_file}/CutCrab/res/${new_file}_5/${new_file}_5.root ${new_file}/CutCrab/res/${new_file}_5/*root
    mkdir ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_4/${new_file}_4.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_5/${new_file}_5.root ${new_file}/CutCrab/res/${new_file}
    hadd ${new_file}/CutCrab/res/${new_file}/${new_file}.root ${new_file}/CutCrab/res/${new_file}/*root
    mv ${new_file}/CutCrab/res/${new_file}/${new_file}.root ../CombinedROOTfiles/
  fi

  if [ "$NUMOFLINES" -ge 1001 ] && [ "$NUMOFLINES" -lt 1201 ] ; then
    hadd ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}_1/*root
    hadd ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}_2/*root
    hadd ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}_3/*root
    hadd ${new_file}/CutCrab/res/${new_file}_4/${new_file}_4.root ${new_file}/CutCrab/res/${new_file}_4/*root
    hadd ${new_file}/CutCrab/res/${new_file}_5/${new_file}_5.root ${new_file}/CutCrab/res/${new_file}_5/*root
    hadd ${new_file}/CutCrab/res/${new_file}_6/${new_file}_6.root ${new_file}/CutCrab/res/${new_file}_6/*root
    mkdir ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_4/${new_file}_4.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_5/${new_file}_5.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_6/${new_file}_6.root ${new_file}/CutCrab/res/${new_file}
    hadd ${new_file}/CutCrab/res/${new_file}/${new_file}.root ${new_file}/CutCrab/res/${new_file}/*root
    mv ${new_file}/CutCrab/res/${new_file}/${new_file}.root ../CombinedROOTfiles/
  fi

  if [ "$NUMOFLINES" -ge 1201 ] && [ "$NUMOFLINES" -lt 1401 ] ; then
    hadd ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}_1/*root
    hadd ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}_2/*root
    hadd ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}_3/*root
    hadd ${new_file}/CutCrab/res/${new_file}_4/${new_file}_4.root ${new_file}/CutCrab/res/${new_file}_4/*root
    hadd ${new_file}/CutCrab/res/${new_file}_5/${new_file}_5.root ${new_file}/CutCrab/res/${new_file}_5/*root
    hadd ${new_file}/CutCrab/res/${new_file}_6/${new_file}_6.root ${new_file}/CutCrab/res/${new_file}_6/*root
    hadd ${new_file}/CutCrab/res/${new_file}_7/${new_file}_7.root ${new_file}/CutCrab/res/${new_file}_7/*root
    mkdir ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_4/${new_file}_4.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_5/${new_file}_5.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_6/${new_file}_6.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_7/${new_file}_7.root ${new_file}/CutCrab/res/${new_file}
    hadd ${new_file}/CutCrab/res/${new_file}/${new_file}.root ${new_file}/CutCrab/res/${new_file}/*root
    mv ${new_file}/CutCrab/res/${new_file}/${new_file}.root ../CombinedROOTfiles/
  fi

  if [ "$NUMOFLINES" -ge 1401 ] && [ "$NUMOFLINES" -lt 1601 ] ; then
    hadd ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}_1/*root
    hadd ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}_2/*root
    hadd ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}_3/*root
    hadd ${new_file}/CutCrab/res/${new_file}_4/${new_file}_4.root ${new_file}/CutCrab/res/${new_file}_4/*root
    hadd ${new_file}/CutCrab/res/${new_file}_5/${new_file}_5.root ${new_file}/CutCrab/res/${new_file}_5/*root
    hadd ${new_file}/CutCrab/res/${new_file}_6/${new_file}_6.root ${new_file}/CutCrab/res/${new_file}_6/*root
    hadd ${new_file}/CutCrab/res/${new_file}_7/${new_file}_7.root ${new_file}/CutCrab/res/${new_file}_7/*root
    hadd ${new_file}/CutCrab/res/${new_file}_8/${new_file}_8.root ${new_file}/CutCrab/res/${new_file}_8/*root
    mkdir ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_4/${new_file}_4.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_5/${new_file}_5.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_6/${new_file}_6.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_7/${new_file}_7.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_8/${new_file}_8.root ${new_file}/CutCrab/res/${new_file}
    hadd ${new_file}/CutCrab/res/${new_file}/${new_file}.root ${new_file}/CutCrab/res/${new_file}/*root
    mv ${new_file}/CutCrab/res/${new_file}/${new_file}.root ../CombinedROOTfiles/
  fi

  if [ "$NUMOFLINES" -ge 1601 ] && [ "$NUMOFLINES" -lt 1801 ] ; then
    hadd ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}_1/*root
    hadd ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}_2/*root
    hadd ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}_3/*root
    hadd ${new_file}/CutCrab/res/${new_file}_4/${new_file}_4.root ${new_file}/CutCrab/res/${new_file}_4/*root
    hadd ${new_file}/CutCrab/res/${new_file}_5/${new_file}_5.root ${new_file}/CutCrab/res/${new_file}_5/*root
    hadd ${new_file}/CutCrab/res/${new_file}_6/${new_file}_6.root ${new_file}/CutCrab/res/${new_file}_6/*root
    hadd ${new_file}/CutCrab/res/${new_file}_7/${new_file}_7.root ${new_file}/CutCrab/res/${new_file}_7/*root
    hadd ${new_file}/CutCrab/res/${new_file}_8/${new_file}_8.root ${new_file}/CutCrab/res/${new_file}_8/*root
    hadd ${new_file}/CutCrab/res/${new_file}_9/${new_file}_9.root ${new_file}/CutCrab/res/${new_file}_9/*root
    mkdir ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_4/${new_file}_4.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_5/${new_file}_5.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_6/${new_file}_6.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_7/${new_file}_7.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_8/${new_file}_8.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_9/${new_file}_9.root ${new_file}/CutCrab/res/${new_file}
    hadd ${new_file}/CutCrab/res/${new_file}/${new_file}.root ${new_file}/CutCrab/res/${new_file}/*root
    mv ${new_file}/CutCrab/res/${new_file}/${new_file}.root ../CombinedROOTfiles/
  fi

  if [ "$NUMOFLINES" -ge 1801 ] && [ "$NUMOFLINES" -lt 2001 ] ; then
    hadd ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}_1/*root
    hadd ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}_2/*root
    hadd ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}_3/*root
    hadd ${new_file}/CutCrab/res/${new_file}_4/${new_file}_4.root ${new_file}/CutCrab/res/${new_file}_4/*root
    hadd ${new_file}/CutCrab/res/${new_file}_5/${new_file}_5.root ${new_file}/CutCrab/res/${new_file}_5/*root
    hadd ${new_file}/CutCrab/res/${new_file}_6/${new_file}_6.root ${new_file}/CutCrab/res/${new_file}_6/*root
    hadd ${new_file}/CutCrab/res/${new_file}_7/${new_file}_7.root ${new_file}/CutCrab/res/${new_file}_7/*root
    hadd ${new_file}/CutCrab/res/${new_file}_8/${new_file}_8.root ${new_file}/CutCrab/res/${new_file}_8/*root
    hadd ${new_file}/CutCrab/res/${new_file}_9/${new_file}_9.root ${new_file}/CutCrab/res/${new_file}_9/*root
    hadd ${new_file}/CutCrab/res/${new_file}_10/${new_file}_10.root ${new_file}/CutCrab/res/${new_file}_10/*root
    mkdir ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_4/${new_file}_4.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_5/${new_file}_5.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_6/${new_file}_6.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_7/${new_file}_7.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_8/${new_file}_8.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_9/${new_file}_9.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_10/${new_file}_10.root ${new_file}/CutCrab/res/${new_file}
    hadd ${new_file}/CutCrab/res/${new_file}/${new_file}.root ${new_file}/CutCrab/res/${new_file}/*root
    mv ${new_file}/CutCrab/res/${new_file}/${new_file}.root ../CombinedROOTfiles/
  fi

  if [ "$NUMOFLINES" -ge 2001 ] && [ "$NUMOFLINES" -lt 2201 ] ; then
    hadd ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}_1/*root
    hadd ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}_2/*root
    hadd ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}_3/*root
    hadd ${new_file}/CutCrab/res/${new_file}_4/${new_file}_4.root ${new_file}/CutCrab/res/${new_file}_4/*root
    hadd ${new_file}/CutCrab/res/${new_file}_5/${new_file}_5.root ${new_file}/CutCrab/res/${new_file}_5/*root
    hadd ${new_file}/CutCrab/res/${new_file}_6/${new_file}_6.root ${new_file}/CutCrab/res/${new_file}_6/*root
    hadd ${new_file}/CutCrab/res/${new_file}_7/${new_file}_7.root ${new_file}/CutCrab/res/${new_file}_7/*root
    hadd ${new_file}/CutCrab/res/${new_file}_8/${new_file}_8.root ${new_file}/CutCrab/res/${new_file}_8/*root
    hadd ${new_file}/CutCrab/res/${new_file}_9/${new_file}_9.root ${new_file}/CutCrab/res/${new_file}_9/*root
    hadd ${new_file}/CutCrab/res/${new_file}_10/${new_file}_10.root ${new_file}/CutCrab/res/${new_file}_10/*root
    hadd ${new_file}/CutCrab/res/${new_file}_11/${new_file}_11.root ${new_file}/CutCrab/res/${new_file}_11/*root
    mkdir ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_4/${new_file}_4.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_5/${new_file}_5.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_6/${new_file}_6.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_7/${new_file}_7.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_8/${new_file}_8.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_9/${new_file}_9.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_10/${new_file}_10.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_11/${new_file}_11.root ${new_file}/CutCrab/res/${new_file}
    hadd ${new_file}/CutCrab/res/${new_file}/${new_file}.root ${new_file}/CutCrab/res/${new_file}/*root
    mv ${new_file}/CutCrab/res/${new_file}/${new_file}.root ../CombinedROOTfiles/
  fi

  if [ "$NUMOFLINES" -ge 2201 ] && [ "$NUMOFLINES" -lt 2401 ] ; then
    hadd ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}_1/*root
    hadd ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}_2/*root
    hadd ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}_3/*root
    hadd ${new_file}/CutCrab/res/${new_file}_4/${new_file}_4.root ${new_file}/CutCrab/res/${new_file}_4/*root
    hadd ${new_file}/CutCrab/res/${new_file}_5/${new_file}_5.root ${new_file}/CutCrab/res/${new_file}_5/*root
    hadd ${new_file}/CutCrab/res/${new_file}_6/${new_file}_6.root ${new_file}/CutCrab/res/${new_file}_6/*root
    hadd ${new_file}/CutCrab/res/${new_file}_7/${new_file}_7.root ${new_file}/CutCrab/res/${new_file}_7/*root
    hadd ${new_file}/CutCrab/res/${new_file}_8/${new_file}_8.root ${new_file}/CutCrab/res/${new_file}_8/*root
    hadd ${new_file}/CutCrab/res/${new_file}_9/${new_file}_9.root ${new_file}/CutCrab/res/${new_file}_9/*root
    hadd ${new_file}/CutCrab/res/${new_file}_10/${new_file}_10.root ${new_file}/CutCrab/res/${new_file}_10/*root
    hadd ${new_file}/CutCrab/res/${new_file}_11/${new_file}_11.root ${new_file}/CutCrab/res/${new_file}_11/*root
    hadd ${new_file}/CutCrab/res/${new_file}_12/${new_file}_12.root ${new_file}/CutCrab/res/${new_file}_12/*root
    mkdir ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_4/${new_file}_4.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_5/${new_file}_5.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_6/${new_file}_6.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_7/${new_file}_7.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_8/${new_file}_8.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_9/${new_file}_9.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_10/${new_file}_10.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_11/${new_file}_11.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_12/${new_file}_12.root ${new_file}/CutCrab/res/${new_file}
    hadd ${new_file}/CutCrab/res/${new_file}/${new_file}.root ${new_file}/CutCrab/res/${new_file}/*root
    mv ${new_file}/CutCrab/res/${new_file}/${new_file}.root ../CombinedROOTfiles/
  fi

  if [ "$NUMOFLINES" -ge 2401 ] && [ "$NUMOFLINES" -lt 2601 ] ; then
    hadd ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}_1/*root
    hadd ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}_2/*root
    hadd ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}_3/*root
    hadd ${new_file}/CutCrab/res/${new_file}_4/${new_file}_4.root ${new_file}/CutCrab/res/${new_file}_4/*root
    hadd ${new_file}/CutCrab/res/${new_file}_5/${new_file}_5.root ${new_file}/CutCrab/res/${new_file}_5/*root
    hadd ${new_file}/CutCrab/res/${new_file}_6/${new_file}_6.root ${new_file}/CutCrab/res/${new_file}_6/*root
    hadd ${new_file}/CutCrab/res/${new_file}_7/${new_file}_7.root ${new_file}/CutCrab/res/${new_file}_7/*root
    hadd ${new_file}/CutCrab/res/${new_file}_8/${new_file}_8.root ${new_file}/CutCrab/res/${new_file}_8/*root
    hadd ${new_file}/CutCrab/res/${new_file}_9/${new_file}_9.root ${new_file}/CutCrab/res/${new_file}_9/*root
    hadd ${new_file}/CutCrab/res/${new_file}_10/${new_file}_10.root ${new_file}/CutCrab/res/${new_file}_10/*root
    hadd ${new_file}/CutCrab/res/${new_file}_11/${new_file}_11.root ${new_file}/CutCrab/res/${new_file}_11/*root
    hadd ${new_file}/CutCrab/res/${new_file}_12/${new_file}_12.root ${new_file}/CutCrab/res/${new_file}_12/*root
    hadd ${new_file}/CutCrab/res/${new_file}_13/${new_file}_13.root ${new_file}/CutCrab/res/${new_file}_13/*root
    mkdir ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_4/${new_file}_4.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_5/${new_file}_5.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_6/${new_file}_6.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_7/${new_file}_7.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_8/${new_file}_8.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_9/${new_file}_9.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_10/${new_file}_10.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_11/${new_file}_11.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_12/${new_file}_12.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_13/${new_file}_13.root ${new_file}/CutCrab/res/${new_file}
    hadd ${new_file}/CutCrab/res/${new_file}/${new_file}.root ${new_file}/CutCrab/res/${new_file}/*root
    mv ${new_file}/CutCrab/res/${new_file}/${new_file}.root ../CombinedROOTfiles/
  fi

  if [ "$NUMOFLINES" -ge 2601 ] && [ "$NUMOFLINES" -lt 2801 ] ; then
    hadd ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}_1/*root
    hadd ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}_2/*root
    hadd ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}_3/*root
    hadd ${new_file}/CutCrab/res/${new_file}_4/${new_file}_4.root ${new_file}/CutCrab/res/${new_file}_4/*root
    hadd ${new_file}/CutCrab/res/${new_file}_5/${new_file}_5.root ${new_file}/CutCrab/res/${new_file}_5/*root
    hadd ${new_file}/CutCrab/res/${new_file}_6/${new_file}_6.root ${new_file}/CutCrab/res/${new_file}_6/*root
    hadd ${new_file}/CutCrab/res/${new_file}_7/${new_file}_7.root ${new_file}/CutCrab/res/${new_file}_7/*root
    hadd ${new_file}/CutCrab/res/${new_file}_8/${new_file}_8.root ${new_file}/CutCrab/res/${new_file}_8/*root
    hadd ${new_file}/CutCrab/res/${new_file}_9/${new_file}_9.root ${new_file}/CutCrab/res/${new_file}_9/*root
    hadd ${new_file}/CutCrab/res/${new_file}_10/${new_file}_10.root ${new_file}/CutCrab/res/${new_file}_10/*root
    hadd ${new_file}/CutCrab/res/${new_file}_11/${new_file}_11.root ${new_file}/CutCrab/res/${new_file}_11/*root
    hadd ${new_file}/CutCrab/res/${new_file}_12/${new_file}_12.root ${new_file}/CutCrab/res/${new_file}_12/*root
    hadd ${new_file}/CutCrab/res/${new_file}_13/${new_file}_13.root ${new_file}/CutCrab/res/${new_file}_13/*root
    hadd ${new_file}/CutCrab/res/${new_file}_14/${new_file}_14.root ${new_file}/CutCrab/res/${new_file}_14/*root
    mkdir ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_4/${new_file}_4.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_5/${new_file}_5.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_6/${new_file}_6.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_7/${new_file}_7.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_8/${new_file}_8.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_9/${new_file}_9.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_10/${new_file}_10.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_11/${new_file}_11.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_12/${new_file}_12.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_13/${new_file}_13.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_14/${new_file}_14.root ${new_file}/CutCrab/res/${new_file}
    hadd ${new_file}/CutCrab/res/${new_file}/${new_file}.root ${new_file}/CutCrab/res/${new_file}/*root
    mv ${new_file}/CutCrab/res/${new_file}/${new_file}.root ../CombinedROOTfiles/
  fi

  if [ "$NUMOFLINES" -ge 2801 ] && [ "$NUMOFLINES" -lt 3001 ] ; then
    hadd ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}_1/*root
    hadd ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}_2/*root
    hadd ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}_3/*root
    hadd ${new_file}/CutCrab/res/${new_file}_4/${new_file}_4.root ${new_file}/CutCrab/res/${new_file}_4/*root
    hadd ${new_file}/CutCrab/res/${new_file}_5/${new_file}_5.root ${new_file}/CutCrab/res/${new_file}_5/*root
    hadd ${new_file}/CutCrab/res/${new_file}_6/${new_file}_6.root ${new_file}/CutCrab/res/${new_file}_6/*root
    hadd ${new_file}/CutCrab/res/${new_file}_7/${new_file}_7.root ${new_file}/CutCrab/res/${new_file}_7/*root
    hadd ${new_file}/CutCrab/res/${new_file}_8/${new_file}_8.root ${new_file}/CutCrab/res/${new_file}_8/*root
    hadd ${new_file}/CutCrab/res/${new_file}_9/${new_file}_9.root ${new_file}/CutCrab/res/${new_file}_9/*root
    hadd ${new_file}/CutCrab/res/${new_file}_10/${new_file}_10.root ${new_file}/CutCrab/res/${new_file}_10/*root
    hadd ${new_file}/CutCrab/res/${new_file}_11/${new_file}_11.root ${new_file}/CutCrab/res/${new_file}_11/*root
    hadd ${new_file}/CutCrab/res/${new_file}_12/${new_file}_12.root ${new_file}/CutCrab/res/${new_file}_12/*root
    hadd ${new_file}/CutCrab/res/${new_file}_13/${new_file}_13.root ${new_file}/CutCrab/res/${new_file}_13/*root
    hadd ${new_file}/CutCrab/res/${new_file}_14/${new_file}_14.root ${new_file}/CutCrab/res/${new_file}_14/*root
    hadd ${new_file}/CutCrab/res/${new_file}_15/${new_file}_15.root ${new_file}/CutCrab/res/${new_file}_15/*root
    mkdir ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_4/${new_file}_4.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_5/${new_file}_5.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_6/${new_file}_6.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_7/${new_file}_7.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_8/${new_file}_8.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_9/${new_file}_9.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_10/${new_file}_10.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_11/${new_file}_11.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_12/${new_file}_12.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_13/${new_file}_13.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_14/${new_file}_14.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_15/${new_file}_15.root ${new_file}/CutCrab/res/${new_file}
    hadd ${new_file}/CutCrab/res/${new_file}/${new_file}.root ${new_file}/CutCrab/res/${new_file}/*root
    mv ${new_file}/CutCrab/res/${new_file}/${new_file}.root ../CombinedROOTfiles/
  fi

  if [ "$NUMOFLINES" -ge 3001 ] && [ "$NUMOFLINES" -lt 3201 ] ; then
    hadd ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}_1/*root
    hadd ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}_2/*root
    hadd ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}_3/*root
    hadd ${new_file}/CutCrab/res/${new_file}_4/${new_file}_4.root ${new_file}/CutCrab/res/${new_file}_4/*root
    hadd ${new_file}/CutCrab/res/${new_file}_5/${new_file}_5.root ${new_file}/CutCrab/res/${new_file}_5/*root
    hadd ${new_file}/CutCrab/res/${new_file}_6/${new_file}_6.root ${new_file}/CutCrab/res/${new_file}_6/*root
    hadd ${new_file}/CutCrab/res/${new_file}_7/${new_file}_7.root ${new_file}/CutCrab/res/${new_file}_7/*root
    hadd ${new_file}/CutCrab/res/${new_file}_8/${new_file}_8.root ${new_file}/CutCrab/res/${new_file}_8/*root
    hadd ${new_file}/CutCrab/res/${new_file}_9/${new_file}_9.root ${new_file}/CutCrab/res/${new_file}_9/*root
    hadd ${new_file}/CutCrab/res/${new_file}_10/${new_file}_10.root ${new_file}/CutCrab/res/${new_file}_10/*root
    hadd ${new_file}/CutCrab/res/${new_file}_11/${new_file}_11.root ${new_file}/CutCrab/res/${new_file}_11/*root
    hadd ${new_file}/CutCrab/res/${new_file}_12/${new_file}_12.root ${new_file}/CutCrab/res/${new_file}_12/*root
    hadd ${new_file}/CutCrab/res/${new_file}_13/${new_file}_13.root ${new_file}/CutCrab/res/${new_file}_13/*root
    hadd ${new_file}/CutCrab/res/${new_file}_14/${new_file}_14.root ${new_file}/CutCrab/res/${new_file}_14/*root
    hadd ${new_file}/CutCrab/res/${new_file}_15/${new_file}_15.root ${new_file}/CutCrab/res/${new_file}_15/*root
    hadd ${new_file}/CutCrab/res/${new_file}_16/${new_file}_16.root ${new_file}/CutCrab/res/${new_file}_16/*root
    mkdir ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_4/${new_file}_4.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_5/${new_file}_5.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_6/${new_file}_6.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_7/${new_file}_7.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_8/${new_file}_8.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_9/${new_file}_9.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_10/${new_file}_10.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_11/${new_file}_11.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_12/${new_file}_12.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_13/${new_file}_13.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_14/${new_file}_14.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_15/${new_file}_15.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_16/${new_file}_16.root ${new_file}/CutCrab/res/${new_file}
    hadd ${new_file}/CutCrab/res/${new_file}/${new_file}.root ${new_file}/CutCrab/res/${new_file}/*root
    mv ${new_file}/CutCrab/res/${new_file}/${new_file}.root ../CombinedROOTfiles/
  fi

  if [ "$NUMOFLINES" -ge 3201 ] && [ "$NUMOFLINES" -lt 3401 ] ; then
    hadd ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}_1/*root
    hadd ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}_2/*root
    hadd ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}_3/*root
    hadd ${new_file}/CutCrab/res/${new_file}_4/${new_file}_4.root ${new_file}/CutCrab/res/${new_file}_4/*root
    hadd ${new_file}/CutCrab/res/${new_file}_5/${new_file}_5.root ${new_file}/CutCrab/res/${new_file}_5/*root
    hadd ${new_file}/CutCrab/res/${new_file}_6/${new_file}_6.root ${new_file}/CutCrab/res/${new_file}_6/*root
    hadd ${new_file}/CutCrab/res/${new_file}_7/${new_file}_7.root ${new_file}/CutCrab/res/${new_file}_7/*root
    hadd ${new_file}/CutCrab/res/${new_file}_8/${new_file}_8.root ${new_file}/CutCrab/res/${new_file}_8/*root
    hadd ${new_file}/CutCrab/res/${new_file}_9/${new_file}_9.root ${new_file}/CutCrab/res/${new_file}_9/*root
    hadd ${new_file}/CutCrab/res/${new_file}_10/${new_file}_10.root ${new_file}/CutCrab/res/${new_file}_10/*root
    hadd ${new_file}/CutCrab/res/${new_file}_11/${new_file}_11.root ${new_file}/CutCrab/res/${new_file}_11/*root
    hadd ${new_file}/CutCrab/res/${new_file}_12/${new_file}_12.root ${new_file}/CutCrab/res/${new_file}_12/*root
    hadd ${new_file}/CutCrab/res/${new_file}_13/${new_file}_13.root ${new_file}/CutCrab/res/${new_file}_13/*root
    hadd ${new_file}/CutCrab/res/${new_file}_14/${new_file}_14.root ${new_file}/CutCrab/res/${new_file}_14/*root
    hadd ${new_file}/CutCrab/res/${new_file}_15/${new_file}_15.root ${new_file}/CutCrab/res/${new_file}_15/*root
    hadd ${new_file}/CutCrab/res/${new_file}_16/${new_file}_16.root ${new_file}/CutCrab/res/${new_file}_16/*root
    hadd ${new_file}/CutCrab/res/${new_file}_17/${new_file}_17.root ${new_file}/CutCrab/res/${new_file}_17/*root
    mkdir ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_4/${new_file}_4.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_5/${new_file}_5.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_6/${new_file}_6.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_7/${new_file}_7.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_8/${new_file}_8.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_9/${new_file}_9.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_10/${new_file}_10.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_11/${new_file}_11.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_12/${new_file}_12.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_13/${new_file}_13.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_14/${new_file}_14.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_15/${new_file}_15.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_16/${new_file}_16.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_17/${new_file}_17.root ${new_file}/CutCrab/res/${new_file}
    hadd ${new_file}/CutCrab/res/${new_file}/${new_file}.root ${new_file}/CutCrab/res/${new_file}/*root
    mv ${new_file}/CutCrab/res/${new_file}/${new_file}.root ../CombinedROOTfiles/
  fi

  if [ "$NUMOFLINES" -ge 3401 ] && [ "$NUMOFLINES" -lt 3601 ] ; then
    hadd ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}_1/*root
    hadd ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}_2/*root
    hadd ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}_3/*root
    hadd ${new_file}/CutCrab/res/${new_file}_4/${new_file}_4.root ${new_file}/CutCrab/res/${new_file}_4/*root
    hadd ${new_file}/CutCrab/res/${new_file}_5/${new_file}_5.root ${new_file}/CutCrab/res/${new_file}_5/*root
    hadd ${new_file}/CutCrab/res/${new_file}_6/${new_file}_6.root ${new_file}/CutCrab/res/${new_file}_6/*root
    hadd ${new_file}/CutCrab/res/${new_file}_7/${new_file}_7.root ${new_file}/CutCrab/res/${new_file}_7/*root
    hadd ${new_file}/CutCrab/res/${new_file}_8/${new_file}_8.root ${new_file}/CutCrab/res/${new_file}_8/*root
    hadd ${new_file}/CutCrab/res/${new_file}_9/${new_file}_9.root ${new_file}/CutCrab/res/${new_file}_9/*root
    hadd ${new_file}/CutCrab/res/${new_file}_10/${new_file}_10.root ${new_file}/CutCrab/res/${new_file}_10/*root
    hadd ${new_file}/CutCrab/res/${new_file}_11/${new_file}_11.root ${new_file}/CutCrab/res/${new_file}_11/*root
    hadd ${new_file}/CutCrab/res/${new_file}_12/${new_file}_12.root ${new_file}/CutCrab/res/${new_file}_12/*root
    hadd ${new_file}/CutCrab/res/${new_file}_13/${new_file}_13.root ${new_file}/CutCrab/res/${new_file}_13/*root
    hadd ${new_file}/CutCrab/res/${new_file}_14/${new_file}_14.root ${new_file}/CutCrab/res/${new_file}_14/*root
    hadd ${new_file}/CutCrab/res/${new_file}_15/${new_file}_15.root ${new_file}/CutCrab/res/${new_file}_15/*root
    hadd ${new_file}/CutCrab/res/${new_file}_16/${new_file}_16.root ${new_file}/CutCrab/res/${new_file}_16/*root
    hadd ${new_file}/CutCrab/res/${new_file}_17/${new_file}_17.root ${new_file}/CutCrab/res/${new_file}_17/*root
    hadd ${new_file}/CutCrab/res/${new_file}_18/${new_file}_18.root ${new_file}/CutCrab/res/${new_file}_18/*root
    mkdir ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_4/${new_file}_4.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_5/${new_file}_5.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_6/${new_file}_6.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_7/${new_file}_7.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_8/${new_file}_8.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_9/${new_file}_9.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_10/${new_file}_10.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_11/${new_file}_11.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_12/${new_file}_12.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_13/${new_file}_13.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_14/${new_file}_14.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_15/${new_file}_15.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_16/${new_file}_16.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_17/${new_file}_17.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_18/${new_file}_18.root ${new_file}/CutCrab/res/${new_file}
    hadd ${new_file}/CutCrab/res/${new_file}/${new_file}.root ${new_file}/CutCrab/res/${new_file}/*root
    mv ${new_file}/CutCrab/res/${new_file}/${new_file}.root ../CombinedROOTfiles/
  fi

  if [ "$NUMOFLINES" -ge 3601 ] && [ "$NUMOFLINES" -lt 3801 ] ; then
    hadd ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}_1/*root
    hadd ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}_2/*root
    hadd ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}_3/*root
    hadd ${new_file}/CutCrab/res/${new_file}_4/${new_file}_4.root ${new_file}/CutCrab/res/${new_file}_4/*root
    hadd ${new_file}/CutCrab/res/${new_file}_5/${new_file}_5.root ${new_file}/CutCrab/res/${new_file}_5/*root
    hadd ${new_file}/CutCrab/res/${new_file}_6/${new_file}_6.root ${new_file}/CutCrab/res/${new_file}_6/*root
    hadd ${new_file}/CutCrab/res/${new_file}_7/${new_file}_7.root ${new_file}/CutCrab/res/${new_file}_7/*root
    hadd ${new_file}/CutCrab/res/${new_file}_8/${new_file}_8.root ${new_file}/CutCrab/res/${new_file}_8/*root
    hadd ${new_file}/CutCrab/res/${new_file}_9/${new_file}_9.root ${new_file}/CutCrab/res/${new_file}_9/*root
    hadd ${new_file}/CutCrab/res/${new_file}_10/${new_file}_10.root ${new_file}/CutCrab/res/${new_file}_10/*root
    hadd ${new_file}/CutCrab/res/${new_file}_11/${new_file}_11.root ${new_file}/CutCrab/res/${new_file}_11/*root
    hadd ${new_file}/CutCrab/res/${new_file}_12/${new_file}_12.root ${new_file}/CutCrab/res/${new_file}_12/*root
    hadd ${new_file}/CutCrab/res/${new_file}_13/${new_file}_13.root ${new_file}/CutCrab/res/${new_file}_13/*root
    hadd ${new_file}/CutCrab/res/${new_file}_14/${new_file}_14.root ${new_file}/CutCrab/res/${new_file}_14/*root
    hadd ${new_file}/CutCrab/res/${new_file}_15/${new_file}_15.root ${new_file}/CutCrab/res/${new_file}_15/*root
    hadd ${new_file}/CutCrab/res/${new_file}_16/${new_file}_16.root ${new_file}/CutCrab/res/${new_file}_16/*root
    hadd ${new_file}/CutCrab/res/${new_file}_17/${new_file}_17.root ${new_file}/CutCrab/res/${new_file}_17/*root
    hadd ${new_file}/CutCrab/res/${new_file}_18/${new_file}_18.root ${new_file}/CutCrab/res/${new_file}_18/*root
    hadd ${new_file}/CutCrab/res/${new_file}_19/${new_file}_19.root ${new_file}/CutCrab/res/${new_file}_19/*root
    mkdir ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_4/${new_file}_4.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_5/${new_file}_5.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_6/${new_file}_6.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_7/${new_file}_7.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_8/${new_file}_8.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_9/${new_file}_9.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_10/${new_file}_10.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_11/${new_file}_11.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_12/${new_file}_12.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_13/${new_file}_13.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_14/${new_file}_14.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_15/${new_file}_15.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_16/${new_file}_16.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_17/${new_file}_17.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_18/${new_file}_18.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_19/${new_file}_19.root ${new_file}/CutCrab/res/${new_file}
    hadd ${new_file}/CutCrab/res/${new_file}/${new_file}.root ${new_file}/CutCrab/res/${new_file}/*root
    mv ${new_file}/CutCrab/res/${new_file}/${new_file}.root ../CombinedROOTfiles/
  fi

  if [ "$NUMOFLINES" -ge 3801 ] && [ "$NUMOFLINES" -lt 4001 ] ; then
    hadd ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}_1/*root
    hadd ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}_2/*root
    hadd ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}_3/*root
    hadd ${new_file}/CutCrab/res/${new_file}_4/${new_file}_4.root ${new_file}/CutCrab/res/${new_file}_4/*root
    hadd ${new_file}/CutCrab/res/${new_file}_5/${new_file}_5.root ${new_file}/CutCrab/res/${new_file}_5/*root
    hadd ${new_file}/CutCrab/res/${new_file}_6/${new_file}_6.root ${new_file}/CutCrab/res/${new_file}_6/*root
    hadd ${new_file}/CutCrab/res/${new_file}_7/${new_file}_7.root ${new_file}/CutCrab/res/${new_file}_7/*root
    hadd ${new_file}/CutCrab/res/${new_file}_8/${new_file}_8.root ${new_file}/CutCrab/res/${new_file}_8/*root
    hadd ${new_file}/CutCrab/res/${new_file}_9/${new_file}_9.root ${new_file}/CutCrab/res/${new_file}_9/*root
    hadd ${new_file}/CutCrab/res/${new_file}_10/${new_file}_10.root ${new_file}/CutCrab/res/${new_file}_10/*root
    hadd ${new_file}/CutCrab/res/${new_file}_11/${new_file}_11.root ${new_file}/CutCrab/res/${new_file}_11/*root
    hadd ${new_file}/CutCrab/res/${new_file}_12/${new_file}_12.root ${new_file}/CutCrab/res/${new_file}_12/*root
    hadd ${new_file}/CutCrab/res/${new_file}_13/${new_file}_13.root ${new_file}/CutCrab/res/${new_file}_13/*root
    hadd ${new_file}/CutCrab/res/${new_file}_14/${new_file}_14.root ${new_file}/CutCrab/res/${new_file}_14/*root
    hadd ${new_file}/CutCrab/res/${new_file}_15/${new_file}_15.root ${new_file}/CutCrab/res/${new_file}_15/*root
    hadd ${new_file}/CutCrab/res/${new_file}_16/${new_file}_16.root ${new_file}/CutCrab/res/${new_file}_16/*root
    hadd ${new_file}/CutCrab/res/${new_file}_17/${new_file}_17.root ${new_file}/CutCrab/res/${new_file}_17/*root
    hadd ${new_file}/CutCrab/res/${new_file}_18/${new_file}_18.root ${new_file}/CutCrab/res/${new_file}_18/*root
    hadd ${new_file}/CutCrab/res/${new_file}_19/${new_file}_19.root ${new_file}/CutCrab/res/${new_file}_19/*root
    hadd ${new_file}/CutCrab/res/${new_file}_20/${new_file}_20.root ${new_file}/CutCrab/res/${new_file}_20/*root
    mkdir ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_4/${new_file}_4.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_5/${new_file}_5.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_6/${new_file}_6.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_7/${new_file}_7.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_8/${new_file}_8.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_9/${new_file}_9.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_10/${new_file}_10.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_11/${new_file}_11.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_12/${new_file}_12.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_13/${new_file}_13.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_14/${new_file}_14.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_15/${new_file}_15.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_16/${new_file}_16.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_17/${new_file}_17.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_18/${new_file}_18.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_19/${new_file}_19.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_20/${new_file}_20.root ${new_file}/CutCrab/res/${new_file}
    hadd ${new_file}/CutCrab/res/${new_file}/${new_file}.root ${new_file}/CutCrab/res/${new_file}/*root
    mv ${new_file}/CutCrab/res/${new_file}/${new_file}.root ../CombinedROOTfiles/
  fi 

#hadd ${new_file}.root ${new_file}/res/*root
done


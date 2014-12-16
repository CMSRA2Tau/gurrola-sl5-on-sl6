  ls CutCrab/res/*root > outputFiles.log
  NUMOFLINES=$(wc -l <  outputFiles.log)
  counter=0
  for f in `cat outputFiles.log`   
  do
    counter=`expr $counter + 1`
    if [ "$counter" -ge 1 ] && [ "$counter" -lt 201 ] ; then 
      if [ "$counter" -lt 2 ] ; then
        mkdir CutCrab/res/Dir_1
      fi   
      mv $f  CutCrab/res/Dir_1
    fi

    if [ "$counter" -ge 201 ] && [ "$counter" -lt 401 ] ; then 
      if [ "$counter" -lt 202 ] ; then
        mkdir CutCrab/res/Dir_2
      fi
      mv $f CutCrab/res/Dir_2
    fi
    
    if [ "$counter" -ge 401 ] && [ "$counter" -lt 601 ] ; then
      if [ "$counter" -lt 402 ] ; then
        mkdir CutCrab/res/Dir_3
      fi
      mv $f CutCrab/res/Dir_3
    fi
    
    if [ "$counter" -ge 601 ] && [ "$counter" -lt 801 ] ; then
      if [ "$counter" -lt 602 ] ; then
        mkdir CutCrab/res/Dir_4
      fi
      mv $f  CutCrab/res/Dir_4
    fi
  
    if [ "$counter" -ge 801 ] && [ "$counter" -lt 1001 ] ; then
      if [ "$counter" -lt 802 ] ; then
        mkdir CutCrab/res/Dir_5
      fi
      mv $f CutCrab/res/Dir_5
    fi

    if [ "$counter" -ge 1001 ] && [ "$counter" -lt 1201 ] ; then
      if [ "$counter" -lt 1002 ] ; then
        mkdir CutCrab/res/Dir_6
      fi
      mv $f CutCrab/res/Dir_6
    fi

    if [ "$counter" -ge 1201 ] && [ "$counter" -lt 1401 ] ; then
      if [ "$counter" -lt 1202 ] ; then
        mkdir CutCrab/res/Dir_7
      fi
      mv $f CutCrab/res/Dir_7
    fi

    if [ "$counter" -ge 1401 ] && [ "$counter" -lt 1601 ] ; then
      if [ "$counter" -lt 1402 ] ; then
        mkdir CutCrab/res/Dir_8
      fi
      mv $f CutCrab/res/Dir_8
    fi 

    if [ "$counter" -ge 1601 ] && [ "$counter" -lt 1801 ] ; then
      if [ "$counter" -lt 1602 ] ; then
        mkdir CutCrab/res/Dir_9
      fi
      mv $f CutCrab/res/Dir_9
    fi 

    if [ "$counter" -ge 1801 ] && [ "$counter" -lt 2001 ] ; then
      if [ "$counter" -lt 1802 ] ; then
        mkdir CutCrab/res/Dir_10
      fi
      mv $f CutCrab/res/Dir_10
    fi 

    if [ "$counter" -ge 2001 ] && [ "$counter" -lt 2201 ] ; then
      if [ "$counter" -lt 2002 ] ; then
        mkdir CutCrab/res/Dir_11
      fi
      mv $f CutCrab/res/Dir_11
    fi 

    if [ "$counter" -ge 2201 ] && [ "$counter" -lt 2401 ] ; then
      if [ "$counter" -lt 2202 ] ; then
        mkdir CutCrab/res/Dir_12
      fi
      mv $f CutCrab/res/Dir_12
    fi 

    if [ "$counter" -ge 2401 ] && [ "$counter" -lt 2601 ] ; then
      if [ "$counter" -lt 2402 ] ; then
        mkdir CutCrab/res/Dir_13
      fi
      mv $f CutCrab/res/Dir_13
    fi 

    if [ "$counter" -ge 2601 ] && [ "$counter" -lt 2801 ] ; then
      if [ "$counter" -lt 2602 ] ; then
        mkdir CutCrab/res/Dir_14
      fi
      mv $f CutCrab/res/Dir_14
    fi 

    if [ "$counter" -ge 2801 ] && [ "$counter" -lt 3001 ] ; then
      if [ "$counter" -lt 2802 ] ; then
        mkdir CutCrab/res/Dir_15
      fi
      mv $f CutCrab/res/Dir_15
    fi 

    if [ "$counter" -ge 3001 ] && [ "$counter" -lt 3201 ] ; then
      if [ "$counter" -lt 3002 ] ; then
        mkdir CutCrab/res/Dir_16
      fi
      mv $f CutCrab/res/Dir_16
    fi 

    if [ "$counter" -ge 3201 ] && [ "$counter" -lt 3401 ] ; then
      if [ "$counter" -lt 3202 ] ; then
        mkdir CutCrab/res/Dir_17
      fi
      mv $f CutCrab/res/Dir_17
    fi 

    if [ "$counter" -ge 3401 ] && [ "$counter" -lt 3601 ] ; then
      if [ "$counter" -lt 3402 ] ; then
        mkdir CutCrab/res/Dir_18
      fi
      mv $f CutCrab/res/Dir_18
    fi 

    if [ "$counter" -ge 3601 ] && [ "$counter" -lt 3801 ] ; then
      if [ "$counter" -lt 3602 ] ; then
        mkdir CutCrab/res/Dir_19
      fi
      mv $f CutCrab/res/Dir_19
    fi 

    if [ "$counter" -ge 3801 ] && [ "$counter" -lt 4001 ] ; then
      if [ "$counter" -lt 3802 ] ; then
        mkdir CutCrab/res/Dir_20
      fi
      mv $f CutCrab/res/Dir_20
    fi 

  done

  if [ "$NUMOFLINES" -lt 201 ] ; then
    hadd CutCrab/res/Dir_1/Dir_1.root CutCrab/res/Dir_1/*root
    mkdir CutCrab/res/Dir
    mv CutCrab/res/Dir_1/Dir_1.root CutCrab/res/Dir
    hadd CutCrab/res/Dir/Dir.root CutCrab/res/Dir/*root
    mv CutCrab/res/Dir/Dir.root ./
  fi

  if [ "$NUMOFLINES" -ge 201 ] && [ "$NUMOFLINES" -lt 401 ] ; then
    hadd CutCrab/res/Dir_1/Dir_1.root CutCrab/res/Dir_1/*root
    hadd CutCrab/res/Dir_2/Dir_2.root CutCrab/res/Dir_2/*root
    mkdir CutCrab/res/Dir
    mv CutCrab/res/Dir_1/Dir_1.root CutCrab/res/Dir
    mv CutCrab/res/Dir_2/Dir_2.root CutCrab/res/Dir
    hadd CutCrab/res/Dir/Dir.root CutCrab/res/Dir/*root
    mv CutCrab/res/Dir/Dir.root ./
  fi

  if [ "$NUMOFLINES" -ge 401 ] && [ "$NUMOFLINES" -lt 601 ] ; then
    hadd CutCrab/res/Dir_1/Dir_1.root CutCrab/res/Dir_1/*root
    hadd CutCrab/res/Dir_2/Dir_2.root CutCrab/res/Dir_2/*root
    hadd CutCrab/res/Dir_3/Dir_3.root CutCrab/res/Dir_3/*root
    mkdir CutCrab/res/Dir
    mv CutCrab/res/Dir_1/Dir_1.root CutCrab/res/Dir
    mv CutCrab/res/Dir_2/Dir_2.root CutCrab/res/Dir
    mv CutCrab/res/Dir_3/Dir_3.root CutCrab/res/Dir
    hadd CutCrab/res/Dir/Dir.root CutCrab/res/Dir/*root
    mv CutCrab/res/Dir/Dir.root ./
  fi 

  if [ "$NUMOFLINES" -ge 601 ] && [ "$NUMOFLINES" -lt 801 ] ; then
    hadd CutCrab/res/Dir_1/Dir_1.root CutCrab/res/Dir_1/*root
    hadd CutCrab/res/Dir_2/Dir_2.root CutCrab/res/Dir_2/*root
    hadd CutCrab/res/Dir_3/Dir_3.root CutCrab/res/Dir_3/*root
    hadd CutCrab/res/Dir_4/Dir_4.root CutCrab/res/Dir_4/*root
    mkdir CutCrab/res/Dir
    mv CutCrab/res/Dir_1/Dir_1.root CutCrab/res/Dir
    mv CutCrab/res/Dir_2/Dir_2.root CutCrab/res/Dir
    mv CutCrab/res/Dir_3/Dir_3.root CutCrab/res/Dir
    mv CutCrab/res/Dir_4/Dir_4.root CutCrab/res/Dir
    hadd CutCrab/res/Dir/Dir.root CutCrab/res/Dir/*root
    mv CutCrab/res/Dir/Dir.root ./
  fi

  if [ "$NUMOFLINES" -ge 801 ] && [ "$NUMOFLINES" -lt 1001 ] ; then
    hadd CutCrab/res/Dir_1/Dir_1.root CutCrab/res/Dir_1/*root
    hadd CutCrab/res/Dir_2/Dir_2.root CutCrab/res/Dir_2/*root
    hadd CutCrab/res/Dir_3/Dir_3.root CutCrab/res/Dir_3/*root
    hadd CutCrab/res/Dir_4/Dir_4.root CutCrab/res/Dir_4/*root
    hadd CutCrab/res/Dir_5/Dir_5.root CutCrab/res/Dir_5/*root
    mkdir CutCrab/res/Dir
    mv CutCrab/res/Dir_1/Dir_1.root CutCrab/res/Dir
    mv CutCrab/res/Dir_2/Dir_2.root CutCrab/res/Dir
    mv CutCrab/res/Dir_3/Dir_3.root CutCrab/res/Dir
    mv CutCrab/res/Dir_4/Dir_4.root CutCrab/res/Dir
    mv CutCrab/res/Dir_5/Dir_5.root CutCrab/res/Dir
    hadd CutCrab/res/Dir/Dir.root CutCrab/res/Dir/*root
    mv CutCrab/res/Dir/Dir.root ./
  fi

  if [ "$NUMOFLINES" -ge 1001 ] && [ "$NUMOFLINES" -lt 1201 ] ; then
    hadd CutCrab/res/Dir_1/Dir_1.root CutCrab/res/Dir_1/*root
    hadd CutCrab/res/Dir_2/Dir_2.root CutCrab/res/Dir_2/*root
    hadd CutCrab/res/Dir_3/Dir_3.root CutCrab/res/Dir_3/*root
    hadd CutCrab/res/Dir_4/Dir_4.root CutCrab/res/Dir_4/*root
    hadd CutCrab/res/Dir_5/Dir_5.root CutCrab/res/Dir_5/*root
    hadd CutCrab/res/Dir_6/Dir_6.root CutCrab/res/Dir_6/*root
    mkdir CutCrab/res/Dir
    mv CutCrab/res/Dir_1/Dir_1.root CutCrab/res/Dir
    mv CutCrab/res/Dir_2/Dir_2.root CutCrab/res/Dir
    mv CutCrab/res/Dir_3/Dir_3.root CutCrab/res/Dir
    mv CutCrab/res/Dir_4/Dir_4.root CutCrab/res/Dir
    mv CutCrab/res/Dir_5/Dir_5.root CutCrab/res/Dir
    mv CutCrab/res/Dir_6/Dir_6.root CutCrab/res/Dir
    hadd CutCrab/res/Dir/Dir.root CutCrab/res/Dir/*root
    mv CutCrab/res/Dir/Dir.root ./
  fi

  if [ "$NUMOFLINES" -ge 1201 ] && [ "$NUMOFLINES" -lt 1401 ] ; then
    hadd CutCrab/res/Dir_1/Dir_1.root CutCrab/res/Dir_1/*root
    hadd CutCrab/res/Dir_2/Dir_2.root CutCrab/res/Dir_2/*root
    hadd CutCrab/res/Dir_3/Dir_3.root CutCrab/res/Dir_3/*root
    hadd CutCrab/res/Dir_4/Dir_4.root CutCrab/res/Dir_4/*root
    hadd CutCrab/res/Dir_5/Dir_5.root CutCrab/res/Dir_5/*root
    hadd CutCrab/res/Dir_6/Dir_6.root CutCrab/res/Dir_6/*root
    hadd CutCrab/res/Dir_7/Dir_7.root CutCrab/res/Dir_7/*root
    mkdir CutCrab/res/Dir
    mv CutCrab/res/Dir_1/Dir_1.root CutCrab/res/Dir
    mv CutCrab/res/Dir_2/Dir_2.root CutCrab/res/Dir
    mv CutCrab/res/Dir_3/Dir_3.root CutCrab/res/Dir
    mv CutCrab/res/Dir_4/Dir_4.root CutCrab/res/Dir
    mv CutCrab/res/Dir_5/Dir_5.root CutCrab/res/Dir
    mv CutCrab/res/Dir_6/Dir_6.root CutCrab/res/Dir
    mv CutCrab/res/Dir_7/Dir_7.root CutCrab/res/Dir
    hadd CutCrab/res/Dir/Dir.root CutCrab/res/Dir/*root
    mv CutCrab/res/Dir/Dir.root ./
  fi

  if [ "$NUMOFLINES" -ge 1401 ] && [ "$NUMOFLINES" -lt 1601 ] ; then
    hadd CutCrab/res/Dir_1/Dir_1.root CutCrab/res/Dir_1/*root
    hadd CutCrab/res/Dir_2/Dir_2.root CutCrab/res/Dir_2/*root
    hadd CutCrab/res/Dir_3/Dir_3.root CutCrab/res/Dir_3/*root
    hadd CutCrab/res/Dir_4/Dir_4.root CutCrab/res/Dir_4/*root
    hadd CutCrab/res/Dir_5/Dir_5.root CutCrab/res/Dir_5/*root
    hadd CutCrab/res/Dir_6/Dir_6.root CutCrab/res/Dir_6/*root
    hadd CutCrab/res/Dir_7/Dir_7.root CutCrab/res/Dir_7/*root
    hadd CutCrab/res/Dir_8/Dir_8.root CutCrab/res/Dir_8/*root
    mkdir CutCrab/res/Dir
    mv CutCrab/res/Dir_1/Dir_1.root CutCrab/res/Dir
    mv CutCrab/res/Dir_2/Dir_2.root CutCrab/res/Dir
    mv CutCrab/res/Dir_3/Dir_3.root CutCrab/res/Dir
    mv CutCrab/res/Dir_4/Dir_4.root CutCrab/res/Dir
    mv CutCrab/res/Dir_5/Dir_5.root CutCrab/res/Dir
    mv CutCrab/res/Dir_6/Dir_6.root CutCrab/res/Dir
    mv CutCrab/res/Dir_7/Dir_7.root CutCrab/res/Dir
    mv CutCrab/res/Dir_8/Dir_8.root CutCrab/res/Dir
    hadd CutCrab/res/Dir/Dir.root CutCrab/res/Dir/*root
    mv CutCrab/res/Dir/Dir.root ./
  fi

  if [ "$NUMOFLINES" -ge 1601 ] && [ "$NUMOFLINES" -lt 1801 ] ; then
    hadd CutCrab/res/Dir_1/Dir_1.root CutCrab/res/Dir_1/*root
    hadd CutCrab/res/Dir_2/Dir_2.root CutCrab/res/Dir_2/*root
    hadd CutCrab/res/Dir_3/Dir_3.root CutCrab/res/Dir_3/*root
    hadd CutCrab/res/Dir_4/Dir_4.root CutCrab/res/Dir_4/*root
    hadd CutCrab/res/Dir_5/Dir_5.root CutCrab/res/Dir_5/*root
    hadd CutCrab/res/Dir_6/Dir_6.root CutCrab/res/Dir_6/*root
    hadd CutCrab/res/Dir_7/Dir_7.root CutCrab/res/Dir_7/*root
    hadd CutCrab/res/Dir_8/Dir_8.root CutCrab/res/Dir_8/*root
    hadd CutCrab/res/Dir_9/Dir_9.root CutCrab/res/Dir_9/*root
    mkdir CutCrab/res/Dir
    mv CutCrab/res/Dir_1/Dir_1.root CutCrab/res/Dir
    mv CutCrab/res/Dir_2/Dir_2.root CutCrab/res/Dir
    mv CutCrab/res/Dir_3/Dir_3.root CutCrab/res/Dir
    mv CutCrab/res/Dir_4/Dir_4.root CutCrab/res/Dir
    mv CutCrab/res/Dir_5/Dir_5.root CutCrab/res/Dir
    mv CutCrab/res/Dir_6/Dir_6.root CutCrab/res/Dir
    mv CutCrab/res/Dir_7/Dir_7.root CutCrab/res/Dir
    mv CutCrab/res/Dir_8/Dir_8.root CutCrab/res/Dir
    mv CutCrab/res/Dir_9/Dir_9.root CutCrab/res/Dir
    hadd CutCrab/res/Dir/Dir.root CutCrab/res/Dir/*root
    mv CutCrab/res/Dir/Dir.root ./
  fi

  if [ "$NUMOFLINES" -ge 1801 ] && [ "$NUMOFLINES" -lt 2001 ] ; then
    hadd CutCrab/res/Dir_1/Dir_1.root CutCrab/res/Dir_1/*root
    hadd CutCrab/res/Dir_2/Dir_2.root CutCrab/res/Dir_2/*root
    hadd CutCrab/res/Dir_3/Dir_3.root CutCrab/res/Dir_3/*root
    hadd CutCrab/res/Dir_4/Dir_4.root CutCrab/res/Dir_4/*root
    hadd CutCrab/res/Dir_5/Dir_5.root CutCrab/res/Dir_5/*root
    hadd CutCrab/res/Dir_6/Dir_6.root CutCrab/res/Dir_6/*root
    hadd CutCrab/res/Dir_7/Dir_7.root CutCrab/res/Dir_7/*root
    hadd CutCrab/res/Dir_8/Dir_8.root CutCrab/res/Dir_8/*root
    hadd CutCrab/res/Dir_9/Dir_9.root CutCrab/res/Dir_9/*root
    hadd CutCrab/res/Dir_10/Dir_10.root CutCrab/res/Dir_10/*root
    mkdir CutCrab/res/Dir
    mv CutCrab/res/Dir_1/Dir_1.root CutCrab/res/Dir
    mv CutCrab/res/Dir_2/Dir_2.root CutCrab/res/Dir
    mv CutCrab/res/Dir_3/Dir_3.root CutCrab/res/Dir
    mv CutCrab/res/Dir_4/Dir_4.root CutCrab/res/Dir
    mv CutCrab/res/Dir_5/Dir_5.root CutCrab/res/Dir
    mv CutCrab/res/Dir_6/Dir_6.root CutCrab/res/Dir
    mv CutCrab/res/Dir_7/Dir_7.root CutCrab/res/Dir
    mv CutCrab/res/Dir_8/Dir_8.root CutCrab/res/Dir
    mv CutCrab/res/Dir_9/Dir_9.root CutCrab/res/Dir
    mv CutCrab/res/Dir_10/Dir_10.root CutCrab/res/Dir
    hadd CutCrab/res/Dir/Dir.root CutCrab/res/Dir/*root
    mv CutCrab/res/Dir/Dir.root ./
  fi

  if [ "$NUMOFLINES" -ge 2001 ] && [ "$NUMOFLINES" -lt 2201 ] ; then
    hadd CutCrab/res/Dir_1/Dir_1.root CutCrab/res/Dir_1/*root
    hadd CutCrab/res/Dir_2/Dir_2.root CutCrab/res/Dir_2/*root
    hadd CutCrab/res/Dir_3/Dir_3.root CutCrab/res/Dir_3/*root
    hadd CutCrab/res/Dir_4/Dir_4.root CutCrab/res/Dir_4/*root
    hadd CutCrab/res/Dir_5/Dir_5.root CutCrab/res/Dir_5/*root
    hadd CutCrab/res/Dir_6/Dir_6.root CutCrab/res/Dir_6/*root
    hadd CutCrab/res/Dir_7/Dir_7.root CutCrab/res/Dir_7/*root
    hadd CutCrab/res/Dir_8/Dir_8.root CutCrab/res/Dir_8/*root
    hadd CutCrab/res/Dir_9/Dir_9.root CutCrab/res/Dir_9/*root
    hadd CutCrab/res/Dir_10/Dir_10.root CutCrab/res/Dir_10/*root
    hadd CutCrab/res/Dir_11/Dir_11.root CutCrab/res/Dir_11/*root
    mkdir CutCrab/res/Dir
    mv CutCrab/res/Dir_1/Dir_1.root CutCrab/res/Dir
    mv CutCrab/res/Dir_2/Dir_2.root CutCrab/res/Dir
    mv CutCrab/res/Dir_3/Dir_3.root CutCrab/res/Dir
    mv CutCrab/res/Dir_4/Dir_4.root CutCrab/res/Dir
    mv CutCrab/res/Dir_5/Dir_5.root CutCrab/res/Dir
    mv CutCrab/res/Dir_6/Dir_6.root CutCrab/res/Dir
    mv CutCrab/res/Dir_7/Dir_7.root CutCrab/res/Dir
    mv CutCrab/res/Dir_8/Dir_8.root CutCrab/res/Dir
    mv CutCrab/res/Dir_9/Dir_9.root CutCrab/res/Dir
    mv CutCrab/res/Dir_10/Dir_10.root CutCrab/res/Dir
    mv CutCrab/res/Dir_11/Dir_11.root CutCrab/res/Dir
    hadd CutCrab/res/Dir/Dir.root CutCrab/res/Dir/*root
    mv CutCrab/res/Dir/Dir.root ./
  fi

  if [ "$NUMOFLINES" -ge 2201 ] && [ "$NUMOFLINES" -lt 2401 ] ; then
    hadd CutCrab/res/Dir_1/Dir_1.root CutCrab/res/Dir_1/*root
    hadd CutCrab/res/Dir_2/Dir_2.root CutCrab/res/Dir_2/*root
    hadd CutCrab/res/Dir_3/Dir_3.root CutCrab/res/Dir_3/*root
    hadd CutCrab/res/Dir_4/Dir_4.root CutCrab/res/Dir_4/*root
    hadd CutCrab/res/Dir_5/Dir_5.root CutCrab/res/Dir_5/*root
    hadd CutCrab/res/Dir_6/Dir_6.root CutCrab/res/Dir_6/*root
    hadd CutCrab/res/Dir_7/Dir_7.root CutCrab/res/Dir_7/*root
    hadd CutCrab/res/Dir_8/Dir_8.root CutCrab/res/Dir_8/*root
    hadd CutCrab/res/Dir_9/Dir_9.root CutCrab/res/Dir_9/*root
    hadd CutCrab/res/Dir_10/Dir_10.root CutCrab/res/Dir_10/*root
    hadd CutCrab/res/Dir_11/Dir_11.root CutCrab/res/Dir_11/*root
    hadd CutCrab/res/Dir_12/Dir_12.root CutCrab/res/Dir_12/*root
    mkdir CutCrab/res/Dir
    mv CutCrab/res/Dir_1/Dir_1.root CutCrab/res/Dir
    mv CutCrab/res/Dir_2/Dir_2.root CutCrab/res/Dir
    mv CutCrab/res/Dir_3/Dir_3.root CutCrab/res/Dir
    mv CutCrab/res/Dir_4/Dir_4.root CutCrab/res/Dir
    mv CutCrab/res/Dir_5/Dir_5.root CutCrab/res/Dir
    mv CutCrab/res/Dir_6/Dir_6.root CutCrab/res/Dir
    mv CutCrab/res/Dir_7/Dir_7.root CutCrab/res/Dir
    mv CutCrab/res/Dir_8/Dir_8.root CutCrab/res/Dir
    mv CutCrab/res/Dir_9/Dir_9.root CutCrab/res/Dir
    mv CutCrab/res/Dir_10/Dir_10.root CutCrab/res/Dir
    mv CutCrab/res/Dir_11/Dir_11.root CutCrab/res/Dir
    mv CutCrab/res/Dir_12/Dir_12.root CutCrab/res/Dir
    hadd CutCrab/res/Dir/Dir.root CutCrab/res/Dir/*root
    mv CutCrab/res/Dir/Dir.root ./
  fi

  if [ "$NUMOFLINES" -ge 2401 ] && [ "$NUMOFLINES" -lt 2601 ] ; then
    hadd CutCrab/res/Dir_1/Dir_1.root CutCrab/res/Dir_1/*root
    hadd CutCrab/res/Dir_2/Dir_2.root CutCrab/res/Dir_2/*root
    hadd CutCrab/res/Dir_3/Dir_3.root CutCrab/res/Dir_3/*root
    hadd CutCrab/res/Dir_4/Dir_4.root CutCrab/res/Dir_4/*root
    hadd CutCrab/res/Dir_5/Dir_5.root CutCrab/res/Dir_5/*root
    hadd CutCrab/res/Dir_6/Dir_6.root CutCrab/res/Dir_6/*root
    hadd CutCrab/res/Dir_7/Dir_7.root CutCrab/res/Dir_7/*root
    hadd CutCrab/res/Dir_8/Dir_8.root CutCrab/res/Dir_8/*root
    hadd CutCrab/res/Dir_9/Dir_9.root CutCrab/res/Dir_9/*root
    hadd CutCrab/res/Dir_10/Dir_10.root CutCrab/res/Dir_10/*root
    hadd CutCrab/res/Dir_11/Dir_11.root CutCrab/res/Dir_11/*root
    hadd CutCrab/res/Dir_12/Dir_12.root CutCrab/res/Dir_12/*root
    hadd CutCrab/res/Dir_13/Dir_13.root CutCrab/res/Dir_13/*root
    mkdir CutCrab/res/Dir
    mv CutCrab/res/Dir_1/Dir_1.root CutCrab/res/Dir
    mv CutCrab/res/Dir_2/Dir_2.root CutCrab/res/Dir
    mv CutCrab/res/Dir_3/Dir_3.root CutCrab/res/Dir
    mv CutCrab/res/Dir_4/Dir_4.root CutCrab/res/Dir
    mv CutCrab/res/Dir_5/Dir_5.root CutCrab/res/Dir
    mv CutCrab/res/Dir_6/Dir_6.root CutCrab/res/Dir
    mv CutCrab/res/Dir_7/Dir_7.root CutCrab/res/Dir
    mv CutCrab/res/Dir_8/Dir_8.root CutCrab/res/Dir
    mv CutCrab/res/Dir_9/Dir_9.root CutCrab/res/Dir
    mv CutCrab/res/Dir_10/Dir_10.root CutCrab/res/Dir
    mv CutCrab/res/Dir_11/Dir_11.root CutCrab/res/Dir
    mv CutCrab/res/Dir_12/Dir_12.root CutCrab/res/Dir
    mv CutCrab/res/Dir_13/Dir_13.root CutCrab/res/Dir
    hadd CutCrab/res/Dir/Dir.root CutCrab/res/Dir/*root
    mv CutCrab/res/Dir/Dir.root ./
  fi

  if [ "$NUMOFLINES" -ge 2601 ] && [ "$NUMOFLINES" -lt 2801 ] ; then
    hadd CutCrab/res/Dir_1/Dir_1.root CutCrab/res/Dir_1/*root
    hadd CutCrab/res/Dir_2/Dir_2.root CutCrab/res/Dir_2/*root
    hadd CutCrab/res/Dir_3/Dir_3.root CutCrab/res/Dir_3/*root
    hadd CutCrab/res/Dir_4/Dir_4.root CutCrab/res/Dir_4/*root
    hadd CutCrab/res/Dir_5/Dir_5.root CutCrab/res/Dir_5/*root
    hadd CutCrab/res/Dir_6/Dir_6.root CutCrab/res/Dir_6/*root
    hadd CutCrab/res/Dir_7/Dir_7.root CutCrab/res/Dir_7/*root
    hadd CutCrab/res/Dir_8/Dir_8.root CutCrab/res/Dir_8/*root
    hadd CutCrab/res/Dir_9/Dir_9.root CutCrab/res/Dir_9/*root
    hadd CutCrab/res/Dir_10/Dir_10.root CutCrab/res/Dir_10/*root
    hadd CutCrab/res/Dir_11/Dir_11.root CutCrab/res/Dir_11/*root
    hadd CutCrab/res/Dir_12/Dir_12.root CutCrab/res/Dir_12/*root
    hadd CutCrab/res/Dir_13/Dir_13.root CutCrab/res/Dir_13/*root
    hadd CutCrab/res/Dir_14/Dir_14.root CutCrab/res/Dir_14/*root
    mkdir CutCrab/res/Dir
    mv CutCrab/res/Dir_1/Dir_1.root CutCrab/res/Dir
    mv CutCrab/res/Dir_2/Dir_2.root CutCrab/res/Dir
    mv CutCrab/res/Dir_3/Dir_3.root CutCrab/res/Dir
    mv CutCrab/res/Dir_4/Dir_4.root CutCrab/res/Dir
    mv CutCrab/res/Dir_5/Dir_5.root CutCrab/res/Dir
    mv CutCrab/res/Dir_6/Dir_6.root CutCrab/res/Dir
    mv CutCrab/res/Dir_7/Dir_7.root CutCrab/res/Dir
    mv CutCrab/res/Dir_8/Dir_8.root CutCrab/res/Dir
    mv CutCrab/res/Dir_9/Dir_9.root CutCrab/res/Dir
    mv CutCrab/res/Dir_10/Dir_10.root CutCrab/res/Dir
    mv CutCrab/res/Dir_11/Dir_11.root CutCrab/res/Dir
    mv CutCrab/res/Dir_12/Dir_12.root CutCrab/res/Dir
    mv CutCrab/res/Dir_13/Dir_13.root CutCrab/res/Dir
    mv CutCrab/res/Dir_14/Dir_14.root CutCrab/res/Dir
    hadd CutCrab/res/Dir/Dir.root CutCrab/res/Dir/*root
    mv CutCrab/res/Dir/Dir.root ./
  fi

  if [ "$NUMOFLINES" -ge 2801 ] && [ "$NUMOFLINES" -lt 3001 ] ; then
    hadd CutCrab/res/Dir_1/Dir_1.root CutCrab/res/Dir_1/*root
    hadd CutCrab/res/Dir_2/Dir_2.root CutCrab/res/Dir_2/*root
    hadd CutCrab/res/Dir_3/Dir_3.root CutCrab/res/Dir_3/*root
    hadd CutCrab/res/Dir_4/Dir_4.root CutCrab/res/Dir_4/*root
    hadd CutCrab/res/Dir_5/Dir_5.root CutCrab/res/Dir_5/*root
    hadd CutCrab/res/Dir_6/Dir_6.root CutCrab/res/Dir_6/*root
    hadd CutCrab/res/Dir_7/Dir_7.root CutCrab/res/Dir_7/*root
    hadd CutCrab/res/Dir_8/Dir_8.root CutCrab/res/Dir_8/*root
    hadd CutCrab/res/Dir_9/Dir_9.root CutCrab/res/Dir_9/*root
    hadd CutCrab/res/Dir_10/Dir_10.root CutCrab/res/Dir_10/*root
    hadd CutCrab/res/Dir_11/Dir_11.root CutCrab/res/Dir_11/*root
    hadd CutCrab/res/Dir_12/Dir_12.root CutCrab/res/Dir_12/*root
    hadd CutCrab/res/Dir_13/Dir_13.root CutCrab/res/Dir_13/*root
    hadd CutCrab/res/Dir_14/Dir_14.root CutCrab/res/Dir_14/*root
    hadd CutCrab/res/Dir_15/Dir_15.root CutCrab/res/Dir_15/*root
    mkdir CutCrab/res/Dir
    mv CutCrab/res/Dir_1/Dir_1.root CutCrab/res/Dir
    mv CutCrab/res/Dir_2/Dir_2.root CutCrab/res/Dir
    mv CutCrab/res/Dir_3/Dir_3.root CutCrab/res/Dir
    mv CutCrab/res/Dir_4/Dir_4.root CutCrab/res/Dir
    mv CutCrab/res/Dir_5/Dir_5.root CutCrab/res/Dir
    mv CutCrab/res/Dir_6/Dir_6.root CutCrab/res/Dir
    mv CutCrab/res/Dir_7/Dir_7.root CutCrab/res/Dir
    mv CutCrab/res/Dir_8/Dir_8.root CutCrab/res/Dir
    mv CutCrab/res/Dir_9/Dir_9.root CutCrab/res/Dir
    mv CutCrab/res/Dir_10/Dir_10.root CutCrab/res/Dir
    mv CutCrab/res/Dir_11/Dir_11.root CutCrab/res/Dir
    mv CutCrab/res/Dir_12/Dir_12.root CutCrab/res/Dir
    mv CutCrab/res/Dir_13/Dir_13.root CutCrab/res/Dir
    mv CutCrab/res/Dir_14/Dir_14.root CutCrab/res/Dir
    mv CutCrab/res/Dir_15/Dir_15.root CutCrab/res/Dir
    hadd CutCrab/res/Dir/Dir.root CutCrab/res/Dir/*root
    mv CutCrab/res/Dir/Dir.root ./
  fi

  if [ "$NUMOFLINES" -ge 3001 ] && [ "$NUMOFLINES" -lt 3201 ] ; then
    hadd CutCrab/res/Dir_1/Dir_1.root CutCrab/res/Dir_1/*root
    hadd CutCrab/res/Dir_2/Dir_2.root CutCrab/res/Dir_2/*root
    hadd CutCrab/res/Dir_3/Dir_3.root CutCrab/res/Dir_3/*root
    hadd CutCrab/res/Dir_4/Dir_4.root CutCrab/res/Dir_4/*root
    hadd CutCrab/res/Dir_5/Dir_5.root CutCrab/res/Dir_5/*root
    hadd CutCrab/res/Dir_6/Dir_6.root CutCrab/res/Dir_6/*root
    hadd CutCrab/res/Dir_7/Dir_7.root CutCrab/res/Dir_7/*root
    hadd CutCrab/res/Dir_8/Dir_8.root CutCrab/res/Dir_8/*root
    hadd CutCrab/res/Dir_9/Dir_9.root CutCrab/res/Dir_9/*root
    hadd CutCrab/res/Dir_10/Dir_10.root CutCrab/res/Dir_10/*root
    hadd CutCrab/res/Dir_11/Dir_11.root CutCrab/res/Dir_11/*root
    hadd CutCrab/res/Dir_12/Dir_12.root CutCrab/res/Dir_12/*root
    hadd CutCrab/res/Dir_13/Dir_13.root CutCrab/res/Dir_13/*root
    hadd CutCrab/res/Dir_14/Dir_14.root CutCrab/res/Dir_14/*root
    hadd CutCrab/res/Dir_15/Dir_15.root CutCrab/res/Dir_15/*root
    hadd CutCrab/res/Dir_16/Dir_16.root CutCrab/res/Dir_16/*root
    mkdir CutCrab/res/Dir
    mv CutCrab/res/Dir_1/Dir_1.root CutCrab/res/Dir
    mv CutCrab/res/Dir_2/Dir_2.root CutCrab/res/Dir
    mv CutCrab/res/Dir_3/Dir_3.root CutCrab/res/Dir
    mv CutCrab/res/Dir_4/Dir_4.root CutCrab/res/Dir
    mv CutCrab/res/Dir_5/Dir_5.root CutCrab/res/Dir
    mv CutCrab/res/Dir_6/Dir_6.root CutCrab/res/Dir
    mv CutCrab/res/Dir_7/Dir_7.root CutCrab/res/Dir
    mv CutCrab/res/Dir_8/Dir_8.root CutCrab/res/Dir
    mv CutCrab/res/Dir_9/Dir_9.root CutCrab/res/Dir
    mv CutCrab/res/Dir_10/Dir_10.root CutCrab/res/Dir
    mv CutCrab/res/Dir_11/Dir_11.root CutCrab/res/Dir
    mv CutCrab/res/Dir_12/Dir_12.root CutCrab/res/Dir
    mv CutCrab/res/Dir_13/Dir_13.root CutCrab/res/Dir
    mv CutCrab/res/Dir_14/Dir_14.root CutCrab/res/Dir
    mv CutCrab/res/Dir_15/Dir_15.root CutCrab/res/Dir
    mv CutCrab/res/Dir_16/Dir_16.root CutCrab/res/Dir
    hadd CutCrab/res/Dir/Dir.root CutCrab/res/Dir/*root
    mv CutCrab/res/Dir/Dir.root ./
  fi

  if [ "$NUMOFLINES" -ge 3201 ] && [ "$NUMOFLINES" -lt 3401 ] ; then
    hadd CutCrab/res/Dir_1/Dir_1.root CutCrab/res/Dir_1/*root
    hadd CutCrab/res/Dir_2/Dir_2.root CutCrab/res/Dir_2/*root
    hadd CutCrab/res/Dir_3/Dir_3.root CutCrab/res/Dir_3/*root
    hadd CutCrab/res/Dir_4/Dir_4.root CutCrab/res/Dir_4/*root
    hadd CutCrab/res/Dir_5/Dir_5.root CutCrab/res/Dir_5/*root
    hadd CutCrab/res/Dir_6/Dir_6.root CutCrab/res/Dir_6/*root
    hadd CutCrab/res/Dir_7/Dir_7.root CutCrab/res/Dir_7/*root
    hadd CutCrab/res/Dir_8/Dir_8.root CutCrab/res/Dir_8/*root
    hadd CutCrab/res/Dir_9/Dir_9.root CutCrab/res/Dir_9/*root
    hadd CutCrab/res/Dir_10/Dir_10.root CutCrab/res/Dir_10/*root
    hadd CutCrab/res/Dir_11/Dir_11.root CutCrab/res/Dir_11/*root
    hadd CutCrab/res/Dir_12/Dir_12.root CutCrab/res/Dir_12/*root
    hadd CutCrab/res/Dir_13/Dir_13.root CutCrab/res/Dir_13/*root
    hadd CutCrab/res/Dir_14/Dir_14.root CutCrab/res/Dir_14/*root
    hadd CutCrab/res/Dir_15/Dir_15.root CutCrab/res/Dir_15/*root
    hadd CutCrab/res/Dir_16/Dir_16.root CutCrab/res/Dir_16/*root
    hadd CutCrab/res/Dir_17/Dir_17.root CutCrab/res/Dir_17/*root
    mkdir CutCrab/res/Dir
    mv CutCrab/res/Dir_1/Dir_1.root CutCrab/res/Dir
    mv CutCrab/res/Dir_2/Dir_2.root CutCrab/res/Dir
    mv CutCrab/res/Dir_3/Dir_3.root CutCrab/res/Dir
    mv CutCrab/res/Dir_4/Dir_4.root CutCrab/res/Dir
    mv CutCrab/res/Dir_5/Dir_5.root CutCrab/res/Dir
    mv CutCrab/res/Dir_6/Dir_6.root CutCrab/res/Dir
    mv CutCrab/res/Dir_7/Dir_7.root CutCrab/res/Dir
    mv CutCrab/res/Dir_8/Dir_8.root CutCrab/res/Dir
    mv CutCrab/res/Dir_9/Dir_9.root CutCrab/res/Dir
    mv CutCrab/res/Dir_10/Dir_10.root CutCrab/res/Dir
    mv CutCrab/res/Dir_11/Dir_11.root CutCrab/res/Dir
    mv CutCrab/res/Dir_12/Dir_12.root CutCrab/res/Dir
    mv CutCrab/res/Dir_13/Dir_13.root CutCrab/res/Dir
    mv CutCrab/res/Dir_14/Dir_14.root CutCrab/res/Dir
    mv CutCrab/res/Dir_15/Dir_15.root CutCrab/res/Dir
    mv CutCrab/res/Dir_16/Dir_16.root CutCrab/res/Dir
    mv CutCrab/res/Dir_17/Dir_17.root CutCrab/res/Dir
    hadd CutCrab/res/Dir/Dir.root CutCrab/res/Dir/*root
    mv CutCrab/res/Dir/Dir.root ./
  fi

  if [ "$NUMOFLINES" -ge 3401 ] && [ "$NUMOFLINES" -lt 3601 ] ; then
    hadd CutCrab/res/Dir_1/Dir_1.root CutCrab/res/Dir_1/*root
    hadd CutCrab/res/Dir_2/Dir_2.root CutCrab/res/Dir_2/*root
    hadd CutCrab/res/Dir_3/Dir_3.root CutCrab/res/Dir_3/*root
    hadd CutCrab/res/Dir_4/Dir_4.root CutCrab/res/Dir_4/*root
    hadd CutCrab/res/Dir_5/Dir_5.root CutCrab/res/Dir_5/*root
    hadd CutCrab/res/Dir_6/Dir_6.root CutCrab/res/Dir_6/*root
    hadd CutCrab/res/Dir_7/Dir_7.root CutCrab/res/Dir_7/*root
    hadd CutCrab/res/Dir_8/Dir_8.root CutCrab/res/Dir_8/*root
    hadd CutCrab/res/Dir_9/Dir_9.root CutCrab/res/Dir_9/*root
    hadd CutCrab/res/Dir_10/Dir_10.root CutCrab/res/Dir_10/*root
    hadd CutCrab/res/Dir_11/Dir_11.root CutCrab/res/Dir_11/*root
    hadd CutCrab/res/Dir_12/Dir_12.root CutCrab/res/Dir_12/*root
    hadd CutCrab/res/Dir_13/Dir_13.root CutCrab/res/Dir_13/*root
    hadd CutCrab/res/Dir_14/Dir_14.root CutCrab/res/Dir_14/*root
    hadd CutCrab/res/Dir_15/Dir_15.root CutCrab/res/Dir_15/*root
    hadd CutCrab/res/Dir_16/Dir_16.root CutCrab/res/Dir_16/*root
    hadd CutCrab/res/Dir_17/Dir_17.root CutCrab/res/Dir_17/*root
    hadd CutCrab/res/Dir_18/Dir_18.root CutCrab/res/Dir_18/*root
    mkdir CutCrab/res/Dir
    mv CutCrab/res/Dir_1/Dir_1.root CutCrab/res/Dir
    mv CutCrab/res/Dir_2/Dir_2.root CutCrab/res/Dir
    mv CutCrab/res/Dir_3/Dir_3.root CutCrab/res/Dir
    mv CutCrab/res/Dir_4/Dir_4.root CutCrab/res/Dir
    mv CutCrab/res/Dir_5/Dir_5.root CutCrab/res/Dir
    mv CutCrab/res/Dir_6/Dir_6.root CutCrab/res/Dir
    mv CutCrab/res/Dir_7/Dir_7.root CutCrab/res/Dir
    mv CutCrab/res/Dir_8/Dir_8.root CutCrab/res/Dir
    mv CutCrab/res/Dir_9/Dir_9.root CutCrab/res/Dir
    mv CutCrab/res/Dir_10/Dir_10.root CutCrab/res/Dir
    mv CutCrab/res/Dir_11/Dir_11.root CutCrab/res/Dir
    mv CutCrab/res/Dir_12/Dir_12.root CutCrab/res/Dir
    mv CutCrab/res/Dir_13/Dir_13.root CutCrab/res/Dir
    mv CutCrab/res/Dir_14/Dir_14.root CutCrab/res/Dir
    mv CutCrab/res/Dir_15/Dir_15.root CutCrab/res/Dir
    mv CutCrab/res/Dir_16/Dir_16.root CutCrab/res/Dir
    mv CutCrab/res/Dir_17/Dir_17.root CutCrab/res/Dir
    mv CutCrab/res/Dir_18/Dir_18.root CutCrab/res/Dir
    hadd CutCrab/res/Dir/Dir.root CutCrab/res/Dir/*root
    mv CutCrab/res/Dir/Dir.root ./
  fi

  if [ "$NUMOFLINES" -ge 3601 ] && [ "$NUMOFLINES" -lt 3801 ] ; then
    hadd CutCrab/res/Dir_1/Dir_1.root CutCrab/res/Dir_1/*root
    hadd CutCrab/res/Dir_2/Dir_2.root CutCrab/res/Dir_2/*root
    hadd CutCrab/res/Dir_3/Dir_3.root CutCrab/res/Dir_3/*root
    hadd CutCrab/res/Dir_4/Dir_4.root CutCrab/res/Dir_4/*root
    hadd CutCrab/res/Dir_5/Dir_5.root CutCrab/res/Dir_5/*root
    hadd CutCrab/res/Dir_6/Dir_6.root CutCrab/res/Dir_6/*root
    hadd CutCrab/res/Dir_7/Dir_7.root CutCrab/res/Dir_7/*root
    hadd CutCrab/res/Dir_8/Dir_8.root CutCrab/res/Dir_8/*root
    hadd CutCrab/res/Dir_9/Dir_9.root CutCrab/res/Dir_9/*root
    hadd CutCrab/res/Dir_10/Dir_10.root CutCrab/res/Dir_10/*root
    hadd CutCrab/res/Dir_11/Dir_11.root CutCrab/res/Dir_11/*root
    hadd CutCrab/res/Dir_12/Dir_12.root CutCrab/res/Dir_12/*root
    hadd CutCrab/res/Dir_13/Dir_13.root CutCrab/res/Dir_13/*root
    hadd CutCrab/res/Dir_14/Dir_14.root CutCrab/res/Dir_14/*root
    hadd CutCrab/res/Dir_15/Dir_15.root CutCrab/res/Dir_15/*root
    hadd CutCrab/res/Dir_16/Dir_16.root CutCrab/res/Dir_16/*root
    hadd CutCrab/res/Dir_17/Dir_17.root CutCrab/res/Dir_17/*root
    hadd CutCrab/res/Dir_18/Dir_18.root CutCrab/res/Dir_18/*root
    hadd CutCrab/res/Dir_19/Dir_19.root CutCrab/res/Dir_19/*root
    mkdir CutCrab/res/Dir
    mv CutCrab/res/Dir_1/Dir_1.root CutCrab/res/Dir
    mv CutCrab/res/Dir_2/Dir_2.root CutCrab/res/Dir
    mv CutCrab/res/Dir_3/Dir_3.root CutCrab/res/Dir
    mv CutCrab/res/Dir_4/Dir_4.root CutCrab/res/Dir
    mv CutCrab/res/Dir_5/Dir_5.root CutCrab/res/Dir
    mv CutCrab/res/Dir_6/Dir_6.root CutCrab/res/Dir
    mv CutCrab/res/Dir_7/Dir_7.root CutCrab/res/Dir
    mv CutCrab/res/Dir_8/Dir_8.root CutCrab/res/Dir
    mv CutCrab/res/Dir_9/Dir_9.root CutCrab/res/Dir
    mv CutCrab/res/Dir_10/Dir_10.root CutCrab/res/Dir
    mv CutCrab/res/Dir_11/Dir_11.root CutCrab/res/Dir
    mv CutCrab/res/Dir_12/Dir_12.root CutCrab/res/Dir
    mv CutCrab/res/Dir_13/Dir_13.root CutCrab/res/Dir
    mv CutCrab/res/Dir_14/Dir_14.root CutCrab/res/Dir
    mv CutCrab/res/Dir_15/Dir_15.root CutCrab/res/Dir
    mv CutCrab/res/Dir_16/Dir_16.root CutCrab/res/Dir
    mv CutCrab/res/Dir_17/Dir_17.root CutCrab/res/Dir
    mv CutCrab/res/Dir_18/Dir_18.root CutCrab/res/Dir
    mv CutCrab/res/Dir_19/Dir_19.root CutCrab/res/Dir
    hadd CutCrab/res/Dir/Dir.root CutCrab/res/Dir/*root
    mv CutCrab/res/Dir/Dir.root ./
  fi

  if [ "$NUMOFLINES" -ge 3801 ] && [ "$NUMOFLINES" -lt 4001 ] ; then
    hadd CutCrab/res/Dir_1/Dir_1.root CutCrab/res/Dir_1/*root
    hadd CutCrab/res/Dir_2/Dir_2.root CutCrab/res/Dir_2/*root
    hadd CutCrab/res/Dir_3/Dir_3.root CutCrab/res/Dir_3/*root
    hadd CutCrab/res/Dir_4/Dir_4.root CutCrab/res/Dir_4/*root
    hadd CutCrab/res/Dir_5/Dir_5.root CutCrab/res/Dir_5/*root
    hadd CutCrab/res/Dir_6/Dir_6.root CutCrab/res/Dir_6/*root
    hadd CutCrab/res/Dir_7/Dir_7.root CutCrab/res/Dir_7/*root
    hadd CutCrab/res/Dir_8/Dir_8.root CutCrab/res/Dir_8/*root
    hadd CutCrab/res/Dir_9/Dir_9.root CutCrab/res/Dir_9/*root
    hadd CutCrab/res/Dir_10/Dir_10.root CutCrab/res/Dir_10/*root
    hadd CutCrab/res/Dir_11/Dir_11.root CutCrab/res/Dir_11/*root
    hadd CutCrab/res/Dir_12/Dir_12.root CutCrab/res/Dir_12/*root
    hadd CutCrab/res/Dir_13/Dir_13.root CutCrab/res/Dir_13/*root
    hadd CutCrab/res/Dir_14/Dir_14.root CutCrab/res/Dir_14/*root
    hadd CutCrab/res/Dir_15/Dir_15.root CutCrab/res/Dir_15/*root
    hadd CutCrab/res/Dir_16/Dir_16.root CutCrab/res/Dir_16/*root
    hadd CutCrab/res/Dir_17/Dir_17.root CutCrab/res/Dir_17/*root
    hadd CutCrab/res/Dir_18/Dir_18.root CutCrab/res/Dir_18/*root
    hadd CutCrab/res/Dir_19/Dir_19.root CutCrab/res/Dir_19/*root
    hadd CutCrab/res/Dir_20/Dir_20.root CutCrab/res/Dir_20/*root
    mkdir CutCrab/res/Dir
    mv CutCrab/res/Dir_1/Dir_1.root CutCrab/res/Dir
    mv CutCrab/res/Dir_2/Dir_2.root CutCrab/res/Dir
    mv CutCrab/res/Dir_3/Dir_3.root CutCrab/res/Dir
    mv CutCrab/res/Dir_4/Dir_4.root CutCrab/res/Dir
    mv CutCrab/res/Dir_5/Dir_5.root CutCrab/res/Dir
    mv CutCrab/res/Dir_6/Dir_6.root CutCrab/res/Dir
    mv CutCrab/res/Dir_7/Dir_7.root CutCrab/res/Dir
    mv CutCrab/res/Dir_8/Dir_8.root CutCrab/res/Dir
    mv CutCrab/res/Dir_9/Dir_9.root CutCrab/res/Dir
    mv CutCrab/res/Dir_10/Dir_10.root CutCrab/res/Dir
    mv CutCrab/res/Dir_11/Dir_11.root CutCrab/res/Dir
    mv CutCrab/res/Dir_12/Dir_12.root CutCrab/res/Dir
    mv CutCrab/res/Dir_13/Dir_13.root CutCrab/res/Dir
    mv CutCrab/res/Dir_14/Dir_14.root CutCrab/res/Dir
    mv CutCrab/res/Dir_15/Dir_15.root CutCrab/res/Dir
    mv CutCrab/res/Dir_16/Dir_16.root CutCrab/res/Dir
    mv CutCrab/res/Dir_17/Dir_17.root CutCrab/res/Dir
    mv CutCrab/res/Dir_18/Dir_18.root CutCrab/res/Dir
    mv CutCrab/res/Dir_19/Dir_19.root CutCrab/res/Dir
    mv CutCrab/res/Dir_20/Dir_20.root CutCrab/res/Dir
    hadd CutCrab/res/Dir/Dir.root CutCrab/res/Dir/*root
    mv CutCrab/res/Dir/Dir.root ./
  fi 

#! /bin/bash
  
   if [ $# -ne 1 ] ; then
       echo "Usage: psd exe"
       exit 1
   fi
  
   for pid in `ps -e | grep $1 | awk '{print $1}'` ;
   do
      echo -n "${pid} "
      ls -l /proc/${pid}/cwd | awk '{print $11}'
  done

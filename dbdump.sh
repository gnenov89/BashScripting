#!/bin/bash

dbdump() {

   args=("$@")
   n="$#"
 

 

   if [[ $n -lt 1 ]] || [[ $n -gt 4 ]]  ; then
     echo "Usage: dbdump <dbname> [--zip][--v1][--v2][--dir=</path>]"
     return 1
   fi
 
   EXT_GZ=""
   FORMAT=""
   DEST=""
   DB=${1} 
   PG_CMD=""


	
      shift 
         

echo  Those are the values before the loop: $FORMAT $EXT_GZ $DEST $DB $PG_CMD 

   while (( "$#" )); do
 
   if [[ "$1" == "--zip" ]]; then
         EXT_GZ=".gz"
         FORMAT="| gzip"
    fi

   

 if [[ $1 =~ --dir=* ]]; then
     DEST=${1#*=}
     DEST="${DEST}/"
  fi

  

 if [[ "$1" == "--v1" ]]; then
	PG_CMD="pg_dump -U read -h cd1p5aetl4sh6rr.c4ea5zhafw7h.us-east-1.rds.amazonaws.com $DB"
	
	fi

      
	
 if [[ "$1" == "--v2" ]]; then
      
	PG_CMD="pg_dump -U reader -h cd1xp9k8mqdk05d.c4ea5zhafw7h.us-east-1.rds.amazonaws.com $DB"
	
      
    fi 

 
 
  shift
 
  done

#echo Those are the values after the loop : $FORMAT $EXT_GZ $DEST $DB $PG_CMD 
   
   
   
   
  
        tstamp=`date +"%Y-%m-%d:%H:%M"`
        dest="./${DEST}${DB}-${tstamp}.sql${EXT_GZ}"
        echo Dumping $DB into "${dest}"

  

  }
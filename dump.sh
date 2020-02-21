#!/bin/bash

#This script reads a .json file and splits the outputs to files in directories named under the given name of the obejcts in the .json file
jsondump(){


args=("$@")
n="$#"


if [[ $n -lt 1 ]]; then
     echo "Usage: <jsondump> [file.json]"
     return 1
   fi
 

for f in `cat $1 | jq -r 'keys[]'` ; do
mkdir $f && cat $1 | jq ".[\"$f\"]" > $f/$f.json
done


}
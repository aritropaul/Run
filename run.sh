#!/bin/bash

FILENAME=$(basename -- "$1")
FILES=$(find . -name "${FILENAME}.*")
arr=($FILES)
FILE=${arr[0]}
EXT="${arr[0]##*.}"

case "$EXT" in
        c)  echo "C File."
            gcc ${FILE} -o ${FILENAME}
            ./${FILENAME}.out
           ;;
        py) echo "Python File."
            python3 ${FILE}
            [ -e "{$FILENAME}.pyc" ] && rm "{$FILENAME}.pyc"
           ;;
        sh) echo "Bash File."
            sh ${FILE}
            ;;
        cpp) echo "C++ File." 
             g++ ${FILE} -o ${FILENAME}
             ./${FILENAME}.out
            ;;
        java) echo "Java File." 
              javac ${FILE}
              java ${FILENAME}
              [ -e "{$FILENAME}.class" ] && rm "{$FILENAME}.class"
            ;;
        txt) echo "$filename : Text file"
             ;;
        *) echo " $filename : Not processed"
           ;;
esac
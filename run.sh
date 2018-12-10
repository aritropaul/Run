#!/bin/bash

FILENAME=$(basename -- "$1")
FILE=$(find . -name "${FILENAME}.*")
EXT="${FILE##*.}"

case "$EXT" in
        c)  gcc ${FILE} -o ${FILENAME}
            ./${FILENAME}.out
           ;;
        py) python3 ${FILE}
           ;;
        sh) sh ${FILE}
            ;;
        cpp) g++ ${FILE} -o ${FILENAME}
            ./${FILENAME}.out
             ;;
        java) javac ${FILE}
              java ${FILENAME}
             ;;
        txt) echo "$filename : Text file"
             ;;
        *) echo " $filename : Not processed"
           ;;
esac
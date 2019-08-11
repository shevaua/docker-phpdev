#!/bin/bash

PROJECT_PATH=`dirname "${BASH_SOURCE[0]}"`
cd $PROJECT_PATH
. common.sh

for file in "${logs[@]}"
do
    echo "" > $file
    echo "$file is cleaned"
done

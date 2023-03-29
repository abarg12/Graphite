#!/bin/bash 

echo "
     creating temp testing directory...
                            "

mkdir ./tests/temptesting

eval $(opam env) 

echo "
     compiling toplevel.native...
                            "


make toplevel.native

echo "
     running positive tests...
                            "

for entry in ./tests/positive/*; do
    if [[ $entry == *.gp ]]       
    then
        base_name=$(basename ${entry})
        ./toplevel.native < $entry > ./tests/temptesting/${base_name%%.*}.out || 
                echo "WARNING: " ${base_name%%.*} "test FAILED unexpectedly."

        if ! cmp -s ./tests/temptesting/${base_name%%.*}.out ./tests/positive/goldStandards/${base_name%%.*}.Gold; 
        then 
            echo ${base_name} "FAILED"
        fi 
    fi
done

echo "
     running negative tests...
                            "
                            
for entry in ./tests/negative/*; do
    if [[ $entry == *.gp ]]       
    then
        base_name=$(basename ${entry})
        ./toplevel.native < $entry > ./tests/temptesting/${base_name%%.*}.out 2>&1

        if ! cmp -s ./tests/temptesting/${base_name%%.*}.out ./tests/negative/goldStandards/${base_name%%.*}.Gold; 
        then 
            echo ${base_name} "FAILED"
        fi 
    fi
done

echo "
     deleting temp testing directory...
                            "

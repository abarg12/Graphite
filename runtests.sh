#!/bin/bash 

mkdir ./tests/temptesting

eval $(opam env) 

make toplevel.native

for entry in ./tests/negative/* ./tests/positive/*; do
    if [[ $entry == *.gp ]]       
    then
        base_name=$(basename ${entry})
        ./toplevel.native < $entry > ./tests/temptesting/${base_name%%.*}.out 
        if cmp -s ./tests/temptesting/${base_name%%.*}.out $entry; 
        then
            echo ${base_name} "FAILED "
        else 
            echo ${base_name} "PASSED"
        fi 
    fi
done



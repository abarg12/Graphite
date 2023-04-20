#!/bin/bash

# Path to the LLVM compiler
LLC=LLC
CC="cc"

make toplevel.native

if [ ! -d "./tests/generatedfiles" ]
then
    mkdir ./tests/generatedfiles
fi

if [ ! -d "./tests/temptesting" ]
then
    mkdir ./tests/temptesting
fi

gen_dir="./test/generatedfiles"

if [ ! -f $1 ]; 
then
    echo "$1 is NOT file. It must be a file."
else
    base_name=$(basename $1)

    # Compiles Graphite code into LLVM

    ./toplevel.native < $1 > ./tests/generatedfiles/${base_name%%.*}.ll

    # Runs the LLVM interpreter with the previously generated LLVM code 
    $LLC "-relocation-model=pic"  < ./tests/generatedfiles/${base_name%%.*}.ll > ./tests/generatedfiles/${base_name%%.*}.s
    cc -o ./tests/generatedfiles/${base_name%%.*}.exe tests/generatedfiles/${base_name%%.*}.s 

fi
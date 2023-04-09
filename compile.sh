#!/bin/bash

# Path to the LLVM compiler
LLC="/usr/local/Cellar/llvm@14/14.0.6/bin/llc"
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
    $LLC < ./tests/generatedfiles/${base_name%%.*}.ll > ./tests/generatedfiles/${base_name%%.*}.s
    cc -o ./tests/generatedfiles/${basename%%.*}.exe tests/generatedfiles/${base_name%%.*}.s 

fi
#!/bin/bash

# Path to the LLVM compiler
LLC=llc
CC="cc"
FLAG="-relocation-model=pic"
LLC_WITH_FLAG="$LLC $FLAG"

make_dir() {
    if [ ! -d $1 ]
    then
        echo -e "\nCreating dir:\n" $1
        mkdir $1
    fi
}

BASE_DIR="tests"
GRAPHITE="./toplevel.native"

eval $(opam env) 
make toplevel.native

# $1 FILENAME
# $2 OUTPUT_FILE_DIR
# $3 GOLD_STANDARD_DIR
diff() {
    PARENT_DIR=${2%%.*}
    if cmp $2 $3;
    then echo $1 "PASSED"
    else echo $1 "FAILED"
    fi
}

COMPILE_DIR="$BASE_DIR/compile"
make_dir $COMPILE_DIR

INTERMED_DIR="$COMPILE_DIR/intermediary_files"
make_dir $INTERMED_DIR

if [ ! -f $1 ]; 
then
    echo "$1 is must be a file."
else
    FILE_WITH_EXT=$(basename $1)
    FILENAME=${FILE_WITH_EXT%%.*}

    $GRAPHITE < $1 > $INTERMED_DIR/$FILENAME.ll

    # Runs the LLVM interpreter with the previously generated LLVM code 
    $LLC_WITH_FLAG < $INTERMED_DIR/$FILENAME.ll > $INTERMED_DIR/$FILENAME.s
    cc -o $COMPILE_DIR/$FILENAME.exe $INTERMED_DIR/$FILENAME.s 

fi
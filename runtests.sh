#!/bin/bash

LLI=lli
LLC=llc

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

make_dir $BASE_DIR

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

# $1 = [ "ast" | "hello_world" | "extended" ]
# $2 = [ "positive" | "negative "]
run_batch() {
    # hello_world is only positive
    SIGN=$2
    if [ $1 == "hello_world" ]
    then SIGN="positive"
    fi

    make_dir "$BASE_DIR/$1" # make batch folder (should exist)
    make_dir "$BASE_DIR/$1/$SIGN" # make signed folder (should exist)
    make_dir "$BASE_DIR/$1/$SIGN/output_files" # make output folder
    TEST_DIRS="$BASE_DIR/$1/$SIGN/*"

    # make llvm dir
    if [ $1 == "hello_world" ] || [ $1 == "extended" ]
    then make_dir "$BASE_DIR/$1/$SIGN/llvm"
    fi
    
    echo -e "\n[Running $SIGN $1 tests]\n"

    if [ $1 == "ast" ]
    then
        for TEST_DIR in $TEST_DIRS; do
            if [[ $TEST_DIR == *.gp ]]
            then
                run_ast $TEST_DIR $SIGN
            fi
        done
    elif [ $1 == "hello_world" ]
    then
        for TEST_DIR in $TEST_DIRS; do
            if [[ $TEST_DIR == *.gp ]]
            then
                run_llvm $TEST_DIR $SIGN
            fi
        done
    elif [ $1 == "extended" ]
    then
        for TEST_DIR in $TEST_DIRS; do
            if [[ $TEST_DIR == *.gp ]]
            then
                run_llvm $TEST_DIR $SIGN
            fi
        done
    else
        echo "Invalid batch test type:" $1
    fi
}

# $1 = TEST_DIR
# $2 = [ "positive" | "negative "]
run_ast() {
    PARENT_DIR=${1%/*}
    FILENAME=$(basename -s .gp $1)

    if [ $2 == "positive" ]
    then
        $GRAPHITE -a < $1 > $PARENT_DIR/output_files/$FILENAME.out
    else
        $GRAPHITE -a < $1 > $PARENT_DIR/output_files/$FILENAME.out 2>&1
    fi
    diff $FILENAME $PARENT_DIR/output_files/$FILENAME.out $PARENT_DIR/gold_standards/$FILENAME.gold
}

# $1 = TEST_DIR
# $2 = [ "positive" | "negative "]
run_llvm() {
    PARENT_DIR=${1%/*}
    FILENAME=$(basename -s .gp $1)
    
    if [ $2 == "positive" ]
    then
        $GRAPHITE < $1 > $PARENT_DIR/llvm/$FILENAME.ll
        $LLI < $PARENT_DIR/llvm/$FILENAME.ll > $PARENT_DIR/output_files/$FILENAME.out
    else
        $GRAPHITE < $1 > $PARENT_DIR/output_files/$FILENAME.out 2>&1
    fi
    diff $FILENAME $PARENT_DIR/output_files/$FILENAME.out $PARENT_DIR/gold_standards/$FILENAME.gold
}

run_all() {
    run_batch "ast" "positive"
    run_batch "ast" "negative"
    run_batch "hello_world"
    run_batch "extended" "positive"
    run_batch "extended" "negative"
}

# $1 TEST_DIR
# ex: BASE_DIR/extended/positive/FILENAME
run_one() {
    INC_FILENAME=${1%.*}

    INC_SIGN=${INC_FILENAME%/*}
    SIGN=$(basename -s / $INC_SIGN)

    INC_BATCH_TYPE=${INC_SIGN%/*}
    BATCH_TYPE=$(basename -s / $INC_BATCH_TYPE)

    make_dir "$INC_SIGN/output_files"

    if [ $BATCH_TYPE == "hello_world" ] || [ $BATCH_TYPE == "extended" ]
    then
        make_dir "$INC_SIGN/llvm"
    fi
    
    echo -e "\n[Running $1]\n"

    if [ $BATCH_TYPE = "ast" ]
    then
        run_ast $1 $SIGN
    elif [ $BATCH_TYPE == "hello_world" ] || [ $BATCH_TYPE == "extended" ]
    then
        run_llvm $1 $SIGN
    else
         echo "Invalid batch test type: <$BATCH_TYPE>"
    fi
}

if [ $1 = "all" ]
then
    run_all
else
    run_one $1
fi
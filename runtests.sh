#!/bin/bash


# Path to the LLVM interpreter
LLI=LLI
# Path to the LLVM compiler
LLC=LLC



if [ ! -d "./tests/temptesting" ]
then
    mkdir ./tests/temptesting
fi

eval $(opam env) 

make toplevel.native

if [[ $1 == all ]]
then echo $1

echo "
running positive tests...
                            "

for entry in ./tests/positive/*; do
    if [[ $entry == *.gp ]]       
    then
        base_name=$(basename ${entry})
        # if we cannot even run the test, something went wrong :(
        ./toplevel.native -a < $entry > ./tests/temptesting/${base_name%%.*}.out ||
                echo "" ${base_name%%.*} "something went wrong. :("

        # diff
        if ! cmp -s ./tests/temptesting/${base_name%%.*}.out ./tests/positive/goldStandards/${base_name%%.*}.Gold; 
        then 
            echo ${base_name} "FAILED"
        else 
            echo ${base_name} "PASSED"
        fi 
    fi
done

echo "
running negative ast tests...
                            "
                            
for entry in ./tests/negative/*; do
    if [[ $entry == *.gp ]]       
    then
        base_name=$(basename ${entry})
        # if we cannot even run the test, something went wrong :(
        ./toplevel.native -a < $entry > ./tests/temptesting/${base_name%%.*}.out 2>&1

        # diff
        if ! cmp -s ./tests/temptesting/${base_name%%.*}.out ./tests/negative/goldStandards/${base_name%%.*}.Gold;
        then 
            echo ${base_name} "FAILED"
        else 
            echo ${base_name} "PASSED"
        fi 
    fi
done

echo "
running extended_test_suite tests...
                            "

for entry in ./tests/extended_test_suite/positive/*; do
    if [[ $entry == *.gp ]]       
    then
        base_name=$(basename ${entry})
        # if we cannot even run the test, something went wrong :(
        ./toplevel.native  < $entry > ./tests/temptesting/${base_name%%.*}.out 2>&1

        $LLI < tests/temptesting/${base_name%%.*}.out > tests/temptesting/${base_name%%.*}ran.out

        # diff
        if ! cmp -s ./tests/temptesting/${base_name%%.*}ran.out ./tests/extended_test_suite/positive/goldStandards/${base_name%%.*}.Gold;
        then 
            echo ${base_name} "FAILED"
        else 
            echo ${base_name} "PASSED"
        fi 
    fi
done

for entry in ./tests/extended_test_suite/negative/*; do
    if [[ $entry == *.gp ]]       
    then
        base_name=$(basename ${entry})
        # if we cannot even run the test, something went wrong :(
        ./toplevel.native  < $entry > ./tests/temptesting/${base_name%%.*}.out 2>&1

        # diff
        if ! cmp -s ./tests/temptesting/${base_name%%.*}.out ./tests/extended_test_suite/negative/goldStandards/${base_name%%.*}.Gold;
        then 
            echo ${base_name} "FAILED"
        else 
            echo ${base_name} "PASSED"
        fi 
    fi
done

# Compiles Graphite code into LLVM
./toplevel.native < tests/hello_world/helloworld.gp > tests/temptesting/helloworld.out

# Runs the LLVM interpreter with the previously generated LLVM code 
$LLI < tests/temptesting/helloworld.out > tests/temptesting/helloworld_compiled.out

# Compares the output of the print against the gold standard
if ! cmp -s tests/temptesting/helloworld_compiled.out tests/hello_world/helloworld.gold;
then echo "Hello World FAILED"
else echo "Hello World PASSED"
fi
else


if [ ! -f $1 ]; 
then
    echo "$1 is NOT file. It must be a file."
else
    parentdir=$(dirname $1) 
    echo $parentdir
    base_name=$(basename $1)

    if [ "$parentdir" = "tests/positive" ];
    then
        # if we cannot even run the test, something went wrong :( uwu
        ./toplevel.native -a < $1 > ./tests/temptesting/${base_name%%.*}.out ||
                echo "" ${base_name%%.*} "something went wrong. :("

        # diff
        if ! cmp -s ./tests/temptesting/${base_name%%.*}.out ./tests/positive/goldStandards/${base_name%%.*}.Gold; 
        then 
            echo ${base_name} "FAILED"
        else 
            echo ${base_name} "PASSED"
        fi 
    elif [ "$parentdir" = "tests/negative" ];
    then 
        # if we cannot even run the test, something went wrong :(
        ./toplevel.native -a < $1 > ./tests/temptesting/${base_name%%.*}.out 2>&1

        # diff
        if ! cmp -s ./tests/temptesting/${base_name%%.*}.out ./tests/negative/goldStandards/${base_name%%.*}.Gold;
        then 
            echo ${base_name} "FAILED"
        else 
            echo ${base_name} "PASSED"
        fi 
    elif [ "$parentdir" = "tests/extended_test_suite/negative" ];
    then 
         # if we cannot even run the test, something went wrong :(
        ./toplevel.native < $1 > ./tests/temptesting/${base_name%%.*}.out 2>&1

        # diff
        if ! cmp -s ./tests/temptesting/${base_name%%.*}.out ./tests/extended_test_suite/negative/goldStandards/${base_name%%.*}.Gold;
        then 
            echo ${base_name} "FAILED"
        else 
            echo ${base_name} "PASSED"
        fi  
    elif [ "$parentdir" = "tests/extended_test_suite/positive" ];
    then 
         # if we cannot even run the test, something went wrong :(
        ./toplevel.native < $1 > ./tests/temptesting/${base_name%%.*}.out 2>&1

        # diff
        if ! cmp -s ./tests/temptesting/${base_name%%.*}.out ./tests/extended_test_suite/positive/goldStandards/${base_name%%.*}.Gold;
        then 
            echo ${base_name} "FAILED"
        else 
            echo ${base_name} "PASSED"
        fi  
    else 

        # Compiles Graphite code into LLVM
        ./toplevel.native < tests/hello_world/helloworld.gp > tests/temptesting/helloworld.out

        # Runs the LLVM interpreter with the previously generated LLVM code 
        $LLI < tests/temptesting/helloworld.out > tests/temptesting/helloworld_compiled.out 

        # Compares the output of the print against the gold standard
        if ! cmp -s tests/temptesting/helloworld_compiled.out tests/hello_world/helloworld.gold;
        then echo "Hello World FAILED"
        else echo "Hello World PASSED"
    fi
    fi
fi
fi

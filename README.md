# Graphite: A graph based language

TEAM MEMBERS: 
    Abigail Larson (Abigail.Larson@tufts.edu)
    Claudia Aranda Barrios (claudia.aranda_barrios@tufts.edu)
    Steven Oh (soogeun.oh@tufts.edu)
    Aidan Barg (aidan.barg@tufts.edu)

HOW TO COMPILE AND RUN COMPILER:
    To compile type "make" while in the directory. 

    To run the compiler (as stands), type "./toplevel.native" after compiling and begin programming!

HOW TO RUN TEST SCRIPT: 
    In order to run the testing script, enter 'chmod u+x runtests.sh' into your terminal, and run the command.

    TO RUN ALL TESTS:
        ./runtests all
    
    TO RUN SPECIFIC TESTS (both AST and LLVM):
        ./runtests full_path
        where full_path is the full path to the test you want to run.
        For example, "/tests/positive/test1.gp", not just "test1.gp".
    
    TO COMPILE ANY GRAPHITE PROGRAM INTO AN LLVM EXECUTABLE:
        ./compile.sh full_path
        where full_path is the full path to the test you want to run.
        For example, "/graphite_programs/prog1.gp", not just "prog1.gp".

SYNTAX WE STILL NEED TO ADD:
    We may look into syntactic sugar for dictionaries, such as:
        dict_name[key_name] = some_value;
    
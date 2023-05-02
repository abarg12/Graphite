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
        ./runtests.sh all
    
    TO RUN SPECIFIC TESTS (both AST and LLVM):
        ./runtests.sh full_path
        where full_path is the full path to the test you want to run.
        For example, "/tests/ast/positive/test1.gp", not just "test1.gp".
    
    TO COMPILE ANY GRAPHITE PROGRAM INTO AN LLVM EXECUTABLE:
        ./compile.sh full_path
        where full_path is the full path to the test you want to run.
        For example, "/graphite_programs/prog1.gp", not just "prog1.gp".
        This generates an executable in the folder tests/compile/
        that can be run with ./file_name.exe

INTEGRATION TESTS
    POSITIVE TESTS: 
    
        bind_assign.gp (NEW IN GRAPHITE)
            tests variable declaration and assignment in one line
            example: int a = 1;
        
        bindings.gp
            tests variable declarations and assignment in different lines
            example: float c;
                     c = 1.11111;

        binops.gp
            tests lots of adding, dividing ints, floats and boolean operations
            example: bool m = 10 < 20;
        
        blocks.gp (NEW IN GRAPHITE)
            tests allowing and printing variables in different scopes
            example: int a = 1;
                     { float a = 2.2; }

        functions.gp
            tests function definitions and calls
        
        literals.gp
            tests printing some literals (ints, floats, booleans)
            
        printing.gp
            tests the built-in print function

        strings.gp (NEW IN GRAPHITE)
            tests string declaration, assignment, and printing
            
        node_field.gp 
            this tests the ability to set a node field (specifically the flag) 
            value and then retrieve the set value (ex. node.flag = true)  


    NEGATIVE TESTS:

        graph_ops.gp
            This tests graph declarations (with flags). It ensures that improper 
            invariant flags are rejected. 
            example: graph<tree, other> g1;

            'other' is not an approved invariant, so it is rejected. 

        neg_binops1.gp
            Graphite does not support binary operations of different types
            this tests for that
            example: (a : float) + (x : int)
        
        neg_binops2.gp
            Graphite does not support int + boolean
            this tests for that

        nononode.gp 
            This node text exhibits a node with a big 'no no'. The data field of
            the node is assiged first to a value of one type and then to a value
            of another (eg. n.data = 1 and then n.data = "hello") 

        rebind_vars.gp 
            Testing semantic checking of rebind errors; in this test we declare the
            same variable with two different variables, which is not allowed (you 
            can instead redefine the value, you can't redeclare it)
             


SYNTAX WE STILL NEED TO ADD:
    We may look into syntactic sugar for dictionaries, such as:
        dict_name[key_name] = some_value;
    
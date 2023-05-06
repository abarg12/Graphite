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

EXTENDED TEST SUITES (tests/extended)
    POSITIVE TESTS: 
    
        add_node_by_add_edge: make sure when you add an edge which has 
        a node not in graph it adds the node to the graph
        
        adding_node_to_tree: make sure you can properly add a node to 
        tree 
    
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

        edge_dotcalls 
            tests getting the fields of an edge and assigning it to nodes (for
            source and destination) and ints (for weights), as well as functions
            that perform these operations

        edges_of
            generates nodes and edges and adds it to a graph, confirms that an edge
            exists and gets the edges associated with a node and checks that the values
            are accurate
                        
        functions.gp
            tests function definitions and calls
        
        literals.gp
            tests printing some literals (ints, floats, booleans)
        
        list_del.gp
            test deleting nodes
        
        list_add.gp
            test adding elements to lists
        
        list_getset.gp 
            test get and set 
        
        list_len.gp 
            test getting list length. including the edge case of
            empty lists
        
        list.gp 
            test making lists in a variety of contexts

        node_field.gp
            make sure that you can set and print nodes, make sure that the info for nodes
            changes with different assignments and make functions for it            
        
        printing.gp
            tests the built-in print function

        strings.gp (NEW IN GRAPHITE)
            tests string declaration, assignment, and printing
            
        node_field.gp 
            this tests the ability to set a node field (specifically the flag) 
            value and then retrieve the set value (ex. node.flag = true)  

        while.gp
            a simple test on while loops (and its predicate of course)
            should print a, which is 0
        
        unops.gp
            a series of tests on unary operations like not and -
            on different types like floats and bools

        set_node.gp
            set the name field of a node and print it
            
        retrieveNodes.gp
            stress testing on getting nodes using getAllNodes() function
            and array_get
        
        retrieveEdges.gp
            stress testing on getting edges using getAllEdges() function
            and array_get
        
        

    NEGATIVE TESTS:

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

    DEMOS/REPRESENTATIVE PROGRAMS (tests/demos)
        bobs_connections.gp
            a simple application using graphs as social networks between
            friends and connections. prints the number of connections 1
            user has.
        
        claudiasTests.gp
            creates a function that adds the weight of the first two edges
            in a list of edges of a node, and returns that total weight 

        edgeBetween.gp
            a simple function that, given two nodes in a graph, can tell you if 
            an edge exists between them. 
        
        integrationGraphs.gp
            a simple script that places students-nodes with list data in a graph 
            and then removes them to calculate the average score of an index in 
            the list 
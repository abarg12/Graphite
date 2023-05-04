# make sure that you can set and print nodes 
node<int> n;
n.flag = true;
bool f = n.flag;
printf(f);
n.data = 5;
int int_value = n.data;
printf(int_value);
node<int> n2 = n; 
int f2 = n.data;
printf(f2);

# make sure that the info for node n changes with the data for n2 -- they represent the same node
n2.data = 7;
int nData = n.data; 
printf(nData);

void node_in_func() {
    node<string> m;
    m.flag = false;
    bool f = m.flag;
    printf(f);

    # make sure global nodes work here
    int g = n.data;
    printf(g);
    return;
}

node_in_func();

# lets make sure functions can return nodes
node<string> return_a_node() {
    node<string> n1; 
    n1.data = "I really hope this works";
    n1.name = "if only grammatical symbols were allowed in strings in our language lol this has no personality";
    n1.flag = true; 
    return n1; 
}

node<string> n5 = return_a_node(); 
string myData = n5.data;
string myName = n5.name;
bool myFlag = n5.flag;
printf(myData);
printf(myName);
printf(myFlag);

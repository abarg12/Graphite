node thisFunc (node n1) {
        return n1;
}

int func() {
    node thisNode; 
    thisNode.name = "my name"; 
    thisNode.data = "hello"; 
    thisNode.flag = true; 

    edge e1; 

    e1.src = thisNode; 
    e1.dst = thisNode; 
    e1.weight = 2; 

    node n1 = e1.src; 
    string y = n1.name; 

    printf(y);

    n1.name = "new string"; 

    string z = thisNode.name; 

    printf(z); 

    #node x = thisFunc(thisNode); 
    #x.name = "other"; 
    #string y = thisNode.name; 

    #printf(y);

    return 1;

    # node<int> and then fix edges separately 
    # 
}

int y = func();
node<int> n;
n.flag = true;
#bool f = n.flag;
#printf(f);
#n.data = 5;
#int int_value = n.data;
#printf(int_value);

void node_in_func() {
    node<string> m;
    m.flag = false;
    bool f = m.flag;
    printf(f);
    #int g = n.data;
    #printf(g);
    return;
}

node_in_func();
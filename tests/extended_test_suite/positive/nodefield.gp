node n;
n.flag = true;
bool f = n.flag;
printf(f);

void node_in_func() {
    node m;
    m.flag = false;
    bool f = m.flag;
    printf(f);
    return;
}

node_in_func();
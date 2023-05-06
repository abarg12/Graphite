list l = [];
list l2 = ["false", 1, 2.2, "three", false];

int i = l2.get(1);
printf(i);
l2.add(1, "hi");
string s = l2.get(1);
printf(s);


l.add(0, "0ind");
string s2 = l.get(0);
printf(s2);


void add_to_empty(list l1) {
    l1.add(0, "newnodejustdropped");
    string s = l1.get(0);
    printf(s);
    return;
}

{
    add_to_empty(l);
}

list l = [];
list l2 = ["false", 1, 2.2, "three", false];

int i = array_get(l2, 1);
printf(i);
array_add(l2, 1, "hi");
string s = array_get(l2, 1);
printf(s);


array_add(l, 0, "0ind");
string s2 = array_get(l, 0);
printf(s2);


void add_to_empty(list l1) {
    array_add(l1, 0, "newnodejustdropped");
    string s = array_get(l1, 0);
    printf(s);
    return;
}

{
    add_to_empty(l);
}

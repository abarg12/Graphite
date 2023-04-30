float a;
list l;
l = [1.6, 2.3, 3.5];
a = array_get(l, 1);
printf(a);

int b = 1;
list l2 = [5, 6, 7];
b = array_get(l2, 2);
printf(b);

#list l4 = ["one", "two", "three"];
list l3 = [true, false, true, false, true, false];

string abc = array_get(l3, 0);
printf(abc);
#bool bcd = array_get(l4, 0);
#printf(bcd);
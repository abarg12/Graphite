list l = [];
list l2 = ["false", 1, 2.2, "three", false];

# array_add(l, 0, "whats");
int j = 3;
string s = "sillystring";
s = array_get(l2, j);
printf(s);

float f = array_get(l2, 2);
printf(f);
array_set(l2, 2, "new");
bool s2 = array_get(l2, 4);
printf(s2);


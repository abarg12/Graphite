list l = [1, 2.2, true, "four"];
string s = l.get(3);
printf(s);

l.del(2);
int i = l.len();
printf(i);

l.del(0);
i = l.len();
printf(i);

l.add(1, "hi");
string s2 = l.get(1);
printf(s2);

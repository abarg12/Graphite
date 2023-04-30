float a;
list l;
l = [1.6, 2.3, 3.5];
a = array_get(l, 1);
#### TODO: figure out why array_get doesn't work. Might be something about
#### the index value getting interpreteted as a float rather than an int
#printf(a);

int b = 1;
list l2 = [5, 6, 7];
#b = array_get(l2, 2);
printf(b);
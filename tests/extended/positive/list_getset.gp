list l = [1, 2, 3.3, 4.4, "five", false];
float f = array_get(l, 3);
printf(f);

array_set(l, 3, 5.5);
f = array_get(l, 3);
printf(f);
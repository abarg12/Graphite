### Testing unary operations
### [positive test]

printf(-12);
printf(-0.111);

int a = 2;
printf(a);
a = -a;
printf(a);

float b = 42.24;
printf(b);
b = -b;
printf(b);

printf(true);
bool c = true;
printf(c);
c = not c;
printf(c);
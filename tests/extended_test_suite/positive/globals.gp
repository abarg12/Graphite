int a;
a = 2;
printf(a);
int b = 10;
printf(b);


int myFunc(int b) {
    int c = a + b;
    return c;
}

int d = myFunc(3);
printf(d);
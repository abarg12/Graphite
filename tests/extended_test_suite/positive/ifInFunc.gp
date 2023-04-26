int afunc (bool a) {
    int b;
    if (a) {
        printf("hi");
    }
    return 42;
}

if (true) {
    int c = afunc(true);
    int a = 1;
    printf(c);
}
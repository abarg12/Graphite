int a;
a = 0;

int funky(int b) {
    int c = 3;

    if (c < b) {
        int d = 5;
        
        if (d > b) {
            bool i = d > b;
            printf("your number is 4!!!!!");
            return 1;
        } else {
            printf("your number is too big");
        }
    } else {
        printf("your number is too small");
        return a;
    } 
    
    return 0;
}

if (a == 0) {
    int r = funky(5);
    int r2 = funky(2);
    int r3 = funky(4);
    printf(r3);
}
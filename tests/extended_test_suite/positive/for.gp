int i = 99;
int s; 
s = 7;

void funcy(string s) {
    printf(s);
    return;
}

for (i = 0; i < 7; i = i + 1) {
    printf(i);
    funcy("---");
}

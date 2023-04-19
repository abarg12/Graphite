###### Testing functions (definitions and calls)
### [positive test]

int addThings(int z, int y) {
    int x = z + y;
    printf(x);
    return x;
}

int first = 2; 
int second = 3;

int result = addThings(first, second);
printf(result);


bool testThings(int x, int y, bool b) {
    bool a = x < y;
    printf(a);
    bool res = a or b;
    printf(res);
    return res;
}

bool result2 = testThings(result, 10, true);
printf(result2);

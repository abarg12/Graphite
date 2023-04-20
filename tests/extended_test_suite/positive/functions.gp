###### Testing functions (definitions and calls)
### [positive test]

float addThings(float z, float y) {
    float x = z + y;
    return x;
}

float first = 2.5; 
float second = 3.5;
float result = addThings(first, second);


printf("addThings function result:");
printf(result);


bool testThings(float x, float y, bool b) {
    bool a = x < y;
    bool res = a or b;
    return res;
}

bool result2 = testThings(result, 10.0, true);

printf("");
printf("testThings function result:");
printf(result2);

int x = 1;
int y = 2;
int scopeTester(int x, int y) {
    int x = 80;
    int y = 20;
    return x + y;
}

int result3 = scopeTester(3, 4);

printf("");
printf("scopeTester function result:");
printf(result3);

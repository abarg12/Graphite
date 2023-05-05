node<int> n1;
node<int> n2; 
node<int> n3;
n2.data = 2;
n3.data = 4;

edge<int> e1 = n2 -> n3;
node<int> n4 = e1.src;
int i = n4.data;
printf(i);


{
    int i2;
    n3 = e1.src;
    i2 = n3.data;
    printf(i2);
    e1.weight = 123;
    int i3 = e1.weight;
    printf(i3);
    e1.weight = 999;
}
int i4 = e1.weight;
printf(i4);

edge<float> e2;
node<float> n6;
node<float> n7;
float f1 = 1.1111;
float f2 = 9.9999;
n6.data = f1;
n7.data = f2;
e2.src = n6;
e2.dst = n7;

int nodefunc(edge<float> e) {
    node<float> n8 = e2.src;
    n6 = e2.dst;
    float f3 = n8.data;
    f2 = n6.data;
    printf(f3);
    printf(f2);
    return 0;
}

nodefunc(e2);
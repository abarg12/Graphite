int main () {
    node<int> n1;
    node<int> n2;

    #edge<int> e1 = n1 -> n2;

    n1.data = 3;
    edge<int> e2;

    e2.src = n1;
    e2.dst = n2; 

    node<int> n3 = e2.src; 
    n3.data = 4;
    int y = n1.data; 
    printf(y);

    return 1; 
}

main(); 
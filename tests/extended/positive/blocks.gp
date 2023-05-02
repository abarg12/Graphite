###### testing blocks ######
### [positive test]

int a;
a = 3;
printf(a);

{
    float a = 2.2;
    printf(a);

    {
        bool a = false;
        printf(a);
    }

    printf(a);
}

printf(a);
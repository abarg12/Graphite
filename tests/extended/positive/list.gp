list l = [1.6, 2.3, 3.5];
float a;
a = array_get(l, 1);
printf(a);

list l2 = [5, 6, 7];
int b = array_get(l2, 2);
printf(b);

list l3 = [true, false, true, false, true, false];
list l4 = ["one", 2, "three", 4];

bool abc = array_get(l3, 0);
printf(abc);
string bcd = array_get(l4, 0);
printf(bcd);

{
    list inner_list = [101044, 34, 34134, 39];
    {
        list inner_list2 = [-1.1, -2, true, -4, "badbunny", 2, 3, 4];
        {
            int val1 = array_get(inner_list, 1);
            string val2;
            val2 = array_get(inner_list2, 4);
            printf(val1);
            printf(val2);
        }
    }
}

void funcy(list l) {
    int a;
    a = array_get(l, 0);
    printf(a);
    
    string s = "set";
    s = array_get(l4, 0);
    printf(s);

    string s2;
    s2 = "test";
    array_set(l4, 1, s2);
    s = array_get(l4, 1);
    printf(s);

    bool b = array_get(l3, 5);
    printf(b);
    return;
}

funcy([1,2,3]);

list l = [1.6, 2.3, 3.5];
float a;
a = l.get(1);
printf(a);

list l2 = [5, 6, 7];
int b = l2.get(2);
printf(b);

list l3 = [true, false, true, false, true, false];
list l4 = ["one", 2, "three", 4];

bool abc = l3.get(0);
printf(abc);
string bcd = l4.get(0);
printf(bcd);

{
    list inner_list = [101044, 34, 34134, 39];
    {
        list inner_list2 = [-1.1, -2, true, -4, "badbunny", 2, 3, 4];
        {
            int val1 = inner_list.get(1);
            string val2;
            val2 = inner_list2.get(4);
            printf(val1);
            printf(val2);
        }
    }
}

void funcy(list l) {
    int a;
    a = l.get(0);
    printf(a);
    
    string s = "set";
    s = l4.get(0);
    printf(s);

    string s2;
    s2 = "test";
    l4.set(1, s2);
    s = l4.get(1);
    printf(s);

    bool b = l3.get(5);
    printf(b);
    return;
}

funcy([1,2,3]);

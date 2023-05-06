bool Q_is_empty(list q) {
    int n = array_len(q);
    bool b = n == 0;
    return b;
}

list Q_push(list q, node<list> e) {
    list q_prime = [];
    int n = array_len(q);

    int i;
    for(i = 0; i < n; i = i + 1) {
        node<list> item = array_get(q, i);
        array_add(q_prime, 0, item);
    }
    array_add(q_prime, 0, e);

    return q_prime;
}

list Q_pop(list q) {
    int n = array_len(q);
    int i = n - 1;
    node<list> item = array_get(q, i);
   

    list q_prime = [];
    int j;
    for(j = 1; j < n; j = j + 1) {
        node<list> e = array_get(q, j);
        array_add(q_prime, 0, e);
    }

    list res = [];
    array_add(res, 0, q_prime);
    array_add(res, 1, item);
    return res;
}

node<list> n1;
n1.name = "should print 1st";
node<list> n2;
n2.name = "should print 2nd";
node<list> n3;
n3.name = "should print 3rd";
node<list> n4;
n4.name = "should print 4th";

list q = [];
q = Q_push(q, n1);
q = Q_push(q, n2);
# q = Q_push(q, n3);
# q = Q_push(q, n4);

list tmp_list = [];
node<list> tmp_node;
string s;

tmp_list = Q_pop(q);
q = array_get(tmp_list, 0);
tmp_node = array_get(tmp_list, 1);
s = tmp_node.name;
printf(s);

tmp_list = Q_pop(q);
q = array_get(tmp_list, 0);
tmp_node = array_get(tmp_list, 1);
s = tmp_node.name;
printf(s);

# tmp_list = Q_pop(q);
# q = array_get(tmp_list, 0);
# tmp_node = array_get(tmp_list, 1);
# s = tmp_node.name;
# printf(s);

# tmp_list = Q_pop(q);
# q = array_get(tmp_list, 0);
# tmp_node = array_get(tmp_list, 1);
# s = tmp_node.name;
# printf(s);
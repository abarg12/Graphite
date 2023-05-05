node<int> n;
node<int> m;
graph<int> g;

# add both nodes
g.addNode(n);
g.addNode(m);

bool found_n = g.nodeExists(n);
bool found_m = g.nodeExists(m);

printf(found_n);
printf(found_m);

# remove node n, check again
g.removeNode(n);

found_n = g.nodeExists(n);
found_m = g.nodeExists(m);

printf(found_n);
printf(found_m);

# remove node m, check again
g.removeNode(m);

found_n = g.nodeExists(n);
found_m = g.nodeExists(m);

printf(found_n);
printf(found_m);

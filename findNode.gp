node<int> n;
node<int> n2;
node<int> n4;
node<int> n3;

graph<int> g;
g.addNode(n);
g.addNode(n2);
g.addNode(n3);

bool found = g.nodeExists(n4);
bool found2 = g.nodeExists(n3);

printf(found);
printf(found2);
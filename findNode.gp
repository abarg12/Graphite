node<int> n;
node<int> n2;
node<int> n3;

graph<int> g;
g.addNode(n);
g.addNode(n2);

bool found = g.nodeExists(n3);
printf(found);
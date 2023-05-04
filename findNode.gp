node<int> n;
node<int> n2;
node<int> n4;
node<int> n3;
edge<int> e3;
edge<int> e4;
edge<int> e5;

graph<int> g;
g.addNode(n);
g.addNode(n2);
g.addNode(n3);
g.addEdge(e3);
g.addEdge(e4);

bool found = g.nodeExists(n4);
bool found2 = g.nodeExists(n3);
bool found3 = g.edgeExists(e3);
bool found4 = g.edgeExists(e5);

printf(found);
printf(found2);
printf(found3);
printf(found4);
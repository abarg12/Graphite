node<int> n;
node<int> n2;
node<int> n4;
node<int> n7;

node<int> n3;
edge<int> e3 = n2 -> n;
edge<int> e4 = n3 -> n2;
edge<int> e5;

graph<int> g;
g.addNode(n);
g.addNode(n2);
g.addNode(n3);
g.addNode(n7);
g.addEdge(e3);
g.addEdge(e4);


list l1 = g.getEdgesOf(n2);

bool found = g.nodeExists(n4);
bool found2 = g.nodeExists(n3);

bool found2222 = g.removeNode(n7);
printf(found2222);

bool found22 = g.removeNode(n3);
bool found222 = g.nodeExists(n3);
bool found2223 = g.nodeExists(n);
bool found2224 = g.nodeExists(n7);
bool found2225 = g.nodeExists(n2);

bool found3 = g.edgeExists(e3);
bool found4 = g.edgeExists(e5);

printf(found);
printf(found2);
printf(found22); # should be true bc a success
printf(found222); # should be false
printf(found2223); # should be true
printf(found2224); # should be true
printf(found2225); # should be true

printf(found3);
printf(found4);
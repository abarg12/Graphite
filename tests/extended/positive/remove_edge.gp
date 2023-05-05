node<int> n;
node<int> m;
graph<int> g;

edge<int> e = n->m;
edge<int> e2 = m->n;
g.addEdge(e);

bool found_e = g.edgeExists(e);
bool found_e2 = g.edgeExists(e2);

printf(found_e);
printf(found_e2);

g.removeEdge(e);

found_e = g.edgeExists(e);
found_e2 = g.edgeExists(e2);

printf(found_e);
printf(found_e2);
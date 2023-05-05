node<int> n1;
n1.data = 22;
node<int> n2;
n2.data = 22;
node<int> n3;
n3.data = 22;
node<int> n4;

edge<int> e1 = n1->n2;
e1.weight = 1;
edge<int> e2 = n3->n1;
e2.weight = 2;
edge<int> e3 = n2->n4;
e3.weight = 3;
edge<int> e4;
edge<int> e5;

graph<int> g;

g.addNode(n1);
g.addNode(n2);
g.addNode(n3);
g.addNode(n4);

g.addEdge(e1);
g.addEdge(e2);
g.addEdge(e3);
bool e = g.edgeExists(e1);
printf(e);

list l = g.getEdgesOf(n1);
e5 = array_get(l, 0);
e4 = e5;

#should be weight of e1
node<int> n10 = e4.src;
#n10.data = 69420;
#node<int> n9 = e4.src; 
int i3 = n10.data;
printf(i3);
int w = e4.weight;
printf(w);





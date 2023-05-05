node<int> n1;
n1.data = 10;
node<int> n2;
n2.data = 20;
node<int> n3;
n3.data = 30;
node<int> n4;

edge<int> e1 = n1->n2;
e1.weight = 111;
edge<int> e2 = n3->n1;
e2.weight = 222;
edge<int> e3 = n1->n4;
e3.weight = 333;
edge<int> e4;

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

list l; 
l = g.getEdgesOf(n1);
e4 = array_get(l, 2);

#should be weight of e1
node<int> n10 = e4.src;
int i10 = n10.data;
printf(i10);
int w = e4.weight;
printf(w);





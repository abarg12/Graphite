
node<string> node1;
node<string> node2;
node<string> node3;
node<string> node4;
node<string> node5;
node<string> node6;
edge<string> edge1 = node1 -> node2;
edge1.weight = 7;
edge<string> edge2 = node3 -> node5;
edge2.weight = 8;
edge<string> edge3 = node3 -> node6;
edge3.weight = 9;

graph<string> g;
g.addNode(node1);
g.addNode(node2);
g.addNode(node3);
g.addNode(node4);
g.addNode(node5);
g.addNode(node6);

g.addEdge(edge1);
g.addEdge(edge2);
g.addEdge(edge3);


list l = g.getAllEdges();

edge<string> edge1_prime = array_get(l, 0);
edge<string> edge2_prime = array_get(l, 1);
edge<string> edge3_prime = array_get(l, 2);
int toPrint1 = edge1_prime.weight;
int toPrint2 = edge2_prime.weight;
int toPrint3 = edge3_prime.weight;

printf(toPrint1);
printf(toPrint2);
printf(toPrint3);

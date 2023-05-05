
node<string> node1;
node1.name = "this";
node<string> node2;
node2.name = "is";
node<string> node3;
node3.name = "my";
node<string> node4;
node4.name = "name";
node<string> node5;
node5.name = "bestie";
node<string> node6;
node6.name = "rip";
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


list l = g.getAllNodes();

node<string> node1_prime = array_get(l, 0);
node<string> node2_prime = array_get(l, 1);
node<string> node3_prime = array_get(l, 2);
node<string> node4_prime = array_get(l, 3);
node<string> node5_prime = array_get(l, 4);
node<string> node6_prime = array_get(l, 5);
string toPrint1 = node1_prime.name;
string toPrint2 = node2_prime.name;
string toPrint3 = node3_prime.name;
string toPrint4 = node4_prime.name;
string toPrint5 = node5_prime.name;
string toPrint6 = node6_prime.name;

printf(toPrint1);
printf(toPrint2);
printf(toPrint3);
printf(toPrint4);
printf(toPrint5);
printf(toPrint6);

graph<int> g;

node<int> n1;
node<int> n2;

n1.name = "one";
n2.name = "two";

edge<int> e = n1 -> n2;

g.addNode(n1);
g.addEdge(e);

bool b1 = g.nameExists("one");
bool b2 = g.nameExists("two");

printf("one and two exist");
printf(b1);
printf(b2);

printf("always true");
bool b3 = 1 == 1;
printf(b3);

printf("edge exists");
bool b4 = g.edgeExists(e);
printf(b4);

bool b6 = g.nameExists("one");
printf("name still exists (should be! we just added it)");
printf(b6);

g.removeNode(n1);
bool b5 = g.nameExists("one");
printf("name still exists (should not be! we just removed it)");
printf(b5);
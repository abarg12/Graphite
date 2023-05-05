node<string> node1;
node1.name = "this";
node<string> node2;
node2.name = "is";
node2.data = "this is printing the correct data";
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

string my_string = "this"; 
bool exists_rip = g.nameExists("rip"); 
printf(exists_rip);
bool exists_this = g.nameExists(my_string); 
printf(exists_this); 
bool doesnt_exist = g.nameExists("this string isnt in there"); 
printf(doesnt_exist); 

node<string> node7 = g.getByName("is"); 
string our_data = node7.data; 
printf(our_data); 



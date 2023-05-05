graph<bool> social_network;

node<bool> user;
user.name = "root";

node<bool> p1;
p1.name = "Alice";
p1.flag;

node<bool> alice;
alice.name = "Alice";
alice.flag = false;

node<bool> bob;
bob.name = "Bob";
bob.flag = true;

node<bool> charlie;
charlie.name = "Charlie";
charlie.flag = true;

edge<bool> e1 = user -> bob;
social_network.addEdge(e1);

edge<bool> e2 = bob -> alice;
edge<bool> e3 = bob -> charlie;
edge<bool> e4 = charlie -> alice;

social_network.addEdge(e2);
social_network.addEdge(e3);
social_network.addEdge(e4);

list bobs_connections = social_network.getEdgesOf(bob);
int num_bobs_connections = array_len(bobs_connections);
num_bobs_connections = num_bobs_connections - 1;
# account for user connection 

printf("bob has");
printf(num_bobs_connections);
printf("connections");


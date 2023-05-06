# this function takes a graph and a node, and returns a list of all its adjacent nodes.
# slightly modified from the demo version so that it prints as soon as it adds it to the adj list so it's easier to test
list adj_nodes(graph<string> g, node<string> n) {
    list edges = g.getEdgesOf(n);
    list adjacents;
    int amount_of_edges = edges.len();
    int i;
    for (i = 0; i < amount_of_edges; i = i + 1) {
        edge<string> curr_edge = edges.get(i);
        node<string> dst_node = curr_edge.dst;
        if (dst_node != n) {
            string dst_name = dst_node.name;
            printf(dst_name);
            adjacents.add(0, dst_node);
        }
    }
    return adjacents;
}

void print_list_str_nodes(list l) {
    int length = l.len() - 1;
    int i;
    for (i = 0; i < length; i = i + 1) {
        node<string> curr = l.get(i);
        string curr_name = curr.name;
        printf(curr_name);
    }

    return;
}

## SETUP GRAPH STUFF ##
# create nodes
node<string> n0;
n0.name = "Abby";
node<string> n1;
n1.name = "Steven";
node<string> n2;
n2.name = "Aidan";
node<string> n3;
n3.name = "Claudia";

# create edges between nodes
edge<string> e0 = n0 -> n2;
edge<string> e1 = n2 -> n0;
edge<string> e2 = n0 -> n1;
edge<string> e3 = n1 -> n2;
edge<string> e4 = n2 -> n3;

# add nodes and edges in graph
graph<string> g;
g.addNode(n0);
g.addNode(n1);
g.addNode(n2);
g.addNode(n3);
g.addEdge(e0);
g.addEdge(e1);
g.addEdge(e2);
g.addEdge(e3);
g.addEdge(e4);


printf("printing n2 neighbors");
list neighbors = adj_nodes(g, n2);



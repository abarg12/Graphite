# add all the weights of the edges from which this node is the source of
int edge_weight_sum(list edges) {
    edge<int> get1 = array_get(edges, 0);
    edge<int> get2 = array_get(edges, 1);
    int w1 = get1.weight;
    int w2 = get2.weight;

    int total_weight = w1 + w2;
    return total_weight;
}

graph<int> g;
node<int> n;
node<int> m;
node<int> r;
edge<int> e1 = n -> m;
edge<int> e2 = n -> r;
e1.weight = 5;
e2.weight = 10;

g.addNode(n);
g.addNode(m);
g.addEdge(e1);
g.addEdge(e2);

list edges_of_n = g.getEdgesOf(n);
int list_length = array_len(edges_of_n);
printf("lenght of list of edges: ");
printf(list_length);
int total_weight = edge_weight_sum(edges_of_n);
printf("total weight of edges of n in g ");
printf(total_weight);
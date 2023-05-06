node<int> n1;
node<int> n2;
node<int> n3;
node<int> n4;
node<int> n5;
node<int> n6;
edge<int> e1;
edge<int> e2;
edge<int> e3;
edge<int> e4;

n1.name = "swaggy node";
n1.data = 5;
n1.flag = true;

n2.name = "yerba mate";
n2.data = 10;
n2.flag = false;

n3.name = "power level";
n3.data = 9001;
n3.flag = true;

e1.src = n1;
e1.dst = n2;

graph<int> g;
g.addEdge(e1);
g.addEdge(e2);
g.addNode(n1);
g.addNode(n2);
g.addNode(n3);
g.addNode(n4);

bool edgeBetweenNodes(node<int> n1, node<int> n2) {

    list edges = g.getEdgesOf(n1);
    int edge_len = edges.len();
    int index = 0; 
    bool found = false;

    for (index = 0; index < edge_len; index = index + 1 ) {
        edge<int> currEdge = edges.get(index);
        node<int> node1 = currEdge.dst; 
        node<int> node2 = currEdge.src;
        if (((node2 == n2) and (node1 == n1)) or ((node2 == n1) and (node1 == n2))) {
            found = true; 
        }
    }

    return found;
}

bool b = edgeBetweenNodes(n1, n2);
printf(b);
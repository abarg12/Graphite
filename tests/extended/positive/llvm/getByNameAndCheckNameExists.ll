; ModuleID = 'Graphite'
source_filename = "Graphite"

%node_struct = type { i8*, i1, i8* }
%edge_t = type { %node_struct*, %node_struct*, i32 }
%graph_t = type { %node_node*, %edge_node* }
%node_node = type { %node_struct*, %node_node* }
%edge_node = type { %edge_t*, %edge_node* }

@node1 = global %node_struct* null
@0 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@node2 = global %node_struct* null
@1 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@2 = private unnamed_addr constant [34 x i8] c"this is printing the correct data\00", align 1
@node3 = global %node_struct* null
@3 = private unnamed_addr constant [3 x i8] c"my\00", align 1
@node4 = global %node_struct* null
@4 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@node5 = global %node_struct* null
@5 = private unnamed_addr constant [7 x i8] c"bestie\00", align 1
@node6 = global %node_struct* null
@6 = private unnamed_addr constant [4 x i8] c"rip\00", align 1
@edge1 = global %edge_t* null
@edge2 = global %edge_t* null
@edge3 = global %edge_t* null
@g = global %graph_t zeroinitializer
@llNodes = global %node_node* null
@llNodes.1 = global %node_node* null
@llNodes.2 = global %node_node* null
@llNodes.3 = global %node_node* null
@llNodes.4 = global %node_node* null
@llNodes.5 = global %node_node* null
@7 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@my_string = global i8* null
@8 = private unnamed_addr constant [4 x i8] c"rip\00", align 1
@llNodes.6 = global %node_node* null
@exists_rip = global i1 false
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llNodes.7 = global %node_node* null
@exists_this = global i1 false
@fmt.8 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@9 = private unnamed_addr constant [26 x i8] c"this string isnt in there\00", align 1
@llNodes.9 = global %node_node* null
@doesnt_exist = global i1 false
@fmt.10 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@10 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@llNodes.11 = global %node_node* null
@node7 = global %node_struct* null
@our_data = global i8* null
@fmt.12 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

declare i32 @printf(i8*, ...)

declare i32 @strcmp(i8*, i8*)

declare i8* @array_get(i8*, i32, ...)

declare i8* @array_set(i8*, i32, i8*, ...)

declare i8* @array_len(i8*, ...)

declare i8 @nodeExists(%node_struct*, ...)

declare i8* @array_add(i8*, i32, i8*, ...)

define i32 @main() {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node = bitcast i8* %malloccall to %node_struct*
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data = bitcast i8* %malloccall1 to i8**
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name = bitcast i8* %malloccall2 to i8**
  %data_ptr = bitcast i8** %data to i8*
  %name_ptr = bitcast i8** %name to i8*
  %"name'" = getelementptr inbounds %node_struct, %node_struct* %node, i32 0, i32 0
  %"data'" = getelementptr inbounds %node_struct, %node_struct* %node, i32 0, i32 2
  store i8* %name_ptr, i8** %"name'", align 8
  store i8* %data_ptr, i8** %"data'", align 8
  store %node_struct* %node, %node_struct** @node1, align 8
  %"lvar'" = load %node_struct*, %node_struct** @node1, align 8
  %temp = getelementptr inbounds %node_struct, %node_struct* %"lvar'", i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @0, i32 0, i32 0), i8** %temp, align 8
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node4 = bitcast i8* %malloccall3 to %node_struct*
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data6 = bitcast i8* %malloccall5 to i8**
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name8 = bitcast i8* %malloccall7 to i8**
  %data_ptr9 = bitcast i8** %data6 to i8*
  %name_ptr10 = bitcast i8** %name8 to i8*
  %"name'11" = getelementptr inbounds %node_struct, %node_struct* %node4, i32 0, i32 0
  %"data'12" = getelementptr inbounds %node_struct, %node_struct* %node4, i32 0, i32 2
  store i8* %name_ptr10, i8** %"name'11", align 8
  store i8* %data_ptr9, i8** %"data'12", align 8
  store %node_struct* %node4, %node_struct** @node2, align 8
  %"lvar'13" = load %node_struct*, %node_struct** @node2, align 8
  %temp14 = getelementptr inbounds %node_struct, %node_struct* %"lvar'13", i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1, i32 0, i32 0), i8** %temp14, align 8
  %"lvar'15" = load %node_struct*, %node_struct** @node2, align 8
  %temp16 = getelementptr inbounds %node_struct, %node_struct* %"lvar'15", i32 0, i32 2
  %malloccall17 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %bruh = bitcast i8* %malloccall17 to i8**
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @2, i32 0, i32 0), i8** %bruh, align 8
  %name18 = bitcast i8** %bruh to i8*
  store i8* %name18, i8** %temp16, align 8
  %malloccall19 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node20 = bitcast i8* %malloccall19 to %node_struct*
  %malloccall21 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data22 = bitcast i8* %malloccall21 to i8**
  %malloccall23 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name24 = bitcast i8* %malloccall23 to i8**
  %data_ptr25 = bitcast i8** %data22 to i8*
  %name_ptr26 = bitcast i8** %name24 to i8*
  %"name'27" = getelementptr inbounds %node_struct, %node_struct* %node20, i32 0, i32 0
  %"data'28" = getelementptr inbounds %node_struct, %node_struct* %node20, i32 0, i32 2
  store i8* %name_ptr26, i8** %"name'27", align 8
  store i8* %data_ptr25, i8** %"data'28", align 8
  store %node_struct* %node20, %node_struct** @node3, align 8
  %"lvar'29" = load %node_struct*, %node_struct** @node3, align 8
  %temp30 = getelementptr inbounds %node_struct, %node_struct* %"lvar'29", i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @3, i32 0, i32 0), i8** %temp30, align 8
  %malloccall31 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node32 = bitcast i8* %malloccall31 to %node_struct*
  %malloccall33 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data34 = bitcast i8* %malloccall33 to i8**
  %malloccall35 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name36 = bitcast i8* %malloccall35 to i8**
  %data_ptr37 = bitcast i8** %data34 to i8*
  %name_ptr38 = bitcast i8** %name36 to i8*
  %"name'39" = getelementptr inbounds %node_struct, %node_struct* %node32, i32 0, i32 0
  %"data'40" = getelementptr inbounds %node_struct, %node_struct* %node32, i32 0, i32 2
  store i8* %name_ptr38, i8** %"name'39", align 8
  store i8* %data_ptr37, i8** %"data'40", align 8
  store %node_struct* %node32, %node_struct** @node4, align 8
  %"lvar'41" = load %node_struct*, %node_struct** @node4, align 8
  %temp42 = getelementptr inbounds %node_struct, %node_struct* %"lvar'41", i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @4, i32 0, i32 0), i8** %temp42, align 8
  %malloccall43 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node44 = bitcast i8* %malloccall43 to %node_struct*
  %malloccall45 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data46 = bitcast i8* %malloccall45 to i8**
  %malloccall47 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name48 = bitcast i8* %malloccall47 to i8**
  %data_ptr49 = bitcast i8** %data46 to i8*
  %name_ptr50 = bitcast i8** %name48 to i8*
  %"name'51" = getelementptr inbounds %node_struct, %node_struct* %node44, i32 0, i32 0
  %"data'52" = getelementptr inbounds %node_struct, %node_struct* %node44, i32 0, i32 2
  store i8* %name_ptr50, i8** %"name'51", align 8
  store i8* %data_ptr49, i8** %"data'52", align 8
  store %node_struct* %node44, %node_struct** @node5, align 8
  %"lvar'53" = load %node_struct*, %node_struct** @node5, align 8
  %temp54 = getelementptr inbounds %node_struct, %node_struct* %"lvar'53", i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i8** %temp54, align 8
  %malloccall55 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node56 = bitcast i8* %malloccall55 to %node_struct*
  %malloccall57 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data58 = bitcast i8* %malloccall57 to i8**
  %malloccall59 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name60 = bitcast i8* %malloccall59 to i8**
  %data_ptr61 = bitcast i8** %data58 to i8*
  %name_ptr62 = bitcast i8** %name60 to i8*
  %"name'63" = getelementptr inbounds %node_struct, %node_struct* %node56, i32 0, i32 0
  %"data'64" = getelementptr inbounds %node_struct, %node_struct* %node56, i32 0, i32 2
  store i8* %name_ptr62, i8** %"name'63", align 8
  store i8* %data_ptr61, i8** %"data'64", align 8
  store %node_struct* %node56, %node_struct** @node6, align 8
  %"lvar'65" = load %node_struct*, %node_struct** @node6, align 8
  %temp66 = getelementptr inbounds %node_struct, %node_struct* %"lvar'65", i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @6, i32 0, i32 0), i8** %temp66, align 8
  %node1 = load %node_struct*, %node_struct** @node1, align 8
  %node2 = load %node_struct*, %node_struct** @node2, align 8
  %malloccall67 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct = bitcast i8* %malloccall67 to %edge_t*
  %"name'68" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 0
  %"name'69" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 1
  %"name'70" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 2
  store %node_struct* %node1, %node_struct** %"name'68", align 8
  store %node_struct* %node2, %node_struct** %"name'69", align 8
  store i32 0, i32* %"name'70", align 4
  %malloccall71 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge = bitcast i8* %malloccall71 to %edge_t*
  %"name'72" = getelementptr inbounds %edge_t, %edge_t* %edge, i32 0, i32 0
  %"data'73" = getelementptr inbounds %edge_t, %edge_t* %edge, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'72", align 8
  store %node_struct* null, %node_struct** %"data'73", align 8
  store %edge_t* %edge, %edge_t** @edge1, align 8
  store %edge_t* %myEdgeStruct, %edge_t** @edge1, align 8
  %"lvar'74" = load %edge_t*, %edge_t** @edge1, align 8
  %temp75 = getelementptr inbounds %edge_t, %edge_t* %"lvar'74", i32 0, i32 2
  store i32 7, i32* %temp75, align 4
  %node3 = load %node_struct*, %node_struct** @node3, align 8
  %node5 = load %node_struct*, %node_struct** @node5, align 8
  %malloccall76 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct77 = bitcast i8* %malloccall76 to %edge_t*
  %"name'78" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct77, i32 0, i32 0
  %"name'79" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct77, i32 0, i32 1
  %"name'80" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct77, i32 0, i32 2
  store %node_struct* %node3, %node_struct** %"name'78", align 8
  store %node_struct* %node5, %node_struct** %"name'79", align 8
  store i32 0, i32* %"name'80", align 4
  %malloccall81 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge82 = bitcast i8* %malloccall81 to %edge_t*
  %"name'83" = getelementptr inbounds %edge_t, %edge_t* %edge82, i32 0, i32 0
  %"data'84" = getelementptr inbounds %edge_t, %edge_t* %edge82, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'83", align 8
  store %node_struct* null, %node_struct** %"data'84", align 8
  store %edge_t* %edge82, %edge_t** @edge2, align 8
  store %edge_t* %myEdgeStruct77, %edge_t** @edge2, align 8
  %"lvar'85" = load %edge_t*, %edge_t** @edge2, align 8
  %temp86 = getelementptr inbounds %edge_t, %edge_t* %"lvar'85", i32 0, i32 2
  store i32 8, i32* %temp86, align 4
  %node387 = load %node_struct*, %node_struct** @node3, align 8
  %node6 = load %node_struct*, %node_struct** @node6, align 8
  %malloccall88 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct89 = bitcast i8* %malloccall88 to %edge_t*
  %"name'90" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct89, i32 0, i32 0
  %"name'91" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct89, i32 0, i32 1
  %"name'92" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct89, i32 0, i32 2
  store %node_struct* %node387, %node_struct** %"name'90", align 8
  store %node_struct* %node6, %node_struct** %"name'91", align 8
  store i32 0, i32* %"name'92", align 4
  %malloccall93 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge94 = bitcast i8* %malloccall93 to %edge_t*
  %"name'95" = getelementptr inbounds %edge_t, %edge_t* %edge94, i32 0, i32 0
  %"data'96" = getelementptr inbounds %edge_t, %edge_t* %edge94, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'95", align 8
  store %node_struct* null, %node_struct** %"data'96", align 8
  store %edge_t* %edge94, %edge_t** @edge3, align 8
  store %edge_t* %myEdgeStruct89, %edge_t** @edge3, align 8
  %"lvar'97" = load %edge_t*, %edge_t** @edge3, align 8
  %temp98 = getelementptr inbounds %edge_t, %edge_t* %"lvar'97", i32 0, i32 2
  store i32 9, i32* %temp98, align 4
  %node199 = load %node_struct*, %node_struct** @node1, align 8
  %nodes_hd = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall100 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node = bitcast i8* %malloccall100 to %node_node*
  %"lst_rst'" = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 1
  %node_ptr = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 0
  store %node_node* %nodes_hd, %node_node** %"lst_rst'", align 8
  store %node_struct* %node199, %node_struct** %node_ptr, align 8
  store %node_node* %new_node, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %node2101 = load %node_struct*, %node_struct** @node2, align 8
  %nodes_hd102 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall103 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node104 = bitcast i8* %malloccall103 to %node_node*
  %"lst_rst'105" = getelementptr inbounds %node_node, %node_node* %new_node104, i32 0, i32 1
  %node_ptr106 = getelementptr inbounds %node_node, %node_node* %new_node104, i32 0, i32 0
  store %node_node* %nodes_hd102, %node_node** %"lst_rst'105", align 8
  store %node_struct* %node2101, %node_struct** %node_ptr106, align 8
  store %node_node* %new_node104, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %node3107 = load %node_struct*, %node_struct** @node3, align 8
  %nodes_hd108 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall109 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node110 = bitcast i8* %malloccall109 to %node_node*
  %"lst_rst'111" = getelementptr inbounds %node_node, %node_node* %new_node110, i32 0, i32 1
  %node_ptr112 = getelementptr inbounds %node_node, %node_node* %new_node110, i32 0, i32 0
  store %node_node* %nodes_hd108, %node_node** %"lst_rst'111", align 8
  store %node_struct* %node3107, %node_struct** %node_ptr112, align 8
  store %node_node* %new_node110, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %node4113 = load %node_struct*, %node_struct** @node4, align 8
  %nodes_hd114 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall115 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node116 = bitcast i8* %malloccall115 to %node_node*
  %"lst_rst'117" = getelementptr inbounds %node_node, %node_node* %new_node116, i32 0, i32 1
  %node_ptr118 = getelementptr inbounds %node_node, %node_node* %new_node116, i32 0, i32 0
  store %node_node* %nodes_hd114, %node_node** %"lst_rst'117", align 8
  store %node_struct* %node4113, %node_struct** %node_ptr118, align 8
  store %node_node* %new_node116, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %node5119 = load %node_struct*, %node_struct** @node5, align 8
  %nodes_hd120 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall121 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node122 = bitcast i8* %malloccall121 to %node_node*
  %"lst_rst'123" = getelementptr inbounds %node_node, %node_node* %new_node122, i32 0, i32 1
  %node_ptr124 = getelementptr inbounds %node_node, %node_node* %new_node122, i32 0, i32 0
  store %node_node* %nodes_hd120, %node_node** %"lst_rst'123", align 8
  store %node_struct* %node5119, %node_struct** %node_ptr124, align 8
  store %node_node* %new_node122, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %node6125 = load %node_struct*, %node_struct** @node6, align 8
  %nodes_hd126 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall127 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node128 = bitcast i8* %malloccall127 to %node_node*
  %"lst_rst'129" = getelementptr inbounds %node_node, %node_node* %new_node128, i32 0, i32 1
  %node_ptr130 = getelementptr inbounds %node_node, %node_node* %new_node128, i32 0, i32 0
  store %node_node* %nodes_hd126, %node_node** %"lst_rst'129", align 8
  store %node_struct* %node6125, %node_struct** %node_ptr130, align 8
  store %node_node* %new_node128, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %edge1 = load %edge_t*, %edge_t** @edge1, align 8
  %edges_hd = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %malloccall131 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge = bitcast i8* %malloccall131 to %edge_node*
  %"lst_rst'132" = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 1
  %edge_ptr = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 0
  store %edge_node* %edges_hd, %edge_node** %"lst_rst'132", align 8
  store %edge_t* %edge1, %edge_t** %edge_ptr, align 8
  %src_ptr = getelementptr inbounds %edge_t, %edge_t* %edge1, i32 0, i32 0
  %dst_ptr = getelementptr inbounds %edge_t, %edge_t* %edge1, i32 0, i32 1
  %"src'" = load %node_struct*, %node_struct** %src_ptr, align 8
  %"dst'" = load %node_struct*, %node_struct** %dst_ptr, align 8
  %ret_true = alloca i1, align 1
  store i1 false, i1* %ret_true, align 1
  %head = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head, %node_node** @llNodes, align 8
  br label %while

while:                                            ; preds = %entry, %else
  %putMeHere = load %node_node*, %node_node** @llNodes, align 8
  %curr = icmp ne %node_node* %putMeHere, null
  br i1 %curr, label %while_body, label %merge

while_body:                                       ; preds = %while
  %putMeHere133 = load %node_node*, %node_node** @llNodes, align 8
  %nodes = getelementptr inbounds %node_node, %node_node* %putMeHere133, i32 0, i32 0
  %"stored_node'" = load %node_struct*, %node_struct** %nodes, align 8
  br label %if

if:                                               ; preds = %while_body
  %"found?" = icmp eq %node_struct* %"stored_node'", %"src'"
  br i1 %"found?", label %then, label %else

then:                                             ; preds = %if
  store i1 true, i1* %ret_true, align 1
  br label %merge

else:                                             ; preds = %if
  %toBeHere = load %node_node*, %node_node** @llNodes, align 8
  %llNodesPtr = getelementptr inbounds %node_node, %node_node* %toBeHere, i32 0, i32 1
  %toBeHerenow = load %node_node*, %node_node** %llNodesPtr, align 8
  store %node_node* %toBeHerenow, %node_node** @llNodes, align 8
  br label %while

merge:                                            ; preds = %while, %then
  %returnVal = load i1, i1* %ret_true, align 1
  %ret_true134 = alloca i1, align 1
  store i1 false, i1* %ret_true134, align 1
  %head135 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head135, %node_node** @llNodes.1, align 8
  br label %while136

while136:                                         ; preds = %merge, %else145
  %putMeHere137 = load %node_node*, %node_node** @llNodes.1, align 8
  %curr138 = icmp ne %node_node* %putMeHere137, null
  br i1 %curr138, label %while_body139, label %merge146

while_body139:                                    ; preds = %while136
  %putMeHere140 = load %node_node*, %node_node** @llNodes.1, align 8
  %nodes141 = getelementptr inbounds %node_node, %node_node* %putMeHere140, i32 0, i32 0
  %"stored_node'142" = load %node_struct*, %node_struct** %nodes141, align 8
  br label %if143

if143:                                            ; preds = %while_body139
  %"found?147" = icmp eq %node_struct* %"stored_node'142", %"dst'"
  br i1 %"found?147", label %then144, label %else145

then144:                                          ; preds = %if143
  store i1 true, i1* %ret_true134, align 1
  br label %merge146

else145:                                          ; preds = %if143
  %toBeHere148 = load %node_node*, %node_node** @llNodes.1, align 8
  %llNodesPtr149 = getelementptr inbounds %node_node, %node_node* %toBeHere148, i32 0, i32 1
  %toBeHerenow150 = load %node_node*, %node_node** %llNodesPtr149, align 8
  store %node_node* %toBeHerenow150, %node_node** @llNodes.1, align 8
  br label %while136

merge146:                                         ; preds = %while136, %then144
  %returnVal151 = load i1, i1* %ret_true134, align 1
  br label %if152

if152:                                            ; preds = %merge146
  br i1 %returnVal, label %merge154, label %else153

else153:                                          ; preds = %if152
  %nodes_hd155 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall156 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node157 = bitcast i8* %malloccall156 to %node_node*
  %"lst_rst'158" = getelementptr inbounds %node_node, %node_node* %new_node157, i32 0, i32 1
  %node_ptr159 = getelementptr inbounds %node_node, %node_node* %new_node157, i32 0, i32 0
  store %node_node* %nodes_hd155, %node_node** %"lst_rst'158", align 8
  store %node_struct* %"src'", %node_struct** %node_ptr159, align 8
  store %node_node* %new_node157, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  br label %merge154

merge154:                                         ; preds = %else153, %if152
  br label %if160

if160:                                            ; preds = %merge154
  br i1 %returnVal151, label %merge162, label %else161

else161:                                          ; preds = %if160
  %nodes_hd163 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall164 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node165 = bitcast i8* %malloccall164 to %node_node*
  %"lst_rst'166" = getelementptr inbounds %node_node, %node_node* %new_node165, i32 0, i32 1
  %node_ptr167 = getelementptr inbounds %node_node, %node_node* %new_node165, i32 0, i32 0
  store %node_node* %nodes_hd163, %node_node** %"lst_rst'166", align 8
  store %node_struct* %"dst'", %node_struct** %node_ptr167, align 8
  store %node_node* %new_node165, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  br label %merge162

merge162:                                         ; preds = %else161, %if160
  store %edge_node* %new_edge, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %edge2 = load %edge_t*, %edge_t** @edge2, align 8
  %edges_hd168 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %malloccall169 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge170 = bitcast i8* %malloccall169 to %edge_node*
  %"lst_rst'171" = getelementptr inbounds %edge_node, %edge_node* %new_edge170, i32 0, i32 1
  %edge_ptr172 = getelementptr inbounds %edge_node, %edge_node* %new_edge170, i32 0, i32 0
  store %edge_node* %edges_hd168, %edge_node** %"lst_rst'171", align 8
  store %edge_t* %edge2, %edge_t** %edge_ptr172, align 8
  %src_ptr173 = getelementptr inbounds %edge_t, %edge_t* %edge2, i32 0, i32 0
  %dst_ptr174 = getelementptr inbounds %edge_t, %edge_t* %edge2, i32 0, i32 1
  %"src'175" = load %node_struct*, %node_struct** %src_ptr173, align 8
  %"dst'176" = load %node_struct*, %node_struct** %dst_ptr174, align 8
  %ret_true177 = alloca i1, align 1
  store i1 false, i1* %ret_true177, align 1
  %head178 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head178, %node_node** @llNodes.2, align 8
  br label %while179

while179:                                         ; preds = %merge162, %else188
  %putMeHere180 = load %node_node*, %node_node** @llNodes.2, align 8
  %curr181 = icmp ne %node_node* %putMeHere180, null
  br i1 %curr181, label %while_body182, label %merge189

while_body182:                                    ; preds = %while179
  %putMeHere183 = load %node_node*, %node_node** @llNodes.2, align 8
  %nodes184 = getelementptr inbounds %node_node, %node_node* %putMeHere183, i32 0, i32 0
  %"stored_node'185" = load %node_struct*, %node_struct** %nodes184, align 8
  br label %if186

if186:                                            ; preds = %while_body182
  %"found?190" = icmp eq %node_struct* %"stored_node'185", %"src'175"
  br i1 %"found?190", label %then187, label %else188

then187:                                          ; preds = %if186
  store i1 true, i1* %ret_true177, align 1
  br label %merge189

else188:                                          ; preds = %if186
  %toBeHere191 = load %node_node*, %node_node** @llNodes.2, align 8
  %llNodesPtr192 = getelementptr inbounds %node_node, %node_node* %toBeHere191, i32 0, i32 1
  %toBeHerenow193 = load %node_node*, %node_node** %llNodesPtr192, align 8
  store %node_node* %toBeHerenow193, %node_node** @llNodes.2, align 8
  br label %while179

merge189:                                         ; preds = %while179, %then187
  %returnVal194 = load i1, i1* %ret_true177, align 1
  %ret_true195 = alloca i1, align 1
  store i1 false, i1* %ret_true195, align 1
  %head196 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head196, %node_node** @llNodes.3, align 8
  br label %while197

while197:                                         ; preds = %merge189, %else206
  %putMeHere198 = load %node_node*, %node_node** @llNodes.3, align 8
  %curr199 = icmp ne %node_node* %putMeHere198, null
  br i1 %curr199, label %while_body200, label %merge207

while_body200:                                    ; preds = %while197
  %putMeHere201 = load %node_node*, %node_node** @llNodes.3, align 8
  %nodes202 = getelementptr inbounds %node_node, %node_node* %putMeHere201, i32 0, i32 0
  %"stored_node'203" = load %node_struct*, %node_struct** %nodes202, align 8
  br label %if204

if204:                                            ; preds = %while_body200
  %"found?208" = icmp eq %node_struct* %"stored_node'203", %"dst'176"
  br i1 %"found?208", label %then205, label %else206

then205:                                          ; preds = %if204
  store i1 true, i1* %ret_true195, align 1
  br label %merge207

else206:                                          ; preds = %if204
  %toBeHere209 = load %node_node*, %node_node** @llNodes.3, align 8
  %llNodesPtr210 = getelementptr inbounds %node_node, %node_node* %toBeHere209, i32 0, i32 1
  %toBeHerenow211 = load %node_node*, %node_node** %llNodesPtr210, align 8
  store %node_node* %toBeHerenow211, %node_node** @llNodes.3, align 8
  br label %while197

merge207:                                         ; preds = %while197, %then205
  %returnVal212 = load i1, i1* %ret_true195, align 1
  br label %if213

if213:                                            ; preds = %merge207
  br i1 %returnVal194, label %merge215, label %else214

else214:                                          ; preds = %if213
  %nodes_hd216 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall217 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node218 = bitcast i8* %malloccall217 to %node_node*
  %"lst_rst'219" = getelementptr inbounds %node_node, %node_node* %new_node218, i32 0, i32 1
  %node_ptr220 = getelementptr inbounds %node_node, %node_node* %new_node218, i32 0, i32 0
  store %node_node* %nodes_hd216, %node_node** %"lst_rst'219", align 8
  store %node_struct* %"src'175", %node_struct** %node_ptr220, align 8
  store %node_node* %new_node218, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  br label %merge215

merge215:                                         ; preds = %else214, %if213
  br label %if221

if221:                                            ; preds = %merge215
  br i1 %returnVal212, label %merge223, label %else222

else222:                                          ; preds = %if221
  %nodes_hd224 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall225 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node226 = bitcast i8* %malloccall225 to %node_node*
  %"lst_rst'227" = getelementptr inbounds %node_node, %node_node* %new_node226, i32 0, i32 1
  %node_ptr228 = getelementptr inbounds %node_node, %node_node* %new_node226, i32 0, i32 0
  store %node_node* %nodes_hd224, %node_node** %"lst_rst'227", align 8
  store %node_struct* %"dst'176", %node_struct** %node_ptr228, align 8
  store %node_node* %new_node226, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  br label %merge223

merge223:                                         ; preds = %else222, %if221
  store %edge_node* %new_edge170, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %edge3 = load %edge_t*, %edge_t** @edge3, align 8
  %edges_hd229 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %malloccall230 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge231 = bitcast i8* %malloccall230 to %edge_node*
  %"lst_rst'232" = getelementptr inbounds %edge_node, %edge_node* %new_edge231, i32 0, i32 1
  %edge_ptr233 = getelementptr inbounds %edge_node, %edge_node* %new_edge231, i32 0, i32 0
  store %edge_node* %edges_hd229, %edge_node** %"lst_rst'232", align 8
  store %edge_t* %edge3, %edge_t** %edge_ptr233, align 8
  %src_ptr234 = getelementptr inbounds %edge_t, %edge_t* %edge3, i32 0, i32 0
  %dst_ptr235 = getelementptr inbounds %edge_t, %edge_t* %edge3, i32 0, i32 1
  %"src'236" = load %node_struct*, %node_struct** %src_ptr234, align 8
  %"dst'237" = load %node_struct*, %node_struct** %dst_ptr235, align 8
  %ret_true238 = alloca i1, align 1
  store i1 false, i1* %ret_true238, align 1
  %head239 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head239, %node_node** @llNodes.4, align 8
  br label %while240

while240:                                         ; preds = %merge223, %else249
  %putMeHere241 = load %node_node*, %node_node** @llNodes.4, align 8
  %curr242 = icmp ne %node_node* %putMeHere241, null
  br i1 %curr242, label %while_body243, label %merge250

while_body243:                                    ; preds = %while240
  %putMeHere244 = load %node_node*, %node_node** @llNodes.4, align 8
  %nodes245 = getelementptr inbounds %node_node, %node_node* %putMeHere244, i32 0, i32 0
  %"stored_node'246" = load %node_struct*, %node_struct** %nodes245, align 8
  br label %if247

if247:                                            ; preds = %while_body243
  %"found?251" = icmp eq %node_struct* %"stored_node'246", %"src'236"
  br i1 %"found?251", label %then248, label %else249

then248:                                          ; preds = %if247
  store i1 true, i1* %ret_true238, align 1
  br label %merge250

else249:                                          ; preds = %if247
  %toBeHere252 = load %node_node*, %node_node** @llNodes.4, align 8
  %llNodesPtr253 = getelementptr inbounds %node_node, %node_node* %toBeHere252, i32 0, i32 1
  %toBeHerenow254 = load %node_node*, %node_node** %llNodesPtr253, align 8
  store %node_node* %toBeHerenow254, %node_node** @llNodes.4, align 8
  br label %while240

merge250:                                         ; preds = %while240, %then248
  %returnVal255 = load i1, i1* %ret_true238, align 1
  %ret_true256 = alloca i1, align 1
  store i1 false, i1* %ret_true256, align 1
  %head257 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head257, %node_node** @llNodes.5, align 8
  br label %while258

while258:                                         ; preds = %merge250, %else267
  %putMeHere259 = load %node_node*, %node_node** @llNodes.5, align 8
  %curr260 = icmp ne %node_node* %putMeHere259, null
  br i1 %curr260, label %while_body261, label %merge268

while_body261:                                    ; preds = %while258
  %putMeHere262 = load %node_node*, %node_node** @llNodes.5, align 8
  %nodes263 = getelementptr inbounds %node_node, %node_node* %putMeHere262, i32 0, i32 0
  %"stored_node'264" = load %node_struct*, %node_struct** %nodes263, align 8
  br label %if265

if265:                                            ; preds = %while_body261
  %"found?269" = icmp eq %node_struct* %"stored_node'264", %"dst'237"
  br i1 %"found?269", label %then266, label %else267

then266:                                          ; preds = %if265
  store i1 true, i1* %ret_true256, align 1
  br label %merge268

else267:                                          ; preds = %if265
  %toBeHere270 = load %node_node*, %node_node** @llNodes.5, align 8
  %llNodesPtr271 = getelementptr inbounds %node_node, %node_node* %toBeHere270, i32 0, i32 1
  %toBeHerenow272 = load %node_node*, %node_node** %llNodesPtr271, align 8
  store %node_node* %toBeHerenow272, %node_node** @llNodes.5, align 8
  br label %while258

merge268:                                         ; preds = %while258, %then266
  %returnVal273 = load i1, i1* %ret_true256, align 1
  br label %if274

if274:                                            ; preds = %merge268
  br i1 %returnVal255, label %merge276, label %else275

else275:                                          ; preds = %if274
  %nodes_hd277 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall278 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node279 = bitcast i8* %malloccall278 to %node_node*
  %"lst_rst'280" = getelementptr inbounds %node_node, %node_node* %new_node279, i32 0, i32 1
  %node_ptr281 = getelementptr inbounds %node_node, %node_node* %new_node279, i32 0, i32 0
  store %node_node* %nodes_hd277, %node_node** %"lst_rst'280", align 8
  store %node_struct* %"src'236", %node_struct** %node_ptr281, align 8
  store %node_node* %new_node279, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  br label %merge276

merge276:                                         ; preds = %else275, %if274
  br label %if282

if282:                                            ; preds = %merge276
  br i1 %returnVal273, label %merge284, label %else283

else283:                                          ; preds = %if282
  %nodes_hd285 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall286 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node287 = bitcast i8* %malloccall286 to %node_node*
  %"lst_rst'288" = getelementptr inbounds %node_node, %node_node* %new_node287, i32 0, i32 1
  %node_ptr289 = getelementptr inbounds %node_node, %node_node* %new_node287, i32 0, i32 0
  store %node_node* %nodes_hd285, %node_node** %"lst_rst'288", align 8
  store %node_struct* %"dst'237", %node_struct** %node_ptr289, align 8
  store %node_node* %new_node287, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  br label %merge284

merge284:                                         ; preds = %else283, %if282
  store %edge_node* %new_edge231, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @7, i32 0, i32 0), i8** @my_string, align 8
  %ret_true290 = alloca i1, align 1
  store i1 false, i1* %ret_true290, align 1
  %head291 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head291, %node_node** @llNodes.6, align 8
  br label %while292

while292:                                         ; preds = %merge284, %else301
  %putMeHere293 = load %node_node*, %node_node** @llNodes.6, align 8
  %curr294 = icmp ne %node_node* %putMeHere293, null
  br i1 %curr294, label %while_body295, label %merge302

while_body295:                                    ; preds = %while292
  %putMeHere296 = load %node_node*, %node_node** @llNodes.6, align 8
  %nodes297 = getelementptr inbounds %node_node, %node_node* %putMeHere296, i32 0, i32 0
  %"stored_node'298" = load %node_struct*, %node_struct** %nodes297, align 8
  br label %if299

if299:                                            ; preds = %while_body295
  %namePtr = getelementptr inbounds %node_struct, %node_struct* %"stored_node'298", i32 0, i32 0
  %nodeName = load i8*, i8** %namePtr, align 8
  %strcmp = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @8, i32 0, i32 0), i8* %nodeName)
  %equal = icmp eq i32 %strcmp, 0
  br i1 %equal, label %then300, label %else301

then300:                                          ; preds = %if299
  store i1 %equal, i1* %ret_true290, align 1
  br label %merge302

else301:                                          ; preds = %if299
  store i1 %equal, i1* %ret_true290, align 1
  %toBeHere303 = load %node_node*, %node_node** @llNodes.6, align 8
  %llNodesPtr304 = getelementptr inbounds %node_node, %node_node* %toBeHere303, i32 0, i32 1
  %toBeHerenow305 = load %node_node*, %node_node** %llNodesPtr304, align 8
  store %node_node* %toBeHerenow305, %node_node** @llNodes.6, align 8
  br label %while292

merge302:                                         ; preds = %while292, %then300
  %toRtrn = load i1, i1* %ret_true290, align 1
  store i1 %toRtrn, i1* @exists_rip, align 1
  %exists_rip = load i1, i1* @exists_rip, align 1
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i1 %exists_rip)
  %ret_true306 = alloca i1, align 1
  store i1 false, i1* %ret_true306, align 1
  %my_string = load i8*, i8** @my_string, align 8
  %head307 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head307, %node_node** @llNodes.7, align 8
  br label %while308

while308:                                         ; preds = %merge302, %else317
  %putMeHere309 = load %node_node*, %node_node** @llNodes.7, align 8
  %curr310 = icmp ne %node_node* %putMeHere309, null
  br i1 %curr310, label %while_body311, label %merge318

while_body311:                                    ; preds = %while308
  %putMeHere312 = load %node_node*, %node_node** @llNodes.7, align 8
  %nodes313 = getelementptr inbounds %node_node, %node_node* %putMeHere312, i32 0, i32 0
  %"stored_node'314" = load %node_struct*, %node_struct** %nodes313, align 8
  br label %if315

if315:                                            ; preds = %while_body311
  %namePtr319 = getelementptr inbounds %node_struct, %node_struct* %"stored_node'314", i32 0, i32 0
  %nodeName320 = load i8*, i8** %namePtr319, align 8
  %strcmp321 = call i32 @strcmp(i8* %my_string, i8* %nodeName320)
  %equal322 = icmp eq i32 %strcmp321, 0
  br i1 %equal322, label %then316, label %else317

then316:                                          ; preds = %if315
  store i1 %equal322, i1* %ret_true306, align 1
  br label %merge318

else317:                                          ; preds = %if315
  store i1 %equal322, i1* %ret_true306, align 1
  %toBeHere323 = load %node_node*, %node_node** @llNodes.7, align 8
  %llNodesPtr324 = getelementptr inbounds %node_node, %node_node* %toBeHere323, i32 0, i32 1
  %toBeHerenow325 = load %node_node*, %node_node** %llNodesPtr324, align 8
  store %node_node* %toBeHerenow325, %node_node** @llNodes.7, align 8
  br label %while308

merge318:                                         ; preds = %while308, %then316
  %toRtrn326 = load i1, i1* %ret_true306, align 1
  store i1 %toRtrn326, i1* @exists_this, align 1
  %exists_this = load i1, i1* @exists_this, align 1
  %printf327 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.8, i32 0, i32 0), i1 %exists_this)
  %ret_true328 = alloca i1, align 1
  store i1 false, i1* %ret_true328, align 1
  %head329 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head329, %node_node** @llNodes.9, align 8
  br label %while330

while330:                                         ; preds = %merge318, %else339
  %putMeHere331 = load %node_node*, %node_node** @llNodes.9, align 8
  %curr332 = icmp ne %node_node* %putMeHere331, null
  br i1 %curr332, label %while_body333, label %merge340

while_body333:                                    ; preds = %while330
  %putMeHere334 = load %node_node*, %node_node** @llNodes.9, align 8
  %nodes335 = getelementptr inbounds %node_node, %node_node* %putMeHere334, i32 0, i32 0
  %"stored_node'336" = load %node_struct*, %node_struct** %nodes335, align 8
  br label %if337

if337:                                            ; preds = %while_body333
  %namePtr341 = getelementptr inbounds %node_struct, %node_struct* %"stored_node'336", i32 0, i32 0
  %nodeName342 = load i8*, i8** %namePtr341, align 8
  %strcmp343 = call i32 @strcmp(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @9, i32 0, i32 0), i8* %nodeName342)
  %equal344 = icmp eq i32 %strcmp343, 0
  br i1 %equal344, label %then338, label %else339

then338:                                          ; preds = %if337
  store i1 %equal344, i1* %ret_true328, align 1
  br label %merge340

else339:                                          ; preds = %if337
  store i1 %equal344, i1* %ret_true328, align 1
  %toBeHere345 = load %node_node*, %node_node** @llNodes.9, align 8
  %llNodesPtr346 = getelementptr inbounds %node_node, %node_node* %toBeHere345, i32 0, i32 1
  %toBeHerenow347 = load %node_node*, %node_node** %llNodesPtr346, align 8
  store %node_node* %toBeHerenow347, %node_node** @llNodes.9, align 8
  br label %while330

merge340:                                         ; preds = %while330, %then338
  %toRtrn348 = load i1, i1* %ret_true328, align 1
  store i1 %toRtrn348, i1* @doesnt_exist, align 1
  %doesnt_exist = load i1, i1* @doesnt_exist, align 1
  %printf349 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.10, i32 0, i32 0), i1 %doesnt_exist)
  %malloccall350 = tail call i8* @malloc(i32 ptrtoint (%node_struct** getelementptr (%node_struct*, %node_struct** null, i32 1) to i32))
  %ret_nd = bitcast i8* %malloccall350 to %node_struct**
  store %node_struct* null, %node_struct** %ret_nd, align 8
  %head351 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head351, %node_node** @llNodes.11, align 8
  br label %while352

while352:                                         ; preds = %merge340, %else361
  %putMeHere353 = load %node_node*, %node_node** @llNodes.11, align 8
  %curr354 = icmp ne %node_node* %putMeHere353, null
  br i1 %curr354, label %while_body355, label %merge362

while_body355:                                    ; preds = %while352
  %putMeHere356 = load %node_node*, %node_node** @llNodes.11, align 8
  %nodes357 = getelementptr inbounds %node_node, %node_node* %putMeHere356, i32 0, i32 0
  %"stored_node'358" = load %node_struct*, %node_struct** %nodes357, align 8
  br label %if359

if359:                                            ; preds = %while_body355
  %namePtr363 = getelementptr inbounds %node_struct, %node_struct* %"stored_node'358", i32 0, i32 0
  %nodeName364 = load i8*, i8** %namePtr363, align 8
  %strcmp365 = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @10, i32 0, i32 0), i8* %nodeName364)
  %equal366 = icmp eq i32 %strcmp365, 0
  br i1 %equal366, label %then360, label %else361

then360:                                          ; preds = %if359
  store %node_struct* %"stored_node'358", %node_struct** %ret_nd, align 8
  br label %merge362

else361:                                          ; preds = %if359
  %toBeHere367 = load %node_node*, %node_node** @llNodes.11, align 8
  %llNodesPtr368 = getelementptr inbounds %node_node, %node_node* %toBeHere367, i32 0, i32 1
  %toBeHerenow369 = load %node_node*, %node_node** %llNodesPtr368, align 8
  store %node_node* %toBeHerenow369, %node_node** @llNodes.11, align 8
  br label %while352

merge362:                                         ; preds = %while352, %then360
  %toRtrn370 = load %node_struct*, %node_struct** %ret_nd, align 8
  %malloccall371 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node372 = bitcast i8* %malloccall371 to %node_struct*
  %malloccall373 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data374 = bitcast i8* %malloccall373 to i8**
  %malloccall375 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name376 = bitcast i8* %malloccall375 to i8**
  %data_ptr377 = bitcast i8** %data374 to i8*
  %name_ptr378 = bitcast i8** %name376 to i8*
  %"name'379" = getelementptr inbounds %node_struct, %node_struct* %node372, i32 0, i32 0
  %"data'380" = getelementptr inbounds %node_struct, %node_struct* %node372, i32 0, i32 2
  store i8* %name_ptr378, i8** %"name'379", align 8
  store i8* %data_ptr377, i8** %"data'380", align 8
  store %node_struct* %node372, %node_struct** @node7, align 8
  store %node_struct* %toRtrn370, %node_struct** @node7, align 8
  %"lvar'381" = load %node_struct*, %node_struct** @node7, align 8
  %temp382 = getelementptr inbounds %node_struct, %node_struct* %"lvar'381", i32 0, i32 2
  %node7.data = load i8*, i8** %temp382, align 8
  %new_ptr = bitcast i8* %node7.data to i8**
  %node7.data383 = load i8*, i8** %new_ptr, align 8
  store i8* %node7.data383, i8** @our_data, align 8
  %our_data = load i8*, i8** @our_data, align 8
  %printf384 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.12, i32 0, i32 0), i8* %our_data)
  ret i32 0
}

declare noalias i8* @malloc(i32)

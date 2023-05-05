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
@7 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@my_string = global i8* null
@8 = private unnamed_addr constant [4 x i8] c"rip\00", align 1
@llNodes = global %node_node* null
@exists_rip = global i1 false
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llNodes.1 = global %node_node* null
@exists_this = global i1 false
@fmt.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@9 = private unnamed_addr constant [26 x i8] c"this string isnt in there\00", align 1
@llNodes.3 = global %node_node* null
@doesnt_exist = global i1 false
@fmt.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@10 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@llNodes.5 = global %node_node* null
@node7 = global %node_struct* null
@our_data = global i8* null
@fmt.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

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
  store %edge_node* %new_edge, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %edge2 = load %edge_t*, %edge_t** @edge2, align 8
  %edges_hd133 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %malloccall134 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge135 = bitcast i8* %malloccall134 to %edge_node*
  %"lst_rst'136" = getelementptr inbounds %edge_node, %edge_node* %new_edge135, i32 0, i32 1
  %edge_ptr137 = getelementptr inbounds %edge_node, %edge_node* %new_edge135, i32 0, i32 0
  store %edge_node* %edges_hd133, %edge_node** %"lst_rst'136", align 8
  store %edge_t* %edge2, %edge_t** %edge_ptr137, align 8
  store %edge_node* %new_edge135, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %edge3 = load %edge_t*, %edge_t** @edge3, align 8
  %edges_hd138 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %malloccall139 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge140 = bitcast i8* %malloccall139 to %edge_node*
  %"lst_rst'141" = getelementptr inbounds %edge_node, %edge_node* %new_edge140, i32 0, i32 1
  %edge_ptr142 = getelementptr inbounds %edge_node, %edge_node* %new_edge140, i32 0, i32 0
  store %edge_node* %edges_hd138, %edge_node** %"lst_rst'141", align 8
  store %edge_t* %edge3, %edge_t** %edge_ptr142, align 8
  store %edge_node* %new_edge140, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @7, i32 0, i32 0), i8** @my_string, align 8
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
  %putMeHere143 = load %node_node*, %node_node** @llNodes, align 8
  %nodes = getelementptr inbounds %node_node, %node_node* %putMeHere143, i32 0, i32 0
  %"stored_node'" = load %node_struct*, %node_struct** %nodes, align 8
  br label %if

if:                                               ; preds = %while_body
  %namePtr = getelementptr inbounds %node_struct, %node_struct* %"stored_node'", i32 0, i32 0
  %nodeName = load i8*, i8** %namePtr, align 8
  %strcmp = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @8, i32 0, i32 0), i8* %nodeName)
  %equal = icmp eq i32 %strcmp, 0
  br i1 %equal, label %then, label %else

then:                                             ; preds = %if
  store i1 %equal, i1* %ret_true, align 1
  br label %merge

else:                                             ; preds = %if
  store i1 %equal, i1* %ret_true, align 1
  %toBeHere = load %node_node*, %node_node** @llNodes, align 8
  %llNodesPtr = getelementptr inbounds %node_node, %node_node* %toBeHere, i32 0, i32 1
  %toBeHerenow = load %node_node*, %node_node** %llNodesPtr, align 8
  store %node_node* %toBeHerenow, %node_node** @llNodes, align 8
  br label %while

merge:                                            ; preds = %while, %then
  %res = alloca i8*, align 8
  %toRtrn = load i1, i1* %ret_true, align 1
  store i1 %toRtrn, i1* @exists_rip, align 1
  %exists_rip = load i1, i1* @exists_rip, align 1
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i1 %exists_rip)
  %ret_true144 = alloca i1, align 1
  store i1 false, i1* %ret_true144, align 1
  %my_string = load i8*, i8** @my_string, align 8
  %head145 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head145, %node_node** @llNodes.1, align 8
  br label %while146

while146:                                         ; preds = %merge, %else155
  %putMeHere147 = load %node_node*, %node_node** @llNodes.1, align 8
  %curr148 = icmp ne %node_node* %putMeHere147, null
  br i1 %curr148, label %while_body149, label %merge156

while_body149:                                    ; preds = %while146
  %putMeHere150 = load %node_node*, %node_node** @llNodes.1, align 8
  %nodes151 = getelementptr inbounds %node_node, %node_node* %putMeHere150, i32 0, i32 0
  %"stored_node'152" = load %node_struct*, %node_struct** %nodes151, align 8
  br label %if153

if153:                                            ; preds = %while_body149
  %namePtr157 = getelementptr inbounds %node_struct, %node_struct* %"stored_node'152", i32 0, i32 0
  %nodeName158 = load i8*, i8** %namePtr157, align 8
  %strcmp159 = call i32 @strcmp(i8* %my_string, i8* %nodeName158)
  %equal160 = icmp eq i32 %strcmp159, 0
  br i1 %equal160, label %then154, label %else155

then154:                                          ; preds = %if153
  store i1 %equal160, i1* %ret_true144, align 1
  br label %merge156

else155:                                          ; preds = %if153
  store i1 %equal160, i1* %ret_true144, align 1
  %toBeHere161 = load %node_node*, %node_node** @llNodes.1, align 8
  %llNodesPtr162 = getelementptr inbounds %node_node, %node_node* %toBeHere161, i32 0, i32 1
  %toBeHerenow163 = load %node_node*, %node_node** %llNodesPtr162, align 8
  store %node_node* %toBeHerenow163, %node_node** @llNodes.1, align 8
  br label %while146

merge156:                                         ; preds = %while146, %then154
  %res164 = alloca i8*, align 8
  %toRtrn165 = load i1, i1* %ret_true144, align 1
  store i1 %toRtrn165, i1* @exists_this, align 1
  %exists_this = load i1, i1* @exists_this, align 1
  %printf166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.2, i32 0, i32 0), i1 %exists_this)
  %ret_true167 = alloca i1, align 1
  store i1 false, i1* %ret_true167, align 1
  %head168 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head168, %node_node** @llNodes.3, align 8
  br label %while169

while169:                                         ; preds = %merge156, %else178
  %putMeHere170 = load %node_node*, %node_node** @llNodes.3, align 8
  %curr171 = icmp ne %node_node* %putMeHere170, null
  br i1 %curr171, label %while_body172, label %merge179

while_body172:                                    ; preds = %while169
  %putMeHere173 = load %node_node*, %node_node** @llNodes.3, align 8
  %nodes174 = getelementptr inbounds %node_node, %node_node* %putMeHere173, i32 0, i32 0
  %"stored_node'175" = load %node_struct*, %node_struct** %nodes174, align 8
  br label %if176

if176:                                            ; preds = %while_body172
  %namePtr180 = getelementptr inbounds %node_struct, %node_struct* %"stored_node'175", i32 0, i32 0
  %nodeName181 = load i8*, i8** %namePtr180, align 8
  %strcmp182 = call i32 @strcmp(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @9, i32 0, i32 0), i8* %nodeName181)
  %equal183 = icmp eq i32 %strcmp182, 0
  br i1 %equal183, label %then177, label %else178

then177:                                          ; preds = %if176
  store i1 %equal183, i1* %ret_true167, align 1
  br label %merge179

else178:                                          ; preds = %if176
  store i1 %equal183, i1* %ret_true167, align 1
  %toBeHere184 = load %node_node*, %node_node** @llNodes.3, align 8
  %llNodesPtr185 = getelementptr inbounds %node_node, %node_node* %toBeHere184, i32 0, i32 1
  %toBeHerenow186 = load %node_node*, %node_node** %llNodesPtr185, align 8
  store %node_node* %toBeHerenow186, %node_node** @llNodes.3, align 8
  br label %while169

merge179:                                         ; preds = %while169, %then177
  %res187 = alloca i8*, align 8
  %toRtrn188 = load i1, i1* %ret_true167, align 1
  store i1 %toRtrn188, i1* @doesnt_exist, align 1
  %doesnt_exist = load i1, i1* @doesnt_exist, align 1
  %printf189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.4, i32 0, i32 0), i1 %doesnt_exist)
  %malloccall190 = tail call i8* @malloc(i32 ptrtoint (%node_struct** getelementptr (%node_struct*, %node_struct** null, i32 1) to i32))
  %ret_nd = bitcast i8* %malloccall190 to %node_struct**
  store %node_struct* null, %node_struct** %ret_nd, align 8
  %head191 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head191, %node_node** @llNodes.5, align 8
  br label %while192

while192:                                         ; preds = %merge179, %else201
  %putMeHere193 = load %node_node*, %node_node** @llNodes.5, align 8
  %curr194 = icmp ne %node_node* %putMeHere193, null
  br i1 %curr194, label %while_body195, label %merge202

while_body195:                                    ; preds = %while192
  %putMeHere196 = load %node_node*, %node_node** @llNodes.5, align 8
  %nodes197 = getelementptr inbounds %node_node, %node_node* %putMeHere196, i32 0, i32 0
  %"stored_node'198" = load %node_struct*, %node_struct** %nodes197, align 8
  br label %if199

if199:                                            ; preds = %while_body195
  %namePtr203 = getelementptr inbounds %node_struct, %node_struct* %"stored_node'198", i32 0, i32 0
  %nodeName204 = load i8*, i8** %namePtr203, align 8
  %strcmp205 = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @10, i32 0, i32 0), i8* %nodeName204)
  %equal206 = icmp eq i32 %strcmp205, 0
  br i1 %equal206, label %then200, label %else201

then200:                                          ; preds = %if199
  store %node_struct* %"stored_node'198", %node_struct** %ret_nd, align 8
  br label %merge202

else201:                                          ; preds = %if199
  %toBeHere207 = load %node_node*, %node_node** @llNodes.5, align 8
  %llNodesPtr208 = getelementptr inbounds %node_node, %node_node* %toBeHere207, i32 0, i32 1
  %toBeHerenow209 = load %node_node*, %node_node** %llNodesPtr208, align 8
  store %node_node* %toBeHerenow209, %node_node** @llNodes.5, align 8
  br label %while192

merge202:                                         ; preds = %while192, %then200
  %toRtrn210 = load %node_struct*, %node_struct** %ret_nd, align 8
  %malloccall211 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node212 = bitcast i8* %malloccall211 to %node_struct*
  %malloccall213 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data214 = bitcast i8* %malloccall213 to i8**
  %malloccall215 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name216 = bitcast i8* %malloccall215 to i8**
  %data_ptr217 = bitcast i8** %data214 to i8*
  %name_ptr218 = bitcast i8** %name216 to i8*
  %"name'219" = getelementptr inbounds %node_struct, %node_struct* %node212, i32 0, i32 0
  %"data'220" = getelementptr inbounds %node_struct, %node_struct* %node212, i32 0, i32 2
  store i8* %name_ptr218, i8** %"name'219", align 8
  store i8* %data_ptr217, i8** %"data'220", align 8
  store %node_struct* %node212, %node_struct** @node7, align 8
  store %node_struct* %toRtrn210, %node_struct** @node7, align 8
  %"lvar'221" = load %node_struct*, %node_struct** @node7, align 8
  %temp222 = getelementptr inbounds %node_struct, %node_struct* %"lvar'221", i32 0, i32 2
  %node7.data = load i8*, i8** %temp222, align 8
  %new_ptr = bitcast i8* %node7.data to i8**
  %node7.data223 = load i8*, i8** %new_ptr, align 8
  store i8* %node7.data223, i8** @our_data, align 8
  %our_data = load i8*, i8** @our_data, align 8
  %printf224 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.6, i32 0, i32 0), i8* %our_data)
  ret i32 0
}

declare noalias i8* @malloc(i32)

; ModuleID = 'Graphite'
source_filename = "Graphite"

%node_struct = type { i8*, i1, i8* }
%edge_t = type { %node_struct*, %node_struct*, i32 }
%graph_tt = type { %node_node*, %edge_node* }
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
@g = global %graph_tt* null
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

declare i8* @array_del(i8*, i32, ...)

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
  %malloccall99 = tail call i8* @malloc(i32 ptrtoint (%graph_tt* getelementptr (%graph_tt, %graph_tt* null, i32 1) to i32))
  %node100 = bitcast i8* %malloccall99 to %graph_tt*
  %"name'101" = getelementptr inbounds %graph_tt, %graph_tt* %node100, i32 0, i32 0
  %"data'102" = getelementptr inbounds %graph_tt, %graph_tt* %node100, i32 0, i32 1
  store %node_node* null, %node_node** %"name'101", align 8
  store %edge_node* null, %edge_node** %"data'102", align 8
  store %graph_tt* %node100, %graph_tt** @g, align 8
  %node1103 = load %node_struct*, %node_struct** @node1, align 8
  %graph_ptr = load %graph_tt*, %graph_tt** @g, align 8
  %nodes = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr, i32 0, i32 0
  %nodes_hd = load %node_node*, %node_node** %nodes, align 8
  %malloccall104 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node = bitcast i8* %malloccall104 to %node_node*
  %"lst_rst'" = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 1
  %node_ptr = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 0
  store %node_node* %nodes_hd, %node_node** %"lst_rst'", align 8
  store %node_struct* %node1103, %node_struct** %node_ptr, align 8
  store %node_node* %new_node, %node_node** %nodes, align 8
  %node2105 = load %node_struct*, %node_struct** @node2, align 8
  %graph_ptr106 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes107 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr106, i32 0, i32 0
  %nodes_hd108 = load %node_node*, %node_node** %nodes107, align 8
  %malloccall109 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node110 = bitcast i8* %malloccall109 to %node_node*
  %"lst_rst'111" = getelementptr inbounds %node_node, %node_node* %new_node110, i32 0, i32 1
  %node_ptr112 = getelementptr inbounds %node_node, %node_node* %new_node110, i32 0, i32 0
  store %node_node* %nodes_hd108, %node_node** %"lst_rst'111", align 8
  store %node_struct* %node2105, %node_struct** %node_ptr112, align 8
  store %node_node* %new_node110, %node_node** %nodes107, align 8
  %node3113 = load %node_struct*, %node_struct** @node3, align 8
  %graph_ptr114 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes115 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr114, i32 0, i32 0
  %nodes_hd116 = load %node_node*, %node_node** %nodes115, align 8
  %malloccall117 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node118 = bitcast i8* %malloccall117 to %node_node*
  %"lst_rst'119" = getelementptr inbounds %node_node, %node_node* %new_node118, i32 0, i32 1
  %node_ptr120 = getelementptr inbounds %node_node, %node_node* %new_node118, i32 0, i32 0
  store %node_node* %nodes_hd116, %node_node** %"lst_rst'119", align 8
  store %node_struct* %node3113, %node_struct** %node_ptr120, align 8
  store %node_node* %new_node118, %node_node** %nodes115, align 8
  %node4121 = load %node_struct*, %node_struct** @node4, align 8
  %graph_ptr122 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes123 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr122, i32 0, i32 0
  %nodes_hd124 = load %node_node*, %node_node** %nodes123, align 8
  %malloccall125 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node126 = bitcast i8* %malloccall125 to %node_node*
  %"lst_rst'127" = getelementptr inbounds %node_node, %node_node* %new_node126, i32 0, i32 1
  %node_ptr128 = getelementptr inbounds %node_node, %node_node* %new_node126, i32 0, i32 0
  store %node_node* %nodes_hd124, %node_node** %"lst_rst'127", align 8
  store %node_struct* %node4121, %node_struct** %node_ptr128, align 8
  store %node_node* %new_node126, %node_node** %nodes123, align 8
  %node5129 = load %node_struct*, %node_struct** @node5, align 8
  %graph_ptr130 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes131 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr130, i32 0, i32 0
  %nodes_hd132 = load %node_node*, %node_node** %nodes131, align 8
  %malloccall133 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node134 = bitcast i8* %malloccall133 to %node_node*
  %"lst_rst'135" = getelementptr inbounds %node_node, %node_node* %new_node134, i32 0, i32 1
  %node_ptr136 = getelementptr inbounds %node_node, %node_node* %new_node134, i32 0, i32 0
  store %node_node* %nodes_hd132, %node_node** %"lst_rst'135", align 8
  store %node_struct* %node5129, %node_struct** %node_ptr136, align 8
  store %node_node* %new_node134, %node_node** %nodes131, align 8
  %node6137 = load %node_struct*, %node_struct** @node6, align 8
  %graph_ptr138 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes139 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr138, i32 0, i32 0
  %nodes_hd140 = load %node_node*, %node_node** %nodes139, align 8
  %malloccall141 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node142 = bitcast i8* %malloccall141 to %node_node*
  %"lst_rst'143" = getelementptr inbounds %node_node, %node_node* %new_node142, i32 0, i32 1
  %node_ptr144 = getelementptr inbounds %node_node, %node_node* %new_node142, i32 0, i32 0
  store %node_node* %nodes_hd140, %node_node** %"lst_rst'143", align 8
  store %node_struct* %node6137, %node_struct** %node_ptr144, align 8
  store %node_node* %new_node142, %node_node** %nodes139, align 8
  %edge1 = load %edge_t*, %edge_t** @edge1, align 8
  %graph_ptr145 = load %graph_tt*, %graph_tt** @g, align 8
  %edges = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr145, i32 0, i32 1
  %edges_hd = load %edge_node*, %edge_node** %edges, align 8
  %malloccall146 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge = bitcast i8* %malloccall146 to %edge_node*
  %"lst_rst'147" = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 1
  %edge_ptr = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 0
  store %edge_node* %edges_hd, %edge_node** %"lst_rst'147", align 8
  store %edge_t* %edge1, %edge_t** %edge_ptr, align 8
  %src_ptr = getelementptr inbounds %edge_t, %edge_t* %edge1, i32 0, i32 0
  %dst_ptr = getelementptr inbounds %edge_t, %edge_t* %edge1, i32 0, i32 1
  %"src'" = load %node_struct*, %node_struct** %src_ptr, align 8
  %"dst'" = load %node_struct*, %node_struct** %dst_ptr, align 8
  %ret_true = alloca i1, align 1
  store i1 false, i1* %ret_true, align 1
  %graph_ptr148 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes149 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr148, i32 0, i32 0
  %head = load %node_node*, %node_node** %nodes149, align 8
  store %node_node* %head, %node_node** @llNodes, align 8
  br label %while

while:                                            ; preds = %entry, %else
  %putMeHere = load %node_node*, %node_node** @llNodes, align 8
  %curr = icmp ne %node_node* %putMeHere, null
  br i1 %curr, label %while_body, label %merge

while_body:                                       ; preds = %while
  %putMeHere150 = load %node_node*, %node_node** @llNodes, align 8
  %nodes151 = getelementptr inbounds %node_node, %node_node* %putMeHere150, i32 0, i32 0
  %"stored_node'" = load %node_struct*, %node_struct** %nodes151, align 8
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
  %ret_true152 = alloca i1, align 1
  store i1 false, i1* %ret_true152, align 1
  %graph_ptr153 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes154 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr153, i32 0, i32 0
  %head155 = load %node_node*, %node_node** %nodes154, align 8
  store %node_node* %head155, %node_node** @llNodes.1, align 8
  br label %while156

while156:                                         ; preds = %merge, %else165
  %putMeHere157 = load %node_node*, %node_node** @llNodes.1, align 8
  %curr158 = icmp ne %node_node* %putMeHere157, null
  br i1 %curr158, label %while_body159, label %merge166

while_body159:                                    ; preds = %while156
  %putMeHere160 = load %node_node*, %node_node** @llNodes.1, align 8
  %nodes161 = getelementptr inbounds %node_node, %node_node* %putMeHere160, i32 0, i32 0
  %"stored_node'162" = load %node_struct*, %node_struct** %nodes161, align 8
  br label %if163

if163:                                            ; preds = %while_body159
  %"found?167" = icmp eq %node_struct* %"stored_node'162", %"dst'"
  br i1 %"found?167", label %then164, label %else165

then164:                                          ; preds = %if163
  store i1 true, i1* %ret_true152, align 1
  br label %merge166

else165:                                          ; preds = %if163
  %toBeHere168 = load %node_node*, %node_node** @llNodes.1, align 8
  %llNodesPtr169 = getelementptr inbounds %node_node, %node_node* %toBeHere168, i32 0, i32 1
  %toBeHerenow170 = load %node_node*, %node_node** %llNodesPtr169, align 8
  store %node_node* %toBeHerenow170, %node_node** @llNodes.1, align 8
  br label %while156

merge166:                                         ; preds = %while156, %then164
  %returnVal171 = load i1, i1* %ret_true152, align 1
  br label %if172

if172:                                            ; preds = %merge166
  br i1 %returnVal, label %merge174, label %else173

else173:                                          ; preds = %if172
  %graph_ptr175 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes176 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr175, i32 0, i32 0
  %nodes_hd177 = load %node_node*, %node_node** %nodes176, align 8
  %malloccall178 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node179 = bitcast i8* %malloccall178 to %node_node*
  %"lst_rst'180" = getelementptr inbounds %node_node, %node_node* %new_node179, i32 0, i32 1
  %node_ptr181 = getelementptr inbounds %node_node, %node_node* %new_node179, i32 0, i32 0
  store %node_node* %nodes_hd177, %node_node** %"lst_rst'180", align 8
  store %node_struct* %"src'", %node_struct** %node_ptr181, align 8
  store %node_node* %new_node179, %node_node** %nodes176, align 8
  br label %merge174

merge174:                                         ; preds = %else173, %if172
  br label %if182

if182:                                            ; preds = %merge174
  br i1 %returnVal171, label %merge184, label %else183

else183:                                          ; preds = %if182
  %graph_ptr185 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes186 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr185, i32 0, i32 0
  %nodes_hd187 = load %node_node*, %node_node** %nodes186, align 8
  %malloccall188 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node189 = bitcast i8* %malloccall188 to %node_node*
  %"lst_rst'190" = getelementptr inbounds %node_node, %node_node* %new_node189, i32 0, i32 1
  %node_ptr191 = getelementptr inbounds %node_node, %node_node* %new_node189, i32 0, i32 0
  store %node_node* %nodes_hd187, %node_node** %"lst_rst'190", align 8
  store %node_struct* %"dst'", %node_struct** %node_ptr191, align 8
  store %node_node* %new_node189, %node_node** %nodes186, align 8
  br label %merge184

merge184:                                         ; preds = %else183, %if182
  store %edge_node* %new_edge, %edge_node** %edges, align 8
  %edge2 = load %edge_t*, %edge_t** @edge2, align 8
  %graph_ptr192 = load %graph_tt*, %graph_tt** @g, align 8
  %edges193 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr192, i32 0, i32 1
  %edges_hd194 = load %edge_node*, %edge_node** %edges193, align 8
  %malloccall195 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge196 = bitcast i8* %malloccall195 to %edge_node*
  %"lst_rst'197" = getelementptr inbounds %edge_node, %edge_node* %new_edge196, i32 0, i32 1
  %edge_ptr198 = getelementptr inbounds %edge_node, %edge_node* %new_edge196, i32 0, i32 0
  store %edge_node* %edges_hd194, %edge_node** %"lst_rst'197", align 8
  store %edge_t* %edge2, %edge_t** %edge_ptr198, align 8
  %src_ptr199 = getelementptr inbounds %edge_t, %edge_t* %edge2, i32 0, i32 0
  %dst_ptr200 = getelementptr inbounds %edge_t, %edge_t* %edge2, i32 0, i32 1
  %"src'201" = load %node_struct*, %node_struct** %src_ptr199, align 8
  %"dst'202" = load %node_struct*, %node_struct** %dst_ptr200, align 8
  %ret_true203 = alloca i1, align 1
  store i1 false, i1* %ret_true203, align 1
  %graph_ptr204 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes205 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr204, i32 0, i32 0
  %head206 = load %node_node*, %node_node** %nodes205, align 8
  store %node_node* %head206, %node_node** @llNodes.2, align 8
  br label %while207

while207:                                         ; preds = %merge184, %else216
  %putMeHere208 = load %node_node*, %node_node** @llNodes.2, align 8
  %curr209 = icmp ne %node_node* %putMeHere208, null
  br i1 %curr209, label %while_body210, label %merge217

while_body210:                                    ; preds = %while207
  %putMeHere211 = load %node_node*, %node_node** @llNodes.2, align 8
  %nodes212 = getelementptr inbounds %node_node, %node_node* %putMeHere211, i32 0, i32 0
  %"stored_node'213" = load %node_struct*, %node_struct** %nodes212, align 8
  br label %if214

if214:                                            ; preds = %while_body210
  %"found?218" = icmp eq %node_struct* %"stored_node'213", %"src'201"
  br i1 %"found?218", label %then215, label %else216

then215:                                          ; preds = %if214
  store i1 true, i1* %ret_true203, align 1
  br label %merge217

else216:                                          ; preds = %if214
  %toBeHere219 = load %node_node*, %node_node** @llNodes.2, align 8
  %llNodesPtr220 = getelementptr inbounds %node_node, %node_node* %toBeHere219, i32 0, i32 1
  %toBeHerenow221 = load %node_node*, %node_node** %llNodesPtr220, align 8
  store %node_node* %toBeHerenow221, %node_node** @llNodes.2, align 8
  br label %while207

merge217:                                         ; preds = %while207, %then215
  %returnVal222 = load i1, i1* %ret_true203, align 1
  %ret_true223 = alloca i1, align 1
  store i1 false, i1* %ret_true223, align 1
  %graph_ptr224 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes225 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr224, i32 0, i32 0
  %head226 = load %node_node*, %node_node** %nodes225, align 8
  store %node_node* %head226, %node_node** @llNodes.3, align 8
  br label %while227

while227:                                         ; preds = %merge217, %else236
  %putMeHere228 = load %node_node*, %node_node** @llNodes.3, align 8
  %curr229 = icmp ne %node_node* %putMeHere228, null
  br i1 %curr229, label %while_body230, label %merge237

while_body230:                                    ; preds = %while227
  %putMeHere231 = load %node_node*, %node_node** @llNodes.3, align 8
  %nodes232 = getelementptr inbounds %node_node, %node_node* %putMeHere231, i32 0, i32 0
  %"stored_node'233" = load %node_struct*, %node_struct** %nodes232, align 8
  br label %if234

if234:                                            ; preds = %while_body230
  %"found?238" = icmp eq %node_struct* %"stored_node'233", %"dst'202"
  br i1 %"found?238", label %then235, label %else236

then235:                                          ; preds = %if234
  store i1 true, i1* %ret_true223, align 1
  br label %merge237

else236:                                          ; preds = %if234
  %toBeHere239 = load %node_node*, %node_node** @llNodes.3, align 8
  %llNodesPtr240 = getelementptr inbounds %node_node, %node_node* %toBeHere239, i32 0, i32 1
  %toBeHerenow241 = load %node_node*, %node_node** %llNodesPtr240, align 8
  store %node_node* %toBeHerenow241, %node_node** @llNodes.3, align 8
  br label %while227

merge237:                                         ; preds = %while227, %then235
  %returnVal242 = load i1, i1* %ret_true223, align 1
  br label %if243

if243:                                            ; preds = %merge237
  br i1 %returnVal222, label %merge245, label %else244

else244:                                          ; preds = %if243
  %graph_ptr246 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes247 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr246, i32 0, i32 0
  %nodes_hd248 = load %node_node*, %node_node** %nodes247, align 8
  %malloccall249 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node250 = bitcast i8* %malloccall249 to %node_node*
  %"lst_rst'251" = getelementptr inbounds %node_node, %node_node* %new_node250, i32 0, i32 1
  %node_ptr252 = getelementptr inbounds %node_node, %node_node* %new_node250, i32 0, i32 0
  store %node_node* %nodes_hd248, %node_node** %"lst_rst'251", align 8
  store %node_struct* %"src'201", %node_struct** %node_ptr252, align 8
  store %node_node* %new_node250, %node_node** %nodes247, align 8
  br label %merge245

merge245:                                         ; preds = %else244, %if243
  br label %if253

if253:                                            ; preds = %merge245
  br i1 %returnVal242, label %merge255, label %else254

else254:                                          ; preds = %if253
  %graph_ptr256 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes257 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr256, i32 0, i32 0
  %nodes_hd258 = load %node_node*, %node_node** %nodes257, align 8
  %malloccall259 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node260 = bitcast i8* %malloccall259 to %node_node*
  %"lst_rst'261" = getelementptr inbounds %node_node, %node_node* %new_node260, i32 0, i32 1
  %node_ptr262 = getelementptr inbounds %node_node, %node_node* %new_node260, i32 0, i32 0
  store %node_node* %nodes_hd258, %node_node** %"lst_rst'261", align 8
  store %node_struct* %"dst'202", %node_struct** %node_ptr262, align 8
  store %node_node* %new_node260, %node_node** %nodes257, align 8
  br label %merge255

merge255:                                         ; preds = %else254, %if253
  store %edge_node* %new_edge196, %edge_node** %edges193, align 8
  %edge3 = load %edge_t*, %edge_t** @edge3, align 8
  %graph_ptr263 = load %graph_tt*, %graph_tt** @g, align 8
  %edges264 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr263, i32 0, i32 1
  %edges_hd265 = load %edge_node*, %edge_node** %edges264, align 8
  %malloccall266 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge267 = bitcast i8* %malloccall266 to %edge_node*
  %"lst_rst'268" = getelementptr inbounds %edge_node, %edge_node* %new_edge267, i32 0, i32 1
  %edge_ptr269 = getelementptr inbounds %edge_node, %edge_node* %new_edge267, i32 0, i32 0
  store %edge_node* %edges_hd265, %edge_node** %"lst_rst'268", align 8
  store %edge_t* %edge3, %edge_t** %edge_ptr269, align 8
  %src_ptr270 = getelementptr inbounds %edge_t, %edge_t* %edge3, i32 0, i32 0
  %dst_ptr271 = getelementptr inbounds %edge_t, %edge_t* %edge3, i32 0, i32 1
  %"src'272" = load %node_struct*, %node_struct** %src_ptr270, align 8
  %"dst'273" = load %node_struct*, %node_struct** %dst_ptr271, align 8
  %ret_true274 = alloca i1, align 1
  store i1 false, i1* %ret_true274, align 1
  %graph_ptr275 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes276 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr275, i32 0, i32 0
  %head277 = load %node_node*, %node_node** %nodes276, align 8
  store %node_node* %head277, %node_node** @llNodes.4, align 8
  br label %while278

while278:                                         ; preds = %merge255, %else287
  %putMeHere279 = load %node_node*, %node_node** @llNodes.4, align 8
  %curr280 = icmp ne %node_node* %putMeHere279, null
  br i1 %curr280, label %while_body281, label %merge288

while_body281:                                    ; preds = %while278
  %putMeHere282 = load %node_node*, %node_node** @llNodes.4, align 8
  %nodes283 = getelementptr inbounds %node_node, %node_node* %putMeHere282, i32 0, i32 0
  %"stored_node'284" = load %node_struct*, %node_struct** %nodes283, align 8
  br label %if285

if285:                                            ; preds = %while_body281
  %"found?289" = icmp eq %node_struct* %"stored_node'284", %"src'272"
  br i1 %"found?289", label %then286, label %else287

then286:                                          ; preds = %if285
  store i1 true, i1* %ret_true274, align 1
  br label %merge288

else287:                                          ; preds = %if285
  %toBeHere290 = load %node_node*, %node_node** @llNodes.4, align 8
  %llNodesPtr291 = getelementptr inbounds %node_node, %node_node* %toBeHere290, i32 0, i32 1
  %toBeHerenow292 = load %node_node*, %node_node** %llNodesPtr291, align 8
  store %node_node* %toBeHerenow292, %node_node** @llNodes.4, align 8
  br label %while278

merge288:                                         ; preds = %while278, %then286
  %returnVal293 = load i1, i1* %ret_true274, align 1
  %ret_true294 = alloca i1, align 1
  store i1 false, i1* %ret_true294, align 1
  %graph_ptr295 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes296 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr295, i32 0, i32 0
  %head297 = load %node_node*, %node_node** %nodes296, align 8
  store %node_node* %head297, %node_node** @llNodes.5, align 8
  br label %while298

while298:                                         ; preds = %merge288, %else307
  %putMeHere299 = load %node_node*, %node_node** @llNodes.5, align 8
  %curr300 = icmp ne %node_node* %putMeHere299, null
  br i1 %curr300, label %while_body301, label %merge308

while_body301:                                    ; preds = %while298
  %putMeHere302 = load %node_node*, %node_node** @llNodes.5, align 8
  %nodes303 = getelementptr inbounds %node_node, %node_node* %putMeHere302, i32 0, i32 0
  %"stored_node'304" = load %node_struct*, %node_struct** %nodes303, align 8
  br label %if305

if305:                                            ; preds = %while_body301
  %"found?309" = icmp eq %node_struct* %"stored_node'304", %"dst'273"
  br i1 %"found?309", label %then306, label %else307

then306:                                          ; preds = %if305
  store i1 true, i1* %ret_true294, align 1
  br label %merge308

else307:                                          ; preds = %if305
  %toBeHere310 = load %node_node*, %node_node** @llNodes.5, align 8
  %llNodesPtr311 = getelementptr inbounds %node_node, %node_node* %toBeHere310, i32 0, i32 1
  %toBeHerenow312 = load %node_node*, %node_node** %llNodesPtr311, align 8
  store %node_node* %toBeHerenow312, %node_node** @llNodes.5, align 8
  br label %while298

merge308:                                         ; preds = %while298, %then306
  %returnVal313 = load i1, i1* %ret_true294, align 1
  br label %if314

if314:                                            ; preds = %merge308
  br i1 %returnVal293, label %merge316, label %else315

else315:                                          ; preds = %if314
  %graph_ptr317 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes318 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr317, i32 0, i32 0
  %nodes_hd319 = load %node_node*, %node_node** %nodes318, align 8
  %malloccall320 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node321 = bitcast i8* %malloccall320 to %node_node*
  %"lst_rst'322" = getelementptr inbounds %node_node, %node_node* %new_node321, i32 0, i32 1
  %node_ptr323 = getelementptr inbounds %node_node, %node_node* %new_node321, i32 0, i32 0
  store %node_node* %nodes_hd319, %node_node** %"lst_rst'322", align 8
  store %node_struct* %"src'272", %node_struct** %node_ptr323, align 8
  store %node_node* %new_node321, %node_node** %nodes318, align 8
  br label %merge316

merge316:                                         ; preds = %else315, %if314
  br label %if324

if324:                                            ; preds = %merge316
  br i1 %returnVal313, label %merge326, label %else325

else325:                                          ; preds = %if324
  %graph_ptr327 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes328 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr327, i32 0, i32 0
  %nodes_hd329 = load %node_node*, %node_node** %nodes328, align 8
  %malloccall330 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node331 = bitcast i8* %malloccall330 to %node_node*
  %"lst_rst'332" = getelementptr inbounds %node_node, %node_node* %new_node331, i32 0, i32 1
  %node_ptr333 = getelementptr inbounds %node_node, %node_node* %new_node331, i32 0, i32 0
  store %node_node* %nodes_hd329, %node_node** %"lst_rst'332", align 8
  store %node_struct* %"dst'273", %node_struct** %node_ptr333, align 8
  store %node_node* %new_node331, %node_node** %nodes328, align 8
  br label %merge326

merge326:                                         ; preds = %else325, %if324
  store %edge_node* %new_edge267, %edge_node** %edges264, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @7, i32 0, i32 0), i8** @my_string, align 8
  %ret_true334 = alloca i1, align 1
  store i1 false, i1* %ret_true334, align 1
  %graph_ptr335 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes336 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr335, i32 0, i32 0
  %head337 = load %node_node*, %node_node** %nodes336, align 8
  store %node_node* %head337, %node_node** @llNodes.6, align 8
  br label %while338

while338:                                         ; preds = %merge326, %else347
  %putMeHere339 = load %node_node*, %node_node** @llNodes.6, align 8
  %curr340 = icmp ne %node_node* %putMeHere339, null
  br i1 %curr340, label %while_body341, label %merge348

while_body341:                                    ; preds = %while338
  %putMeHere342 = load %node_node*, %node_node** @llNodes.6, align 8
  %nodes343 = getelementptr inbounds %node_node, %node_node* %putMeHere342, i32 0, i32 0
  %"stored_node'344" = load %node_struct*, %node_struct** %nodes343, align 8
  br label %if345

if345:                                            ; preds = %while_body341
  %namePtr = getelementptr inbounds %node_struct, %node_struct* %"stored_node'344", i32 0, i32 0
  %nodeName = load i8*, i8** %namePtr, align 8
  %strcmp = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @8, i32 0, i32 0), i8* %nodeName)
  %equal = icmp eq i32 %strcmp, 0
  br i1 %equal, label %then346, label %else347

then346:                                          ; preds = %if345
  store i1 %equal, i1* %ret_true334, align 1
  br label %merge348

else347:                                          ; preds = %if345
  store i1 %equal, i1* %ret_true334, align 1
  %toBeHere349 = load %node_node*, %node_node** @llNodes.6, align 8
  %llNodesPtr350 = getelementptr inbounds %node_node, %node_node* %toBeHere349, i32 0, i32 1
  %toBeHerenow351 = load %node_node*, %node_node** %llNodesPtr350, align 8
  store %node_node* %toBeHerenow351, %node_node** @llNodes.6, align 8
  br label %while338

merge348:                                         ; preds = %while338, %then346
  %toRtrn = load i1, i1* %ret_true334, align 1
  store i1 %toRtrn, i1* @exists_rip, align 1
  %exists_rip = load i1, i1* @exists_rip, align 1
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i1 %exists_rip)
  %ret_true352 = alloca i1, align 1
  store i1 false, i1* %ret_true352, align 1
  %my_string = load i8*, i8** @my_string, align 8
  %graph_ptr353 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes354 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr353, i32 0, i32 0
  %head355 = load %node_node*, %node_node** %nodes354, align 8
  store %node_node* %head355, %node_node** @llNodes.7, align 8
  br label %while356

while356:                                         ; preds = %merge348, %else365
  %putMeHere357 = load %node_node*, %node_node** @llNodes.7, align 8
  %curr358 = icmp ne %node_node* %putMeHere357, null
  br i1 %curr358, label %while_body359, label %merge366

while_body359:                                    ; preds = %while356
  %putMeHere360 = load %node_node*, %node_node** @llNodes.7, align 8
  %nodes361 = getelementptr inbounds %node_node, %node_node* %putMeHere360, i32 0, i32 0
  %"stored_node'362" = load %node_struct*, %node_struct** %nodes361, align 8
  br label %if363

if363:                                            ; preds = %while_body359
  %namePtr367 = getelementptr inbounds %node_struct, %node_struct* %"stored_node'362", i32 0, i32 0
  %nodeName368 = load i8*, i8** %namePtr367, align 8
  %strcmp369 = call i32 @strcmp(i8* %my_string, i8* %nodeName368)
  %equal370 = icmp eq i32 %strcmp369, 0
  br i1 %equal370, label %then364, label %else365

then364:                                          ; preds = %if363
  store i1 %equal370, i1* %ret_true352, align 1
  br label %merge366

else365:                                          ; preds = %if363
  store i1 %equal370, i1* %ret_true352, align 1
  %toBeHere371 = load %node_node*, %node_node** @llNodes.7, align 8
  %llNodesPtr372 = getelementptr inbounds %node_node, %node_node* %toBeHere371, i32 0, i32 1
  %toBeHerenow373 = load %node_node*, %node_node** %llNodesPtr372, align 8
  store %node_node* %toBeHerenow373, %node_node** @llNodes.7, align 8
  br label %while356

merge366:                                         ; preds = %while356, %then364
  %toRtrn374 = load i1, i1* %ret_true352, align 1
  store i1 %toRtrn374, i1* @exists_this, align 1
  %exists_this = load i1, i1* @exists_this, align 1
  %printf375 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.8, i32 0, i32 0), i1 %exists_this)
  %ret_true376 = alloca i1, align 1
  store i1 false, i1* %ret_true376, align 1
  %graph_ptr377 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes378 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr377, i32 0, i32 0
  %head379 = load %node_node*, %node_node** %nodes378, align 8
  store %node_node* %head379, %node_node** @llNodes.9, align 8
  br label %while380

while380:                                         ; preds = %merge366, %else389
  %putMeHere381 = load %node_node*, %node_node** @llNodes.9, align 8
  %curr382 = icmp ne %node_node* %putMeHere381, null
  br i1 %curr382, label %while_body383, label %merge390

while_body383:                                    ; preds = %while380
  %putMeHere384 = load %node_node*, %node_node** @llNodes.9, align 8
  %nodes385 = getelementptr inbounds %node_node, %node_node* %putMeHere384, i32 0, i32 0
  %"stored_node'386" = load %node_struct*, %node_struct** %nodes385, align 8
  br label %if387

if387:                                            ; preds = %while_body383
  %namePtr391 = getelementptr inbounds %node_struct, %node_struct* %"stored_node'386", i32 0, i32 0
  %nodeName392 = load i8*, i8** %namePtr391, align 8
  %strcmp393 = call i32 @strcmp(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @9, i32 0, i32 0), i8* %nodeName392)
  %equal394 = icmp eq i32 %strcmp393, 0
  br i1 %equal394, label %then388, label %else389

then388:                                          ; preds = %if387
  store i1 %equal394, i1* %ret_true376, align 1
  br label %merge390

else389:                                          ; preds = %if387
  store i1 %equal394, i1* %ret_true376, align 1
  %toBeHere395 = load %node_node*, %node_node** @llNodes.9, align 8
  %llNodesPtr396 = getelementptr inbounds %node_node, %node_node* %toBeHere395, i32 0, i32 1
  %toBeHerenow397 = load %node_node*, %node_node** %llNodesPtr396, align 8
  store %node_node* %toBeHerenow397, %node_node** @llNodes.9, align 8
  br label %while380

merge390:                                         ; preds = %while380, %then388
  %toRtrn398 = load i1, i1* %ret_true376, align 1
  store i1 %toRtrn398, i1* @doesnt_exist, align 1
  %doesnt_exist = load i1, i1* @doesnt_exist, align 1
  %printf399 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.10, i32 0, i32 0), i1 %doesnt_exist)
  %malloccall400 = tail call i8* @malloc(i32 ptrtoint (%node_struct** getelementptr (%node_struct*, %node_struct** null, i32 1) to i32))
  %ret_nd = bitcast i8* %malloccall400 to %node_struct**
  store %node_struct* null, %node_struct** %ret_nd, align 8
  %graph_ptr401 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes402 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr401, i32 0, i32 0
  %head403 = load %node_node*, %node_node** %nodes402, align 8
  store %node_node* %head403, %node_node** @llNodes.11, align 8
  br label %while404

while404:                                         ; preds = %merge390, %else413
  %putMeHere405 = load %node_node*, %node_node** @llNodes.11, align 8
  %curr406 = icmp ne %node_node* %putMeHere405, null
  br i1 %curr406, label %while_body407, label %merge414

while_body407:                                    ; preds = %while404
  %putMeHere408 = load %node_node*, %node_node** @llNodes.11, align 8
  %nodes409 = getelementptr inbounds %node_node, %node_node* %putMeHere408, i32 0, i32 0
  %"stored_node'410" = load %node_struct*, %node_struct** %nodes409, align 8
  br label %if411

if411:                                            ; preds = %while_body407
  %namePtr415 = getelementptr inbounds %node_struct, %node_struct* %"stored_node'410", i32 0, i32 0
  %nodeName416 = load i8*, i8** %namePtr415, align 8
  %strcmp417 = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @10, i32 0, i32 0), i8* %nodeName416)
  %equal418 = icmp eq i32 %strcmp417, 0
  br i1 %equal418, label %then412, label %else413

then412:                                          ; preds = %if411
  store %node_struct* %"stored_node'410", %node_struct** %ret_nd, align 8
  br label %merge414

else413:                                          ; preds = %if411
  %toBeHere419 = load %node_node*, %node_node** @llNodes.11, align 8
  %llNodesPtr420 = getelementptr inbounds %node_node, %node_node* %toBeHere419, i32 0, i32 1
  %toBeHerenow421 = load %node_node*, %node_node** %llNodesPtr420, align 8
  store %node_node* %toBeHerenow421, %node_node** @llNodes.11, align 8
  br label %while404

merge414:                                         ; preds = %while404, %then412
  %toRtrn422 = load %node_struct*, %node_struct** %ret_nd, align 8
  %malloccall423 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node424 = bitcast i8* %malloccall423 to %node_struct*
  %malloccall425 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data426 = bitcast i8* %malloccall425 to i8**
  %malloccall427 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name428 = bitcast i8* %malloccall427 to i8**
  %data_ptr429 = bitcast i8** %data426 to i8*
  %name_ptr430 = bitcast i8** %name428 to i8*
  %"name'431" = getelementptr inbounds %node_struct, %node_struct* %node424, i32 0, i32 0
  %"data'432" = getelementptr inbounds %node_struct, %node_struct* %node424, i32 0, i32 2
  store i8* %name_ptr430, i8** %"name'431", align 8
  store i8* %data_ptr429, i8** %"data'432", align 8
  store %node_struct* %node424, %node_struct** @node7, align 8
  store %node_struct* %toRtrn422, %node_struct** @node7, align 8
  %"lvar'433" = load %node_struct*, %node_struct** @node7, align 8
  %temp434 = getelementptr inbounds %node_struct, %node_struct* %"lvar'433", i32 0, i32 2
  %node7.data = load i8*, i8** %temp434, align 8
  %new_ptr = bitcast i8* %node7.data to i8**
  %node7.data435 = load i8*, i8** %new_ptr, align 8
  store i8* %node7.data435, i8** @our_data, align 8
  %our_data = load i8*, i8** @our_data, align 8
  %printf436 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.12, i32 0, i32 0), i8* %our_data)
  ret i32 0
}

declare noalias i8* @malloc(i32)

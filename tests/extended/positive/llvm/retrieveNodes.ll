; ModuleID = 'Graphite'
source_filename = "Graphite"

%node_struct = type { i8*, i1, i8* }
%edge_t = type { %node_struct*, %node_struct*, i32 }
%graph_tt = type { %node_node*, %edge_node* }
%node_node = type { %node_struct*, %node_node* }
%edge_node = type { %edge_t*, %edge_node* }
%list_node = type { i8*, %list_node* }

@node1 = global %node_struct* null
@0 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@node2 = global %node_struct* null
@1 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@node3 = global %node_struct* null
@2 = private unnamed_addr constant [3 x i8] c"my\00", align 1
@node4 = global %node_struct* null
@3 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@node5 = global %node_struct* null
@4 = private unnamed_addr constant [7 x i8] c"bestie\00", align 1
@node6 = global %node_struct* null
@5 = private unnamed_addr constant [4 x i8] c"rip\00", align 1
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
@nodesList = global %list_node* null
@llNodes.6 = global %node_node* null
@l = global %list_node* null
@node1_prime = global %node_struct* null
@node2_prime = global %node_struct* null
@node3_prime = global %node_struct* null
@node4_prime = global %node_struct* null
@node5_prime = global %node_struct* null
@node6_prime = global %node_struct* null
@toPrint1 = global i8* null
@toPrint2 = global i8* null
@toPrint3 = global i8* null
@toPrint4 = global i8* null
@toPrint5 = global i8* null
@toPrint6 = global i8* null
@fmt = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.9 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.11 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

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
  %malloccall15 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node16 = bitcast i8* %malloccall15 to %node_struct*
  %malloccall17 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data18 = bitcast i8* %malloccall17 to i8**
  %malloccall19 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name20 = bitcast i8* %malloccall19 to i8**
  %data_ptr21 = bitcast i8** %data18 to i8*
  %name_ptr22 = bitcast i8** %name20 to i8*
  %"name'23" = getelementptr inbounds %node_struct, %node_struct* %node16, i32 0, i32 0
  %"data'24" = getelementptr inbounds %node_struct, %node_struct* %node16, i32 0, i32 2
  store i8* %name_ptr22, i8** %"name'23", align 8
  store i8* %data_ptr21, i8** %"data'24", align 8
  store %node_struct* %node16, %node_struct** @node3, align 8
  %"lvar'25" = load %node_struct*, %node_struct** @node3, align 8
  %temp26 = getelementptr inbounds %node_struct, %node_struct* %"lvar'25", i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @2, i32 0, i32 0), i8** %temp26, align 8
  %malloccall27 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node28 = bitcast i8* %malloccall27 to %node_struct*
  %malloccall29 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data30 = bitcast i8* %malloccall29 to i8**
  %malloccall31 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name32 = bitcast i8* %malloccall31 to i8**
  %data_ptr33 = bitcast i8** %data30 to i8*
  %name_ptr34 = bitcast i8** %name32 to i8*
  %"name'35" = getelementptr inbounds %node_struct, %node_struct* %node28, i32 0, i32 0
  %"data'36" = getelementptr inbounds %node_struct, %node_struct* %node28, i32 0, i32 2
  store i8* %name_ptr34, i8** %"name'35", align 8
  store i8* %data_ptr33, i8** %"data'36", align 8
  store %node_struct* %node28, %node_struct** @node4, align 8
  %"lvar'37" = load %node_struct*, %node_struct** @node4, align 8
  %temp38 = getelementptr inbounds %node_struct, %node_struct* %"lvar'37", i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3, i32 0, i32 0), i8** %temp38, align 8
  %malloccall39 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node40 = bitcast i8* %malloccall39 to %node_struct*
  %malloccall41 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data42 = bitcast i8* %malloccall41 to i8**
  %malloccall43 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name44 = bitcast i8* %malloccall43 to i8**
  %data_ptr45 = bitcast i8** %data42 to i8*
  %name_ptr46 = bitcast i8** %name44 to i8*
  %"name'47" = getelementptr inbounds %node_struct, %node_struct* %node40, i32 0, i32 0
  %"data'48" = getelementptr inbounds %node_struct, %node_struct* %node40, i32 0, i32 2
  store i8* %name_ptr46, i8** %"name'47", align 8
  store i8* %data_ptr45, i8** %"data'48", align 8
  store %node_struct* %node40, %node_struct** @node5, align 8
  %"lvar'49" = load %node_struct*, %node_struct** @node5, align 8
  %temp50 = getelementptr inbounds %node_struct, %node_struct* %"lvar'49", i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @4, i32 0, i32 0), i8** %temp50, align 8
  %malloccall51 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node52 = bitcast i8* %malloccall51 to %node_struct*
  %malloccall53 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data54 = bitcast i8* %malloccall53 to i8**
  %malloccall55 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name56 = bitcast i8* %malloccall55 to i8**
  %data_ptr57 = bitcast i8** %data54 to i8*
  %name_ptr58 = bitcast i8** %name56 to i8*
  %"name'59" = getelementptr inbounds %node_struct, %node_struct* %node52, i32 0, i32 0
  %"data'60" = getelementptr inbounds %node_struct, %node_struct* %node52, i32 0, i32 2
  store i8* %name_ptr58, i8** %"name'59", align 8
  store i8* %data_ptr57, i8** %"data'60", align 8
  store %node_struct* %node52, %node_struct** @node6, align 8
  %"lvar'61" = load %node_struct*, %node_struct** @node6, align 8
  %temp62 = getelementptr inbounds %node_struct, %node_struct* %"lvar'61", i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @5, i32 0, i32 0), i8** %temp62, align 8
  %node1 = load %node_struct*, %node_struct** @node1, align 8
  %node2 = load %node_struct*, %node_struct** @node2, align 8
  %malloccall63 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct = bitcast i8* %malloccall63 to %edge_t*
  %"name'64" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 0
  %"name'65" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 1
  %"name'66" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 2
  store %node_struct* %node1, %node_struct** %"name'64", align 8
  store %node_struct* %node2, %node_struct** %"name'65", align 8
  store i32 0, i32* %"name'66", align 4
  %malloccall67 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge = bitcast i8* %malloccall67 to %edge_t*
  %"name'68" = getelementptr inbounds %edge_t, %edge_t* %edge, i32 0, i32 0
  %"data'69" = getelementptr inbounds %edge_t, %edge_t* %edge, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'68", align 8
  store %node_struct* null, %node_struct** %"data'69", align 8
  store %edge_t* %edge, %edge_t** @edge1, align 8
  store %edge_t* %myEdgeStruct, %edge_t** @edge1, align 8
  %"lvar'70" = load %edge_t*, %edge_t** @edge1, align 8
  %temp71 = getelementptr inbounds %edge_t, %edge_t* %"lvar'70", i32 0, i32 2
  store i32 7, i32* %temp71, align 4
  %node3 = load %node_struct*, %node_struct** @node3, align 8
  %node5 = load %node_struct*, %node_struct** @node5, align 8
  %malloccall72 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct73 = bitcast i8* %malloccall72 to %edge_t*
  %"name'74" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct73, i32 0, i32 0
  %"name'75" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct73, i32 0, i32 1
  %"name'76" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct73, i32 0, i32 2
  store %node_struct* %node3, %node_struct** %"name'74", align 8
  store %node_struct* %node5, %node_struct** %"name'75", align 8
  store i32 0, i32* %"name'76", align 4
  %malloccall77 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge78 = bitcast i8* %malloccall77 to %edge_t*
  %"name'79" = getelementptr inbounds %edge_t, %edge_t* %edge78, i32 0, i32 0
  %"data'80" = getelementptr inbounds %edge_t, %edge_t* %edge78, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'79", align 8
  store %node_struct* null, %node_struct** %"data'80", align 8
  store %edge_t* %edge78, %edge_t** @edge2, align 8
  store %edge_t* %myEdgeStruct73, %edge_t** @edge2, align 8
  %"lvar'81" = load %edge_t*, %edge_t** @edge2, align 8
  %temp82 = getelementptr inbounds %edge_t, %edge_t* %"lvar'81", i32 0, i32 2
  store i32 8, i32* %temp82, align 4
  %node383 = load %node_struct*, %node_struct** @node3, align 8
  %node6 = load %node_struct*, %node_struct** @node6, align 8
  %malloccall84 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct85 = bitcast i8* %malloccall84 to %edge_t*
  %"name'86" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct85, i32 0, i32 0
  %"name'87" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct85, i32 0, i32 1
  %"name'88" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct85, i32 0, i32 2
  store %node_struct* %node383, %node_struct** %"name'86", align 8
  store %node_struct* %node6, %node_struct** %"name'87", align 8
  store i32 0, i32* %"name'88", align 4
  %malloccall89 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge90 = bitcast i8* %malloccall89 to %edge_t*
  %"name'91" = getelementptr inbounds %edge_t, %edge_t* %edge90, i32 0, i32 0
  %"data'92" = getelementptr inbounds %edge_t, %edge_t* %edge90, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'91", align 8
  store %node_struct* null, %node_struct** %"data'92", align 8
  store %edge_t* %edge90, %edge_t** @edge3, align 8
  store %edge_t* %myEdgeStruct85, %edge_t** @edge3, align 8
  %"lvar'93" = load %edge_t*, %edge_t** @edge3, align 8
  %temp94 = getelementptr inbounds %edge_t, %edge_t* %"lvar'93", i32 0, i32 2
  store i32 9, i32* %temp94, align 4
  %malloccall95 = tail call i8* @malloc(i32 ptrtoint (%graph_tt* getelementptr (%graph_tt, %graph_tt* null, i32 1) to i32))
  %node96 = bitcast i8* %malloccall95 to %graph_tt*
  %"name'97" = getelementptr inbounds %graph_tt, %graph_tt* %node96, i32 0, i32 0
  %"data'98" = getelementptr inbounds %graph_tt, %graph_tt* %node96, i32 0, i32 1
  store %node_node* null, %node_node** %"name'97", align 8
  store %edge_node* null, %edge_node** %"data'98", align 8
  store %graph_tt* %node96, %graph_tt** @g, align 8
  %node199 = load %node_struct*, %node_struct** @node1, align 8
  %graph_ptr = load %graph_tt*, %graph_tt** @g, align 8
  %nodes = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr, i32 0, i32 0
  %nodes_hd = load %node_node*, %node_node** %nodes, align 8
  %malloccall100 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node = bitcast i8* %malloccall100 to %node_node*
  %"lst_rst'" = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 1
  %node_ptr = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 0
  store %node_node* %nodes_hd, %node_node** %"lst_rst'", align 8
  store %node_struct* %node199, %node_struct** %node_ptr, align 8
  store %node_node* %new_node, %node_node** %nodes, align 8
  %node2101 = load %node_struct*, %node_struct** @node2, align 8
  %graph_ptr102 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes103 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr102, i32 0, i32 0
  %nodes_hd104 = load %node_node*, %node_node** %nodes103, align 8
  %malloccall105 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node106 = bitcast i8* %malloccall105 to %node_node*
  %"lst_rst'107" = getelementptr inbounds %node_node, %node_node* %new_node106, i32 0, i32 1
  %node_ptr108 = getelementptr inbounds %node_node, %node_node* %new_node106, i32 0, i32 0
  store %node_node* %nodes_hd104, %node_node** %"lst_rst'107", align 8
  store %node_struct* %node2101, %node_struct** %node_ptr108, align 8
  store %node_node* %new_node106, %node_node** %nodes103, align 8
  %node3109 = load %node_struct*, %node_struct** @node3, align 8
  %graph_ptr110 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes111 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr110, i32 0, i32 0
  %nodes_hd112 = load %node_node*, %node_node** %nodes111, align 8
  %malloccall113 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node114 = bitcast i8* %malloccall113 to %node_node*
  %"lst_rst'115" = getelementptr inbounds %node_node, %node_node* %new_node114, i32 0, i32 1
  %node_ptr116 = getelementptr inbounds %node_node, %node_node* %new_node114, i32 0, i32 0
  store %node_node* %nodes_hd112, %node_node** %"lst_rst'115", align 8
  store %node_struct* %node3109, %node_struct** %node_ptr116, align 8
  store %node_node* %new_node114, %node_node** %nodes111, align 8
  %node4117 = load %node_struct*, %node_struct** @node4, align 8
  %graph_ptr118 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes119 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr118, i32 0, i32 0
  %nodes_hd120 = load %node_node*, %node_node** %nodes119, align 8
  %malloccall121 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node122 = bitcast i8* %malloccall121 to %node_node*
  %"lst_rst'123" = getelementptr inbounds %node_node, %node_node* %new_node122, i32 0, i32 1
  %node_ptr124 = getelementptr inbounds %node_node, %node_node* %new_node122, i32 0, i32 0
  store %node_node* %nodes_hd120, %node_node** %"lst_rst'123", align 8
  store %node_struct* %node4117, %node_struct** %node_ptr124, align 8
  store %node_node* %new_node122, %node_node** %nodes119, align 8
  %node5125 = load %node_struct*, %node_struct** @node5, align 8
  %graph_ptr126 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes127 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr126, i32 0, i32 0
  %nodes_hd128 = load %node_node*, %node_node** %nodes127, align 8
  %malloccall129 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node130 = bitcast i8* %malloccall129 to %node_node*
  %"lst_rst'131" = getelementptr inbounds %node_node, %node_node* %new_node130, i32 0, i32 1
  %node_ptr132 = getelementptr inbounds %node_node, %node_node* %new_node130, i32 0, i32 0
  store %node_node* %nodes_hd128, %node_node** %"lst_rst'131", align 8
  store %node_struct* %node5125, %node_struct** %node_ptr132, align 8
  store %node_node* %new_node130, %node_node** %nodes127, align 8
  %node6133 = load %node_struct*, %node_struct** @node6, align 8
  %graph_ptr134 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes135 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr134, i32 0, i32 0
  %nodes_hd136 = load %node_node*, %node_node** %nodes135, align 8
  %malloccall137 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node138 = bitcast i8* %malloccall137 to %node_node*
  %"lst_rst'139" = getelementptr inbounds %node_node, %node_node* %new_node138, i32 0, i32 1
  %node_ptr140 = getelementptr inbounds %node_node, %node_node* %new_node138, i32 0, i32 0
  store %node_node* %nodes_hd136, %node_node** %"lst_rst'139", align 8
  store %node_struct* %node6133, %node_struct** %node_ptr140, align 8
  store %node_node* %new_node138, %node_node** %nodes135, align 8
  %edge1 = load %edge_t*, %edge_t** @edge1, align 8
  %graph_ptr141 = load %graph_tt*, %graph_tt** @g, align 8
  %edges = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr141, i32 0, i32 1
  %edges_hd = load %edge_node*, %edge_node** %edges, align 8
  %malloccall142 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge = bitcast i8* %malloccall142 to %edge_node*
  %"lst_rst'143" = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 1
  %edge_ptr = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 0
  store %edge_node* %edges_hd, %edge_node** %"lst_rst'143", align 8
  store %edge_t* %edge1, %edge_t** %edge_ptr, align 8
  %src_ptr = getelementptr inbounds %edge_t, %edge_t* %edge1, i32 0, i32 0
  %dst_ptr = getelementptr inbounds %edge_t, %edge_t* %edge1, i32 0, i32 1
  %"src'" = load %node_struct*, %node_struct** %src_ptr, align 8
  %"dst'" = load %node_struct*, %node_struct** %dst_ptr, align 8
  %ret_true = alloca i1, align 1
  store i1 false, i1* %ret_true, align 1
  %graph_ptr144 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes145 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr144, i32 0, i32 0
  %head = load %node_node*, %node_node** %nodes145, align 8
  store %node_node* %head, %node_node** @llNodes, align 8
  br label %while

while:                                            ; preds = %entry, %else
  %putMeHere = load %node_node*, %node_node** @llNodes, align 8
  %curr = icmp ne %node_node* %putMeHere, null
  br i1 %curr, label %while_body, label %merge

while_body:                                       ; preds = %while
  %putMeHere146 = load %node_node*, %node_node** @llNodes, align 8
  %nodes147 = getelementptr inbounds %node_node, %node_node* %putMeHere146, i32 0, i32 0
  %"stored_node'" = load %node_struct*, %node_struct** %nodes147, align 8
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
  %ret_true148 = alloca i1, align 1
  store i1 false, i1* %ret_true148, align 1
  %graph_ptr149 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes150 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr149, i32 0, i32 0
  %head151 = load %node_node*, %node_node** %nodes150, align 8
  store %node_node* %head151, %node_node** @llNodes.1, align 8
  br label %while152

while152:                                         ; preds = %merge, %else161
  %putMeHere153 = load %node_node*, %node_node** @llNodes.1, align 8
  %curr154 = icmp ne %node_node* %putMeHere153, null
  br i1 %curr154, label %while_body155, label %merge162

while_body155:                                    ; preds = %while152
  %putMeHere156 = load %node_node*, %node_node** @llNodes.1, align 8
  %nodes157 = getelementptr inbounds %node_node, %node_node* %putMeHere156, i32 0, i32 0
  %"stored_node'158" = load %node_struct*, %node_struct** %nodes157, align 8
  br label %if159

if159:                                            ; preds = %while_body155
  %"found?163" = icmp eq %node_struct* %"stored_node'158", %"dst'"
  br i1 %"found?163", label %then160, label %else161

then160:                                          ; preds = %if159
  store i1 true, i1* %ret_true148, align 1
  br label %merge162

else161:                                          ; preds = %if159
  %toBeHere164 = load %node_node*, %node_node** @llNodes.1, align 8
  %llNodesPtr165 = getelementptr inbounds %node_node, %node_node* %toBeHere164, i32 0, i32 1
  %toBeHerenow166 = load %node_node*, %node_node** %llNodesPtr165, align 8
  store %node_node* %toBeHerenow166, %node_node** @llNodes.1, align 8
  br label %while152

merge162:                                         ; preds = %while152, %then160
  %returnVal167 = load i1, i1* %ret_true148, align 1
  br label %if168

if168:                                            ; preds = %merge162
  br i1 %returnVal, label %merge170, label %else169

else169:                                          ; preds = %if168
  %graph_ptr171 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes172 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr171, i32 0, i32 0
  %nodes_hd173 = load %node_node*, %node_node** %nodes172, align 8
  %malloccall174 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node175 = bitcast i8* %malloccall174 to %node_node*
  %"lst_rst'176" = getelementptr inbounds %node_node, %node_node* %new_node175, i32 0, i32 1
  %node_ptr177 = getelementptr inbounds %node_node, %node_node* %new_node175, i32 0, i32 0
  store %node_node* %nodes_hd173, %node_node** %"lst_rst'176", align 8
  store %node_struct* %"src'", %node_struct** %node_ptr177, align 8
  store %node_node* %new_node175, %node_node** %nodes172, align 8
  br label %merge170

merge170:                                         ; preds = %else169, %if168
  br label %if178

if178:                                            ; preds = %merge170
  br i1 %returnVal167, label %merge180, label %else179

else179:                                          ; preds = %if178
  %graph_ptr181 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes182 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr181, i32 0, i32 0
  %nodes_hd183 = load %node_node*, %node_node** %nodes182, align 8
  %malloccall184 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node185 = bitcast i8* %malloccall184 to %node_node*
  %"lst_rst'186" = getelementptr inbounds %node_node, %node_node* %new_node185, i32 0, i32 1
  %node_ptr187 = getelementptr inbounds %node_node, %node_node* %new_node185, i32 0, i32 0
  store %node_node* %nodes_hd183, %node_node** %"lst_rst'186", align 8
  store %node_struct* %"dst'", %node_struct** %node_ptr187, align 8
  store %node_node* %new_node185, %node_node** %nodes182, align 8
  br label %merge180

merge180:                                         ; preds = %else179, %if178
  store %edge_node* %new_edge, %edge_node** %edges, align 8
  %edge2 = load %edge_t*, %edge_t** @edge2, align 8
  %graph_ptr188 = load %graph_tt*, %graph_tt** @g, align 8
  %edges189 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr188, i32 0, i32 1
  %edges_hd190 = load %edge_node*, %edge_node** %edges189, align 8
  %malloccall191 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge192 = bitcast i8* %malloccall191 to %edge_node*
  %"lst_rst'193" = getelementptr inbounds %edge_node, %edge_node* %new_edge192, i32 0, i32 1
  %edge_ptr194 = getelementptr inbounds %edge_node, %edge_node* %new_edge192, i32 0, i32 0
  store %edge_node* %edges_hd190, %edge_node** %"lst_rst'193", align 8
  store %edge_t* %edge2, %edge_t** %edge_ptr194, align 8
  %src_ptr195 = getelementptr inbounds %edge_t, %edge_t* %edge2, i32 0, i32 0
  %dst_ptr196 = getelementptr inbounds %edge_t, %edge_t* %edge2, i32 0, i32 1
  %"src'197" = load %node_struct*, %node_struct** %src_ptr195, align 8
  %"dst'198" = load %node_struct*, %node_struct** %dst_ptr196, align 8
  %ret_true199 = alloca i1, align 1
  store i1 false, i1* %ret_true199, align 1
  %graph_ptr200 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes201 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr200, i32 0, i32 0
  %head202 = load %node_node*, %node_node** %nodes201, align 8
  store %node_node* %head202, %node_node** @llNodes.2, align 8
  br label %while203

while203:                                         ; preds = %merge180, %else212
  %putMeHere204 = load %node_node*, %node_node** @llNodes.2, align 8
  %curr205 = icmp ne %node_node* %putMeHere204, null
  br i1 %curr205, label %while_body206, label %merge213

while_body206:                                    ; preds = %while203
  %putMeHere207 = load %node_node*, %node_node** @llNodes.2, align 8
  %nodes208 = getelementptr inbounds %node_node, %node_node* %putMeHere207, i32 0, i32 0
  %"stored_node'209" = load %node_struct*, %node_struct** %nodes208, align 8
  br label %if210

if210:                                            ; preds = %while_body206
  %"found?214" = icmp eq %node_struct* %"stored_node'209", %"src'197"
  br i1 %"found?214", label %then211, label %else212

then211:                                          ; preds = %if210
  store i1 true, i1* %ret_true199, align 1
  br label %merge213

else212:                                          ; preds = %if210
  %toBeHere215 = load %node_node*, %node_node** @llNodes.2, align 8
  %llNodesPtr216 = getelementptr inbounds %node_node, %node_node* %toBeHere215, i32 0, i32 1
  %toBeHerenow217 = load %node_node*, %node_node** %llNodesPtr216, align 8
  store %node_node* %toBeHerenow217, %node_node** @llNodes.2, align 8
  br label %while203

merge213:                                         ; preds = %while203, %then211
  %returnVal218 = load i1, i1* %ret_true199, align 1
  %ret_true219 = alloca i1, align 1
  store i1 false, i1* %ret_true219, align 1
  %graph_ptr220 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes221 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr220, i32 0, i32 0
  %head222 = load %node_node*, %node_node** %nodes221, align 8
  store %node_node* %head222, %node_node** @llNodes.3, align 8
  br label %while223

while223:                                         ; preds = %merge213, %else232
  %putMeHere224 = load %node_node*, %node_node** @llNodes.3, align 8
  %curr225 = icmp ne %node_node* %putMeHere224, null
  br i1 %curr225, label %while_body226, label %merge233

while_body226:                                    ; preds = %while223
  %putMeHere227 = load %node_node*, %node_node** @llNodes.3, align 8
  %nodes228 = getelementptr inbounds %node_node, %node_node* %putMeHere227, i32 0, i32 0
  %"stored_node'229" = load %node_struct*, %node_struct** %nodes228, align 8
  br label %if230

if230:                                            ; preds = %while_body226
  %"found?234" = icmp eq %node_struct* %"stored_node'229", %"dst'198"
  br i1 %"found?234", label %then231, label %else232

then231:                                          ; preds = %if230
  store i1 true, i1* %ret_true219, align 1
  br label %merge233

else232:                                          ; preds = %if230
  %toBeHere235 = load %node_node*, %node_node** @llNodes.3, align 8
  %llNodesPtr236 = getelementptr inbounds %node_node, %node_node* %toBeHere235, i32 0, i32 1
  %toBeHerenow237 = load %node_node*, %node_node** %llNodesPtr236, align 8
  store %node_node* %toBeHerenow237, %node_node** @llNodes.3, align 8
  br label %while223

merge233:                                         ; preds = %while223, %then231
  %returnVal238 = load i1, i1* %ret_true219, align 1
  br label %if239

if239:                                            ; preds = %merge233
  br i1 %returnVal218, label %merge241, label %else240

else240:                                          ; preds = %if239
  %graph_ptr242 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes243 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr242, i32 0, i32 0
  %nodes_hd244 = load %node_node*, %node_node** %nodes243, align 8
  %malloccall245 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node246 = bitcast i8* %malloccall245 to %node_node*
  %"lst_rst'247" = getelementptr inbounds %node_node, %node_node* %new_node246, i32 0, i32 1
  %node_ptr248 = getelementptr inbounds %node_node, %node_node* %new_node246, i32 0, i32 0
  store %node_node* %nodes_hd244, %node_node** %"lst_rst'247", align 8
  store %node_struct* %"src'197", %node_struct** %node_ptr248, align 8
  store %node_node* %new_node246, %node_node** %nodes243, align 8
  br label %merge241

merge241:                                         ; preds = %else240, %if239
  br label %if249

if249:                                            ; preds = %merge241
  br i1 %returnVal238, label %merge251, label %else250

else250:                                          ; preds = %if249
  %graph_ptr252 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes253 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr252, i32 0, i32 0
  %nodes_hd254 = load %node_node*, %node_node** %nodes253, align 8
  %malloccall255 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node256 = bitcast i8* %malloccall255 to %node_node*
  %"lst_rst'257" = getelementptr inbounds %node_node, %node_node* %new_node256, i32 0, i32 1
  %node_ptr258 = getelementptr inbounds %node_node, %node_node* %new_node256, i32 0, i32 0
  store %node_node* %nodes_hd254, %node_node** %"lst_rst'257", align 8
  store %node_struct* %"dst'198", %node_struct** %node_ptr258, align 8
  store %node_node* %new_node256, %node_node** %nodes253, align 8
  br label %merge251

merge251:                                         ; preds = %else250, %if249
  store %edge_node* %new_edge192, %edge_node** %edges189, align 8
  %edge3 = load %edge_t*, %edge_t** @edge3, align 8
  %graph_ptr259 = load %graph_tt*, %graph_tt** @g, align 8
  %edges260 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr259, i32 0, i32 1
  %edges_hd261 = load %edge_node*, %edge_node** %edges260, align 8
  %malloccall262 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge263 = bitcast i8* %malloccall262 to %edge_node*
  %"lst_rst'264" = getelementptr inbounds %edge_node, %edge_node* %new_edge263, i32 0, i32 1
  %edge_ptr265 = getelementptr inbounds %edge_node, %edge_node* %new_edge263, i32 0, i32 0
  store %edge_node* %edges_hd261, %edge_node** %"lst_rst'264", align 8
  store %edge_t* %edge3, %edge_t** %edge_ptr265, align 8
  %src_ptr266 = getelementptr inbounds %edge_t, %edge_t* %edge3, i32 0, i32 0
  %dst_ptr267 = getelementptr inbounds %edge_t, %edge_t* %edge3, i32 0, i32 1
  %"src'268" = load %node_struct*, %node_struct** %src_ptr266, align 8
  %"dst'269" = load %node_struct*, %node_struct** %dst_ptr267, align 8
  %ret_true270 = alloca i1, align 1
  store i1 false, i1* %ret_true270, align 1
  %graph_ptr271 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes272 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr271, i32 0, i32 0
  %head273 = load %node_node*, %node_node** %nodes272, align 8
  store %node_node* %head273, %node_node** @llNodes.4, align 8
  br label %while274

while274:                                         ; preds = %merge251, %else283
  %putMeHere275 = load %node_node*, %node_node** @llNodes.4, align 8
  %curr276 = icmp ne %node_node* %putMeHere275, null
  br i1 %curr276, label %while_body277, label %merge284

while_body277:                                    ; preds = %while274
  %putMeHere278 = load %node_node*, %node_node** @llNodes.4, align 8
  %nodes279 = getelementptr inbounds %node_node, %node_node* %putMeHere278, i32 0, i32 0
  %"stored_node'280" = load %node_struct*, %node_struct** %nodes279, align 8
  br label %if281

if281:                                            ; preds = %while_body277
  %"found?285" = icmp eq %node_struct* %"stored_node'280", %"src'268"
  br i1 %"found?285", label %then282, label %else283

then282:                                          ; preds = %if281
  store i1 true, i1* %ret_true270, align 1
  br label %merge284

else283:                                          ; preds = %if281
  %toBeHere286 = load %node_node*, %node_node** @llNodes.4, align 8
  %llNodesPtr287 = getelementptr inbounds %node_node, %node_node* %toBeHere286, i32 0, i32 1
  %toBeHerenow288 = load %node_node*, %node_node** %llNodesPtr287, align 8
  store %node_node* %toBeHerenow288, %node_node** @llNodes.4, align 8
  br label %while274

merge284:                                         ; preds = %while274, %then282
  %returnVal289 = load i1, i1* %ret_true270, align 1
  %ret_true290 = alloca i1, align 1
  store i1 false, i1* %ret_true290, align 1
  %graph_ptr291 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes292 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr291, i32 0, i32 0
  %head293 = load %node_node*, %node_node** %nodes292, align 8
  store %node_node* %head293, %node_node** @llNodes.5, align 8
  br label %while294

while294:                                         ; preds = %merge284, %else303
  %putMeHere295 = load %node_node*, %node_node** @llNodes.5, align 8
  %curr296 = icmp ne %node_node* %putMeHere295, null
  br i1 %curr296, label %while_body297, label %merge304

while_body297:                                    ; preds = %while294
  %putMeHere298 = load %node_node*, %node_node** @llNodes.5, align 8
  %nodes299 = getelementptr inbounds %node_node, %node_node* %putMeHere298, i32 0, i32 0
  %"stored_node'300" = load %node_struct*, %node_struct** %nodes299, align 8
  br label %if301

if301:                                            ; preds = %while_body297
  %"found?305" = icmp eq %node_struct* %"stored_node'300", %"dst'269"
  br i1 %"found?305", label %then302, label %else303

then302:                                          ; preds = %if301
  store i1 true, i1* %ret_true290, align 1
  br label %merge304

else303:                                          ; preds = %if301
  %toBeHere306 = load %node_node*, %node_node** @llNodes.5, align 8
  %llNodesPtr307 = getelementptr inbounds %node_node, %node_node* %toBeHere306, i32 0, i32 1
  %toBeHerenow308 = load %node_node*, %node_node** %llNodesPtr307, align 8
  store %node_node* %toBeHerenow308, %node_node** @llNodes.5, align 8
  br label %while294

merge304:                                         ; preds = %while294, %then302
  %returnVal309 = load i1, i1* %ret_true290, align 1
  br label %if310

if310:                                            ; preds = %merge304
  br i1 %returnVal289, label %merge312, label %else311

else311:                                          ; preds = %if310
  %graph_ptr313 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes314 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr313, i32 0, i32 0
  %nodes_hd315 = load %node_node*, %node_node** %nodes314, align 8
  %malloccall316 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node317 = bitcast i8* %malloccall316 to %node_node*
  %"lst_rst'318" = getelementptr inbounds %node_node, %node_node* %new_node317, i32 0, i32 1
  %node_ptr319 = getelementptr inbounds %node_node, %node_node* %new_node317, i32 0, i32 0
  store %node_node* %nodes_hd315, %node_node** %"lst_rst'318", align 8
  store %node_struct* %"src'268", %node_struct** %node_ptr319, align 8
  store %node_node* %new_node317, %node_node** %nodes314, align 8
  br label %merge312

merge312:                                         ; preds = %else311, %if310
  br label %if320

if320:                                            ; preds = %merge312
  br i1 %returnVal309, label %merge322, label %else321

else321:                                          ; preds = %if320
  %graph_ptr323 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes324 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr323, i32 0, i32 0
  %nodes_hd325 = load %node_node*, %node_node** %nodes324, align 8
  %malloccall326 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node327 = bitcast i8* %malloccall326 to %node_node*
  %"lst_rst'328" = getelementptr inbounds %node_node, %node_node* %new_node327, i32 0, i32 1
  %node_ptr329 = getelementptr inbounds %node_node, %node_node* %new_node327, i32 0, i32 0
  store %node_node* %nodes_hd325, %node_node** %"lst_rst'328", align 8
  store %node_struct* %"dst'269", %node_struct** %node_ptr329, align 8
  store %node_node* %new_node327, %node_node** %nodes324, align 8
  br label %merge322

merge322:                                         ; preds = %else321, %if320
  store %edge_node* %new_edge263, %edge_node** %edges260, align 8
  %graph_ptr330 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes331 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr330, i32 0, i32 0
  %head332 = load %node_node*, %node_node** %nodes331, align 8
  store %node_node* %head332, %node_node** @llNodes.6, align 8
  br label %while333

while333:                                         ; preds = %merge322, %else340
  %putMeHere334 = load %node_node*, %node_node** @llNodes.6, align 8
  %curr335 = icmp ne %node_node* %putMeHere334, null
  br i1 %curr335, label %while_body336, label %merge341

while_body336:                                    ; preds = %while333
  %putMeHere337 = load %node_node*, %node_node** @llNodes.6, align 8
  %nodes338 = getelementptr inbounds %node_node, %node_node* %putMeHere337, i32 0, i32 0
  %"stored_nodeA'" = load %node_struct*, %node_struct** %nodes338, align 8
  br label %then339

then339:                                          ; preds = %while_body336
  %malloccall342 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node343 = bitcast i8* %malloccall342 to %list_node*
  %nodes344 = getelementptr inbounds %list_node, %list_node* %node343, i32 0, i32 0
  %nodes345 = getelementptr inbounds %list_node, %list_node* %node343, i32 0, i32 1
  %malloccall346 = tail call i8* @malloc(i32 ptrtoint (%node_struct** getelementptr (%node_struct*, %node_struct** null, i32 1) to i32))
  %please_work = bitcast i8* %malloccall346 to %node_struct**
  store %node_struct* %"stored_nodeA'", %node_struct** %please_work, align 8
  %currNodeVoidPtr = bitcast %node_struct** %please_work to i8*
  store i8* %currNodeVoidPtr, i8** %nodes344, align 8
  %nextNodes = load %list_node*, %list_node** @nodesList, align 8
  store %list_node* %nextNodes, %list_node** %nodes345, align 8
  store %list_node* %node343, %list_node** @nodesList, align 8
  br label %else340

else340:                                          ; preds = %then339
  %toBeHere347 = load %node_node*, %node_node** @llNodes.6, align 8
  %llNodesPtr348 = getelementptr inbounds %node_node, %node_node* %toBeHere347, i32 0, i32 1
  %toBeHerenow349 = load %node_node*, %node_node** %llNodesPtr348, align 8
  store %node_node* %toBeHerenow349, %node_node** @llNodes.6, align 8
  br label %while333

merge341:                                         ; preds = %while333
  %return = load %list_node*, %list_node** @nodesList, align 8
  store %list_node* %return, %list_node** @l, align 8
  %list = load %list_node*, %list_node** @l, align 8
  %malloccall350 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %0 = bitcast i8* %malloccall350 to %list_node**
  %malloccall351 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %malloccall351 to i32*
  store %list_node* %list, %list_node** %0, align 8
  store i32 0, i32* %1, align 4
  br label %traverse_loop

traverse_loop:                                    ; preds = %while_body352, %merge341
  %2 = load i32, i32* %1, align 4
  %temp355 = icmp ne i32 %2, 0
  br i1 %temp355, label %while_body352, label %merge356

while_body352:                                    ; preds = %traverse_loop
  %3 = load %list_node*, %list_node** %0, align 8
  %temp353 = getelementptr inbounds %list_node, %list_node* %3, i32 0, i32 1
  %temp354 = load %list_node*, %list_node** %temp353, align 8
  %4 = load i32, i32* %1, align 4
  %subtract = sub i32 %4, 1
  store i32 %subtract, i32* %1, align 4
  store %list_node* %temp354, %list_node** %0, align 8
  br label %traverse_loop

merge356:                                         ; preds = %traverse_loop
  %5 = load %list_node*, %list_node** %0, align 8
  %temp357 = getelementptr inbounds %list_node, %list_node* %5, i32 0, i32 0
  %retval = load i8*, i8** %temp357, align 8
  %li_conv = bitcast i8* %retval to %node_struct**
  %val_ptr = load %node_struct*, %node_struct** %li_conv, align 8
  %malloccall358 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node359 = bitcast i8* %malloccall358 to %node_struct*
  %malloccall360 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data361 = bitcast i8* %malloccall360 to i8**
  %malloccall362 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name363 = bitcast i8* %malloccall362 to i8**
  %data_ptr364 = bitcast i8** %data361 to i8*
  %name_ptr365 = bitcast i8** %name363 to i8*
  %"name'366" = getelementptr inbounds %node_struct, %node_struct* %node359, i32 0, i32 0
  %"data'367" = getelementptr inbounds %node_struct, %node_struct* %node359, i32 0, i32 2
  store i8* %name_ptr365, i8** %"name'366", align 8
  store i8* %data_ptr364, i8** %"data'367", align 8
  store %node_struct* %node359, %node_struct** @node1_prime, align 8
  store %node_struct* %val_ptr, %node_struct** @node1_prime, align 8
  %list368 = load %list_node*, %list_node** @l, align 8
  %malloccall369 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %6 = bitcast i8* %malloccall369 to %list_node**
  %malloccall370 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %7 = bitcast i8* %malloccall370 to i32*
  store %list_node* %list368, %list_node** %6, align 8
  store i32 1, i32* %7, align 4
  br label %traverse_loop371

traverse_loop371:                                 ; preds = %while_body372, %merge356
  %8 = load i32, i32* %7, align 4
  %temp376 = icmp ne i32 %8, 0
  br i1 %temp376, label %while_body372, label %merge377

while_body372:                                    ; preds = %traverse_loop371
  %9 = load %list_node*, %list_node** %6, align 8
  %temp373 = getelementptr inbounds %list_node, %list_node* %9, i32 0, i32 1
  %temp374 = load %list_node*, %list_node** %temp373, align 8
  %10 = load i32, i32* %7, align 4
  %subtract375 = sub i32 %10, 1
  store i32 %subtract375, i32* %7, align 4
  store %list_node* %temp374, %list_node** %6, align 8
  br label %traverse_loop371

merge377:                                         ; preds = %traverse_loop371
  %11 = load %list_node*, %list_node** %6, align 8
  %temp378 = getelementptr inbounds %list_node, %list_node* %11, i32 0, i32 0
  %retval379 = load i8*, i8** %temp378, align 8
  %li_conv380 = bitcast i8* %retval379 to %node_struct**
  %val_ptr381 = load %node_struct*, %node_struct** %li_conv380, align 8
  %malloccall382 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node384 = bitcast i8* %malloccall382 to %node_struct*
  %malloccall385 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data386 = bitcast i8* %malloccall385 to i8**
  %malloccall387 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name388 = bitcast i8* %malloccall387 to i8**
  %data_ptr389 = bitcast i8** %data386 to i8*
  %name_ptr390 = bitcast i8** %name388 to i8*
  %"name'391" = getelementptr inbounds %node_struct, %node_struct* %node384, i32 0, i32 0
  %"data'392" = getelementptr inbounds %node_struct, %node_struct* %node384, i32 0, i32 2
  store i8* %name_ptr390, i8** %"name'391", align 8
  store i8* %data_ptr389, i8** %"data'392", align 8
  store %node_struct* %node384, %node_struct** @node2_prime, align 8
  store %node_struct* %val_ptr381, %node_struct** @node2_prime, align 8
  %list393 = load %list_node*, %list_node** @l, align 8
  %malloccall394 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %12 = bitcast i8* %malloccall394 to %list_node**
  %malloccall395 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %13 = bitcast i8* %malloccall395 to i32*
  store %list_node* %list393, %list_node** %12, align 8
  store i32 2, i32* %13, align 4
  br label %traverse_loop396

traverse_loop396:                                 ; preds = %while_body397, %merge377
  %14 = load i32, i32* %13, align 4
  %temp401 = icmp ne i32 %14, 0
  br i1 %temp401, label %while_body397, label %merge402

while_body397:                                    ; preds = %traverse_loop396
  %15 = load %list_node*, %list_node** %12, align 8
  %temp398 = getelementptr inbounds %list_node, %list_node* %15, i32 0, i32 1
  %temp399 = load %list_node*, %list_node** %temp398, align 8
  %16 = load i32, i32* %13, align 4
  %subtract400 = sub i32 %16, 1
  store i32 %subtract400, i32* %13, align 4
  store %list_node* %temp399, %list_node** %12, align 8
  br label %traverse_loop396

merge402:                                         ; preds = %traverse_loop396
  %17 = load %list_node*, %list_node** %12, align 8
  %temp403 = getelementptr inbounds %list_node, %list_node* %17, i32 0, i32 0
  %retval404 = load i8*, i8** %temp403, align 8
  %li_conv405 = bitcast i8* %retval404 to %node_struct**
  %val_ptr406 = load %node_struct*, %node_struct** %li_conv405, align 8
  %malloccall407 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node408 = bitcast i8* %malloccall407 to %node_struct*
  %malloccall409 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data410 = bitcast i8* %malloccall409 to i8**
  %malloccall411 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name412 = bitcast i8* %malloccall411 to i8**
  %data_ptr413 = bitcast i8** %data410 to i8*
  %name_ptr414 = bitcast i8** %name412 to i8*
  %"name'415" = getelementptr inbounds %node_struct, %node_struct* %node408, i32 0, i32 0
  %"data'416" = getelementptr inbounds %node_struct, %node_struct* %node408, i32 0, i32 2
  store i8* %name_ptr414, i8** %"name'415", align 8
  store i8* %data_ptr413, i8** %"data'416", align 8
  store %node_struct* %node408, %node_struct** @node3_prime, align 8
  store %node_struct* %val_ptr406, %node_struct** @node3_prime, align 8
  %list417 = load %list_node*, %list_node** @l, align 8
  %malloccall418 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %18 = bitcast i8* %malloccall418 to %list_node**
  %malloccall419 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %19 = bitcast i8* %malloccall419 to i32*
  store %list_node* %list417, %list_node** %18, align 8
  store i32 3, i32* %19, align 4
  br label %traverse_loop420

traverse_loop420:                                 ; preds = %while_body421, %merge402
  %20 = load i32, i32* %19, align 4
  %temp425 = icmp ne i32 %20, 0
  br i1 %temp425, label %while_body421, label %merge426

while_body421:                                    ; preds = %traverse_loop420
  %21 = load %list_node*, %list_node** %18, align 8
  %temp422 = getelementptr inbounds %list_node, %list_node* %21, i32 0, i32 1
  %temp423 = load %list_node*, %list_node** %temp422, align 8
  %22 = load i32, i32* %19, align 4
  %subtract424 = sub i32 %22, 1
  store i32 %subtract424, i32* %19, align 4
  store %list_node* %temp423, %list_node** %18, align 8
  br label %traverse_loop420

merge426:                                         ; preds = %traverse_loop420
  %23 = load %list_node*, %list_node** %18, align 8
  %temp427 = getelementptr inbounds %list_node, %list_node* %23, i32 0, i32 0
  %retval428 = load i8*, i8** %temp427, align 8
  %li_conv429 = bitcast i8* %retval428 to %node_struct**
  %val_ptr430 = load %node_struct*, %node_struct** %li_conv429, align 8
  %malloccall431 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node432 = bitcast i8* %malloccall431 to %node_struct*
  %malloccall433 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data434 = bitcast i8* %malloccall433 to i8**
  %malloccall435 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name436 = bitcast i8* %malloccall435 to i8**
  %data_ptr437 = bitcast i8** %data434 to i8*
  %name_ptr438 = bitcast i8** %name436 to i8*
  %"name'439" = getelementptr inbounds %node_struct, %node_struct* %node432, i32 0, i32 0
  %"data'440" = getelementptr inbounds %node_struct, %node_struct* %node432, i32 0, i32 2
  store i8* %name_ptr438, i8** %"name'439", align 8
  store i8* %data_ptr437, i8** %"data'440", align 8
  store %node_struct* %node432, %node_struct** @node4_prime, align 8
  store %node_struct* %val_ptr430, %node_struct** @node4_prime, align 8
  %list441 = load %list_node*, %list_node** @l, align 8
  %malloccall442 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %24 = bitcast i8* %malloccall442 to %list_node**
  %malloccall443 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %25 = bitcast i8* %malloccall443 to i32*
  store %list_node* %list441, %list_node** %24, align 8
  store i32 4, i32* %25, align 4
  br label %traverse_loop444

traverse_loop444:                                 ; preds = %while_body445, %merge426
  %26 = load i32, i32* %25, align 4
  %temp449 = icmp ne i32 %26, 0
  br i1 %temp449, label %while_body445, label %merge450

while_body445:                                    ; preds = %traverse_loop444
  %27 = load %list_node*, %list_node** %24, align 8
  %temp446 = getelementptr inbounds %list_node, %list_node* %27, i32 0, i32 1
  %temp447 = load %list_node*, %list_node** %temp446, align 8
  %28 = load i32, i32* %25, align 4
  %subtract448 = sub i32 %28, 1
  store i32 %subtract448, i32* %25, align 4
  store %list_node* %temp447, %list_node** %24, align 8
  br label %traverse_loop444

merge450:                                         ; preds = %traverse_loop444
  %29 = load %list_node*, %list_node** %24, align 8
  %temp451 = getelementptr inbounds %list_node, %list_node* %29, i32 0, i32 0
  %retval452 = load i8*, i8** %temp451, align 8
  %li_conv453 = bitcast i8* %retval452 to %node_struct**
  %val_ptr454 = load %node_struct*, %node_struct** %li_conv453, align 8
  %malloccall455 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node456 = bitcast i8* %malloccall455 to %node_struct*
  %malloccall457 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data458 = bitcast i8* %malloccall457 to i8**
  %malloccall459 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name460 = bitcast i8* %malloccall459 to i8**
  %data_ptr461 = bitcast i8** %data458 to i8*
  %name_ptr462 = bitcast i8** %name460 to i8*
  %"name'463" = getelementptr inbounds %node_struct, %node_struct* %node456, i32 0, i32 0
  %"data'464" = getelementptr inbounds %node_struct, %node_struct* %node456, i32 0, i32 2
  store i8* %name_ptr462, i8** %"name'463", align 8
  store i8* %data_ptr461, i8** %"data'464", align 8
  store %node_struct* %node456, %node_struct** @node5_prime, align 8
  store %node_struct* %val_ptr454, %node_struct** @node5_prime, align 8
  %list465 = load %list_node*, %list_node** @l, align 8
  %malloccall466 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %30 = bitcast i8* %malloccall466 to %list_node**
  %malloccall467 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %31 = bitcast i8* %malloccall467 to i32*
  store %list_node* %list465, %list_node** %30, align 8
  store i32 5, i32* %31, align 4
  br label %traverse_loop468

traverse_loop468:                                 ; preds = %while_body469, %merge450
  %32 = load i32, i32* %31, align 4
  %temp473 = icmp ne i32 %32, 0
  br i1 %temp473, label %while_body469, label %merge474

while_body469:                                    ; preds = %traverse_loop468
  %33 = load %list_node*, %list_node** %30, align 8
  %temp470 = getelementptr inbounds %list_node, %list_node* %33, i32 0, i32 1
  %temp471 = load %list_node*, %list_node** %temp470, align 8
  %34 = load i32, i32* %31, align 4
  %subtract472 = sub i32 %34, 1
  store i32 %subtract472, i32* %31, align 4
  store %list_node* %temp471, %list_node** %30, align 8
  br label %traverse_loop468

merge474:                                         ; preds = %traverse_loop468
  %35 = load %list_node*, %list_node** %30, align 8
  %temp475 = getelementptr inbounds %list_node, %list_node* %35, i32 0, i32 0
  %retval476 = load i8*, i8** %temp475, align 8
  %li_conv477 = bitcast i8* %retval476 to %node_struct**
  %val_ptr478 = load %node_struct*, %node_struct** %li_conv477, align 8
  %malloccall479 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node480 = bitcast i8* %malloccall479 to %node_struct*
  %malloccall481 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data482 = bitcast i8* %malloccall481 to i8**
  %malloccall483 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name484 = bitcast i8* %malloccall483 to i8**
  %data_ptr485 = bitcast i8** %data482 to i8*
  %name_ptr486 = bitcast i8** %name484 to i8*
  %"name'487" = getelementptr inbounds %node_struct, %node_struct* %node480, i32 0, i32 0
  %"data'488" = getelementptr inbounds %node_struct, %node_struct* %node480, i32 0, i32 2
  store i8* %name_ptr486, i8** %"name'487", align 8
  store i8* %data_ptr485, i8** %"data'488", align 8
  store %node_struct* %node480, %node_struct** @node6_prime, align 8
  store %node_struct* %val_ptr478, %node_struct** @node6_prime, align 8
  %"lvar'489" = load %node_struct*, %node_struct** @node1_prime, align 8
  %temp490 = getelementptr inbounds %node_struct, %node_struct* %"lvar'489", i32 0, i32 0
  %node1_prime.name = load i8*, i8** %temp490, align 8
  %srcNode = load i8*, i8** %temp490, align 8
  store i8* %srcNode, i8** @toPrint1, align 8
  %"lvar'491" = load %node_struct*, %node_struct** @node2_prime, align 8
  %temp492 = getelementptr inbounds %node_struct, %node_struct* %"lvar'491", i32 0, i32 0
  %node2_prime.name = load i8*, i8** %temp492, align 8
  %srcNode493 = load i8*, i8** %temp492, align 8
  store i8* %srcNode493, i8** @toPrint2, align 8
  %"lvar'494" = load %node_struct*, %node_struct** @node3_prime, align 8
  %temp495 = getelementptr inbounds %node_struct, %node_struct* %"lvar'494", i32 0, i32 0
  %node3_prime.name = load i8*, i8** %temp495, align 8
  %srcNode496 = load i8*, i8** %temp495, align 8
  store i8* %srcNode496, i8** @toPrint3, align 8
  %"lvar'497" = load %node_struct*, %node_struct** @node4_prime, align 8
  %temp498 = getelementptr inbounds %node_struct, %node_struct* %"lvar'497", i32 0, i32 0
  %node4_prime.name = load i8*, i8** %temp498, align 8
  %srcNode499 = load i8*, i8** %temp498, align 8
  store i8* %srcNode499, i8** @toPrint4, align 8
  %"lvar'500" = load %node_struct*, %node_struct** @node5_prime, align 8
  %temp501 = getelementptr inbounds %node_struct, %node_struct* %"lvar'500", i32 0, i32 0
  %node5_prime.name = load i8*, i8** %temp501, align 8
  %srcNode502 = load i8*, i8** %temp501, align 8
  store i8* %srcNode502, i8** @toPrint5, align 8
  %"lvar'503" = load %node_struct*, %node_struct** @node6_prime, align 8
  %temp504 = getelementptr inbounds %node_struct, %node_struct* %"lvar'503", i32 0, i32 0
  %node6_prime.name = load i8*, i8** %temp504, align 8
  %srcNode505 = load i8*, i8** %temp504, align 8
  store i8* %srcNode505, i8** @toPrint6, align 8
  %toPrint1 = load i8*, i8** @toPrint1, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i8* %toPrint1)
  %toPrint2 = load i8*, i8** @toPrint2, align 8
  %printf506 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.7, i32 0, i32 0), i8* %toPrint2)
  %toPrint3 = load i8*, i8** @toPrint3, align 8
  %printf507 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.8, i32 0, i32 0), i8* %toPrint3)
  %toPrint4 = load i8*, i8** @toPrint4, align 8
  %printf508 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.9, i32 0, i32 0), i8* %toPrint4)
  %toPrint5 = load i8*, i8** @toPrint5, align 8
  %printf509 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.10, i32 0, i32 0), i8* %toPrint5)
  %toPrint6 = load i8*, i8** @toPrint6, align 8
  %printf510 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.11, i32 0, i32 0), i8* %toPrint6)
  ret i32 0
}

declare noalias i8* @malloc(i32)

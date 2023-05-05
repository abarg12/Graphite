; ModuleID = 'Graphite'
source_filename = "Graphite"

%node_struct = type { i8*, i1, i8* }
%edge_t = type { %node_struct*, %node_struct*, i32 }
%graph_t = type { %node_node*, %edge_node* }
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
@g = global %graph_t zeroinitializer
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
  %node195 = load %node_struct*, %node_struct** @node1, align 8
  %nodes_hd = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall96 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node = bitcast i8* %malloccall96 to %node_node*
  %"lst_rst'" = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 1
  %node_ptr = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 0
  store %node_node* %nodes_hd, %node_node** %"lst_rst'", align 8
  store %node_struct* %node195, %node_struct** %node_ptr, align 8
  store %node_node* %new_node, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %node297 = load %node_struct*, %node_struct** @node2, align 8
  %nodes_hd98 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall99 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node100 = bitcast i8* %malloccall99 to %node_node*
  %"lst_rst'101" = getelementptr inbounds %node_node, %node_node* %new_node100, i32 0, i32 1
  %node_ptr102 = getelementptr inbounds %node_node, %node_node* %new_node100, i32 0, i32 0
  store %node_node* %nodes_hd98, %node_node** %"lst_rst'101", align 8
  store %node_struct* %node297, %node_struct** %node_ptr102, align 8
  store %node_node* %new_node100, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %node3103 = load %node_struct*, %node_struct** @node3, align 8
  %nodes_hd104 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall105 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node106 = bitcast i8* %malloccall105 to %node_node*
  %"lst_rst'107" = getelementptr inbounds %node_node, %node_node* %new_node106, i32 0, i32 1
  %node_ptr108 = getelementptr inbounds %node_node, %node_node* %new_node106, i32 0, i32 0
  store %node_node* %nodes_hd104, %node_node** %"lst_rst'107", align 8
  store %node_struct* %node3103, %node_struct** %node_ptr108, align 8
  store %node_node* %new_node106, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %node4109 = load %node_struct*, %node_struct** @node4, align 8
  %nodes_hd110 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall111 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node112 = bitcast i8* %malloccall111 to %node_node*
  %"lst_rst'113" = getelementptr inbounds %node_node, %node_node* %new_node112, i32 0, i32 1
  %node_ptr114 = getelementptr inbounds %node_node, %node_node* %new_node112, i32 0, i32 0
  store %node_node* %nodes_hd110, %node_node** %"lst_rst'113", align 8
  store %node_struct* %node4109, %node_struct** %node_ptr114, align 8
  store %node_node* %new_node112, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %node5115 = load %node_struct*, %node_struct** @node5, align 8
  %nodes_hd116 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall117 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node118 = bitcast i8* %malloccall117 to %node_node*
  %"lst_rst'119" = getelementptr inbounds %node_node, %node_node* %new_node118, i32 0, i32 1
  %node_ptr120 = getelementptr inbounds %node_node, %node_node* %new_node118, i32 0, i32 0
  store %node_node* %nodes_hd116, %node_node** %"lst_rst'119", align 8
  store %node_struct* %node5115, %node_struct** %node_ptr120, align 8
  store %node_node* %new_node118, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %node6121 = load %node_struct*, %node_struct** @node6, align 8
  %nodes_hd122 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall123 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node124 = bitcast i8* %malloccall123 to %node_node*
  %"lst_rst'125" = getelementptr inbounds %node_node, %node_node* %new_node124, i32 0, i32 1
  %node_ptr126 = getelementptr inbounds %node_node, %node_node* %new_node124, i32 0, i32 0
  store %node_node* %nodes_hd122, %node_node** %"lst_rst'125", align 8
  store %node_struct* %node6121, %node_struct** %node_ptr126, align 8
  store %node_node* %new_node124, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %edge1 = load %edge_t*, %edge_t** @edge1, align 8
  %edges_hd = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %malloccall127 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge = bitcast i8* %malloccall127 to %edge_node*
  %"lst_rst'128" = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 1
  %edge_ptr = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 0
  store %edge_node* %edges_hd, %edge_node** %"lst_rst'128", align 8
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
  %putMeHere129 = load %node_node*, %node_node** @llNodes, align 8
  %nodes = getelementptr inbounds %node_node, %node_node* %putMeHere129, i32 0, i32 0
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
  %ret_true130 = alloca i1, align 1
  store i1 false, i1* %ret_true130, align 1
  %head131 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head131, %node_node** @llNodes.1, align 8
  br label %while132

while132:                                         ; preds = %merge, %else141
  %putMeHere133 = load %node_node*, %node_node** @llNodes.1, align 8
  %curr134 = icmp ne %node_node* %putMeHere133, null
  br i1 %curr134, label %while_body135, label %merge142

while_body135:                                    ; preds = %while132
  %putMeHere136 = load %node_node*, %node_node** @llNodes.1, align 8
  %nodes137 = getelementptr inbounds %node_node, %node_node* %putMeHere136, i32 0, i32 0
  %"stored_node'138" = load %node_struct*, %node_struct** %nodes137, align 8
  br label %if139

if139:                                            ; preds = %while_body135
  %"found?143" = icmp eq %node_struct* %"stored_node'138", %"dst'"
  br i1 %"found?143", label %then140, label %else141

then140:                                          ; preds = %if139
  store i1 true, i1* %ret_true130, align 1
  br label %merge142

else141:                                          ; preds = %if139
  %toBeHere144 = load %node_node*, %node_node** @llNodes.1, align 8
  %llNodesPtr145 = getelementptr inbounds %node_node, %node_node* %toBeHere144, i32 0, i32 1
  %toBeHerenow146 = load %node_node*, %node_node** %llNodesPtr145, align 8
  store %node_node* %toBeHerenow146, %node_node** @llNodes.1, align 8
  br label %while132

merge142:                                         ; preds = %while132, %then140
  %returnVal147 = load i1, i1* %ret_true130, align 1
  br label %if148

if148:                                            ; preds = %merge142
  br i1 %returnVal, label %merge150, label %else149

else149:                                          ; preds = %if148
  %nodes_hd151 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall152 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node153 = bitcast i8* %malloccall152 to %node_node*
  %"lst_rst'154" = getelementptr inbounds %node_node, %node_node* %new_node153, i32 0, i32 1
  %node_ptr155 = getelementptr inbounds %node_node, %node_node* %new_node153, i32 0, i32 0
  store %node_node* %nodes_hd151, %node_node** %"lst_rst'154", align 8
  store %node_struct* %"src'", %node_struct** %node_ptr155, align 8
  store %node_node* %new_node153, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  br label %merge150

merge150:                                         ; preds = %else149, %if148
  br label %if156

if156:                                            ; preds = %merge150
  br i1 %returnVal147, label %merge158, label %else157

else157:                                          ; preds = %if156
  %nodes_hd159 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall160 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node161 = bitcast i8* %malloccall160 to %node_node*
  %"lst_rst'162" = getelementptr inbounds %node_node, %node_node* %new_node161, i32 0, i32 1
  %node_ptr163 = getelementptr inbounds %node_node, %node_node* %new_node161, i32 0, i32 0
  store %node_node* %nodes_hd159, %node_node** %"lst_rst'162", align 8
  store %node_struct* %"dst'", %node_struct** %node_ptr163, align 8
  store %node_node* %new_node161, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  br label %merge158

merge158:                                         ; preds = %else157, %if156
  store %edge_node* %new_edge, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %edge2 = load %edge_t*, %edge_t** @edge2, align 8
  %edges_hd164 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %malloccall165 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge166 = bitcast i8* %malloccall165 to %edge_node*
  %"lst_rst'167" = getelementptr inbounds %edge_node, %edge_node* %new_edge166, i32 0, i32 1
  %edge_ptr168 = getelementptr inbounds %edge_node, %edge_node* %new_edge166, i32 0, i32 0
  store %edge_node* %edges_hd164, %edge_node** %"lst_rst'167", align 8
  store %edge_t* %edge2, %edge_t** %edge_ptr168, align 8
  %src_ptr169 = getelementptr inbounds %edge_t, %edge_t* %edge2, i32 0, i32 0
  %dst_ptr170 = getelementptr inbounds %edge_t, %edge_t* %edge2, i32 0, i32 1
  %"src'171" = load %node_struct*, %node_struct** %src_ptr169, align 8
  %"dst'172" = load %node_struct*, %node_struct** %dst_ptr170, align 8
  %ret_true173 = alloca i1, align 1
  store i1 false, i1* %ret_true173, align 1
  %head174 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head174, %node_node** @llNodes.2, align 8
  br label %while175

while175:                                         ; preds = %merge158, %else184
  %putMeHere176 = load %node_node*, %node_node** @llNodes.2, align 8
  %curr177 = icmp ne %node_node* %putMeHere176, null
  br i1 %curr177, label %while_body178, label %merge185

while_body178:                                    ; preds = %while175
  %putMeHere179 = load %node_node*, %node_node** @llNodes.2, align 8
  %nodes180 = getelementptr inbounds %node_node, %node_node* %putMeHere179, i32 0, i32 0
  %"stored_node'181" = load %node_struct*, %node_struct** %nodes180, align 8
  br label %if182

if182:                                            ; preds = %while_body178
  %"found?186" = icmp eq %node_struct* %"stored_node'181", %"src'171"
  br i1 %"found?186", label %then183, label %else184

then183:                                          ; preds = %if182
  store i1 true, i1* %ret_true173, align 1
  br label %merge185

else184:                                          ; preds = %if182
  %toBeHere187 = load %node_node*, %node_node** @llNodes.2, align 8
  %llNodesPtr188 = getelementptr inbounds %node_node, %node_node* %toBeHere187, i32 0, i32 1
  %toBeHerenow189 = load %node_node*, %node_node** %llNodesPtr188, align 8
  store %node_node* %toBeHerenow189, %node_node** @llNodes.2, align 8
  br label %while175

merge185:                                         ; preds = %while175, %then183
  %returnVal190 = load i1, i1* %ret_true173, align 1
  %ret_true191 = alloca i1, align 1
  store i1 false, i1* %ret_true191, align 1
  %head192 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head192, %node_node** @llNodes.3, align 8
  br label %while193

while193:                                         ; preds = %merge185, %else202
  %putMeHere194 = load %node_node*, %node_node** @llNodes.3, align 8
  %curr195 = icmp ne %node_node* %putMeHere194, null
  br i1 %curr195, label %while_body196, label %merge203

while_body196:                                    ; preds = %while193
  %putMeHere197 = load %node_node*, %node_node** @llNodes.3, align 8
  %nodes198 = getelementptr inbounds %node_node, %node_node* %putMeHere197, i32 0, i32 0
  %"stored_node'199" = load %node_struct*, %node_struct** %nodes198, align 8
  br label %if200

if200:                                            ; preds = %while_body196
  %"found?204" = icmp eq %node_struct* %"stored_node'199", %"dst'172"
  br i1 %"found?204", label %then201, label %else202

then201:                                          ; preds = %if200
  store i1 true, i1* %ret_true191, align 1
  br label %merge203

else202:                                          ; preds = %if200
  %toBeHere205 = load %node_node*, %node_node** @llNodes.3, align 8
  %llNodesPtr206 = getelementptr inbounds %node_node, %node_node* %toBeHere205, i32 0, i32 1
  %toBeHerenow207 = load %node_node*, %node_node** %llNodesPtr206, align 8
  store %node_node* %toBeHerenow207, %node_node** @llNodes.3, align 8
  br label %while193

merge203:                                         ; preds = %while193, %then201
  %returnVal208 = load i1, i1* %ret_true191, align 1
  br label %if209

if209:                                            ; preds = %merge203
  br i1 %returnVal190, label %merge211, label %else210

else210:                                          ; preds = %if209
  %nodes_hd212 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall213 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node214 = bitcast i8* %malloccall213 to %node_node*
  %"lst_rst'215" = getelementptr inbounds %node_node, %node_node* %new_node214, i32 0, i32 1
  %node_ptr216 = getelementptr inbounds %node_node, %node_node* %new_node214, i32 0, i32 0
  store %node_node* %nodes_hd212, %node_node** %"lst_rst'215", align 8
  store %node_struct* %"src'171", %node_struct** %node_ptr216, align 8
  store %node_node* %new_node214, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  br label %merge211

merge211:                                         ; preds = %else210, %if209
  br label %if217

if217:                                            ; preds = %merge211
  br i1 %returnVal208, label %merge219, label %else218

else218:                                          ; preds = %if217
  %nodes_hd220 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall221 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node222 = bitcast i8* %malloccall221 to %node_node*
  %"lst_rst'223" = getelementptr inbounds %node_node, %node_node* %new_node222, i32 0, i32 1
  %node_ptr224 = getelementptr inbounds %node_node, %node_node* %new_node222, i32 0, i32 0
  store %node_node* %nodes_hd220, %node_node** %"lst_rst'223", align 8
  store %node_struct* %"dst'172", %node_struct** %node_ptr224, align 8
  store %node_node* %new_node222, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  br label %merge219

merge219:                                         ; preds = %else218, %if217
  store %edge_node* %new_edge166, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %edge3 = load %edge_t*, %edge_t** @edge3, align 8
  %edges_hd225 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %malloccall226 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge227 = bitcast i8* %malloccall226 to %edge_node*
  %"lst_rst'228" = getelementptr inbounds %edge_node, %edge_node* %new_edge227, i32 0, i32 1
  %edge_ptr229 = getelementptr inbounds %edge_node, %edge_node* %new_edge227, i32 0, i32 0
  store %edge_node* %edges_hd225, %edge_node** %"lst_rst'228", align 8
  store %edge_t* %edge3, %edge_t** %edge_ptr229, align 8
  %src_ptr230 = getelementptr inbounds %edge_t, %edge_t* %edge3, i32 0, i32 0
  %dst_ptr231 = getelementptr inbounds %edge_t, %edge_t* %edge3, i32 0, i32 1
  %"src'232" = load %node_struct*, %node_struct** %src_ptr230, align 8
  %"dst'233" = load %node_struct*, %node_struct** %dst_ptr231, align 8
  %ret_true234 = alloca i1, align 1
  store i1 false, i1* %ret_true234, align 1
  %head235 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head235, %node_node** @llNodes.4, align 8
  br label %while236

while236:                                         ; preds = %merge219, %else245
  %putMeHere237 = load %node_node*, %node_node** @llNodes.4, align 8
  %curr238 = icmp ne %node_node* %putMeHere237, null
  br i1 %curr238, label %while_body239, label %merge246

while_body239:                                    ; preds = %while236
  %putMeHere240 = load %node_node*, %node_node** @llNodes.4, align 8
  %nodes241 = getelementptr inbounds %node_node, %node_node* %putMeHere240, i32 0, i32 0
  %"stored_node'242" = load %node_struct*, %node_struct** %nodes241, align 8
  br label %if243

if243:                                            ; preds = %while_body239
  %"found?247" = icmp eq %node_struct* %"stored_node'242", %"src'232"
  br i1 %"found?247", label %then244, label %else245

then244:                                          ; preds = %if243
  store i1 true, i1* %ret_true234, align 1
  br label %merge246

else245:                                          ; preds = %if243
  %toBeHere248 = load %node_node*, %node_node** @llNodes.4, align 8
  %llNodesPtr249 = getelementptr inbounds %node_node, %node_node* %toBeHere248, i32 0, i32 1
  %toBeHerenow250 = load %node_node*, %node_node** %llNodesPtr249, align 8
  store %node_node* %toBeHerenow250, %node_node** @llNodes.4, align 8
  br label %while236

merge246:                                         ; preds = %while236, %then244
  %returnVal251 = load i1, i1* %ret_true234, align 1
  %ret_true252 = alloca i1, align 1
  store i1 false, i1* %ret_true252, align 1
  %head253 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head253, %node_node** @llNodes.5, align 8
  br label %while254

while254:                                         ; preds = %merge246, %else263
  %putMeHere255 = load %node_node*, %node_node** @llNodes.5, align 8
  %curr256 = icmp ne %node_node* %putMeHere255, null
  br i1 %curr256, label %while_body257, label %merge264

while_body257:                                    ; preds = %while254
  %putMeHere258 = load %node_node*, %node_node** @llNodes.5, align 8
  %nodes259 = getelementptr inbounds %node_node, %node_node* %putMeHere258, i32 0, i32 0
  %"stored_node'260" = load %node_struct*, %node_struct** %nodes259, align 8
  br label %if261

if261:                                            ; preds = %while_body257
  %"found?265" = icmp eq %node_struct* %"stored_node'260", %"dst'233"
  br i1 %"found?265", label %then262, label %else263

then262:                                          ; preds = %if261
  store i1 true, i1* %ret_true252, align 1
  br label %merge264

else263:                                          ; preds = %if261
  %toBeHere266 = load %node_node*, %node_node** @llNodes.5, align 8
  %llNodesPtr267 = getelementptr inbounds %node_node, %node_node* %toBeHere266, i32 0, i32 1
  %toBeHerenow268 = load %node_node*, %node_node** %llNodesPtr267, align 8
  store %node_node* %toBeHerenow268, %node_node** @llNodes.5, align 8
  br label %while254

merge264:                                         ; preds = %while254, %then262
  %returnVal269 = load i1, i1* %ret_true252, align 1
  br label %if270

if270:                                            ; preds = %merge264
  br i1 %returnVal251, label %merge272, label %else271

else271:                                          ; preds = %if270
  %nodes_hd273 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall274 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node275 = bitcast i8* %malloccall274 to %node_node*
  %"lst_rst'276" = getelementptr inbounds %node_node, %node_node* %new_node275, i32 0, i32 1
  %node_ptr277 = getelementptr inbounds %node_node, %node_node* %new_node275, i32 0, i32 0
  store %node_node* %nodes_hd273, %node_node** %"lst_rst'276", align 8
  store %node_struct* %"src'232", %node_struct** %node_ptr277, align 8
  store %node_node* %new_node275, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  br label %merge272

merge272:                                         ; preds = %else271, %if270
  br label %if278

if278:                                            ; preds = %merge272
  br i1 %returnVal269, label %merge280, label %else279

else279:                                          ; preds = %if278
  %nodes_hd281 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall282 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node283 = bitcast i8* %malloccall282 to %node_node*
  %"lst_rst'284" = getelementptr inbounds %node_node, %node_node* %new_node283, i32 0, i32 1
  %node_ptr285 = getelementptr inbounds %node_node, %node_node* %new_node283, i32 0, i32 0
  store %node_node* %nodes_hd281, %node_node** %"lst_rst'284", align 8
  store %node_struct* %"dst'233", %node_struct** %node_ptr285, align 8
  store %node_node* %new_node283, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  br label %merge280

merge280:                                         ; preds = %else279, %if278
  store %edge_node* %new_edge227, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %head286 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head286, %node_node** @llNodes.6, align 8
  br label %while287

while287:                                         ; preds = %merge280, %else294
  %putMeHere288 = load %node_node*, %node_node** @llNodes.6, align 8
  %curr289 = icmp ne %node_node* %putMeHere288, null
  br i1 %curr289, label %while_body290, label %merge295

while_body290:                                    ; preds = %while287
  %putMeHere291 = load %node_node*, %node_node** @llNodes.6, align 8
  %nodes292 = getelementptr inbounds %node_node, %node_node* %putMeHere291, i32 0, i32 0
  %"stored_nodeA'" = load %node_struct*, %node_struct** %nodes292, align 8
  br label %then293

then293:                                          ; preds = %while_body290
  %malloccall296 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node298 = bitcast i8* %malloccall296 to %list_node*
  %nodes299 = getelementptr inbounds %list_node, %list_node* %node298, i32 0, i32 0
  %nodes300 = getelementptr inbounds %list_node, %list_node* %node298, i32 0, i32 1
  %malloccall301 = tail call i8* @malloc(i32 ptrtoint (%node_struct** getelementptr (%node_struct*, %node_struct** null, i32 1) to i32))
  %please_work = bitcast i8* %malloccall301 to %node_struct**
  store %node_struct* %"stored_nodeA'", %node_struct** %please_work, align 8
  %currNodeVoidPtr = bitcast %node_struct** %please_work to i8*
  store i8* %currNodeVoidPtr, i8** %nodes299, align 8
  %nextNodes = load %list_node*, %list_node** @nodesList, align 8
  store %list_node* %nextNodes, %list_node** %nodes300, align 8
  store %list_node* %node298, %list_node** @nodesList, align 8
  br label %else294

else294:                                          ; preds = %then293
  %toBeHere302 = load %node_node*, %node_node** @llNodes.6, align 8
  %llNodesPtr303 = getelementptr inbounds %node_node, %node_node* %toBeHere302, i32 0, i32 1
  %toBeHerenow304 = load %node_node*, %node_node** %llNodesPtr303, align 8
  store %node_node* %toBeHerenow304, %node_node** @llNodes.6, align 8
  br label %while287

merge295:                                         ; preds = %while287
  %return = load %list_node*, %list_node** @nodesList, align 8
  store %list_node* %return, %list_node** @l, align 8
  %list = load %list_node*, %list_node** @l, align 8
  %malloccall305 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %0 = bitcast i8* %malloccall305 to %list_node**
  %malloccall306 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %malloccall306 to i32*
  store %list_node* %list, %list_node** %0, align 8
  store i32 0, i32* %1, align 4
  br label %traverse_loop

traverse_loop:                                    ; preds = %while_body307, %merge295
  %2 = load i32, i32* %1, align 4
  %temp310 = icmp ne i32 %2, 0
  br i1 %temp310, label %while_body307, label %merge311

while_body307:                                    ; preds = %traverse_loop
  %3 = load %list_node*, %list_node** %0, align 8
  %temp308 = getelementptr inbounds %list_node, %list_node* %3, i32 0, i32 1
  %temp309 = load %list_node*, %list_node** %temp308, align 8
  %4 = load i32, i32* %1, align 4
  %subtract = sub i32 %4, 1
  store i32 %subtract, i32* %1, align 4
  store %list_node* %temp309, %list_node** %0, align 8
  br label %traverse_loop

merge311:                                         ; preds = %traverse_loop
  %5 = load %list_node*, %list_node** %0, align 8
  %temp312 = getelementptr inbounds %list_node, %list_node* %5, i32 0, i32 0
  %retval = load i8*, i8** %temp312, align 8
  %li_conv = bitcast i8* %retval to %node_struct**
  %val_ptr = load %node_struct*, %node_struct** %li_conv, align 8
  %malloccall313 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node314 = bitcast i8* %malloccall313 to %node_struct*
  %malloccall315 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data316 = bitcast i8* %malloccall315 to i8**
  %malloccall317 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name318 = bitcast i8* %malloccall317 to i8**
  %data_ptr319 = bitcast i8** %data316 to i8*
  %name_ptr320 = bitcast i8** %name318 to i8*
  %"name'321" = getelementptr inbounds %node_struct, %node_struct* %node314, i32 0, i32 0
  %"data'322" = getelementptr inbounds %node_struct, %node_struct* %node314, i32 0, i32 2
  store i8* %name_ptr320, i8** %"name'321", align 8
  store i8* %data_ptr319, i8** %"data'322", align 8
  store %node_struct* %node314, %node_struct** @node1_prime, align 8
  store %node_struct* %val_ptr, %node_struct** @node1_prime, align 8
  %list323 = load %list_node*, %list_node** @l, align 8
  %malloccall324 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %6 = bitcast i8* %malloccall324 to %list_node**
  %malloccall325 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %7 = bitcast i8* %malloccall325 to i32*
  store %list_node* %list323, %list_node** %6, align 8
  store i32 1, i32* %7, align 4
  br label %traverse_loop326

traverse_loop326:                                 ; preds = %while_body327, %merge311
  %8 = load i32, i32* %7, align 4
  %temp331 = icmp ne i32 %8, 0
  br i1 %temp331, label %while_body327, label %merge332

while_body327:                                    ; preds = %traverse_loop326
  %9 = load %list_node*, %list_node** %6, align 8
  %temp328 = getelementptr inbounds %list_node, %list_node* %9, i32 0, i32 1
  %temp329 = load %list_node*, %list_node** %temp328, align 8
  %10 = load i32, i32* %7, align 4
  %subtract330 = sub i32 %10, 1
  store i32 %subtract330, i32* %7, align 4
  store %list_node* %temp329, %list_node** %6, align 8
  br label %traverse_loop326

merge332:                                         ; preds = %traverse_loop326
  %11 = load %list_node*, %list_node** %6, align 8
  %temp333 = getelementptr inbounds %list_node, %list_node* %11, i32 0, i32 0
  %retval334 = load i8*, i8** %temp333, align 8
  %li_conv335 = bitcast i8* %retval334 to %node_struct**
  %val_ptr336 = load %node_struct*, %node_struct** %li_conv335, align 8
  %malloccall337 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node338 = bitcast i8* %malloccall337 to %node_struct*
  %malloccall339 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data340 = bitcast i8* %malloccall339 to i8**
  %malloccall341 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name342 = bitcast i8* %malloccall341 to i8**
  %data_ptr343 = bitcast i8** %data340 to i8*
  %name_ptr344 = bitcast i8** %name342 to i8*
  %"name'345" = getelementptr inbounds %node_struct, %node_struct* %node338, i32 0, i32 0
  %"data'346" = getelementptr inbounds %node_struct, %node_struct* %node338, i32 0, i32 2
  store i8* %name_ptr344, i8** %"name'345", align 8
  store i8* %data_ptr343, i8** %"data'346", align 8
  store %node_struct* %node338, %node_struct** @node2_prime, align 8
  store %node_struct* %val_ptr336, %node_struct** @node2_prime, align 8
  %list347 = load %list_node*, %list_node** @l, align 8
  %malloccall348 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %12 = bitcast i8* %malloccall348 to %list_node**
  %malloccall349 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %13 = bitcast i8* %malloccall349 to i32*
  store %list_node* %list347, %list_node** %12, align 8
  store i32 2, i32* %13, align 4
  br label %traverse_loop350

traverse_loop350:                                 ; preds = %while_body351, %merge332
  %14 = load i32, i32* %13, align 4
  %temp355 = icmp ne i32 %14, 0
  br i1 %temp355, label %while_body351, label %merge356

while_body351:                                    ; preds = %traverse_loop350
  %15 = load %list_node*, %list_node** %12, align 8
  %temp352 = getelementptr inbounds %list_node, %list_node* %15, i32 0, i32 1
  %temp353 = load %list_node*, %list_node** %temp352, align 8
  %16 = load i32, i32* %13, align 4
  %subtract354 = sub i32 %16, 1
  store i32 %subtract354, i32* %13, align 4
  store %list_node* %temp353, %list_node** %12, align 8
  br label %traverse_loop350

merge356:                                         ; preds = %traverse_loop350
  %17 = load %list_node*, %list_node** %12, align 8
  %temp357 = getelementptr inbounds %list_node, %list_node* %17, i32 0, i32 0
  %retval358 = load i8*, i8** %temp357, align 8
  %li_conv359 = bitcast i8* %retval358 to %node_struct**
  %val_ptr360 = load %node_struct*, %node_struct** %li_conv359, align 8
  %malloccall361 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node362 = bitcast i8* %malloccall361 to %node_struct*
  %malloccall363 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data364 = bitcast i8* %malloccall363 to i8**
  %malloccall365 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name366 = bitcast i8* %malloccall365 to i8**
  %data_ptr367 = bitcast i8** %data364 to i8*
  %name_ptr368 = bitcast i8** %name366 to i8*
  %"name'369" = getelementptr inbounds %node_struct, %node_struct* %node362, i32 0, i32 0
  %"data'370" = getelementptr inbounds %node_struct, %node_struct* %node362, i32 0, i32 2
  store i8* %name_ptr368, i8** %"name'369", align 8
  store i8* %data_ptr367, i8** %"data'370", align 8
  store %node_struct* %node362, %node_struct** @node3_prime, align 8
  store %node_struct* %val_ptr360, %node_struct** @node3_prime, align 8
  %list371 = load %list_node*, %list_node** @l, align 8
  %malloccall372 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %18 = bitcast i8* %malloccall372 to %list_node**
  %malloccall373 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %19 = bitcast i8* %malloccall373 to i32*
  store %list_node* %list371, %list_node** %18, align 8
  store i32 3, i32* %19, align 4
  br label %traverse_loop374

traverse_loop374:                                 ; preds = %while_body375, %merge356
  %20 = load i32, i32* %19, align 4
  %temp379 = icmp ne i32 %20, 0
  br i1 %temp379, label %while_body375, label %merge380

while_body375:                                    ; preds = %traverse_loop374
  %21 = load %list_node*, %list_node** %18, align 8
  %temp376 = getelementptr inbounds %list_node, %list_node* %21, i32 0, i32 1
  %temp377 = load %list_node*, %list_node** %temp376, align 8
  %22 = load i32, i32* %19, align 4
  %subtract378 = sub i32 %22, 1
  store i32 %subtract378, i32* %19, align 4
  store %list_node* %temp377, %list_node** %18, align 8
  br label %traverse_loop374

merge380:                                         ; preds = %traverse_loop374
  %23 = load %list_node*, %list_node** %18, align 8
  %temp381 = getelementptr inbounds %list_node, %list_node* %23, i32 0, i32 0
  %retval382 = load i8*, i8** %temp381, align 8
  %li_conv383 = bitcast i8* %retval382 to %node_struct**
  %val_ptr384 = load %node_struct*, %node_struct** %li_conv383, align 8
  %malloccall385 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node386 = bitcast i8* %malloccall385 to %node_struct*
  %malloccall387 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data388 = bitcast i8* %malloccall387 to i8**
  %malloccall389 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name390 = bitcast i8* %malloccall389 to i8**
  %data_ptr391 = bitcast i8** %data388 to i8*
  %name_ptr392 = bitcast i8** %name390 to i8*
  %"name'393" = getelementptr inbounds %node_struct, %node_struct* %node386, i32 0, i32 0
  %"data'394" = getelementptr inbounds %node_struct, %node_struct* %node386, i32 0, i32 2
  store i8* %name_ptr392, i8** %"name'393", align 8
  store i8* %data_ptr391, i8** %"data'394", align 8
  store %node_struct* %node386, %node_struct** @node4_prime, align 8
  store %node_struct* %val_ptr384, %node_struct** @node4_prime, align 8
  %list395 = load %list_node*, %list_node** @l, align 8
  %malloccall396 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %24 = bitcast i8* %malloccall396 to %list_node**
  %malloccall397 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %25 = bitcast i8* %malloccall397 to i32*
  store %list_node* %list395, %list_node** %24, align 8
  store i32 4, i32* %25, align 4
  br label %traverse_loop398

traverse_loop398:                                 ; preds = %while_body399, %merge380
  %26 = load i32, i32* %25, align 4
  %temp403 = icmp ne i32 %26, 0
  br i1 %temp403, label %while_body399, label %merge404

while_body399:                                    ; preds = %traverse_loop398
  %27 = load %list_node*, %list_node** %24, align 8
  %temp400 = getelementptr inbounds %list_node, %list_node* %27, i32 0, i32 1
  %temp401 = load %list_node*, %list_node** %temp400, align 8
  %28 = load i32, i32* %25, align 4
  %subtract402 = sub i32 %28, 1
  store i32 %subtract402, i32* %25, align 4
  store %list_node* %temp401, %list_node** %24, align 8
  br label %traverse_loop398

merge404:                                         ; preds = %traverse_loop398
  %29 = load %list_node*, %list_node** %24, align 8
  %temp405 = getelementptr inbounds %list_node, %list_node* %29, i32 0, i32 0
  %retval406 = load i8*, i8** %temp405, align 8
  %li_conv407 = bitcast i8* %retval406 to %node_struct**
  %val_ptr408 = load %node_struct*, %node_struct** %li_conv407, align 8
  %malloccall409 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node410 = bitcast i8* %malloccall409 to %node_struct*
  %malloccall411 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data412 = bitcast i8* %malloccall411 to i8**
  %malloccall413 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name414 = bitcast i8* %malloccall413 to i8**
  %data_ptr415 = bitcast i8** %data412 to i8*
  %name_ptr416 = bitcast i8** %name414 to i8*
  %"name'417" = getelementptr inbounds %node_struct, %node_struct* %node410, i32 0, i32 0
  %"data'418" = getelementptr inbounds %node_struct, %node_struct* %node410, i32 0, i32 2
  store i8* %name_ptr416, i8** %"name'417", align 8
  store i8* %data_ptr415, i8** %"data'418", align 8
  store %node_struct* %node410, %node_struct** @node5_prime, align 8
  store %node_struct* %val_ptr408, %node_struct** @node5_prime, align 8
  %list419 = load %list_node*, %list_node** @l, align 8
  %malloccall420 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %30 = bitcast i8* %malloccall420 to %list_node**
  %malloccall421 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %31 = bitcast i8* %malloccall421 to i32*
  store %list_node* %list419, %list_node** %30, align 8
  store i32 5, i32* %31, align 4
  br label %traverse_loop422

traverse_loop422:                                 ; preds = %while_body423, %merge404
  %32 = load i32, i32* %31, align 4
  %temp427 = icmp ne i32 %32, 0
  br i1 %temp427, label %while_body423, label %merge428

while_body423:                                    ; preds = %traverse_loop422
  %33 = load %list_node*, %list_node** %30, align 8
  %temp424 = getelementptr inbounds %list_node, %list_node* %33, i32 0, i32 1
  %temp425 = load %list_node*, %list_node** %temp424, align 8
  %34 = load i32, i32* %31, align 4
  %subtract426 = sub i32 %34, 1
  store i32 %subtract426, i32* %31, align 4
  store %list_node* %temp425, %list_node** %30, align 8
  br label %traverse_loop422

merge428:                                         ; preds = %traverse_loop422
  %35 = load %list_node*, %list_node** %30, align 8
  %temp429 = getelementptr inbounds %list_node, %list_node* %35, i32 0, i32 0
  %retval430 = load i8*, i8** %temp429, align 8
  %li_conv431 = bitcast i8* %retval430 to %node_struct**
  %val_ptr432 = load %node_struct*, %node_struct** %li_conv431, align 8
  %malloccall433 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node434 = bitcast i8* %malloccall433 to %node_struct*
  %malloccall435 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data436 = bitcast i8* %malloccall435 to i8**
  %malloccall437 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name438 = bitcast i8* %malloccall437 to i8**
  %data_ptr439 = bitcast i8** %data436 to i8*
  %name_ptr440 = bitcast i8** %name438 to i8*
  %"name'441" = getelementptr inbounds %node_struct, %node_struct* %node434, i32 0, i32 0
  %"data'442" = getelementptr inbounds %node_struct, %node_struct* %node434, i32 0, i32 2
  store i8* %name_ptr440, i8** %"name'441", align 8
  store i8* %data_ptr439, i8** %"data'442", align 8
  store %node_struct* %node434, %node_struct** @node6_prime, align 8
  store %node_struct* %val_ptr432, %node_struct** @node6_prime, align 8
  %"lvar'443" = load %node_struct*, %node_struct** @node1_prime, align 8
  %temp444 = getelementptr inbounds %node_struct, %node_struct* %"lvar'443", i32 0, i32 0
  %node1_prime.name = load i8*, i8** %temp444, align 8
  %srcNode = load i8*, i8** %temp444, align 8
  store i8* %srcNode, i8** @toPrint1, align 8
  %"lvar'445" = load %node_struct*, %node_struct** @node2_prime, align 8
  %temp446 = getelementptr inbounds %node_struct, %node_struct* %"lvar'445", i32 0, i32 0
  %node2_prime.name = load i8*, i8** %temp446, align 8
  %srcNode447 = load i8*, i8** %temp446, align 8
  store i8* %srcNode447, i8** @toPrint2, align 8
  %"lvar'448" = load %node_struct*, %node_struct** @node3_prime, align 8
  %temp449 = getelementptr inbounds %node_struct, %node_struct* %"lvar'448", i32 0, i32 0
  %node3_prime.name = load i8*, i8** %temp449, align 8
  %srcNode450 = load i8*, i8** %temp449, align 8
  store i8* %srcNode450, i8** @toPrint3, align 8
  %"lvar'451" = load %node_struct*, %node_struct** @node4_prime, align 8
  %temp452 = getelementptr inbounds %node_struct, %node_struct* %"lvar'451", i32 0, i32 0
  %node4_prime.name = load i8*, i8** %temp452, align 8
  %srcNode453 = load i8*, i8** %temp452, align 8
  store i8* %srcNode453, i8** @toPrint4, align 8
  %"lvar'454" = load %node_struct*, %node_struct** @node5_prime, align 8
  %temp455 = getelementptr inbounds %node_struct, %node_struct* %"lvar'454", i32 0, i32 0
  %node5_prime.name = load i8*, i8** %temp455, align 8
  %srcNode456 = load i8*, i8** %temp455, align 8
  store i8* %srcNode456, i8** @toPrint5, align 8
  %"lvar'457" = load %node_struct*, %node_struct** @node6_prime, align 8
  %temp458 = getelementptr inbounds %node_struct, %node_struct* %"lvar'457", i32 0, i32 0
  %node6_prime.name = load i8*, i8** %temp458, align 8
  %srcNode459 = load i8*, i8** %temp458, align 8
  store i8* %srcNode459, i8** @toPrint6, align 8
  %toPrint1 = load i8*, i8** @toPrint1, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i8* %toPrint1)
  %toPrint2 = load i8*, i8** @toPrint2, align 8
  %printf460 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.7, i32 0, i32 0), i8* %toPrint2)
  %toPrint3 = load i8*, i8** @toPrint3, align 8
  %printf461 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.8, i32 0, i32 0), i8* %toPrint3)
  %toPrint4 = load i8*, i8** @toPrint4, align 8
  %printf462 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.9, i32 0, i32 0), i8* %toPrint4)
  %toPrint5 = load i8*, i8** @toPrint5, align 8
  %printf463 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.10, i32 0, i32 0), i8* %toPrint5)
  %toPrint6 = load i8*, i8** @toPrint6, align 8
  %printf464 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.11, i32 0, i32 0), i8* %toPrint6)
  ret i32 0
}

declare noalias i8* @malloc(i32)

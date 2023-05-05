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
@nodesList = global %list_node* null
@llNodes = global %node_node* null
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
@fmt.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

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
  store %edge_node* %new_edge, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %edge2 = load %edge_t*, %edge_t** @edge2, align 8
  %edges_hd129 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %malloccall130 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge131 = bitcast i8* %malloccall130 to %edge_node*
  %"lst_rst'132" = getelementptr inbounds %edge_node, %edge_node* %new_edge131, i32 0, i32 1
  %edge_ptr133 = getelementptr inbounds %edge_node, %edge_node* %new_edge131, i32 0, i32 0
  store %edge_node* %edges_hd129, %edge_node** %"lst_rst'132", align 8
  store %edge_t* %edge2, %edge_t** %edge_ptr133, align 8
  store %edge_node* %new_edge131, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %edge3 = load %edge_t*, %edge_t** @edge3, align 8
  %edges_hd134 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %malloccall135 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge136 = bitcast i8* %malloccall135 to %edge_node*
  %"lst_rst'137" = getelementptr inbounds %edge_node, %edge_node* %new_edge136, i32 0, i32 1
  %edge_ptr138 = getelementptr inbounds %edge_node, %edge_node* %new_edge136, i32 0, i32 0
  store %edge_node* %edges_hd134, %edge_node** %"lst_rst'137", align 8
  store %edge_t* %edge3, %edge_t** %edge_ptr138, align 8
  store %edge_node* %new_edge136, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %head = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head, %node_node** @llNodes, align 8
  br label %while

while:                                            ; preds = %entry, %else
  %putMeHere = load %node_node*, %node_node** @llNodes, align 8
  %curr = icmp ne %node_node* %putMeHere, null
  br i1 %curr, label %while_body, label %merge

while_body:                                       ; preds = %while
  %putMeHere139 = load %node_node*, %node_node** @llNodes, align 8
  %nodes = getelementptr inbounds %node_node, %node_node* %putMeHere139, i32 0, i32 0
  %"stored_nodeA'" = load %node_struct*, %node_struct** %nodes, align 8
  br label %then

then:                                             ; preds = %while_body
  %malloccall140 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node141 = bitcast i8* %malloccall140 to %list_node*
  %nodes142 = getelementptr inbounds %list_node, %list_node* %node141, i32 0, i32 0
  %nodes143 = getelementptr inbounds %list_node, %list_node* %node141, i32 0, i32 1
  %malloccall144 = tail call i8* @malloc(i32 ptrtoint (%node_struct** getelementptr (%node_struct*, %node_struct** null, i32 1) to i32))
  %please_work = bitcast i8* %malloccall144 to %node_struct**
  store %node_struct* %"stored_nodeA'", %node_struct** %please_work, align 8
  %currNodeVoidPtr = bitcast %node_struct** %please_work to i8*
  store i8* %currNodeVoidPtr, i8** %nodes142, align 8
  %nextNodes = load %list_node*, %list_node** @nodesList, align 8
  store %list_node* %nextNodes, %list_node** %nodes143, align 8
  store %list_node* %node141, %list_node** @nodesList, align 8
  br label %else

else:                                             ; preds = %then
  %toBeHere = load %node_node*, %node_node** @llNodes, align 8
  %llNodesPtr = getelementptr inbounds %node_node, %node_node* %toBeHere, i32 0, i32 1
  %toBeHerenow = load %node_node*, %node_node** %llNodesPtr, align 8
  store %node_node* %toBeHerenow, %node_node** @llNodes, align 8
  br label %while

merge:                                            ; preds = %while
  %return = load %list_node*, %list_node** @nodesList, align 8
  store %list_node* %return, %list_node** @l, align 8
  %list = load %list_node*, %list_node** @l, align 8
  %malloccall145 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %0 = bitcast i8* %malloccall145 to %list_node**
  %malloccall146 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %malloccall146 to i32*
  store %list_node* %list, %list_node** %0, align 8
  store i32 0, i32* %1, align 4
  br label %traverse_loop

traverse_loop:                                    ; preds = %while_body147, %merge
  %2 = load i32, i32* %1, align 4
  %temp150 = icmp ne i32 %2, 0
  br i1 %temp150, label %while_body147, label %merge151

while_body147:                                    ; preds = %traverse_loop
  %3 = load %list_node*, %list_node** %0, align 8
  %temp148 = getelementptr inbounds %list_node, %list_node* %3, i32 0, i32 1
  %temp149 = load %list_node*, %list_node** %temp148, align 8
  %4 = load i32, i32* %1, align 4
  %subtract = sub i32 %4, 1
  store i32 %subtract, i32* %1, align 4
  store %list_node* %temp149, %list_node** %0, align 8
  br label %traverse_loop

merge151:                                         ; preds = %traverse_loop
  %5 = load %list_node*, %list_node** %0, align 8
  %temp152 = getelementptr inbounds %list_node, %list_node* %5, i32 0, i32 0
  %retval = load i8*, i8** %temp152, align 8
  %li_conv = bitcast i8* %retval to %node_struct**
  %val_ptr = load %node_struct*, %node_struct** %li_conv, align 8
  %malloccall153 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node154 = bitcast i8* %malloccall153 to %node_struct*
  %malloccall155 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data156 = bitcast i8* %malloccall155 to i8**
  %malloccall157 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name158 = bitcast i8* %malloccall157 to i8**
  %data_ptr159 = bitcast i8** %data156 to i8*
  %name_ptr160 = bitcast i8** %name158 to i8*
  %"name'161" = getelementptr inbounds %node_struct, %node_struct* %node154, i32 0, i32 0
  %"data'162" = getelementptr inbounds %node_struct, %node_struct* %node154, i32 0, i32 2
  store i8* %name_ptr160, i8** %"name'161", align 8
  store i8* %data_ptr159, i8** %"data'162", align 8
  store %node_struct* %node154, %node_struct** @node1_prime, align 8
  store %node_struct* %val_ptr, %node_struct** @node1_prime, align 8
  %list163 = load %list_node*, %list_node** @l, align 8
  %malloccall164 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %6 = bitcast i8* %malloccall164 to %list_node**
  %malloccall165 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %7 = bitcast i8* %malloccall165 to i32*
  store %list_node* %list163, %list_node** %6, align 8
  store i32 1, i32* %7, align 4
  br label %traverse_loop166

traverse_loop166:                                 ; preds = %while_body167, %merge151
  %8 = load i32, i32* %7, align 4
  %temp171 = icmp ne i32 %8, 0
  br i1 %temp171, label %while_body167, label %merge172

while_body167:                                    ; preds = %traverse_loop166
  %9 = load %list_node*, %list_node** %6, align 8
  %temp168 = getelementptr inbounds %list_node, %list_node* %9, i32 0, i32 1
  %temp169 = load %list_node*, %list_node** %temp168, align 8
  %10 = load i32, i32* %7, align 4
  %subtract170 = sub i32 %10, 1
  store i32 %subtract170, i32* %7, align 4
  store %list_node* %temp169, %list_node** %6, align 8
  br label %traverse_loop166

merge172:                                         ; preds = %traverse_loop166
  %11 = load %list_node*, %list_node** %6, align 8
  %temp173 = getelementptr inbounds %list_node, %list_node* %11, i32 0, i32 0
  %retval174 = load i8*, i8** %temp173, align 8
  %li_conv175 = bitcast i8* %retval174 to %node_struct**
  %val_ptr176 = load %node_struct*, %node_struct** %li_conv175, align 8
  %malloccall177 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node178 = bitcast i8* %malloccall177 to %node_struct*
  %malloccall179 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data180 = bitcast i8* %malloccall179 to i8**
  %malloccall181 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name182 = bitcast i8* %malloccall181 to i8**
  %data_ptr183 = bitcast i8** %data180 to i8*
  %name_ptr184 = bitcast i8** %name182 to i8*
  %"name'185" = getelementptr inbounds %node_struct, %node_struct* %node178, i32 0, i32 0
  %"data'186" = getelementptr inbounds %node_struct, %node_struct* %node178, i32 0, i32 2
  store i8* %name_ptr184, i8** %"name'185", align 8
  store i8* %data_ptr183, i8** %"data'186", align 8
  store %node_struct* %node178, %node_struct** @node2_prime, align 8
  store %node_struct* %val_ptr176, %node_struct** @node2_prime, align 8
  %list187 = load %list_node*, %list_node** @l, align 8
  %malloccall188 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %12 = bitcast i8* %malloccall188 to %list_node**
  %malloccall189 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %13 = bitcast i8* %malloccall189 to i32*
  store %list_node* %list187, %list_node** %12, align 8
  store i32 2, i32* %13, align 4
  br label %traverse_loop190

traverse_loop190:                                 ; preds = %while_body191, %merge172
  %14 = load i32, i32* %13, align 4
  %temp195 = icmp ne i32 %14, 0
  br i1 %temp195, label %while_body191, label %merge196

while_body191:                                    ; preds = %traverse_loop190
  %15 = load %list_node*, %list_node** %12, align 8
  %temp192 = getelementptr inbounds %list_node, %list_node* %15, i32 0, i32 1
  %temp193 = load %list_node*, %list_node** %temp192, align 8
  %16 = load i32, i32* %13, align 4
  %subtract194 = sub i32 %16, 1
  store i32 %subtract194, i32* %13, align 4
  store %list_node* %temp193, %list_node** %12, align 8
  br label %traverse_loop190

merge196:                                         ; preds = %traverse_loop190
  %17 = load %list_node*, %list_node** %12, align 8
  %temp197 = getelementptr inbounds %list_node, %list_node* %17, i32 0, i32 0
  %retval198 = load i8*, i8** %temp197, align 8
  %li_conv199 = bitcast i8* %retval198 to %node_struct**
  %val_ptr200 = load %node_struct*, %node_struct** %li_conv199, align 8
  %malloccall201 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node202 = bitcast i8* %malloccall201 to %node_struct*
  %malloccall203 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data204 = bitcast i8* %malloccall203 to i8**
  %malloccall205 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name206 = bitcast i8* %malloccall205 to i8**
  %data_ptr207 = bitcast i8** %data204 to i8*
  %name_ptr208 = bitcast i8** %name206 to i8*
  %"name'209" = getelementptr inbounds %node_struct, %node_struct* %node202, i32 0, i32 0
  %"data'210" = getelementptr inbounds %node_struct, %node_struct* %node202, i32 0, i32 2
  store i8* %name_ptr208, i8** %"name'209", align 8
  store i8* %data_ptr207, i8** %"data'210", align 8
  store %node_struct* %node202, %node_struct** @node3_prime, align 8
  store %node_struct* %val_ptr200, %node_struct** @node3_prime, align 8
  %list211 = load %list_node*, %list_node** @l, align 8
  %malloccall212 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %18 = bitcast i8* %malloccall212 to %list_node**
  %malloccall213 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %19 = bitcast i8* %malloccall213 to i32*
  store %list_node* %list211, %list_node** %18, align 8
  store i32 3, i32* %19, align 4
  br label %traverse_loop214

traverse_loop214:                                 ; preds = %while_body215, %merge196
  %20 = load i32, i32* %19, align 4
  %temp219 = icmp ne i32 %20, 0
  br i1 %temp219, label %while_body215, label %merge220

while_body215:                                    ; preds = %traverse_loop214
  %21 = load %list_node*, %list_node** %18, align 8
  %temp216 = getelementptr inbounds %list_node, %list_node* %21, i32 0, i32 1
  %temp217 = load %list_node*, %list_node** %temp216, align 8
  %22 = load i32, i32* %19, align 4
  %subtract218 = sub i32 %22, 1
  store i32 %subtract218, i32* %19, align 4
  store %list_node* %temp217, %list_node** %18, align 8
  br label %traverse_loop214

merge220:                                         ; preds = %traverse_loop214
  %23 = load %list_node*, %list_node** %18, align 8
  %temp221 = getelementptr inbounds %list_node, %list_node* %23, i32 0, i32 0
  %retval222 = load i8*, i8** %temp221, align 8
  %li_conv223 = bitcast i8* %retval222 to %node_struct**
  %val_ptr224 = load %node_struct*, %node_struct** %li_conv223, align 8
  %malloccall225 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node226 = bitcast i8* %malloccall225 to %node_struct*
  %malloccall227 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data228 = bitcast i8* %malloccall227 to i8**
  %malloccall229 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name230 = bitcast i8* %malloccall229 to i8**
  %data_ptr231 = bitcast i8** %data228 to i8*
  %name_ptr232 = bitcast i8** %name230 to i8*
  %"name'233" = getelementptr inbounds %node_struct, %node_struct* %node226, i32 0, i32 0
  %"data'234" = getelementptr inbounds %node_struct, %node_struct* %node226, i32 0, i32 2
  store i8* %name_ptr232, i8** %"name'233", align 8
  store i8* %data_ptr231, i8** %"data'234", align 8
  store %node_struct* %node226, %node_struct** @node4_prime, align 8
  store %node_struct* %val_ptr224, %node_struct** @node4_prime, align 8
  %list235 = load %list_node*, %list_node** @l, align 8
  %malloccall236 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %24 = bitcast i8* %malloccall236 to %list_node**
  %malloccall237 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %25 = bitcast i8* %malloccall237 to i32*
  store %list_node* %list235, %list_node** %24, align 8
  store i32 4, i32* %25, align 4
  br label %traverse_loop238

traverse_loop238:                                 ; preds = %while_body239, %merge220
  %26 = load i32, i32* %25, align 4
  %temp243 = icmp ne i32 %26, 0
  br i1 %temp243, label %while_body239, label %merge244

while_body239:                                    ; preds = %traverse_loop238
  %27 = load %list_node*, %list_node** %24, align 8
  %temp240 = getelementptr inbounds %list_node, %list_node* %27, i32 0, i32 1
  %temp241 = load %list_node*, %list_node** %temp240, align 8
  %28 = load i32, i32* %25, align 4
  %subtract242 = sub i32 %28, 1
  store i32 %subtract242, i32* %25, align 4
  store %list_node* %temp241, %list_node** %24, align 8
  br label %traverse_loop238

merge244:                                         ; preds = %traverse_loop238
  %29 = load %list_node*, %list_node** %24, align 8
  %temp245 = getelementptr inbounds %list_node, %list_node* %29, i32 0, i32 0
  %retval246 = load i8*, i8** %temp245, align 8
  %li_conv247 = bitcast i8* %retval246 to %node_struct**
  %val_ptr248 = load %node_struct*, %node_struct** %li_conv247, align 8
  %malloccall249 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node250 = bitcast i8* %malloccall249 to %node_struct*
  %malloccall251 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data252 = bitcast i8* %malloccall251 to i8**
  %malloccall253 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name254 = bitcast i8* %malloccall253 to i8**
  %data_ptr255 = bitcast i8** %data252 to i8*
  %name_ptr256 = bitcast i8** %name254 to i8*
  %"name'257" = getelementptr inbounds %node_struct, %node_struct* %node250, i32 0, i32 0
  %"data'258" = getelementptr inbounds %node_struct, %node_struct* %node250, i32 0, i32 2
  store i8* %name_ptr256, i8** %"name'257", align 8
  store i8* %data_ptr255, i8** %"data'258", align 8
  store %node_struct* %node250, %node_struct** @node5_prime, align 8
  store %node_struct* %val_ptr248, %node_struct** @node5_prime, align 8
  %list259 = load %list_node*, %list_node** @l, align 8
  %malloccall260 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %30 = bitcast i8* %malloccall260 to %list_node**
  %malloccall261 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %31 = bitcast i8* %malloccall261 to i32*
  store %list_node* %list259, %list_node** %30, align 8
  store i32 5, i32* %31, align 4
  br label %traverse_loop262

traverse_loop262:                                 ; preds = %while_body263, %merge244
  %32 = load i32, i32* %31, align 4
  %temp267 = icmp ne i32 %32, 0
  br i1 %temp267, label %while_body263, label %merge268

while_body263:                                    ; preds = %traverse_loop262
  %33 = load %list_node*, %list_node** %30, align 8
  %temp264 = getelementptr inbounds %list_node, %list_node* %33, i32 0, i32 1
  %temp265 = load %list_node*, %list_node** %temp264, align 8
  %34 = load i32, i32* %31, align 4
  %subtract266 = sub i32 %34, 1
  store i32 %subtract266, i32* %31, align 4
  store %list_node* %temp265, %list_node** %30, align 8
  br label %traverse_loop262

merge268:                                         ; preds = %traverse_loop262
  %35 = load %list_node*, %list_node** %30, align 8
  %temp269 = getelementptr inbounds %list_node, %list_node* %35, i32 0, i32 0
  %retval270 = load i8*, i8** %temp269, align 8
  %li_conv271 = bitcast i8* %retval270 to %node_struct**
  %val_ptr272 = load %node_struct*, %node_struct** %li_conv271, align 8
  %malloccall273 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node274 = bitcast i8* %malloccall273 to %node_struct*
  %malloccall275 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data276 = bitcast i8* %malloccall275 to i8**
  %malloccall277 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name278 = bitcast i8* %malloccall277 to i8**
  %data_ptr279 = bitcast i8** %data276 to i8*
  %name_ptr280 = bitcast i8** %name278 to i8*
  %"name'281" = getelementptr inbounds %node_struct, %node_struct* %node274, i32 0, i32 0
  %"data'282" = getelementptr inbounds %node_struct, %node_struct* %node274, i32 0, i32 2
  store i8* %name_ptr280, i8** %"name'281", align 8
  store i8* %data_ptr279, i8** %"data'282", align 8
  store %node_struct* %node274, %node_struct** @node6_prime, align 8
  store %node_struct* %val_ptr272, %node_struct** @node6_prime, align 8
  %"lvar'283" = load %node_struct*, %node_struct** @node1_prime, align 8
  %temp284 = getelementptr inbounds %node_struct, %node_struct* %"lvar'283", i32 0, i32 0
  %node1_prime.name = load i8*, i8** %temp284, align 8
  %srcNode = load i8*, i8** %temp284, align 8
  store i8* %srcNode, i8** @toPrint1, align 8
  %"lvar'285" = load %node_struct*, %node_struct** @node2_prime, align 8
  %temp286 = getelementptr inbounds %node_struct, %node_struct* %"lvar'285", i32 0, i32 0
  %node2_prime.name = load i8*, i8** %temp286, align 8
  %srcNode287 = load i8*, i8** %temp286, align 8
  store i8* %srcNode287, i8** @toPrint2, align 8
  %"lvar'288" = load %node_struct*, %node_struct** @node3_prime, align 8
  %temp289 = getelementptr inbounds %node_struct, %node_struct* %"lvar'288", i32 0, i32 0
  %node3_prime.name = load i8*, i8** %temp289, align 8
  %srcNode290 = load i8*, i8** %temp289, align 8
  store i8* %srcNode290, i8** @toPrint3, align 8
  %"lvar'291" = load %node_struct*, %node_struct** @node4_prime, align 8
  %temp292 = getelementptr inbounds %node_struct, %node_struct* %"lvar'291", i32 0, i32 0
  %node4_prime.name = load i8*, i8** %temp292, align 8
  %srcNode293 = load i8*, i8** %temp292, align 8
  store i8* %srcNode293, i8** @toPrint4, align 8
  %"lvar'294" = load %node_struct*, %node_struct** @node5_prime, align 8
  %temp295 = getelementptr inbounds %node_struct, %node_struct* %"lvar'294", i32 0, i32 0
  %node5_prime.name = load i8*, i8** %temp295, align 8
  %srcNode296 = load i8*, i8** %temp295, align 8
  store i8* %srcNode296, i8** @toPrint5, align 8
  %"lvar'297" = load %node_struct*, %node_struct** @node6_prime, align 8
  %temp298 = getelementptr inbounds %node_struct, %node_struct* %"lvar'297", i32 0, i32 0
  %node6_prime.name = load i8*, i8** %temp298, align 8
  %srcNode299 = load i8*, i8** %temp298, align 8
  store i8* %srcNode299, i8** @toPrint6, align 8
  %toPrint1 = load i8*, i8** @toPrint1, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i8* %toPrint1)
  %toPrint2 = load i8*, i8** @toPrint2, align 8
  %printf300 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.1, i32 0, i32 0), i8* %toPrint2)
  %toPrint3 = load i8*, i8** @toPrint3, align 8
  %printf301 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.2, i32 0, i32 0), i8* %toPrint3)
  %toPrint4 = load i8*, i8** @toPrint4, align 8
  %printf302 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.3, i32 0, i32 0), i8* %toPrint4)
  %toPrint5 = load i8*, i8** @toPrint5, align 8
  %printf303 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.4, i32 0, i32 0), i8* %toPrint5)
  %toPrint6 = load i8*, i8** @toPrint6, align 8
  %printf304 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.5, i32 0, i32 0), i8* %toPrint6)
  ret i32 0
}

declare noalias i8* @malloc(i32)

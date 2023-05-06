; ModuleID = 'Graphite'
source_filename = "Graphite"

%list_node = type { i8*, %list_node* }
%edge_node = type { %edge_t*, %edge_node* }
%edge_t = type { %node_struct*, %node_struct*, i32 }
%node_struct = type { i8*, i1, i8* }
%graph_tt = type { %node_node*, %edge_node* }
%node_node = type { %node_struct*, %node_node* }

@edgesList = global %list_node* null
@llEdges = global %edge_node* null
@fmt = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@0 = private unnamed_addr constant [5 x i8] c"hey\0A\00", align 1
@1 = private unnamed_addr constant [7 x i8] c"hey 2\0A\00", align 1
@fmt.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@n0 = global %node_struct* null
@2 = private unnamed_addr constant [5 x i8] c"Abby\00", align 1
@n1 = global %node_struct* null
@3 = private unnamed_addr constant [7 x i8] c"Steven\00", align 1
@n2 = global %node_struct* null
@4 = private unnamed_addr constant [6 x i8] c"Aidan\00", align 1
@n3 = global %node_struct* null
@5 = private unnamed_addr constant [8 x i8] c"Claudia\00", align 1
@e0 = global %edge_t* null
@e1 = global %edge_t* null
@e2 = global %edge_t* null
@e3 = global %edge_t* null
@e4 = global %edge_t* null
@g = global %graph_tt* null
@llNodes = global %node_node* null
@llNodes.3 = global %node_node* null
@llNodes.4 = global %node_node* null
@llNodes.5 = global %node_node* null
@llNodes.6 = global %node_node* null
@llNodes.7 = global %node_node* null
@llNodes.8 = global %node_node* null
@llNodes.9 = global %node_node* null
@llNodes.10 = global %node_node* null
@llNodes.11 = global %node_node* null
@adjs = global %list_node* null
@adj1 = global %node_struct* null
@a_name = global i8* null
@test_len = global i32 0
@fmt.12 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

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
  store %node_struct* %node, %node_struct** @n0, align 8
  %"lvar'" = load %node_struct*, %node_struct** @n0, align 8
  %temp = getelementptr inbounds %node_struct, %node_struct* %"lvar'", i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2, i32 0, i32 0), i8** %temp, align 8
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
  store %node_struct* %node4, %node_struct** @n1, align 8
  %"lvar'13" = load %node_struct*, %node_struct** @n1, align 8
  %temp14 = getelementptr inbounds %node_struct, %node_struct* %"lvar'13", i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @3, i32 0, i32 0), i8** %temp14, align 8
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
  store %node_struct* %node16, %node_struct** @n2, align 8
  %"lvar'25" = load %node_struct*, %node_struct** @n2, align 8
  %temp26 = getelementptr inbounds %node_struct, %node_struct* %"lvar'25", i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8** %temp26, align 8
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
  store %node_struct* %node28, %node_struct** @n3, align 8
  %"lvar'37" = load %node_struct*, %node_struct** @n3, align 8
  %temp38 = getelementptr inbounds %node_struct, %node_struct* %"lvar'37", i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i8** %temp38, align 8
  %n0 = load %node_struct*, %node_struct** @n0, align 8
  %n2 = load %node_struct*, %node_struct** @n2, align 8
  %malloccall39 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct = bitcast i8* %malloccall39 to %edge_t*
  %"name'40" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 0
  %"name'41" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 1
  %"name'42" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 2
  store %node_struct* %n0, %node_struct** %"name'40", align 8
  store %node_struct* %n2, %node_struct** %"name'41", align 8
  store i32 0, i32* %"name'42", align 4
  %malloccall43 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge = bitcast i8* %malloccall43 to %edge_t*
  %"name'44" = getelementptr inbounds %edge_t, %edge_t* %edge, i32 0, i32 0
  %"data'45" = getelementptr inbounds %edge_t, %edge_t* %edge, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'44", align 8
  store %node_struct* null, %node_struct** %"data'45", align 8
  store %edge_t* %edge, %edge_t** @e0, align 8
  store %edge_t* %myEdgeStruct, %edge_t** @e0, align 8
  %n246 = load %node_struct*, %node_struct** @n2, align 8
  %n047 = load %node_struct*, %node_struct** @n0, align 8
  %malloccall48 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct49 = bitcast i8* %malloccall48 to %edge_t*
  %"name'50" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct49, i32 0, i32 0
  %"name'51" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct49, i32 0, i32 1
  %"name'52" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct49, i32 0, i32 2
  store %node_struct* %n246, %node_struct** %"name'50", align 8
  store %node_struct* %n047, %node_struct** %"name'51", align 8
  store i32 0, i32* %"name'52", align 4
  %malloccall53 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge54 = bitcast i8* %malloccall53 to %edge_t*
  %"name'55" = getelementptr inbounds %edge_t, %edge_t* %edge54, i32 0, i32 0
  %"data'56" = getelementptr inbounds %edge_t, %edge_t* %edge54, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'55", align 8
  store %node_struct* null, %node_struct** %"data'56", align 8
  store %edge_t* %edge54, %edge_t** @e1, align 8
  store %edge_t* %myEdgeStruct49, %edge_t** @e1, align 8
  %n057 = load %node_struct*, %node_struct** @n0, align 8
  %n1 = load %node_struct*, %node_struct** @n1, align 8
  %malloccall58 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct59 = bitcast i8* %malloccall58 to %edge_t*
  %"name'60" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct59, i32 0, i32 0
  %"name'61" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct59, i32 0, i32 1
  %"name'62" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct59, i32 0, i32 2
  store %node_struct* %n057, %node_struct** %"name'60", align 8
  store %node_struct* %n1, %node_struct** %"name'61", align 8
  store i32 0, i32* %"name'62", align 4
  %malloccall63 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge64 = bitcast i8* %malloccall63 to %edge_t*
  %"name'65" = getelementptr inbounds %edge_t, %edge_t* %edge64, i32 0, i32 0
  %"data'66" = getelementptr inbounds %edge_t, %edge_t* %edge64, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'65", align 8
  store %node_struct* null, %node_struct** %"data'66", align 8
  store %edge_t* %edge64, %edge_t** @e2, align 8
  store %edge_t* %myEdgeStruct59, %edge_t** @e2, align 8
  %n167 = load %node_struct*, %node_struct** @n1, align 8
  %n268 = load %node_struct*, %node_struct** @n2, align 8
  %malloccall69 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct70 = bitcast i8* %malloccall69 to %edge_t*
  %"name'71" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct70, i32 0, i32 0
  %"name'72" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct70, i32 0, i32 1
  %"name'73" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct70, i32 0, i32 2
  store %node_struct* %n167, %node_struct** %"name'71", align 8
  store %node_struct* %n268, %node_struct** %"name'72", align 8
  store i32 0, i32* %"name'73", align 4
  %malloccall74 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge75 = bitcast i8* %malloccall74 to %edge_t*
  %"name'76" = getelementptr inbounds %edge_t, %edge_t* %edge75, i32 0, i32 0
  %"data'77" = getelementptr inbounds %edge_t, %edge_t* %edge75, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'76", align 8
  store %node_struct* null, %node_struct** %"data'77", align 8
  store %edge_t* %edge75, %edge_t** @e3, align 8
  store %edge_t* %myEdgeStruct70, %edge_t** @e3, align 8
  %n278 = load %node_struct*, %node_struct** @n2, align 8
  %n3 = load %node_struct*, %node_struct** @n3, align 8
  %malloccall79 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct80 = bitcast i8* %malloccall79 to %edge_t*
  %"name'81" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct80, i32 0, i32 0
  %"name'82" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct80, i32 0, i32 1
  %"name'83" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct80, i32 0, i32 2
  store %node_struct* %n278, %node_struct** %"name'81", align 8
  store %node_struct* %n3, %node_struct** %"name'82", align 8
  store i32 0, i32* %"name'83", align 4
  %malloccall84 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge85 = bitcast i8* %malloccall84 to %edge_t*
  %"name'86" = getelementptr inbounds %edge_t, %edge_t* %edge85, i32 0, i32 0
  %"data'87" = getelementptr inbounds %edge_t, %edge_t* %edge85, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'86", align 8
  store %node_struct* null, %node_struct** %"data'87", align 8
  store %edge_t* %edge85, %edge_t** @e4, align 8
  store %edge_t* %myEdgeStruct80, %edge_t** @e4, align 8
  %malloccall88 = tail call i8* @malloc(i32 ptrtoint (%graph_tt* getelementptr (%graph_tt, %graph_tt* null, i32 1) to i32))
  %node89 = bitcast i8* %malloccall88 to %graph_tt*
  %"name'90" = getelementptr inbounds %graph_tt, %graph_tt* %node89, i32 0, i32 0
  %"data'91" = getelementptr inbounds %graph_tt, %graph_tt* %node89, i32 0, i32 1
  store %node_node* null, %node_node** %"name'90", align 8
  store %edge_node* null, %edge_node** %"data'91", align 8
  store %graph_tt* %node89, %graph_tt** @g, align 8
  %n092 = load %node_struct*, %node_struct** @n0, align 8
  %graph_ptr = load %graph_tt*, %graph_tt** @g, align 8
  %nodes = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr, i32 0, i32 0
  %nodes_hd = load %node_node*, %node_node** %nodes, align 8
  %malloccall93 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node = bitcast i8* %malloccall93 to %node_node*
  %"lst_rst'" = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 1
  %node_ptr = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 0
  store %node_node* %nodes_hd, %node_node** %"lst_rst'", align 8
  store %node_struct* %n092, %node_struct** %node_ptr, align 8
  store %node_node* %new_node, %node_node** %nodes, align 8
  %n194 = load %node_struct*, %node_struct** @n1, align 8
  %graph_ptr95 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes96 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr95, i32 0, i32 0
  %nodes_hd97 = load %node_node*, %node_node** %nodes96, align 8
  %malloccall98 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node99 = bitcast i8* %malloccall98 to %node_node*
  %"lst_rst'100" = getelementptr inbounds %node_node, %node_node* %new_node99, i32 0, i32 1
  %node_ptr101 = getelementptr inbounds %node_node, %node_node* %new_node99, i32 0, i32 0
  store %node_node* %nodes_hd97, %node_node** %"lst_rst'100", align 8
  store %node_struct* %n194, %node_struct** %node_ptr101, align 8
  store %node_node* %new_node99, %node_node** %nodes96, align 8
  %n2102 = load %node_struct*, %node_struct** @n2, align 8
  %graph_ptr103 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes104 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr103, i32 0, i32 0
  %nodes_hd105 = load %node_node*, %node_node** %nodes104, align 8
  %malloccall106 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node107 = bitcast i8* %malloccall106 to %node_node*
  %"lst_rst'108" = getelementptr inbounds %node_node, %node_node* %new_node107, i32 0, i32 1
  %node_ptr109 = getelementptr inbounds %node_node, %node_node* %new_node107, i32 0, i32 0
  store %node_node* %nodes_hd105, %node_node** %"lst_rst'108", align 8
  store %node_struct* %n2102, %node_struct** %node_ptr109, align 8
  store %node_node* %new_node107, %node_node** %nodes104, align 8
  %n3110 = load %node_struct*, %node_struct** @n3, align 8
  %graph_ptr111 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes112 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr111, i32 0, i32 0
  %nodes_hd113 = load %node_node*, %node_node** %nodes112, align 8
  %malloccall114 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node115 = bitcast i8* %malloccall114 to %node_node*
  %"lst_rst'116" = getelementptr inbounds %node_node, %node_node* %new_node115, i32 0, i32 1
  %node_ptr117 = getelementptr inbounds %node_node, %node_node* %new_node115, i32 0, i32 0
  store %node_node* %nodes_hd113, %node_node** %"lst_rst'116", align 8
  store %node_struct* %n3110, %node_struct** %node_ptr117, align 8
  store %node_node* %new_node115, %node_node** %nodes112, align 8
  %e0 = load %edge_t*, %edge_t** @e0, align 8
  %graph_ptr118 = load %graph_tt*, %graph_tt** @g, align 8
  %edges = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr118, i32 0, i32 1
  %edges_hd = load %edge_node*, %edge_node** %edges, align 8
  %malloccall119 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge = bitcast i8* %malloccall119 to %edge_node*
  %"lst_rst'120" = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 1
  %edge_ptr = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 0
  store %edge_node* %edges_hd, %edge_node** %"lst_rst'120", align 8
  store %edge_t* %e0, %edge_t** %edge_ptr, align 8
  %src_ptr = getelementptr inbounds %edge_t, %edge_t* %e0, i32 0, i32 0
  %dst_ptr = getelementptr inbounds %edge_t, %edge_t* %e0, i32 0, i32 1
  %"src'" = load %node_struct*, %node_struct** %src_ptr, align 8
  %"dst'" = load %node_struct*, %node_struct** %dst_ptr, align 8
  %ret_true = alloca i1, align 1
  store i1 false, i1* %ret_true, align 1
  %graph_ptr121 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes122 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr121, i32 0, i32 0
  %head = load %node_node*, %node_node** %nodes122, align 8
  store %node_node* %head, %node_node** @llNodes, align 8
  br label %while

while:                                            ; preds = %entry, %else
  %putMeHere = load %node_node*, %node_node** @llNodes, align 8
  %curr = icmp ne %node_node* %putMeHere, null
  br i1 %curr, label %while_body, label %merge

while_body:                                       ; preds = %while
  %putMeHere123 = load %node_node*, %node_node** @llNodes, align 8
  %nodes124 = getelementptr inbounds %node_node, %node_node* %putMeHere123, i32 0, i32 0
  %"stored_node'" = load %node_struct*, %node_struct** %nodes124, align 8
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
  %ret_true125 = alloca i1, align 1
  store i1 false, i1* %ret_true125, align 1
  %graph_ptr126 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes127 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr126, i32 0, i32 0
  %head128 = load %node_node*, %node_node** %nodes127, align 8
  store %node_node* %head128, %node_node** @llNodes.3, align 8
  br label %while129

while129:                                         ; preds = %merge, %else138
  %putMeHere130 = load %node_node*, %node_node** @llNodes.3, align 8
  %curr131 = icmp ne %node_node* %putMeHere130, null
  br i1 %curr131, label %while_body132, label %merge139

while_body132:                                    ; preds = %while129
  %putMeHere133 = load %node_node*, %node_node** @llNodes.3, align 8
  %nodes134 = getelementptr inbounds %node_node, %node_node* %putMeHere133, i32 0, i32 0
  %"stored_node'135" = load %node_struct*, %node_struct** %nodes134, align 8
  br label %if136

if136:                                            ; preds = %while_body132
  %"found?140" = icmp eq %node_struct* %"stored_node'135", %"dst'"
  br i1 %"found?140", label %then137, label %else138

then137:                                          ; preds = %if136
  store i1 true, i1* %ret_true125, align 1
  br label %merge139

else138:                                          ; preds = %if136
  %toBeHere141 = load %node_node*, %node_node** @llNodes.3, align 8
  %llNodesPtr142 = getelementptr inbounds %node_node, %node_node* %toBeHere141, i32 0, i32 1
  %toBeHerenow143 = load %node_node*, %node_node** %llNodesPtr142, align 8
  store %node_node* %toBeHerenow143, %node_node** @llNodes.3, align 8
  br label %while129

merge139:                                         ; preds = %while129, %then137
  %returnVal144 = load i1, i1* %ret_true125, align 1
  br label %if145

if145:                                            ; preds = %merge139
  br i1 %returnVal, label %merge147, label %else146

else146:                                          ; preds = %if145
  %graph_ptr148 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes149 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr148, i32 0, i32 0
  %nodes_hd150 = load %node_node*, %node_node** %nodes149, align 8
  %malloccall151 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node152 = bitcast i8* %malloccall151 to %node_node*
  %"lst_rst'153" = getelementptr inbounds %node_node, %node_node* %new_node152, i32 0, i32 1
  %node_ptr154 = getelementptr inbounds %node_node, %node_node* %new_node152, i32 0, i32 0
  store %node_node* %nodes_hd150, %node_node** %"lst_rst'153", align 8
  store %node_struct* %"src'", %node_struct** %node_ptr154, align 8
  store %node_node* %new_node152, %node_node** %nodes149, align 8
  br label %merge147

merge147:                                         ; preds = %else146, %if145
  br label %if155

if155:                                            ; preds = %merge147
  br i1 %returnVal144, label %merge157, label %else156

else156:                                          ; preds = %if155
  %graph_ptr158 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes159 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr158, i32 0, i32 0
  %nodes_hd160 = load %node_node*, %node_node** %nodes159, align 8
  %malloccall161 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node162 = bitcast i8* %malloccall161 to %node_node*
  %"lst_rst'163" = getelementptr inbounds %node_node, %node_node* %new_node162, i32 0, i32 1
  %node_ptr164 = getelementptr inbounds %node_node, %node_node* %new_node162, i32 0, i32 0
  store %node_node* %nodes_hd160, %node_node** %"lst_rst'163", align 8
  store %node_struct* %"dst'", %node_struct** %node_ptr164, align 8
  store %node_node* %new_node162, %node_node** %nodes159, align 8
  br label %merge157

merge157:                                         ; preds = %else156, %if155
  store %edge_node* %new_edge, %edge_node** %edges, align 8
  %e1 = load %edge_t*, %edge_t** @e1, align 8
  %graph_ptr165 = load %graph_tt*, %graph_tt** @g, align 8
  %edges166 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr165, i32 0, i32 1
  %edges_hd167 = load %edge_node*, %edge_node** %edges166, align 8
  %malloccall168 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge169 = bitcast i8* %malloccall168 to %edge_node*
  %"lst_rst'170" = getelementptr inbounds %edge_node, %edge_node* %new_edge169, i32 0, i32 1
  %edge_ptr171 = getelementptr inbounds %edge_node, %edge_node* %new_edge169, i32 0, i32 0
  store %edge_node* %edges_hd167, %edge_node** %"lst_rst'170", align 8
  store %edge_t* %e1, %edge_t** %edge_ptr171, align 8
  %src_ptr172 = getelementptr inbounds %edge_t, %edge_t* %e1, i32 0, i32 0
  %dst_ptr173 = getelementptr inbounds %edge_t, %edge_t* %e1, i32 0, i32 1
  %"src'174" = load %node_struct*, %node_struct** %src_ptr172, align 8
  %"dst'175" = load %node_struct*, %node_struct** %dst_ptr173, align 8
  %ret_true176 = alloca i1, align 1
  store i1 false, i1* %ret_true176, align 1
  %graph_ptr177 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes178 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr177, i32 0, i32 0
  %head179 = load %node_node*, %node_node** %nodes178, align 8
  store %node_node* %head179, %node_node** @llNodes.4, align 8
  br label %while180

while180:                                         ; preds = %merge157, %else189
  %putMeHere181 = load %node_node*, %node_node** @llNodes.4, align 8
  %curr182 = icmp ne %node_node* %putMeHere181, null
  br i1 %curr182, label %while_body183, label %merge190

while_body183:                                    ; preds = %while180
  %putMeHere184 = load %node_node*, %node_node** @llNodes.4, align 8
  %nodes185 = getelementptr inbounds %node_node, %node_node* %putMeHere184, i32 0, i32 0
  %"stored_node'186" = load %node_struct*, %node_struct** %nodes185, align 8
  br label %if187

if187:                                            ; preds = %while_body183
  %"found?191" = icmp eq %node_struct* %"stored_node'186", %"src'174"
  br i1 %"found?191", label %then188, label %else189

then188:                                          ; preds = %if187
  store i1 true, i1* %ret_true176, align 1
  br label %merge190

else189:                                          ; preds = %if187
  %toBeHere192 = load %node_node*, %node_node** @llNodes.4, align 8
  %llNodesPtr193 = getelementptr inbounds %node_node, %node_node* %toBeHere192, i32 0, i32 1
  %toBeHerenow194 = load %node_node*, %node_node** %llNodesPtr193, align 8
  store %node_node* %toBeHerenow194, %node_node** @llNodes.4, align 8
  br label %while180

merge190:                                         ; preds = %while180, %then188
  %returnVal195 = load i1, i1* %ret_true176, align 1
  %ret_true196 = alloca i1, align 1
  store i1 false, i1* %ret_true196, align 1
  %graph_ptr197 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes198 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr197, i32 0, i32 0
  %head199 = load %node_node*, %node_node** %nodes198, align 8
  store %node_node* %head199, %node_node** @llNodes.5, align 8
  br label %while200

while200:                                         ; preds = %merge190, %else209
  %putMeHere201 = load %node_node*, %node_node** @llNodes.5, align 8
  %curr202 = icmp ne %node_node* %putMeHere201, null
  br i1 %curr202, label %while_body203, label %merge210

while_body203:                                    ; preds = %while200
  %putMeHere204 = load %node_node*, %node_node** @llNodes.5, align 8
  %nodes205 = getelementptr inbounds %node_node, %node_node* %putMeHere204, i32 0, i32 0
  %"stored_node'206" = load %node_struct*, %node_struct** %nodes205, align 8
  br label %if207

if207:                                            ; preds = %while_body203
  %"found?211" = icmp eq %node_struct* %"stored_node'206", %"dst'175"
  br i1 %"found?211", label %then208, label %else209

then208:                                          ; preds = %if207
  store i1 true, i1* %ret_true196, align 1
  br label %merge210

else209:                                          ; preds = %if207
  %toBeHere212 = load %node_node*, %node_node** @llNodes.5, align 8
  %llNodesPtr213 = getelementptr inbounds %node_node, %node_node* %toBeHere212, i32 0, i32 1
  %toBeHerenow214 = load %node_node*, %node_node** %llNodesPtr213, align 8
  store %node_node* %toBeHerenow214, %node_node** @llNodes.5, align 8
  br label %while200

merge210:                                         ; preds = %while200, %then208
  %returnVal215 = load i1, i1* %ret_true196, align 1
  br label %if216

if216:                                            ; preds = %merge210
  br i1 %returnVal195, label %merge218, label %else217

else217:                                          ; preds = %if216
  %graph_ptr219 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes220 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr219, i32 0, i32 0
  %nodes_hd221 = load %node_node*, %node_node** %nodes220, align 8
  %malloccall222 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node223 = bitcast i8* %malloccall222 to %node_node*
  %"lst_rst'224" = getelementptr inbounds %node_node, %node_node* %new_node223, i32 0, i32 1
  %node_ptr225 = getelementptr inbounds %node_node, %node_node* %new_node223, i32 0, i32 0
  store %node_node* %nodes_hd221, %node_node** %"lst_rst'224", align 8
  store %node_struct* %"src'174", %node_struct** %node_ptr225, align 8
  store %node_node* %new_node223, %node_node** %nodes220, align 8
  br label %merge218

merge218:                                         ; preds = %else217, %if216
  br label %if226

if226:                                            ; preds = %merge218
  br i1 %returnVal215, label %merge228, label %else227

else227:                                          ; preds = %if226
  %graph_ptr229 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes230 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr229, i32 0, i32 0
  %nodes_hd231 = load %node_node*, %node_node** %nodes230, align 8
  %malloccall232 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node233 = bitcast i8* %malloccall232 to %node_node*
  %"lst_rst'234" = getelementptr inbounds %node_node, %node_node* %new_node233, i32 0, i32 1
  %node_ptr235 = getelementptr inbounds %node_node, %node_node* %new_node233, i32 0, i32 0
  store %node_node* %nodes_hd231, %node_node** %"lst_rst'234", align 8
  store %node_struct* %"dst'175", %node_struct** %node_ptr235, align 8
  store %node_node* %new_node233, %node_node** %nodes230, align 8
  br label %merge228

merge228:                                         ; preds = %else227, %if226
  store %edge_node* %new_edge169, %edge_node** %edges166, align 8
  %e2 = load %edge_t*, %edge_t** @e2, align 8
  %graph_ptr236 = load %graph_tt*, %graph_tt** @g, align 8
  %edges237 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr236, i32 0, i32 1
  %edges_hd238 = load %edge_node*, %edge_node** %edges237, align 8
  %malloccall239 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge240 = bitcast i8* %malloccall239 to %edge_node*
  %"lst_rst'241" = getelementptr inbounds %edge_node, %edge_node* %new_edge240, i32 0, i32 1
  %edge_ptr242 = getelementptr inbounds %edge_node, %edge_node* %new_edge240, i32 0, i32 0
  store %edge_node* %edges_hd238, %edge_node** %"lst_rst'241", align 8
  store %edge_t* %e2, %edge_t** %edge_ptr242, align 8
  %src_ptr243 = getelementptr inbounds %edge_t, %edge_t* %e2, i32 0, i32 0
  %dst_ptr244 = getelementptr inbounds %edge_t, %edge_t* %e2, i32 0, i32 1
  %"src'245" = load %node_struct*, %node_struct** %src_ptr243, align 8
  %"dst'246" = load %node_struct*, %node_struct** %dst_ptr244, align 8
  %ret_true247 = alloca i1, align 1
  store i1 false, i1* %ret_true247, align 1
  %graph_ptr248 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes249 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr248, i32 0, i32 0
  %head250 = load %node_node*, %node_node** %nodes249, align 8
  store %node_node* %head250, %node_node** @llNodes.6, align 8
  br label %while251

while251:                                         ; preds = %merge228, %else260
  %putMeHere252 = load %node_node*, %node_node** @llNodes.6, align 8
  %curr253 = icmp ne %node_node* %putMeHere252, null
  br i1 %curr253, label %while_body254, label %merge261

while_body254:                                    ; preds = %while251
  %putMeHere255 = load %node_node*, %node_node** @llNodes.6, align 8
  %nodes256 = getelementptr inbounds %node_node, %node_node* %putMeHere255, i32 0, i32 0
  %"stored_node'257" = load %node_struct*, %node_struct** %nodes256, align 8
  br label %if258

if258:                                            ; preds = %while_body254
  %"found?262" = icmp eq %node_struct* %"stored_node'257", %"src'245"
  br i1 %"found?262", label %then259, label %else260

then259:                                          ; preds = %if258
  store i1 true, i1* %ret_true247, align 1
  br label %merge261

else260:                                          ; preds = %if258
  %toBeHere263 = load %node_node*, %node_node** @llNodes.6, align 8
  %llNodesPtr264 = getelementptr inbounds %node_node, %node_node* %toBeHere263, i32 0, i32 1
  %toBeHerenow265 = load %node_node*, %node_node** %llNodesPtr264, align 8
  store %node_node* %toBeHerenow265, %node_node** @llNodes.6, align 8
  br label %while251

merge261:                                         ; preds = %while251, %then259
  %returnVal266 = load i1, i1* %ret_true247, align 1
  %ret_true267 = alloca i1, align 1
  store i1 false, i1* %ret_true267, align 1
  %graph_ptr268 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes269 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr268, i32 0, i32 0
  %head270 = load %node_node*, %node_node** %nodes269, align 8
  store %node_node* %head270, %node_node** @llNodes.7, align 8
  br label %while271

while271:                                         ; preds = %merge261, %else280
  %putMeHere272 = load %node_node*, %node_node** @llNodes.7, align 8
  %curr273 = icmp ne %node_node* %putMeHere272, null
  br i1 %curr273, label %while_body274, label %merge281

while_body274:                                    ; preds = %while271
  %putMeHere275 = load %node_node*, %node_node** @llNodes.7, align 8
  %nodes276 = getelementptr inbounds %node_node, %node_node* %putMeHere275, i32 0, i32 0
  %"stored_node'277" = load %node_struct*, %node_struct** %nodes276, align 8
  br label %if278

if278:                                            ; preds = %while_body274
  %"found?282" = icmp eq %node_struct* %"stored_node'277", %"dst'246"
  br i1 %"found?282", label %then279, label %else280

then279:                                          ; preds = %if278
  store i1 true, i1* %ret_true267, align 1
  br label %merge281

else280:                                          ; preds = %if278
  %toBeHere283 = load %node_node*, %node_node** @llNodes.7, align 8
  %llNodesPtr284 = getelementptr inbounds %node_node, %node_node* %toBeHere283, i32 0, i32 1
  %toBeHerenow285 = load %node_node*, %node_node** %llNodesPtr284, align 8
  store %node_node* %toBeHerenow285, %node_node** @llNodes.7, align 8
  br label %while271

merge281:                                         ; preds = %while271, %then279
  %returnVal286 = load i1, i1* %ret_true267, align 1
  br label %if287

if287:                                            ; preds = %merge281
  br i1 %returnVal266, label %merge289, label %else288

else288:                                          ; preds = %if287
  %graph_ptr290 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes291 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr290, i32 0, i32 0
  %nodes_hd292 = load %node_node*, %node_node** %nodes291, align 8
  %malloccall293 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node294 = bitcast i8* %malloccall293 to %node_node*
  %"lst_rst'295" = getelementptr inbounds %node_node, %node_node* %new_node294, i32 0, i32 1
  %node_ptr296 = getelementptr inbounds %node_node, %node_node* %new_node294, i32 0, i32 0
  store %node_node* %nodes_hd292, %node_node** %"lst_rst'295", align 8
  store %node_struct* %"src'245", %node_struct** %node_ptr296, align 8
  store %node_node* %new_node294, %node_node** %nodes291, align 8
  br label %merge289

merge289:                                         ; preds = %else288, %if287
  br label %if297

if297:                                            ; preds = %merge289
  br i1 %returnVal286, label %merge299, label %else298

else298:                                          ; preds = %if297
  %graph_ptr300 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes301 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr300, i32 0, i32 0
  %nodes_hd302 = load %node_node*, %node_node** %nodes301, align 8
  %malloccall303 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node304 = bitcast i8* %malloccall303 to %node_node*
  %"lst_rst'305" = getelementptr inbounds %node_node, %node_node* %new_node304, i32 0, i32 1
  %node_ptr306 = getelementptr inbounds %node_node, %node_node* %new_node304, i32 0, i32 0
  store %node_node* %nodes_hd302, %node_node** %"lst_rst'305", align 8
  store %node_struct* %"dst'246", %node_struct** %node_ptr306, align 8
  store %node_node* %new_node304, %node_node** %nodes301, align 8
  br label %merge299

merge299:                                         ; preds = %else298, %if297
  store %edge_node* %new_edge240, %edge_node** %edges237, align 8
  %e3 = load %edge_t*, %edge_t** @e3, align 8
  %graph_ptr307 = load %graph_tt*, %graph_tt** @g, align 8
  %edges308 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr307, i32 0, i32 1
  %edges_hd309 = load %edge_node*, %edge_node** %edges308, align 8
  %malloccall310 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge311 = bitcast i8* %malloccall310 to %edge_node*
  %"lst_rst'312" = getelementptr inbounds %edge_node, %edge_node* %new_edge311, i32 0, i32 1
  %edge_ptr313 = getelementptr inbounds %edge_node, %edge_node* %new_edge311, i32 0, i32 0
  store %edge_node* %edges_hd309, %edge_node** %"lst_rst'312", align 8
  store %edge_t* %e3, %edge_t** %edge_ptr313, align 8
  %src_ptr314 = getelementptr inbounds %edge_t, %edge_t* %e3, i32 0, i32 0
  %dst_ptr315 = getelementptr inbounds %edge_t, %edge_t* %e3, i32 0, i32 1
  %"src'316" = load %node_struct*, %node_struct** %src_ptr314, align 8
  %"dst'317" = load %node_struct*, %node_struct** %dst_ptr315, align 8
  %ret_true318 = alloca i1, align 1
  store i1 false, i1* %ret_true318, align 1
  %graph_ptr319 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes320 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr319, i32 0, i32 0
  %head321 = load %node_node*, %node_node** %nodes320, align 8
  store %node_node* %head321, %node_node** @llNodes.8, align 8
  br label %while322

while322:                                         ; preds = %merge299, %else331
  %putMeHere323 = load %node_node*, %node_node** @llNodes.8, align 8
  %curr324 = icmp ne %node_node* %putMeHere323, null
  br i1 %curr324, label %while_body325, label %merge332

while_body325:                                    ; preds = %while322
  %putMeHere326 = load %node_node*, %node_node** @llNodes.8, align 8
  %nodes327 = getelementptr inbounds %node_node, %node_node* %putMeHere326, i32 0, i32 0
  %"stored_node'328" = load %node_struct*, %node_struct** %nodes327, align 8
  br label %if329

if329:                                            ; preds = %while_body325
  %"found?333" = icmp eq %node_struct* %"stored_node'328", %"src'316"
  br i1 %"found?333", label %then330, label %else331

then330:                                          ; preds = %if329
  store i1 true, i1* %ret_true318, align 1
  br label %merge332

else331:                                          ; preds = %if329
  %toBeHere334 = load %node_node*, %node_node** @llNodes.8, align 8
  %llNodesPtr335 = getelementptr inbounds %node_node, %node_node* %toBeHere334, i32 0, i32 1
  %toBeHerenow336 = load %node_node*, %node_node** %llNodesPtr335, align 8
  store %node_node* %toBeHerenow336, %node_node** @llNodes.8, align 8
  br label %while322

merge332:                                         ; preds = %while322, %then330
  %returnVal337 = load i1, i1* %ret_true318, align 1
  %ret_true338 = alloca i1, align 1
  store i1 false, i1* %ret_true338, align 1
  %graph_ptr339 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes340 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr339, i32 0, i32 0
  %head341 = load %node_node*, %node_node** %nodes340, align 8
  store %node_node* %head341, %node_node** @llNodes.9, align 8
  br label %while342

while342:                                         ; preds = %merge332, %else351
  %putMeHere343 = load %node_node*, %node_node** @llNodes.9, align 8
  %curr344 = icmp ne %node_node* %putMeHere343, null
  br i1 %curr344, label %while_body345, label %merge352

while_body345:                                    ; preds = %while342
  %putMeHere346 = load %node_node*, %node_node** @llNodes.9, align 8
  %nodes347 = getelementptr inbounds %node_node, %node_node* %putMeHere346, i32 0, i32 0
  %"stored_node'348" = load %node_struct*, %node_struct** %nodes347, align 8
  br label %if349

if349:                                            ; preds = %while_body345
  %"found?353" = icmp eq %node_struct* %"stored_node'348", %"dst'317"
  br i1 %"found?353", label %then350, label %else351

then350:                                          ; preds = %if349
  store i1 true, i1* %ret_true338, align 1
  br label %merge352

else351:                                          ; preds = %if349
  %toBeHere354 = load %node_node*, %node_node** @llNodes.9, align 8
  %llNodesPtr355 = getelementptr inbounds %node_node, %node_node* %toBeHere354, i32 0, i32 1
  %toBeHerenow356 = load %node_node*, %node_node** %llNodesPtr355, align 8
  store %node_node* %toBeHerenow356, %node_node** @llNodes.9, align 8
  br label %while342

merge352:                                         ; preds = %while342, %then350
  %returnVal357 = load i1, i1* %ret_true338, align 1
  br label %if358

if358:                                            ; preds = %merge352
  br i1 %returnVal337, label %merge360, label %else359

else359:                                          ; preds = %if358
  %graph_ptr361 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes362 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr361, i32 0, i32 0
  %nodes_hd363 = load %node_node*, %node_node** %nodes362, align 8
  %malloccall364 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node365 = bitcast i8* %malloccall364 to %node_node*
  %"lst_rst'366" = getelementptr inbounds %node_node, %node_node* %new_node365, i32 0, i32 1
  %node_ptr367 = getelementptr inbounds %node_node, %node_node* %new_node365, i32 0, i32 0
  store %node_node* %nodes_hd363, %node_node** %"lst_rst'366", align 8
  store %node_struct* %"src'316", %node_struct** %node_ptr367, align 8
  store %node_node* %new_node365, %node_node** %nodes362, align 8
  br label %merge360

merge360:                                         ; preds = %else359, %if358
  br label %if368

if368:                                            ; preds = %merge360
  br i1 %returnVal357, label %merge370, label %else369

else369:                                          ; preds = %if368
  %graph_ptr371 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes372 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr371, i32 0, i32 0
  %nodes_hd373 = load %node_node*, %node_node** %nodes372, align 8
  %malloccall374 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node375 = bitcast i8* %malloccall374 to %node_node*
  %"lst_rst'376" = getelementptr inbounds %node_node, %node_node* %new_node375, i32 0, i32 1
  %node_ptr377 = getelementptr inbounds %node_node, %node_node* %new_node375, i32 0, i32 0
  store %node_node* %nodes_hd373, %node_node** %"lst_rst'376", align 8
  store %node_struct* %"dst'317", %node_struct** %node_ptr377, align 8
  store %node_node* %new_node375, %node_node** %nodes372, align 8
  br label %merge370

merge370:                                         ; preds = %else369, %if368
  store %edge_node* %new_edge311, %edge_node** %edges308, align 8
  %e4 = load %edge_t*, %edge_t** @e4, align 8
  %graph_ptr378 = load %graph_tt*, %graph_tt** @g, align 8
  %edges379 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr378, i32 0, i32 1
  %edges_hd380 = load %edge_node*, %edge_node** %edges379, align 8
  %malloccall381 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge382 = bitcast i8* %malloccall381 to %edge_node*
  %"lst_rst'383" = getelementptr inbounds %edge_node, %edge_node* %new_edge382, i32 0, i32 1
  %edge_ptr384 = getelementptr inbounds %edge_node, %edge_node* %new_edge382, i32 0, i32 0
  store %edge_node* %edges_hd380, %edge_node** %"lst_rst'383", align 8
  store %edge_t* %e4, %edge_t** %edge_ptr384, align 8
  %src_ptr385 = getelementptr inbounds %edge_t, %edge_t* %e4, i32 0, i32 0
  %dst_ptr386 = getelementptr inbounds %edge_t, %edge_t* %e4, i32 0, i32 1
  %"src'387" = load %node_struct*, %node_struct** %src_ptr385, align 8
  %"dst'388" = load %node_struct*, %node_struct** %dst_ptr386, align 8
  %ret_true389 = alloca i1, align 1
  store i1 false, i1* %ret_true389, align 1
  %graph_ptr390 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes391 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr390, i32 0, i32 0
  %head392 = load %node_node*, %node_node** %nodes391, align 8
  store %node_node* %head392, %node_node** @llNodes.10, align 8
  br label %while393

while393:                                         ; preds = %merge370, %else402
  %putMeHere394 = load %node_node*, %node_node** @llNodes.10, align 8
  %curr395 = icmp ne %node_node* %putMeHere394, null
  br i1 %curr395, label %while_body396, label %merge403

while_body396:                                    ; preds = %while393
  %putMeHere397 = load %node_node*, %node_node** @llNodes.10, align 8
  %nodes398 = getelementptr inbounds %node_node, %node_node* %putMeHere397, i32 0, i32 0
  %"stored_node'399" = load %node_struct*, %node_struct** %nodes398, align 8
  br label %if400

if400:                                            ; preds = %while_body396
  %"found?404" = icmp eq %node_struct* %"stored_node'399", %"src'387"
  br i1 %"found?404", label %then401, label %else402

then401:                                          ; preds = %if400
  store i1 true, i1* %ret_true389, align 1
  br label %merge403

else402:                                          ; preds = %if400
  %toBeHere405 = load %node_node*, %node_node** @llNodes.10, align 8
  %llNodesPtr406 = getelementptr inbounds %node_node, %node_node* %toBeHere405, i32 0, i32 1
  %toBeHerenow407 = load %node_node*, %node_node** %llNodesPtr406, align 8
  store %node_node* %toBeHerenow407, %node_node** @llNodes.10, align 8
  br label %while393

merge403:                                         ; preds = %while393, %then401
  %returnVal408 = load i1, i1* %ret_true389, align 1
  %ret_true409 = alloca i1, align 1
  store i1 false, i1* %ret_true409, align 1
  %graph_ptr410 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes411 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr410, i32 0, i32 0
  %head412 = load %node_node*, %node_node** %nodes411, align 8
  store %node_node* %head412, %node_node** @llNodes.11, align 8
  br label %while413

while413:                                         ; preds = %merge403, %else422
  %putMeHere414 = load %node_node*, %node_node** @llNodes.11, align 8
  %curr415 = icmp ne %node_node* %putMeHere414, null
  br i1 %curr415, label %while_body416, label %merge423

while_body416:                                    ; preds = %while413
  %putMeHere417 = load %node_node*, %node_node** @llNodes.11, align 8
  %nodes418 = getelementptr inbounds %node_node, %node_node* %putMeHere417, i32 0, i32 0
  %"stored_node'419" = load %node_struct*, %node_struct** %nodes418, align 8
  br label %if420

if420:                                            ; preds = %while_body416
  %"found?424" = icmp eq %node_struct* %"stored_node'419", %"dst'388"
  br i1 %"found?424", label %then421, label %else422

then421:                                          ; preds = %if420
  store i1 true, i1* %ret_true409, align 1
  br label %merge423

else422:                                          ; preds = %if420
  %toBeHere425 = load %node_node*, %node_node** @llNodes.11, align 8
  %llNodesPtr426 = getelementptr inbounds %node_node, %node_node* %toBeHere425, i32 0, i32 1
  %toBeHerenow427 = load %node_node*, %node_node** %llNodesPtr426, align 8
  store %node_node* %toBeHerenow427, %node_node** @llNodes.11, align 8
  br label %while413

merge423:                                         ; preds = %while413, %then421
  %returnVal428 = load i1, i1* %ret_true409, align 1
  br label %if429

if429:                                            ; preds = %merge423
  br i1 %returnVal408, label %merge431, label %else430

else430:                                          ; preds = %if429
  %graph_ptr432 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes433 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr432, i32 0, i32 0
  %nodes_hd434 = load %node_node*, %node_node** %nodes433, align 8
  %malloccall435 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node436 = bitcast i8* %malloccall435 to %node_node*
  %"lst_rst'437" = getelementptr inbounds %node_node, %node_node* %new_node436, i32 0, i32 1
  %node_ptr438 = getelementptr inbounds %node_node, %node_node* %new_node436, i32 0, i32 0
  store %node_node* %nodes_hd434, %node_node** %"lst_rst'437", align 8
  store %node_struct* %"src'387", %node_struct** %node_ptr438, align 8
  store %node_node* %new_node436, %node_node** %nodes433, align 8
  br label %merge431

merge431:                                         ; preds = %else430, %if429
  br label %if439

if439:                                            ; preds = %merge431
  br i1 %returnVal428, label %merge441, label %else440

else440:                                          ; preds = %if439
  %graph_ptr442 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes443 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr442, i32 0, i32 0
  %nodes_hd444 = load %node_node*, %node_node** %nodes443, align 8
  %malloccall445 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node446 = bitcast i8* %malloccall445 to %node_node*
  %"lst_rst'447" = getelementptr inbounds %node_node, %node_node* %new_node446, i32 0, i32 1
  %node_ptr448 = getelementptr inbounds %node_node, %node_node* %new_node446, i32 0, i32 0
  store %node_node* %nodes_hd444, %node_node** %"lst_rst'447", align 8
  store %node_struct* %"dst'388", %node_struct** %node_ptr448, align 8
  store %node_node* %new_node446, %node_node** %nodes443, align 8
  br label %merge441

merge441:                                         ; preds = %else440, %if439
  store %edge_node* %new_edge382, %edge_node** %edges379, align 8
  %n2449 = load %node_struct*, %node_struct** @n2, align 8
  %g = load %graph_tt*, %graph_tt** @g, align 8
  %adj_nodes_result = call %list_node* @adj_nodes(%graph_tt* %g, %node_struct* %n2449)
  store %list_node* %adj_nodes_result, %list_node** @adjs, align 8
  %list = load %list_node*, %list_node** @adjs, align 8
  %malloccall450 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %0 = bitcast i8* %malloccall450 to %list_node**
  %malloccall451 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %malloccall451 to i32*
  store %list_node* %list, %list_node** %0, align 8
  store i32 1, i32* %1, align 4
  br label %traverse_loop

traverse_loop:                                    ; preds = %while_body452, %merge441
  %2 = load i32, i32* %1, align 4
  %temp455 = icmp ne i32 %2, 0
  br i1 %temp455, label %while_body452, label %merge456

while_body452:                                    ; preds = %traverse_loop
  %3 = load %list_node*, %list_node** %0, align 8
  %temp453 = getelementptr inbounds %list_node, %list_node* %3, i32 0, i32 1
  %temp454 = load %list_node*, %list_node** %temp453, align 8
  %4 = load i32, i32* %1, align 4
  %subtract = sub i32 %4, 1
  store i32 %subtract, i32* %1, align 4
  store %list_node* %temp454, %list_node** %0, align 8
  br label %traverse_loop

merge456:                                         ; preds = %traverse_loop
  %5 = load %list_node*, %list_node** %0, align 8
  %temp457 = getelementptr inbounds %list_node, %list_node* %5, i32 0, i32 0
  %retval = load i8*, i8** %temp457, align 8
  %li_conv = bitcast i8* %retval to %node_struct**
  %val_ptr = load %node_struct*, %node_struct** %li_conv, align 8
  %malloccall458 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node459 = bitcast i8* %malloccall458 to %node_struct*
  %malloccall460 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data461 = bitcast i8* %malloccall460 to i8**
  %malloccall462 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name463 = bitcast i8* %malloccall462 to i8**
  %data_ptr464 = bitcast i8** %data461 to i8*
  %name_ptr465 = bitcast i8** %name463 to i8*
  %"name'466" = getelementptr inbounds %node_struct, %node_struct* %node459, i32 0, i32 0
  %"data'467" = getelementptr inbounds %node_struct, %node_struct* %node459, i32 0, i32 2
  store i8* %name_ptr465, i8** %"name'466", align 8
  store i8* %data_ptr464, i8** %"data'467", align 8
  store %node_struct* %node459, %node_struct** @adj1, align 8
  store %node_struct* %val_ptr, %node_struct** @adj1, align 8
  %"lvar'468" = load %node_struct*, %node_struct** @adj1, align 8
  %temp469 = getelementptr inbounds %node_struct, %node_struct* %"lvar'468", i32 0, i32 0
  %adj1.name = load i8*, i8** %temp469, align 8
  %srcNode = load i8*, i8** %temp469, align 8
  store i8* %srcNode, i8** @a_name, align 8
  %n0470 = load %node_struct*, %node_struct** @n0, align 8
  %g471 = load %graph_tt*, %graph_tt** @g, align 8
  %test_result = call i32 @test(%graph_tt* %g471, %node_struct* %n0470)
  store i32 %test_result, i32* @test_len, align 4
  %test_len = load i32, i32* @test_len, align 4
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.12, i32 0, i32 0), i32 %test_len)
  ret i32 0
}

define %list_node* @adj_nodes(%graph_tt* %g1, %node_struct* %n2) {
entry:
  %g = alloca %graph_tt*, align 8
  store %graph_tt* %g1, %graph_tt** %g, align 8
  %n = alloca %node_struct*, align 8
  store %node_struct* %n2, %node_struct** %n, align 8
  %n3 = load %node_struct*, %node_struct** %n, align 8
  %graph_ptr = load %graph_tt*, %graph_tt** %g, align 8
  %edges = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr, i32 0, i32 1
  %head = load %edge_node*, %edge_node** %edges, align 8
  store %edge_node* %head, %edge_node** @llEdges, align 8
  br label %while

while:                                            ; preds = %entry, %else
  %putMeHere = load %edge_node*, %edge_node** @llEdges, align 8
  %curr = icmp ne %edge_node* %putMeHere, null
  br i1 %curr, label %while_body, label %merge

while_body:                                       ; preds = %while
  %putMeHere4 = load %edge_node*, %edge_node** @llEdges, align 8
  %nodes = getelementptr inbounds %edge_node, %edge_node* %putMeHere4, i32 0, i32 0
  %"stored_nodeA'" = load %edge_t*, %edge_t** %nodes, align 8
  br label %if

if:                                               ; preds = %while_body
  %nodes5 = getelementptr inbounds %edge_t, %edge_t* %"stored_nodeA'", i32 0, i32 0
  %nodes6 = getelementptr inbounds %edge_t, %edge_t* %"stored_nodeA'", i32 0, i32 1
  %"currEdgeSrc'" = load %node_struct*, %node_struct** %nodes5, align 8
  %"currEdgeDst'" = load %node_struct*, %node_struct** %nodes6, align 8
  %"foundSrc?" = icmp eq %node_struct* %"currEdgeSrc'", %n3
  %"foundDst?" = icmp eq %node_struct* %"currEdgeDst'", %n3
  %if_found = or i1 %"foundSrc?", %"foundDst?"
  br i1 %if_found, label %then, label %else

then:                                             ; preds = %if
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node = bitcast i8* %malloccall to %list_node*
  %nodes7 = getelementptr inbounds %list_node, %list_node* %node, i32 0, i32 0
  %nodes8 = getelementptr inbounds %list_node, %list_node* %node, i32 0, i32 1
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint (%edge_t** getelementptr (%edge_t*, %edge_t** null, i32 1) to i32))
  %please_work = bitcast i8* %malloccall9 to %edge_t**
  store %edge_t* %"stored_nodeA'", %edge_t** %please_work, align 8
  %currEdgeVoidPtr = bitcast %edge_t** %please_work to i8*
  store i8* %currEdgeVoidPtr, i8** %nodes7, align 8
  %nextEdges = load %list_node*, %list_node** @edgesList, align 8
  store %list_node* %nextEdges, %list_node** %nodes8, align 8
  store %list_node* %node, %list_node** @edgesList, align 8
  br label %else

else:                                             ; preds = %then, %if
  %toBeHere = load %edge_node*, %edge_node** @llEdges, align 8
  %llNodesPtr = getelementptr inbounds %edge_node, %edge_node* %toBeHere, i32 0, i32 1
  %toBeHerenow = load %edge_node*, %edge_node** %llNodesPtr, align 8
  store %edge_node* %toBeHerenow, %edge_node** @llEdges, align 8
  br label %while

merge:                                            ; preds = %while
  %return = load %list_node*, %list_node** @edgesList, align 8
  %edges10 = alloca %list_node*, align 8
  store %list_node* %return, %list_node** %edges10, align 8
  %l = alloca %list_node*, align 8
  %l11 = load %list_node*, %list_node** %l, align 8
  ret %list_node* %l11
}

declare noalias i8* @malloc(i32)

define void @dfs(%graph_tt* %g1, %node_struct* %s2) {
entry:
  %g = alloca %graph_tt*, align 8
  store %graph_tt* %g1, %graph_tt** %g, align 8
  %s = alloca %node_struct*, align 8
  store %node_struct* %s2, %node_struct** %s, align 8
  %"lvar'" = load %node_struct*, %node_struct** %s, align 8
  %temp = getelementptr inbounds %node_struct, %node_struct* %"lvar'", i32 0, i32 1
  store i1 true, i1* %temp, align 1
  %"lvar'3" = load %node_struct*, %node_struct** %s, align 8
  %temp4 = getelementptr inbounds %node_struct, %node_struct* %"lvar'3", i32 0, i32 0
  %s.name = load i8*, i8** %temp4, align 8
  %srcNode = load i8*, i8** %temp4, align 8
  %s_name = alloca i8*, align 8
  store i8* %srcNode, i8** %s_name, align 8
  %s_name5 = load i8*, i8** %s_name, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i8* %s_name5)
  %s6 = load %node_struct*, %node_struct** %s, align 8
  %g7 = load %graph_tt*, %graph_tt** %g, align 8
  %adj_nodes_result = call %list_node* @adj_nodes(%graph_tt* %g7, %node_struct* %s6)
  %adjs = alloca %list_node*, align 8
  store %list_node* %adj_nodes_result, %list_node** %adjs, align 8
  %printf8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @0, i32 0, i32 0))
  %list = load %list_node*, %list_node** %adjs, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %0 = bitcast i8* %malloccall to %list_node**
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %malloccall9 to i32*
  store i32 0, i32* %1, align 4
  store %list_node* %list, %list_node** %0, align 8
  %2 = icmp eq %list_node* %list, null
  br i1 %2, label %then, label %else

merge:                                            ; preds = %merge12, %then
  %3 = load i32, i32* %1, align 4
  %adjs_len = alloca i32, align 4
  store i32 %3, i32* %adjs_len, align 4
  %printf13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1, i32 0, i32 0))
  %i = alloca i32, align 4
  %adjs_len14 = load i32, i32* %adjs_len, align 4
  %printf15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.1, i32 0, i32 0), i32 %adjs_len14)
  store i32 0, i32* %i, align 4
  br label %while

then:                                             ; preds = %entry
  store i32 0, i32* %1, align 4
  br label %merge

else:                                             ; preds = %entry
  br label %traverse_loop

traverse_loop:                                    ; preds = %while_body, %else
  %4 = load %list_node*, %list_node** %0, align 8
  %5 = icmp ne %list_node* %4, null
  br i1 %5, label %while_body, label %merge12

while_body:                                       ; preds = %traverse_loop
  %6 = load %list_node*, %list_node** %0, align 8
  %temp10 = getelementptr inbounds %list_node, %list_node* %6, i32 0, i32 1
  %temp11 = load %list_node*, %list_node** %temp10, align 8
  %7 = load i32, i32* %1, align 4
  %add = add i32 %7, 1
  store i32 %add, i32* %1, align 4
  store %list_node* %temp11, %list_node** %0, align 8
  br label %traverse_loop

merge12:                                          ; preds = %traverse_loop
  br label %merge

while:                                            ; preds = %merge36, %merge
  %i43 = load i32, i32* %i, align 4
  %adjs_len44 = load i32, i32* %adjs_len, align 4
  %tmp45 = icmp slt i32 %i43, %adjs_len44
  br i1 %tmp45, label %while_body16, label %merge46

while_body16:                                     ; preds = %while
  %list17 = load %list_node*, %list_node** %adjs, align 8
  %i18 = load i32, i32* %i, align 4
  %malloccall19 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %8 = bitcast i8* %malloccall19 to %list_node**
  %malloccall20 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %9 = bitcast i8* %malloccall20 to i32*
  store %list_node* %list17, %list_node** %8, align 8
  store i32 %i18, i32* %9, align 4
  br label %traverse_loop21

traverse_loop21:                                  ; preds = %while_body22, %while_body16
  %10 = load i32, i32* %9, align 4
  %temp25 = icmp ne i32 %10, 0
  br i1 %temp25, label %while_body22, label %merge26

while_body22:                                     ; preds = %traverse_loop21
  %11 = load %list_node*, %list_node** %8, align 8
  %temp23 = getelementptr inbounds %list_node, %list_node* %11, i32 0, i32 1
  %temp24 = load %list_node*, %list_node** %temp23, align 8
  %12 = load i32, i32* %9, align 4
  %subtract = sub i32 %12, 1
  store i32 %subtract, i32* %9, align 4
  store %list_node* %temp24, %list_node** %8, align 8
  br label %traverse_loop21

merge26:                                          ; preds = %traverse_loop21
  %13 = load %list_node*, %list_node** %8, align 8
  %temp27 = getelementptr inbounds %list_node, %list_node* %13, i32 0, i32 0
  %retval = load i8*, i8** %temp27, align 8
  %li_conv = bitcast i8* %retval to %node_struct**
  %val_ptr = load %node_struct*, %node_struct** %li_conv, align 8
  %curr = alloca %node_struct*, align 8
  store %node_struct* %val_ptr, %node_struct** %curr, align 8
  %"lvar'28" = load %node_struct*, %node_struct** %curr, align 8
  %temp29 = getelementptr inbounds %node_struct, %node_struct* %"lvar'28", i32 0, i32 0
  %curr.name = load i8*, i8** %temp29, align 8
  %srcNode30 = load i8*, i8** %temp29, align 8
  %curr_name = alloca i8*, align 8
  store i8* %srcNode30, i8** %curr_name, align 8
  %curr_name31 = load i8*, i8** %curr_name, align 8
  %printf32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.2, i32 0, i32 0), i8* %curr_name31)
  %"lvar'33" = load %node_struct*, %node_struct** %curr, align 8
  %temp34 = getelementptr inbounds %node_struct, %node_struct* %"lvar'33", i32 0, i32 1
  %curr.flag = load i1, i1* %temp34, align 1
  %curr.flag35 = load i1, i1* %temp34, align 1
  %tmp = icmp eq i1 %curr.flag35, false
  br i1 %tmp, label %then37, label %else40

merge36:                                          ; preds = %else40, %then37
  %i41 = load i32, i32* %i, align 4
  %tmp42 = add i32 %i41, 1
  store i32 %tmp42, i32* %i, align 4
  br label %while

then37:                                           ; preds = %merge26
  %curr38 = load %node_struct*, %node_struct** %curr, align 8
  %g39 = load %graph_tt*, %graph_tt** %g, align 8
  call void @dfs(%graph_tt* %g39, %node_struct* %curr38)
  br label %merge36

else40:                                           ; preds = %merge26
  br label %merge36

merge46:                                          ; preds = %while
  ret void
}

define i32 @test(%graph_tt* %g1, %node_struct* %s2) {
entry:
  %g = alloca %graph_tt*, align 8
  store %graph_tt* %g1, %graph_tt** %g, align 8
  %s = alloca %node_struct*, align 8
  store %node_struct* %s2, %node_struct** %s, align 8
  %"lvar'" = load %node_struct*, %node_struct** %s, align 8
  %temp = getelementptr inbounds %node_struct, %node_struct* %"lvar'", i32 0, i32 1
  store i1 true, i1* %temp, align 1
  %s3 = load %node_struct*, %node_struct** %s, align 8
  %g4 = load %graph_tt*, %graph_tt** %g, align 8
  %adj_nodes_result = call %list_node* @adj_nodes(%graph_tt* %g4, %node_struct* %s3)
  %adjs = alloca %list_node*, align 8
  store %list_node* %adj_nodes_result, %list_node** %adjs, align 8
  ret i32 1
}

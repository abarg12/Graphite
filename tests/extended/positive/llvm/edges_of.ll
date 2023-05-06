; ModuleID = 'Graphite'
source_filename = "Graphite"

%node_struct = type { i8*, i1, i8* }
%edge_t = type { %node_struct*, %node_struct*, i32 }
%graph_tt = type { %node_node*, %edge_node* }
%node_node = type { %node_struct*, %node_node* }
%edge_node = type { %edge_t*, %edge_node* }
%list_node = type { i8*, %list_node* }

@n1 = global %node_struct* null
@n2 = global %node_struct* null
@n3 = global %node_struct* null
@n4 = global %node_struct* null
@e1 = global %edge_t* null
@e2 = global %edge_t* null
@e3 = global %edge_t* null
@e4 = global %edge_t* null
@e5 = global %edge_t* null
@g = global %graph_tt* null
@llNodes = global %node_node* null
@llNodes.1 = global %node_node* null
@llNodes.2 = global %node_node* null
@llNodes.3 = global %node_node* null
@llNodes.4 = global %node_node* null
@llNodes.5 = global %node_node* null
@llEdges = global %edge_node* null
@e = global i1 false
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@edgesList = global %list_node* null
@llEdges.6 = global %edge_node* null
@l = global %list_node* null
@n10 = global %node_struct* null
@i3 = global i32 0
@fmt.7 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@w = global i32 0
@fmt.8 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

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
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %data = bitcast i8* %malloccall1 to i32*
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name = bitcast i8* %malloccall2 to i8**
  %data_ptr = bitcast i32* %data to i8*
  %name_ptr = bitcast i8** %name to i8*
  %"name'" = getelementptr inbounds %node_struct, %node_struct* %node, i32 0, i32 0
  %"data'" = getelementptr inbounds %node_struct, %node_struct* %node, i32 0, i32 2
  store i8* %name_ptr, i8** %"name'", align 8
  store i8* %data_ptr, i8** %"data'", align 8
  store %node_struct* %node, %node_struct** @n1, align 8
  %"lvar'" = load %node_struct*, %node_struct** @n1, align 8
  %temp = getelementptr inbounds %node_struct, %node_struct* %"lvar'", i32 0, i32 2
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %bruh = bitcast i8* %malloccall3 to i32*
  store i32 22, i32* %bruh, align 4
  %name4 = bitcast i32* %bruh to i8*
  store i8* %name4, i8** %temp, align 8
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node6 = bitcast i8* %malloccall5 to %node_struct*
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %data8 = bitcast i8* %malloccall7 to i32*
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name10 = bitcast i8* %malloccall9 to i8**
  %data_ptr11 = bitcast i32* %data8 to i8*
  %name_ptr12 = bitcast i8** %name10 to i8*
  %"name'13" = getelementptr inbounds %node_struct, %node_struct* %node6, i32 0, i32 0
  %"data'14" = getelementptr inbounds %node_struct, %node_struct* %node6, i32 0, i32 2
  store i8* %name_ptr12, i8** %"name'13", align 8
  store i8* %data_ptr11, i8** %"data'14", align 8
  store %node_struct* %node6, %node_struct** @n2, align 8
  %"lvar'15" = load %node_struct*, %node_struct** @n2, align 8
  %temp16 = getelementptr inbounds %node_struct, %node_struct* %"lvar'15", i32 0, i32 2
  %malloccall17 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %bruh18 = bitcast i8* %malloccall17 to i32*
  store i32 22, i32* %bruh18, align 4
  %name19 = bitcast i32* %bruh18 to i8*
  store i8* %name19, i8** %temp16, align 8
  %malloccall20 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node21 = bitcast i8* %malloccall20 to %node_struct*
  %malloccall22 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %data23 = bitcast i8* %malloccall22 to i32*
  %malloccall24 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name25 = bitcast i8* %malloccall24 to i8**
  %data_ptr26 = bitcast i32* %data23 to i8*
  %name_ptr27 = bitcast i8** %name25 to i8*
  %"name'28" = getelementptr inbounds %node_struct, %node_struct* %node21, i32 0, i32 0
  %"data'29" = getelementptr inbounds %node_struct, %node_struct* %node21, i32 0, i32 2
  store i8* %name_ptr27, i8** %"name'28", align 8
  store i8* %data_ptr26, i8** %"data'29", align 8
  store %node_struct* %node21, %node_struct** @n3, align 8
  %"lvar'30" = load %node_struct*, %node_struct** @n3, align 8
  %temp31 = getelementptr inbounds %node_struct, %node_struct* %"lvar'30", i32 0, i32 2
  %malloccall32 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %bruh33 = bitcast i8* %malloccall32 to i32*
  store i32 22, i32* %bruh33, align 4
  %name34 = bitcast i32* %bruh33 to i8*
  store i8* %name34, i8** %temp31, align 8
  %malloccall35 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node36 = bitcast i8* %malloccall35 to %node_struct*
  %malloccall37 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %data38 = bitcast i8* %malloccall37 to i32*
  %malloccall39 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name40 = bitcast i8* %malloccall39 to i8**
  %data_ptr41 = bitcast i32* %data38 to i8*
  %name_ptr42 = bitcast i8** %name40 to i8*
  %"name'43" = getelementptr inbounds %node_struct, %node_struct* %node36, i32 0, i32 0
  %"data'44" = getelementptr inbounds %node_struct, %node_struct* %node36, i32 0, i32 2
  store i8* %name_ptr42, i8** %"name'43", align 8
  store i8* %data_ptr41, i8** %"data'44", align 8
  store %node_struct* %node36, %node_struct** @n4, align 8
  %n1 = load %node_struct*, %node_struct** @n1, align 8
  %n2 = load %node_struct*, %node_struct** @n2, align 8
  %malloccall45 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct = bitcast i8* %malloccall45 to %edge_t*
  %"name'46" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 0
  %"name'47" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 1
  %"name'48" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 2
  store %node_struct* %n1, %node_struct** %"name'46", align 8
  store %node_struct* %n2, %node_struct** %"name'47", align 8
  store i32 0, i32* %"name'48", align 4
  %malloccall49 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge = bitcast i8* %malloccall49 to %edge_t*
  %"name'50" = getelementptr inbounds %edge_t, %edge_t* %edge, i32 0, i32 0
  %"data'51" = getelementptr inbounds %edge_t, %edge_t* %edge, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'50", align 8
  store %node_struct* null, %node_struct** %"data'51", align 8
  store %edge_t* %edge, %edge_t** @e1, align 8
  store %edge_t* %myEdgeStruct, %edge_t** @e1, align 8
  %"lvar'52" = load %edge_t*, %edge_t** @e1, align 8
  %temp53 = getelementptr inbounds %edge_t, %edge_t* %"lvar'52", i32 0, i32 2
  store i32 1, i32* %temp53, align 4
  %n3 = load %node_struct*, %node_struct** @n3, align 8
  %n154 = load %node_struct*, %node_struct** @n1, align 8
  %malloccall55 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct56 = bitcast i8* %malloccall55 to %edge_t*
  %"name'57" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct56, i32 0, i32 0
  %"name'58" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct56, i32 0, i32 1
  %"name'59" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct56, i32 0, i32 2
  store %node_struct* %n3, %node_struct** %"name'57", align 8
  store %node_struct* %n154, %node_struct** %"name'58", align 8
  store i32 0, i32* %"name'59", align 4
  %malloccall60 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge61 = bitcast i8* %malloccall60 to %edge_t*
  %"name'62" = getelementptr inbounds %edge_t, %edge_t* %edge61, i32 0, i32 0
  %"data'63" = getelementptr inbounds %edge_t, %edge_t* %edge61, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'62", align 8
  store %node_struct* null, %node_struct** %"data'63", align 8
  store %edge_t* %edge61, %edge_t** @e2, align 8
  store %edge_t* %myEdgeStruct56, %edge_t** @e2, align 8
  %"lvar'64" = load %edge_t*, %edge_t** @e2, align 8
  %temp65 = getelementptr inbounds %edge_t, %edge_t* %"lvar'64", i32 0, i32 2
  store i32 2, i32* %temp65, align 4
  %n266 = load %node_struct*, %node_struct** @n2, align 8
  %n4 = load %node_struct*, %node_struct** @n4, align 8
  %malloccall67 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct68 = bitcast i8* %malloccall67 to %edge_t*
  %"name'69" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct68, i32 0, i32 0
  %"name'70" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct68, i32 0, i32 1
  %"name'71" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct68, i32 0, i32 2
  store %node_struct* %n266, %node_struct** %"name'69", align 8
  store %node_struct* %n4, %node_struct** %"name'70", align 8
  store i32 0, i32* %"name'71", align 4
  %malloccall72 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge73 = bitcast i8* %malloccall72 to %edge_t*
  %"name'74" = getelementptr inbounds %edge_t, %edge_t* %edge73, i32 0, i32 0
  %"data'75" = getelementptr inbounds %edge_t, %edge_t* %edge73, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'74", align 8
  store %node_struct* null, %node_struct** %"data'75", align 8
  store %edge_t* %edge73, %edge_t** @e3, align 8
  store %edge_t* %myEdgeStruct68, %edge_t** @e3, align 8
  %"lvar'76" = load %edge_t*, %edge_t** @e3, align 8
  %temp77 = getelementptr inbounds %edge_t, %edge_t* %"lvar'76", i32 0, i32 2
  store i32 3, i32* %temp77, align 4
  %malloccall78 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge79 = bitcast i8* %malloccall78 to %edge_t*
  %"src''" = getelementptr inbounds %edge_t, %edge_t* %edge79, i32 0, i32 0
  %"dst''" = getelementptr inbounds %edge_t, %edge_t* %edge79, i32 0, i32 1
  store %node_struct* null, %node_struct** %"src''", align 8
  store %node_struct* null, %node_struct** %"dst''", align 8
  store %edge_t* %edge79, %edge_t** @e4, align 8
  %malloccall80 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge81 = bitcast i8* %malloccall80 to %edge_t*
  %"src''82" = getelementptr inbounds %edge_t, %edge_t* %edge81, i32 0, i32 0
  %"dst''83" = getelementptr inbounds %edge_t, %edge_t* %edge81, i32 0, i32 1
  store %node_struct* null, %node_struct** %"src''82", align 8
  store %node_struct* null, %node_struct** %"dst''83", align 8
  store %edge_t* %edge81, %edge_t** @e5, align 8
  %malloccall84 = tail call i8* @malloc(i32 ptrtoint (%graph_tt* getelementptr (%graph_tt, %graph_tt* null, i32 1) to i32))
  %node85 = bitcast i8* %malloccall84 to %graph_tt*
  %"name'86" = getelementptr inbounds %graph_tt, %graph_tt* %node85, i32 0, i32 0
  %"data'87" = getelementptr inbounds %graph_tt, %graph_tt* %node85, i32 0, i32 1
  store %node_node* null, %node_node** %"name'86", align 8
  store %edge_node* null, %edge_node** %"data'87", align 8
  store %graph_tt* %node85, %graph_tt** @g, align 8
  %n188 = load %node_struct*, %node_struct** @n1, align 8
  %graph_ptr = load %graph_tt*, %graph_tt** @g, align 8
  %nodes = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr, i32 0, i32 0
  %nodes_hd = load %node_node*, %node_node** %nodes, align 8
  %malloccall89 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node = bitcast i8* %malloccall89 to %node_node*
  %"lst_rst'" = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 1
  %node_ptr = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 0
  store %node_node* %nodes_hd, %node_node** %"lst_rst'", align 8
  store %node_struct* %n188, %node_struct** %node_ptr, align 8
  store %node_node* %new_node, %node_node** %nodes, align 8
  %n290 = load %node_struct*, %node_struct** @n2, align 8
  %graph_ptr91 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes92 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr91, i32 0, i32 0
  %nodes_hd93 = load %node_node*, %node_node** %nodes92, align 8
  %malloccall94 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node95 = bitcast i8* %malloccall94 to %node_node*
  %"lst_rst'96" = getelementptr inbounds %node_node, %node_node* %new_node95, i32 0, i32 1
  %node_ptr97 = getelementptr inbounds %node_node, %node_node* %new_node95, i32 0, i32 0
  store %node_node* %nodes_hd93, %node_node** %"lst_rst'96", align 8
  store %node_struct* %n290, %node_struct** %node_ptr97, align 8
  store %node_node* %new_node95, %node_node** %nodes92, align 8
  %n398 = load %node_struct*, %node_struct** @n3, align 8
  %graph_ptr99 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes100 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr99, i32 0, i32 0
  %nodes_hd101 = load %node_node*, %node_node** %nodes100, align 8
  %malloccall102 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node103 = bitcast i8* %malloccall102 to %node_node*
  %"lst_rst'104" = getelementptr inbounds %node_node, %node_node* %new_node103, i32 0, i32 1
  %node_ptr105 = getelementptr inbounds %node_node, %node_node* %new_node103, i32 0, i32 0
  store %node_node* %nodes_hd101, %node_node** %"lst_rst'104", align 8
  store %node_struct* %n398, %node_struct** %node_ptr105, align 8
  store %node_node* %new_node103, %node_node** %nodes100, align 8
  %n4106 = load %node_struct*, %node_struct** @n4, align 8
  %graph_ptr107 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes108 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr107, i32 0, i32 0
  %nodes_hd109 = load %node_node*, %node_node** %nodes108, align 8
  %malloccall110 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node111 = bitcast i8* %malloccall110 to %node_node*
  %"lst_rst'112" = getelementptr inbounds %node_node, %node_node* %new_node111, i32 0, i32 1
  %node_ptr113 = getelementptr inbounds %node_node, %node_node* %new_node111, i32 0, i32 0
  store %node_node* %nodes_hd109, %node_node** %"lst_rst'112", align 8
  store %node_struct* %n4106, %node_struct** %node_ptr113, align 8
  store %node_node* %new_node111, %node_node** %nodes108, align 8
  %e1 = load %edge_t*, %edge_t** @e1, align 8
  %graph_ptr114 = load %graph_tt*, %graph_tt** @g, align 8
  %edges = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr114, i32 0, i32 1
  %edges_hd = load %edge_node*, %edge_node** %edges, align 8
  %malloccall115 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge = bitcast i8* %malloccall115 to %edge_node*
  %"lst_rst'116" = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 1
  %edge_ptr = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 0
  store %edge_node* %edges_hd, %edge_node** %"lst_rst'116", align 8
  store %edge_t* %e1, %edge_t** %edge_ptr, align 8
  %src_ptr = getelementptr inbounds %edge_t, %edge_t* %e1, i32 0, i32 0
  %dst_ptr = getelementptr inbounds %edge_t, %edge_t* %e1, i32 0, i32 1
  %"src'" = load %node_struct*, %node_struct** %src_ptr, align 8
  %"dst'" = load %node_struct*, %node_struct** %dst_ptr, align 8
  %ret_true = alloca i1, align 1
  store i1 false, i1* %ret_true, align 1
  %graph_ptr117 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes118 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr117, i32 0, i32 0
  %head = load %node_node*, %node_node** %nodes118, align 8
  store %node_node* %head, %node_node** @llNodes, align 8
  br label %while

while:                                            ; preds = %entry, %else
  %putMeHere = load %node_node*, %node_node** @llNodes, align 8
  %curr = icmp ne %node_node* %putMeHere, null
  br i1 %curr, label %while_body, label %merge

while_body:                                       ; preds = %while
  %putMeHere119 = load %node_node*, %node_node** @llNodes, align 8
  %nodes120 = getelementptr inbounds %node_node, %node_node* %putMeHere119, i32 0, i32 0
  %"stored_node'" = load %node_struct*, %node_struct** %nodes120, align 8
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
  %ret_true121 = alloca i1, align 1
  store i1 false, i1* %ret_true121, align 1
  %graph_ptr122 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes123 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr122, i32 0, i32 0
  %head124 = load %node_node*, %node_node** %nodes123, align 8
  store %node_node* %head124, %node_node** @llNodes.1, align 8
  br label %while125

while125:                                         ; preds = %merge, %else134
  %putMeHere126 = load %node_node*, %node_node** @llNodes.1, align 8
  %curr127 = icmp ne %node_node* %putMeHere126, null
  br i1 %curr127, label %while_body128, label %merge135

while_body128:                                    ; preds = %while125
  %putMeHere129 = load %node_node*, %node_node** @llNodes.1, align 8
  %nodes130 = getelementptr inbounds %node_node, %node_node* %putMeHere129, i32 0, i32 0
  %"stored_node'131" = load %node_struct*, %node_struct** %nodes130, align 8
  br label %if132

if132:                                            ; preds = %while_body128
  %"found?136" = icmp eq %node_struct* %"stored_node'131", %"dst'"
  br i1 %"found?136", label %then133, label %else134

then133:                                          ; preds = %if132
  store i1 true, i1* %ret_true121, align 1
  br label %merge135

else134:                                          ; preds = %if132
  %toBeHere137 = load %node_node*, %node_node** @llNodes.1, align 8
  %llNodesPtr138 = getelementptr inbounds %node_node, %node_node* %toBeHere137, i32 0, i32 1
  %toBeHerenow139 = load %node_node*, %node_node** %llNodesPtr138, align 8
  store %node_node* %toBeHerenow139, %node_node** @llNodes.1, align 8
  br label %while125

merge135:                                         ; preds = %while125, %then133
  %returnVal140 = load i1, i1* %ret_true121, align 1
  br label %if141

if141:                                            ; preds = %merge135
  br i1 %returnVal, label %merge143, label %else142

else142:                                          ; preds = %if141
  %graph_ptr144 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes145 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr144, i32 0, i32 0
  %nodes_hd146 = load %node_node*, %node_node** %nodes145, align 8
  %malloccall147 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node148 = bitcast i8* %malloccall147 to %node_node*
  %"lst_rst'149" = getelementptr inbounds %node_node, %node_node* %new_node148, i32 0, i32 1
  %node_ptr150 = getelementptr inbounds %node_node, %node_node* %new_node148, i32 0, i32 0
  store %node_node* %nodes_hd146, %node_node** %"lst_rst'149", align 8
  store %node_struct* %"src'", %node_struct** %node_ptr150, align 8
  store %node_node* %new_node148, %node_node** %nodes145, align 8
  br label %merge143

merge143:                                         ; preds = %else142, %if141
  br label %if151

if151:                                            ; preds = %merge143
  br i1 %returnVal140, label %merge153, label %else152

else152:                                          ; preds = %if151
  %graph_ptr154 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes155 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr154, i32 0, i32 0
  %nodes_hd156 = load %node_node*, %node_node** %nodes155, align 8
  %malloccall157 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node158 = bitcast i8* %malloccall157 to %node_node*
  %"lst_rst'159" = getelementptr inbounds %node_node, %node_node* %new_node158, i32 0, i32 1
  %node_ptr160 = getelementptr inbounds %node_node, %node_node* %new_node158, i32 0, i32 0
  store %node_node* %nodes_hd156, %node_node** %"lst_rst'159", align 8
  store %node_struct* %"dst'", %node_struct** %node_ptr160, align 8
  store %node_node* %new_node158, %node_node** %nodes155, align 8
  br label %merge153

merge153:                                         ; preds = %else152, %if151
  store %edge_node* %new_edge, %edge_node** %edges, align 8
  %e2 = load %edge_t*, %edge_t** @e2, align 8
  %graph_ptr161 = load %graph_tt*, %graph_tt** @g, align 8
  %edges162 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr161, i32 0, i32 1
  %edges_hd163 = load %edge_node*, %edge_node** %edges162, align 8
  %malloccall164 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge165 = bitcast i8* %malloccall164 to %edge_node*
  %"lst_rst'166" = getelementptr inbounds %edge_node, %edge_node* %new_edge165, i32 0, i32 1
  %edge_ptr167 = getelementptr inbounds %edge_node, %edge_node* %new_edge165, i32 0, i32 0
  store %edge_node* %edges_hd163, %edge_node** %"lst_rst'166", align 8
  store %edge_t* %e2, %edge_t** %edge_ptr167, align 8
  %src_ptr168 = getelementptr inbounds %edge_t, %edge_t* %e2, i32 0, i32 0
  %dst_ptr169 = getelementptr inbounds %edge_t, %edge_t* %e2, i32 0, i32 1
  %"src'170" = load %node_struct*, %node_struct** %src_ptr168, align 8
  %"dst'171" = load %node_struct*, %node_struct** %dst_ptr169, align 8
  %ret_true172 = alloca i1, align 1
  store i1 false, i1* %ret_true172, align 1
  %graph_ptr173 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes174 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr173, i32 0, i32 0
  %head175 = load %node_node*, %node_node** %nodes174, align 8
  store %node_node* %head175, %node_node** @llNodes.2, align 8
  br label %while176

while176:                                         ; preds = %merge153, %else185
  %putMeHere177 = load %node_node*, %node_node** @llNodes.2, align 8
  %curr178 = icmp ne %node_node* %putMeHere177, null
  br i1 %curr178, label %while_body179, label %merge186

while_body179:                                    ; preds = %while176
  %putMeHere180 = load %node_node*, %node_node** @llNodes.2, align 8
  %nodes181 = getelementptr inbounds %node_node, %node_node* %putMeHere180, i32 0, i32 0
  %"stored_node'182" = load %node_struct*, %node_struct** %nodes181, align 8
  br label %if183

if183:                                            ; preds = %while_body179
  %"found?187" = icmp eq %node_struct* %"stored_node'182", %"src'170"
  br i1 %"found?187", label %then184, label %else185

then184:                                          ; preds = %if183
  store i1 true, i1* %ret_true172, align 1
  br label %merge186

else185:                                          ; preds = %if183
  %toBeHere188 = load %node_node*, %node_node** @llNodes.2, align 8
  %llNodesPtr189 = getelementptr inbounds %node_node, %node_node* %toBeHere188, i32 0, i32 1
  %toBeHerenow190 = load %node_node*, %node_node** %llNodesPtr189, align 8
  store %node_node* %toBeHerenow190, %node_node** @llNodes.2, align 8
  br label %while176

merge186:                                         ; preds = %while176, %then184
  %returnVal191 = load i1, i1* %ret_true172, align 1
  %ret_true192 = alloca i1, align 1
  store i1 false, i1* %ret_true192, align 1
  %graph_ptr193 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes194 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr193, i32 0, i32 0
  %head195 = load %node_node*, %node_node** %nodes194, align 8
  store %node_node* %head195, %node_node** @llNodes.3, align 8
  br label %while196

while196:                                         ; preds = %merge186, %else205
  %putMeHere197 = load %node_node*, %node_node** @llNodes.3, align 8
  %curr198 = icmp ne %node_node* %putMeHere197, null
  br i1 %curr198, label %while_body199, label %merge206

while_body199:                                    ; preds = %while196
  %putMeHere200 = load %node_node*, %node_node** @llNodes.3, align 8
  %nodes201 = getelementptr inbounds %node_node, %node_node* %putMeHere200, i32 0, i32 0
  %"stored_node'202" = load %node_struct*, %node_struct** %nodes201, align 8
  br label %if203

if203:                                            ; preds = %while_body199
  %"found?207" = icmp eq %node_struct* %"stored_node'202", %"dst'171"
  br i1 %"found?207", label %then204, label %else205

then204:                                          ; preds = %if203
  store i1 true, i1* %ret_true192, align 1
  br label %merge206

else205:                                          ; preds = %if203
  %toBeHere208 = load %node_node*, %node_node** @llNodes.3, align 8
  %llNodesPtr209 = getelementptr inbounds %node_node, %node_node* %toBeHere208, i32 0, i32 1
  %toBeHerenow210 = load %node_node*, %node_node** %llNodesPtr209, align 8
  store %node_node* %toBeHerenow210, %node_node** @llNodes.3, align 8
  br label %while196

merge206:                                         ; preds = %while196, %then204
  %returnVal211 = load i1, i1* %ret_true192, align 1
  br label %if212

if212:                                            ; preds = %merge206
  br i1 %returnVal191, label %merge214, label %else213

else213:                                          ; preds = %if212
  %graph_ptr215 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes216 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr215, i32 0, i32 0
  %nodes_hd217 = load %node_node*, %node_node** %nodes216, align 8
  %malloccall218 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node219 = bitcast i8* %malloccall218 to %node_node*
  %"lst_rst'220" = getelementptr inbounds %node_node, %node_node* %new_node219, i32 0, i32 1
  %node_ptr221 = getelementptr inbounds %node_node, %node_node* %new_node219, i32 0, i32 0
  store %node_node* %nodes_hd217, %node_node** %"lst_rst'220", align 8
  store %node_struct* %"src'170", %node_struct** %node_ptr221, align 8
  store %node_node* %new_node219, %node_node** %nodes216, align 8
  br label %merge214

merge214:                                         ; preds = %else213, %if212
  br label %if222

if222:                                            ; preds = %merge214
  br i1 %returnVal211, label %merge224, label %else223

else223:                                          ; preds = %if222
  %graph_ptr225 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes226 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr225, i32 0, i32 0
  %nodes_hd227 = load %node_node*, %node_node** %nodes226, align 8
  %malloccall228 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node229 = bitcast i8* %malloccall228 to %node_node*
  %"lst_rst'230" = getelementptr inbounds %node_node, %node_node* %new_node229, i32 0, i32 1
  %node_ptr231 = getelementptr inbounds %node_node, %node_node* %new_node229, i32 0, i32 0
  store %node_node* %nodes_hd227, %node_node** %"lst_rst'230", align 8
  store %node_struct* %"dst'171", %node_struct** %node_ptr231, align 8
  store %node_node* %new_node229, %node_node** %nodes226, align 8
  br label %merge224

merge224:                                         ; preds = %else223, %if222
  store %edge_node* %new_edge165, %edge_node** %edges162, align 8
  %e3 = load %edge_t*, %edge_t** @e3, align 8
  %graph_ptr232 = load %graph_tt*, %graph_tt** @g, align 8
  %edges233 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr232, i32 0, i32 1
  %edges_hd234 = load %edge_node*, %edge_node** %edges233, align 8
  %malloccall235 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge236 = bitcast i8* %malloccall235 to %edge_node*
  %"lst_rst'237" = getelementptr inbounds %edge_node, %edge_node* %new_edge236, i32 0, i32 1
  %edge_ptr238 = getelementptr inbounds %edge_node, %edge_node* %new_edge236, i32 0, i32 0
  store %edge_node* %edges_hd234, %edge_node** %"lst_rst'237", align 8
  store %edge_t* %e3, %edge_t** %edge_ptr238, align 8
  %src_ptr239 = getelementptr inbounds %edge_t, %edge_t* %e3, i32 0, i32 0
  %dst_ptr240 = getelementptr inbounds %edge_t, %edge_t* %e3, i32 0, i32 1
  %"src'241" = load %node_struct*, %node_struct** %src_ptr239, align 8
  %"dst'242" = load %node_struct*, %node_struct** %dst_ptr240, align 8
  %ret_true243 = alloca i1, align 1
  store i1 false, i1* %ret_true243, align 1
  %graph_ptr244 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes245 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr244, i32 0, i32 0
  %head246 = load %node_node*, %node_node** %nodes245, align 8
  store %node_node* %head246, %node_node** @llNodes.4, align 8
  br label %while247

while247:                                         ; preds = %merge224, %else256
  %putMeHere248 = load %node_node*, %node_node** @llNodes.4, align 8
  %curr249 = icmp ne %node_node* %putMeHere248, null
  br i1 %curr249, label %while_body250, label %merge257

while_body250:                                    ; preds = %while247
  %putMeHere251 = load %node_node*, %node_node** @llNodes.4, align 8
  %nodes252 = getelementptr inbounds %node_node, %node_node* %putMeHere251, i32 0, i32 0
  %"stored_node'253" = load %node_struct*, %node_struct** %nodes252, align 8
  br label %if254

if254:                                            ; preds = %while_body250
  %"found?258" = icmp eq %node_struct* %"stored_node'253", %"src'241"
  br i1 %"found?258", label %then255, label %else256

then255:                                          ; preds = %if254
  store i1 true, i1* %ret_true243, align 1
  br label %merge257

else256:                                          ; preds = %if254
  %toBeHere259 = load %node_node*, %node_node** @llNodes.4, align 8
  %llNodesPtr260 = getelementptr inbounds %node_node, %node_node* %toBeHere259, i32 0, i32 1
  %toBeHerenow261 = load %node_node*, %node_node** %llNodesPtr260, align 8
  store %node_node* %toBeHerenow261, %node_node** @llNodes.4, align 8
  br label %while247

merge257:                                         ; preds = %while247, %then255
  %returnVal262 = load i1, i1* %ret_true243, align 1
  %ret_true263 = alloca i1, align 1
  store i1 false, i1* %ret_true263, align 1
  %graph_ptr264 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes265 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr264, i32 0, i32 0
  %head266 = load %node_node*, %node_node** %nodes265, align 8
  store %node_node* %head266, %node_node** @llNodes.5, align 8
  br label %while267

while267:                                         ; preds = %merge257, %else276
  %putMeHere268 = load %node_node*, %node_node** @llNodes.5, align 8
  %curr269 = icmp ne %node_node* %putMeHere268, null
  br i1 %curr269, label %while_body270, label %merge277

while_body270:                                    ; preds = %while267
  %putMeHere271 = load %node_node*, %node_node** @llNodes.5, align 8
  %nodes272 = getelementptr inbounds %node_node, %node_node* %putMeHere271, i32 0, i32 0
  %"stored_node'273" = load %node_struct*, %node_struct** %nodes272, align 8
  br label %if274

if274:                                            ; preds = %while_body270
  %"found?278" = icmp eq %node_struct* %"stored_node'273", %"dst'242"
  br i1 %"found?278", label %then275, label %else276

then275:                                          ; preds = %if274
  store i1 true, i1* %ret_true263, align 1
  br label %merge277

else276:                                          ; preds = %if274
  %toBeHere279 = load %node_node*, %node_node** @llNodes.5, align 8
  %llNodesPtr280 = getelementptr inbounds %node_node, %node_node* %toBeHere279, i32 0, i32 1
  %toBeHerenow281 = load %node_node*, %node_node** %llNodesPtr280, align 8
  store %node_node* %toBeHerenow281, %node_node** @llNodes.5, align 8
  br label %while267

merge277:                                         ; preds = %while267, %then275
  %returnVal282 = load i1, i1* %ret_true263, align 1
  br label %if283

if283:                                            ; preds = %merge277
  br i1 %returnVal262, label %merge285, label %else284

else284:                                          ; preds = %if283
  %graph_ptr286 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes287 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr286, i32 0, i32 0
  %nodes_hd288 = load %node_node*, %node_node** %nodes287, align 8
  %malloccall289 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node290 = bitcast i8* %malloccall289 to %node_node*
  %"lst_rst'291" = getelementptr inbounds %node_node, %node_node* %new_node290, i32 0, i32 1
  %node_ptr292 = getelementptr inbounds %node_node, %node_node* %new_node290, i32 0, i32 0
  store %node_node* %nodes_hd288, %node_node** %"lst_rst'291", align 8
  store %node_struct* %"src'241", %node_struct** %node_ptr292, align 8
  store %node_node* %new_node290, %node_node** %nodes287, align 8
  br label %merge285

merge285:                                         ; preds = %else284, %if283
  br label %if293

if293:                                            ; preds = %merge285
  br i1 %returnVal282, label %merge295, label %else294

else294:                                          ; preds = %if293
  %graph_ptr296 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes297 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr296, i32 0, i32 0
  %nodes_hd298 = load %node_node*, %node_node** %nodes297, align 8
  %malloccall299 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node300 = bitcast i8* %malloccall299 to %node_node*
  %"lst_rst'301" = getelementptr inbounds %node_node, %node_node* %new_node300, i32 0, i32 1
  %node_ptr302 = getelementptr inbounds %node_node, %node_node* %new_node300, i32 0, i32 0
  store %node_node* %nodes_hd298, %node_node** %"lst_rst'301", align 8
  store %node_struct* %"dst'242", %node_struct** %node_ptr302, align 8
  store %node_node* %new_node300, %node_node** %nodes297, align 8
  br label %merge295

merge295:                                         ; preds = %else294, %if293
  store %edge_node* %new_edge236, %edge_node** %edges233, align 8
  %ret_true303 = alloca i1, align 1
  store i1 false, i1* %ret_true303, align 1
  %e1304 = load %edge_t*, %edge_t** @e1, align 8
  %graph_ptr305 = load %graph_tt*, %graph_tt** @g, align 8
  %edges306 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr305, i32 0, i32 1
  %head307 = load %edge_node*, %edge_node** %edges306, align 8
  store %edge_node* %head307, %edge_node** @llEdges, align 8
  br label %while308

while308:                                         ; preds = %merge295, %else317
  %putMeHere309 = load %edge_node*, %edge_node** @llEdges, align 8
  %curr310 = icmp ne %edge_node* %putMeHere309, null
  br i1 %curr310, label %while_body311, label %merge318

while_body311:                                    ; preds = %while308
  %putMeHere312 = load %edge_node*, %edge_node** @llEdges, align 8
  %nodes313 = getelementptr inbounds %edge_node, %edge_node* %putMeHere312, i32 0, i32 0
  %"stored_node'314" = load %edge_t*, %edge_t** %nodes313, align 8
  br label %if315

if315:                                            ; preds = %while_body311
  %"found?319" = icmp eq %edge_t* %"stored_node'314", %e1304
  br i1 %"found?319", label %then316, label %else317

then316:                                          ; preds = %if315
  store i1 true, i1* %ret_true303, align 1
  br label %merge318

else317:                                          ; preds = %if315
  %toBeHere320 = load %edge_node*, %edge_node** @llEdges, align 8
  %llNodesPtr321 = getelementptr inbounds %edge_node, %edge_node* %toBeHere320, i32 0, i32 1
  %toBeHerenow322 = load %edge_node*, %edge_node** %llNodesPtr321, align 8
  store %edge_node* %toBeHerenow322, %edge_node** @llEdges, align 8
  br label %while308

merge318:                                         ; preds = %while308, %then316
  %returnVal323 = load i1, i1* %ret_true303, align 1
  store i1 %returnVal323, i1* @e, align 1
  %e = load i1, i1* @e, align 1
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i1 %e)
  %n1324 = load %node_struct*, %node_struct** @n1, align 8
  %graph_ptr325 = load %graph_tt*, %graph_tt** @g, align 8
  %edges326 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr325, i32 0, i32 1
  %head327 = load %edge_node*, %edge_node** %edges326, align 8
  store %edge_node* %head327, %edge_node** @llEdges.6, align 8
  br label %while328

while328:                                         ; preds = %merge318, %else336
  %putMeHere329 = load %edge_node*, %edge_node** @llEdges.6, align 8
  %curr330 = icmp ne %edge_node* %putMeHere329, null
  br i1 %curr330, label %while_body331, label %merge337

while_body331:                                    ; preds = %while328
  %putMeHere332 = load %edge_node*, %edge_node** @llEdges.6, align 8
  %nodes333 = getelementptr inbounds %edge_node, %edge_node* %putMeHere332, i32 0, i32 0
  %"stored_nodeA'" = load %edge_t*, %edge_t** %nodes333, align 8
  br label %if334

if334:                                            ; preds = %while_body331
  %nodes338 = getelementptr inbounds %edge_t, %edge_t* %"stored_nodeA'", i32 0, i32 0
  %nodes339 = getelementptr inbounds %edge_t, %edge_t* %"stored_nodeA'", i32 0, i32 1
  %"currEdgeSrc'" = load %node_struct*, %node_struct** %nodes338, align 8
  %"currEdgeDst'" = load %node_struct*, %node_struct** %nodes339, align 8
  %"foundSrc?" = icmp eq %node_struct* %"currEdgeSrc'", %n1324
  %"foundDst?" = icmp eq %node_struct* %"currEdgeDst'", %n1324
  %if_found = or i1 %"foundSrc?", %"foundDst?"
  br i1 %if_found, label %then335, label %else336

then335:                                          ; preds = %if334
  %malloccall340 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node341 = bitcast i8* %malloccall340 to %list_node*
  %nodes342 = getelementptr inbounds %list_node, %list_node* %node341, i32 0, i32 0
  %nodes343 = getelementptr inbounds %list_node, %list_node* %node341, i32 0, i32 1
  %malloccall344 = tail call i8* @malloc(i32 ptrtoint (%edge_t** getelementptr (%edge_t*, %edge_t** null, i32 1) to i32))
  %please_work = bitcast i8* %malloccall344 to %edge_t**
  store %edge_t* %"stored_nodeA'", %edge_t** %please_work, align 8
  %currEdgeVoidPtr = bitcast %edge_t** %please_work to i8*
  store i8* %currEdgeVoidPtr, i8** %nodes342, align 8
  %nextEdges = load %list_node*, %list_node** @edgesList, align 8
  store %list_node* %nextEdges, %list_node** %nodes343, align 8
  store %list_node* %node341, %list_node** @edgesList, align 8
  br label %else336

else336:                                          ; preds = %then335, %if334
  %toBeHere345 = load %edge_node*, %edge_node** @llEdges.6, align 8
  %llNodesPtr346 = getelementptr inbounds %edge_node, %edge_node* %toBeHere345, i32 0, i32 1
  %toBeHerenow347 = load %edge_node*, %edge_node** %llNodesPtr346, align 8
  store %edge_node* %toBeHerenow347, %edge_node** @llEdges.6, align 8
  br label %while328

merge337:                                         ; preds = %while328
  %return = load %list_node*, %list_node** @edgesList, align 8
  store %list_node* %return, %list_node** @l, align 8
  %list = load %list_node*, %list_node** @l, align 8
  %malloccall348 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %0 = bitcast i8* %malloccall348 to %list_node**
  %malloccall349 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %malloccall349 to i32*
  store %list_node* %list, %list_node** %0, align 8
  store i32 0, i32* %1, align 4
  br label %traverse_loop

traverse_loop:                                    ; preds = %while_body350, %merge337
  %2 = load i32, i32* %1, align 4
  %temp353 = icmp ne i32 %2, 0
  br i1 %temp353, label %while_body350, label %merge354

while_body350:                                    ; preds = %traverse_loop
  %3 = load %list_node*, %list_node** %0, align 8
  %temp351 = getelementptr inbounds %list_node, %list_node* %3, i32 0, i32 1
  %temp352 = load %list_node*, %list_node** %temp351, align 8
  %4 = load i32, i32* %1, align 4
  %subtract = sub i32 %4, 1
  store i32 %subtract, i32* %1, align 4
  store %list_node* %temp352, %list_node** %0, align 8
  br label %traverse_loop

merge354:                                         ; preds = %traverse_loop
  %5 = load %list_node*, %list_node** %0, align 8
  %temp355 = getelementptr inbounds %list_node, %list_node* %5, i32 0, i32 0
  %retval = load i8*, i8** %temp355, align 8
  %li_conv = bitcast i8* %retval to %edge_t**
  %val_ptr = load %edge_t*, %edge_t** %li_conv, align 8
  store %edge_t* %val_ptr, %edge_t** @e5, align 8
  %e5 = load %edge_t*, %edge_t** @e5, align 8
  store %edge_t* %e5, %edge_t** @e4, align 8
  %"lvar'356" = load %edge_t*, %edge_t** @e4, align 8
  %temp357 = getelementptr inbounds %edge_t, %edge_t* %"lvar'356", i32 0, i32 0
  %e4.src = load %node_struct*, %node_struct** %temp357, align 8
  %srcNode = load %node_struct*, %node_struct** %temp357, align 8
  %malloccall358 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node359 = bitcast i8* %malloccall358 to %node_struct*
  %malloccall360 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %data361 = bitcast i8* %malloccall360 to i32*
  %malloccall362 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name363 = bitcast i8* %malloccall362 to i8**
  %data_ptr364 = bitcast i32* %data361 to i8*
  %name_ptr365 = bitcast i8** %name363 to i8*
  %"name'366" = getelementptr inbounds %node_struct, %node_struct* %node359, i32 0, i32 0
  %"data'367" = getelementptr inbounds %node_struct, %node_struct* %node359, i32 0, i32 2
  store i8* %name_ptr365, i8** %"name'366", align 8
  store i8* %data_ptr364, i8** %"data'367", align 8
  store %node_struct* %node359, %node_struct** @n10, align 8
  store %node_struct* %srcNode, %node_struct** @n10, align 8
  %"lvar'368" = load %node_struct*, %node_struct** @n10, align 8
  %temp369 = getelementptr inbounds %node_struct, %node_struct* %"lvar'368", i32 0, i32 2
  %n10.data = load i8*, i8** %temp369, align 8
  %new_ptr = bitcast i8* %n10.data to i32*
  %n10.data370 = load i32, i32* %new_ptr, align 4
  store i32 %n10.data370, i32* @i3, align 4
  %i3 = load i32, i32* @i3, align 4
  %printf371 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.7, i32 0, i32 0), i32 %i3)
  %"lvar'372" = load %edge_t*, %edge_t** @e4, align 8
  %temp373 = getelementptr inbounds %edge_t, %edge_t* %"lvar'372", i32 0, i32 2
  %e4.weight = load i32, i32* %temp373, align 4
  %e4.weight374 = load i32, i32* %temp373, align 4
  store i32 %e4.weight374, i32* @w, align 4
  %w = load i32, i32* @w, align 4
  %printf375 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.8, i32 0, i32 0), i32 %w)
  ret i32 0
}

declare noalias i8* @malloc(i32)

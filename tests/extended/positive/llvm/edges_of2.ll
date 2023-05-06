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
@l = global %list_node* null
@edgesList = global %list_node* null
@llEdges.6 = global %edge_node* null
@l.7 = global %list_node* null
@n10 = global %node_struct* null
@i10 = global i32 0
@fmt.8 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@w = global i32 0
@fmt.9 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

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
  store i32 10, i32* %bruh, align 4
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
  store i32 20, i32* %bruh18, align 4
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
  store i32 30, i32* %bruh33, align 4
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
  store i32 111, i32* %temp53, align 4
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
  store i32 222, i32* %temp65, align 4
  %n166 = load %node_struct*, %node_struct** @n1, align 8
  %n4 = load %node_struct*, %node_struct** @n4, align 8
  %malloccall67 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct68 = bitcast i8* %malloccall67 to %edge_t*
  %"name'69" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct68, i32 0, i32 0
  %"name'70" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct68, i32 0, i32 1
  %"name'71" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct68, i32 0, i32 2
  store %node_struct* %n166, %node_struct** %"name'69", align 8
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
  store i32 333, i32* %temp77, align 4
  %malloccall78 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge79 = bitcast i8* %malloccall78 to %edge_t*
  %"src''" = getelementptr inbounds %edge_t, %edge_t* %edge79, i32 0, i32 0
  %"dst''" = getelementptr inbounds %edge_t, %edge_t* %edge79, i32 0, i32 1
  store %node_struct* null, %node_struct** %"src''", align 8
  store %node_struct* null, %node_struct** %"dst''", align 8
  store %edge_t* %edge79, %edge_t** @e4, align 8
  %malloccall80 = tail call i8* @malloc(i32 ptrtoint (%graph_tt* getelementptr (%graph_tt, %graph_tt* null, i32 1) to i32))
  %node81 = bitcast i8* %malloccall80 to %graph_tt*
  %"name'82" = getelementptr inbounds %graph_tt, %graph_tt* %node81, i32 0, i32 0
  %"data'83" = getelementptr inbounds %graph_tt, %graph_tt* %node81, i32 0, i32 1
  store %node_node* null, %node_node** %"name'82", align 8
  store %edge_node* null, %edge_node** %"data'83", align 8
  store %graph_tt* %node81, %graph_tt** @g, align 8
  %n184 = load %node_struct*, %node_struct** @n1, align 8
  %graph_ptr = load %graph_tt*, %graph_tt** @g, align 8
  %nodes = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr, i32 0, i32 0
  %nodes_hd = load %node_node*, %node_node** %nodes, align 8
  %malloccall85 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node = bitcast i8* %malloccall85 to %node_node*
  %"lst_rst'" = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 1
  %node_ptr = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 0
  store %node_node* %nodes_hd, %node_node** %"lst_rst'", align 8
  store %node_struct* %n184, %node_struct** %node_ptr, align 8
  store %node_node* %new_node, %node_node** %nodes, align 8
  %n286 = load %node_struct*, %node_struct** @n2, align 8
  %graph_ptr87 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes88 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr87, i32 0, i32 0
  %nodes_hd89 = load %node_node*, %node_node** %nodes88, align 8
  %malloccall90 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node91 = bitcast i8* %malloccall90 to %node_node*
  %"lst_rst'92" = getelementptr inbounds %node_node, %node_node* %new_node91, i32 0, i32 1
  %node_ptr93 = getelementptr inbounds %node_node, %node_node* %new_node91, i32 0, i32 0
  store %node_node* %nodes_hd89, %node_node** %"lst_rst'92", align 8
  store %node_struct* %n286, %node_struct** %node_ptr93, align 8
  store %node_node* %new_node91, %node_node** %nodes88, align 8
  %n394 = load %node_struct*, %node_struct** @n3, align 8
  %graph_ptr95 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes96 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr95, i32 0, i32 0
  %nodes_hd97 = load %node_node*, %node_node** %nodes96, align 8
  %malloccall98 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node99 = bitcast i8* %malloccall98 to %node_node*
  %"lst_rst'100" = getelementptr inbounds %node_node, %node_node* %new_node99, i32 0, i32 1
  %node_ptr101 = getelementptr inbounds %node_node, %node_node* %new_node99, i32 0, i32 0
  store %node_node* %nodes_hd97, %node_node** %"lst_rst'100", align 8
  store %node_struct* %n394, %node_struct** %node_ptr101, align 8
  store %node_node* %new_node99, %node_node** %nodes96, align 8
  %n4102 = load %node_struct*, %node_struct** @n4, align 8
  %graph_ptr103 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes104 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr103, i32 0, i32 0
  %nodes_hd105 = load %node_node*, %node_node** %nodes104, align 8
  %malloccall106 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node107 = bitcast i8* %malloccall106 to %node_node*
  %"lst_rst'108" = getelementptr inbounds %node_node, %node_node* %new_node107, i32 0, i32 1
  %node_ptr109 = getelementptr inbounds %node_node, %node_node* %new_node107, i32 0, i32 0
  store %node_node* %nodes_hd105, %node_node** %"lst_rst'108", align 8
  store %node_struct* %n4102, %node_struct** %node_ptr109, align 8
  store %node_node* %new_node107, %node_node** %nodes104, align 8
  %e1 = load %edge_t*, %edge_t** @e1, align 8
  %graph_ptr110 = load %graph_tt*, %graph_tt** @g, align 8
  %edges = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr110, i32 0, i32 1
  %edges_hd = load %edge_node*, %edge_node** %edges, align 8
  %malloccall111 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge = bitcast i8* %malloccall111 to %edge_node*
  %"lst_rst'112" = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 1
  %edge_ptr = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 0
  store %edge_node* %edges_hd, %edge_node** %"lst_rst'112", align 8
  store %edge_t* %e1, %edge_t** %edge_ptr, align 8
  %src_ptr = getelementptr inbounds %edge_t, %edge_t* %e1, i32 0, i32 0
  %dst_ptr = getelementptr inbounds %edge_t, %edge_t* %e1, i32 0, i32 1
  %"src'" = load %node_struct*, %node_struct** %src_ptr, align 8
  %"dst'" = load %node_struct*, %node_struct** %dst_ptr, align 8
  %ret_true = alloca i1, align 1
  store i1 false, i1* %ret_true, align 1
  %graph_ptr113 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes114 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr113, i32 0, i32 0
  %head = load %node_node*, %node_node** %nodes114, align 8
  store %node_node* %head, %node_node** @llNodes, align 8
  br label %while

while:                                            ; preds = %entry, %else
  %putMeHere = load %node_node*, %node_node** @llNodes, align 8
  %curr = icmp ne %node_node* %putMeHere, null
  br i1 %curr, label %while_body, label %merge

while_body:                                       ; preds = %while
  %putMeHere115 = load %node_node*, %node_node** @llNodes, align 8
  %nodes116 = getelementptr inbounds %node_node, %node_node* %putMeHere115, i32 0, i32 0
  %"stored_node'" = load %node_struct*, %node_struct** %nodes116, align 8
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
  %ret_true117 = alloca i1, align 1
  store i1 false, i1* %ret_true117, align 1
  %graph_ptr118 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes119 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr118, i32 0, i32 0
  %head120 = load %node_node*, %node_node** %nodes119, align 8
  store %node_node* %head120, %node_node** @llNodes.1, align 8
  br label %while121

while121:                                         ; preds = %merge, %else130
  %putMeHere122 = load %node_node*, %node_node** @llNodes.1, align 8
  %curr123 = icmp ne %node_node* %putMeHere122, null
  br i1 %curr123, label %while_body124, label %merge131

while_body124:                                    ; preds = %while121
  %putMeHere125 = load %node_node*, %node_node** @llNodes.1, align 8
  %nodes126 = getelementptr inbounds %node_node, %node_node* %putMeHere125, i32 0, i32 0
  %"stored_node'127" = load %node_struct*, %node_struct** %nodes126, align 8
  br label %if128

if128:                                            ; preds = %while_body124
  %"found?132" = icmp eq %node_struct* %"stored_node'127", %"dst'"
  br i1 %"found?132", label %then129, label %else130

then129:                                          ; preds = %if128
  store i1 true, i1* %ret_true117, align 1
  br label %merge131

else130:                                          ; preds = %if128
  %toBeHere133 = load %node_node*, %node_node** @llNodes.1, align 8
  %llNodesPtr134 = getelementptr inbounds %node_node, %node_node* %toBeHere133, i32 0, i32 1
  %toBeHerenow135 = load %node_node*, %node_node** %llNodesPtr134, align 8
  store %node_node* %toBeHerenow135, %node_node** @llNodes.1, align 8
  br label %while121

merge131:                                         ; preds = %while121, %then129
  %returnVal136 = load i1, i1* %ret_true117, align 1
  br label %if137

if137:                                            ; preds = %merge131
  br i1 %returnVal, label %merge139, label %else138

else138:                                          ; preds = %if137
  %graph_ptr140 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes141 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr140, i32 0, i32 0
  %nodes_hd142 = load %node_node*, %node_node** %nodes141, align 8
  %malloccall143 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node144 = bitcast i8* %malloccall143 to %node_node*
  %"lst_rst'145" = getelementptr inbounds %node_node, %node_node* %new_node144, i32 0, i32 1
  %node_ptr146 = getelementptr inbounds %node_node, %node_node* %new_node144, i32 0, i32 0
  store %node_node* %nodes_hd142, %node_node** %"lst_rst'145", align 8
  store %node_struct* %"src'", %node_struct** %node_ptr146, align 8
  store %node_node* %new_node144, %node_node** %nodes141, align 8
  br label %merge139

merge139:                                         ; preds = %else138, %if137
  br label %if147

if147:                                            ; preds = %merge139
  br i1 %returnVal136, label %merge149, label %else148

else148:                                          ; preds = %if147
  %graph_ptr150 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes151 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr150, i32 0, i32 0
  %nodes_hd152 = load %node_node*, %node_node** %nodes151, align 8
  %malloccall153 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node154 = bitcast i8* %malloccall153 to %node_node*
  %"lst_rst'155" = getelementptr inbounds %node_node, %node_node* %new_node154, i32 0, i32 1
  %node_ptr156 = getelementptr inbounds %node_node, %node_node* %new_node154, i32 0, i32 0
  store %node_node* %nodes_hd152, %node_node** %"lst_rst'155", align 8
  store %node_struct* %"dst'", %node_struct** %node_ptr156, align 8
  store %node_node* %new_node154, %node_node** %nodes151, align 8
  br label %merge149

merge149:                                         ; preds = %else148, %if147
  store %edge_node* %new_edge, %edge_node** %edges, align 8
  %e2 = load %edge_t*, %edge_t** @e2, align 8
  %graph_ptr157 = load %graph_tt*, %graph_tt** @g, align 8
  %edges158 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr157, i32 0, i32 1
  %edges_hd159 = load %edge_node*, %edge_node** %edges158, align 8
  %malloccall160 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge161 = bitcast i8* %malloccall160 to %edge_node*
  %"lst_rst'162" = getelementptr inbounds %edge_node, %edge_node* %new_edge161, i32 0, i32 1
  %edge_ptr163 = getelementptr inbounds %edge_node, %edge_node* %new_edge161, i32 0, i32 0
  store %edge_node* %edges_hd159, %edge_node** %"lst_rst'162", align 8
  store %edge_t* %e2, %edge_t** %edge_ptr163, align 8
  %src_ptr164 = getelementptr inbounds %edge_t, %edge_t* %e2, i32 0, i32 0
  %dst_ptr165 = getelementptr inbounds %edge_t, %edge_t* %e2, i32 0, i32 1
  %"src'166" = load %node_struct*, %node_struct** %src_ptr164, align 8
  %"dst'167" = load %node_struct*, %node_struct** %dst_ptr165, align 8
  %ret_true168 = alloca i1, align 1
  store i1 false, i1* %ret_true168, align 1
  %graph_ptr169 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes170 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr169, i32 0, i32 0
  %head171 = load %node_node*, %node_node** %nodes170, align 8
  store %node_node* %head171, %node_node** @llNodes.2, align 8
  br label %while172

while172:                                         ; preds = %merge149, %else181
  %putMeHere173 = load %node_node*, %node_node** @llNodes.2, align 8
  %curr174 = icmp ne %node_node* %putMeHere173, null
  br i1 %curr174, label %while_body175, label %merge182

while_body175:                                    ; preds = %while172
  %putMeHere176 = load %node_node*, %node_node** @llNodes.2, align 8
  %nodes177 = getelementptr inbounds %node_node, %node_node* %putMeHere176, i32 0, i32 0
  %"stored_node'178" = load %node_struct*, %node_struct** %nodes177, align 8
  br label %if179

if179:                                            ; preds = %while_body175
  %"found?183" = icmp eq %node_struct* %"stored_node'178", %"src'166"
  br i1 %"found?183", label %then180, label %else181

then180:                                          ; preds = %if179
  store i1 true, i1* %ret_true168, align 1
  br label %merge182

else181:                                          ; preds = %if179
  %toBeHere184 = load %node_node*, %node_node** @llNodes.2, align 8
  %llNodesPtr185 = getelementptr inbounds %node_node, %node_node* %toBeHere184, i32 0, i32 1
  %toBeHerenow186 = load %node_node*, %node_node** %llNodesPtr185, align 8
  store %node_node* %toBeHerenow186, %node_node** @llNodes.2, align 8
  br label %while172

merge182:                                         ; preds = %while172, %then180
  %returnVal187 = load i1, i1* %ret_true168, align 1
  %ret_true188 = alloca i1, align 1
  store i1 false, i1* %ret_true188, align 1
  %graph_ptr189 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes190 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr189, i32 0, i32 0
  %head191 = load %node_node*, %node_node** %nodes190, align 8
  store %node_node* %head191, %node_node** @llNodes.3, align 8
  br label %while192

while192:                                         ; preds = %merge182, %else201
  %putMeHere193 = load %node_node*, %node_node** @llNodes.3, align 8
  %curr194 = icmp ne %node_node* %putMeHere193, null
  br i1 %curr194, label %while_body195, label %merge202

while_body195:                                    ; preds = %while192
  %putMeHere196 = load %node_node*, %node_node** @llNodes.3, align 8
  %nodes197 = getelementptr inbounds %node_node, %node_node* %putMeHere196, i32 0, i32 0
  %"stored_node'198" = load %node_struct*, %node_struct** %nodes197, align 8
  br label %if199

if199:                                            ; preds = %while_body195
  %"found?203" = icmp eq %node_struct* %"stored_node'198", %"dst'167"
  br i1 %"found?203", label %then200, label %else201

then200:                                          ; preds = %if199
  store i1 true, i1* %ret_true188, align 1
  br label %merge202

else201:                                          ; preds = %if199
  %toBeHere204 = load %node_node*, %node_node** @llNodes.3, align 8
  %llNodesPtr205 = getelementptr inbounds %node_node, %node_node* %toBeHere204, i32 0, i32 1
  %toBeHerenow206 = load %node_node*, %node_node** %llNodesPtr205, align 8
  store %node_node* %toBeHerenow206, %node_node** @llNodes.3, align 8
  br label %while192

merge202:                                         ; preds = %while192, %then200
  %returnVal207 = load i1, i1* %ret_true188, align 1
  br label %if208

if208:                                            ; preds = %merge202
  br i1 %returnVal187, label %merge210, label %else209

else209:                                          ; preds = %if208
  %graph_ptr211 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes212 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr211, i32 0, i32 0
  %nodes_hd213 = load %node_node*, %node_node** %nodes212, align 8
  %malloccall214 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node215 = bitcast i8* %malloccall214 to %node_node*
  %"lst_rst'216" = getelementptr inbounds %node_node, %node_node* %new_node215, i32 0, i32 1
  %node_ptr217 = getelementptr inbounds %node_node, %node_node* %new_node215, i32 0, i32 0
  store %node_node* %nodes_hd213, %node_node** %"lst_rst'216", align 8
  store %node_struct* %"src'166", %node_struct** %node_ptr217, align 8
  store %node_node* %new_node215, %node_node** %nodes212, align 8
  br label %merge210

merge210:                                         ; preds = %else209, %if208
  br label %if218

if218:                                            ; preds = %merge210
  br i1 %returnVal207, label %merge220, label %else219

else219:                                          ; preds = %if218
  %graph_ptr221 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes222 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr221, i32 0, i32 0
  %nodes_hd223 = load %node_node*, %node_node** %nodes222, align 8
  %malloccall224 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node225 = bitcast i8* %malloccall224 to %node_node*
  %"lst_rst'226" = getelementptr inbounds %node_node, %node_node* %new_node225, i32 0, i32 1
  %node_ptr227 = getelementptr inbounds %node_node, %node_node* %new_node225, i32 0, i32 0
  store %node_node* %nodes_hd223, %node_node** %"lst_rst'226", align 8
  store %node_struct* %"dst'167", %node_struct** %node_ptr227, align 8
  store %node_node* %new_node225, %node_node** %nodes222, align 8
  br label %merge220

merge220:                                         ; preds = %else219, %if218
  store %edge_node* %new_edge161, %edge_node** %edges158, align 8
  %e3 = load %edge_t*, %edge_t** @e3, align 8
  %graph_ptr228 = load %graph_tt*, %graph_tt** @g, align 8
  %edges229 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr228, i32 0, i32 1
  %edges_hd230 = load %edge_node*, %edge_node** %edges229, align 8
  %malloccall231 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge232 = bitcast i8* %malloccall231 to %edge_node*
  %"lst_rst'233" = getelementptr inbounds %edge_node, %edge_node* %new_edge232, i32 0, i32 1
  %edge_ptr234 = getelementptr inbounds %edge_node, %edge_node* %new_edge232, i32 0, i32 0
  store %edge_node* %edges_hd230, %edge_node** %"lst_rst'233", align 8
  store %edge_t* %e3, %edge_t** %edge_ptr234, align 8
  %src_ptr235 = getelementptr inbounds %edge_t, %edge_t* %e3, i32 0, i32 0
  %dst_ptr236 = getelementptr inbounds %edge_t, %edge_t* %e3, i32 0, i32 1
  %"src'237" = load %node_struct*, %node_struct** %src_ptr235, align 8
  %"dst'238" = load %node_struct*, %node_struct** %dst_ptr236, align 8
  %ret_true239 = alloca i1, align 1
  store i1 false, i1* %ret_true239, align 1
  %graph_ptr240 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes241 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr240, i32 0, i32 0
  %head242 = load %node_node*, %node_node** %nodes241, align 8
  store %node_node* %head242, %node_node** @llNodes.4, align 8
  br label %while243

while243:                                         ; preds = %merge220, %else252
  %putMeHere244 = load %node_node*, %node_node** @llNodes.4, align 8
  %curr245 = icmp ne %node_node* %putMeHere244, null
  br i1 %curr245, label %while_body246, label %merge253

while_body246:                                    ; preds = %while243
  %putMeHere247 = load %node_node*, %node_node** @llNodes.4, align 8
  %nodes248 = getelementptr inbounds %node_node, %node_node* %putMeHere247, i32 0, i32 0
  %"stored_node'249" = load %node_struct*, %node_struct** %nodes248, align 8
  br label %if250

if250:                                            ; preds = %while_body246
  %"found?254" = icmp eq %node_struct* %"stored_node'249", %"src'237"
  br i1 %"found?254", label %then251, label %else252

then251:                                          ; preds = %if250
  store i1 true, i1* %ret_true239, align 1
  br label %merge253

else252:                                          ; preds = %if250
  %toBeHere255 = load %node_node*, %node_node** @llNodes.4, align 8
  %llNodesPtr256 = getelementptr inbounds %node_node, %node_node* %toBeHere255, i32 0, i32 1
  %toBeHerenow257 = load %node_node*, %node_node** %llNodesPtr256, align 8
  store %node_node* %toBeHerenow257, %node_node** @llNodes.4, align 8
  br label %while243

merge253:                                         ; preds = %while243, %then251
  %returnVal258 = load i1, i1* %ret_true239, align 1
  %ret_true259 = alloca i1, align 1
  store i1 false, i1* %ret_true259, align 1
  %graph_ptr260 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes261 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr260, i32 0, i32 0
  %head262 = load %node_node*, %node_node** %nodes261, align 8
  store %node_node* %head262, %node_node** @llNodes.5, align 8
  br label %while263

while263:                                         ; preds = %merge253, %else272
  %putMeHere264 = load %node_node*, %node_node** @llNodes.5, align 8
  %curr265 = icmp ne %node_node* %putMeHere264, null
  br i1 %curr265, label %while_body266, label %merge273

while_body266:                                    ; preds = %while263
  %putMeHere267 = load %node_node*, %node_node** @llNodes.5, align 8
  %nodes268 = getelementptr inbounds %node_node, %node_node* %putMeHere267, i32 0, i32 0
  %"stored_node'269" = load %node_struct*, %node_struct** %nodes268, align 8
  br label %if270

if270:                                            ; preds = %while_body266
  %"found?274" = icmp eq %node_struct* %"stored_node'269", %"dst'238"
  br i1 %"found?274", label %then271, label %else272

then271:                                          ; preds = %if270
  store i1 true, i1* %ret_true259, align 1
  br label %merge273

else272:                                          ; preds = %if270
  %toBeHere275 = load %node_node*, %node_node** @llNodes.5, align 8
  %llNodesPtr276 = getelementptr inbounds %node_node, %node_node* %toBeHere275, i32 0, i32 1
  %toBeHerenow277 = load %node_node*, %node_node** %llNodesPtr276, align 8
  store %node_node* %toBeHerenow277, %node_node** @llNodes.5, align 8
  br label %while263

merge273:                                         ; preds = %while263, %then271
  %returnVal278 = load i1, i1* %ret_true259, align 1
  br label %if279

if279:                                            ; preds = %merge273
  br i1 %returnVal258, label %merge281, label %else280

else280:                                          ; preds = %if279
  %graph_ptr282 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes283 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr282, i32 0, i32 0
  %nodes_hd284 = load %node_node*, %node_node** %nodes283, align 8
  %malloccall285 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node286 = bitcast i8* %malloccall285 to %node_node*
  %"lst_rst'287" = getelementptr inbounds %node_node, %node_node* %new_node286, i32 0, i32 1
  %node_ptr288 = getelementptr inbounds %node_node, %node_node* %new_node286, i32 0, i32 0
  store %node_node* %nodes_hd284, %node_node** %"lst_rst'287", align 8
  store %node_struct* %"src'237", %node_struct** %node_ptr288, align 8
  store %node_node* %new_node286, %node_node** %nodes283, align 8
  br label %merge281

merge281:                                         ; preds = %else280, %if279
  br label %if289

if289:                                            ; preds = %merge281
  br i1 %returnVal278, label %merge291, label %else290

else290:                                          ; preds = %if289
  %graph_ptr292 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes293 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr292, i32 0, i32 0
  %nodes_hd294 = load %node_node*, %node_node** %nodes293, align 8
  %malloccall295 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node296 = bitcast i8* %malloccall295 to %node_node*
  %"lst_rst'297" = getelementptr inbounds %node_node, %node_node* %new_node296, i32 0, i32 1
  %node_ptr298 = getelementptr inbounds %node_node, %node_node* %new_node296, i32 0, i32 0
  store %node_node* %nodes_hd294, %node_node** %"lst_rst'297", align 8
  store %node_struct* %"dst'238", %node_struct** %node_ptr298, align 8
  store %node_node* %new_node296, %node_node** %nodes293, align 8
  br label %merge291

merge291:                                         ; preds = %else290, %if289
  store %edge_node* %new_edge232, %edge_node** %edges229, align 8
  %ret_true299 = alloca i1, align 1
  store i1 false, i1* %ret_true299, align 1
  %e1300 = load %edge_t*, %edge_t** @e1, align 8
  %graph_ptr301 = load %graph_tt*, %graph_tt** @g, align 8
  %edges302 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr301, i32 0, i32 1
  %head303 = load %edge_node*, %edge_node** %edges302, align 8
  store %edge_node* %head303, %edge_node** @llEdges, align 8
  br label %while304

while304:                                         ; preds = %merge291, %else313
  %putMeHere305 = load %edge_node*, %edge_node** @llEdges, align 8
  %curr306 = icmp ne %edge_node* %putMeHere305, null
  br i1 %curr306, label %while_body307, label %merge314

while_body307:                                    ; preds = %while304
  %putMeHere308 = load %edge_node*, %edge_node** @llEdges, align 8
  %nodes309 = getelementptr inbounds %edge_node, %edge_node* %putMeHere308, i32 0, i32 0
  %"stored_node'310" = load %edge_t*, %edge_t** %nodes309, align 8
  br label %if311

if311:                                            ; preds = %while_body307
  %"found?315" = icmp eq %edge_t* %"stored_node'310", %e1300
  br i1 %"found?315", label %then312, label %else313

then312:                                          ; preds = %if311
  store i1 true, i1* %ret_true299, align 1
  br label %merge314

else313:                                          ; preds = %if311
  %toBeHere316 = load %edge_node*, %edge_node** @llEdges, align 8
  %llNodesPtr317 = getelementptr inbounds %edge_node, %edge_node* %toBeHere316, i32 0, i32 1
  %toBeHerenow318 = load %edge_node*, %edge_node** %llNodesPtr317, align 8
  store %edge_node* %toBeHerenow318, %edge_node** @llEdges, align 8
  br label %while304

merge314:                                         ; preds = %while304, %then312
  %returnVal319 = load i1, i1* %ret_true299, align 1
  store i1 %returnVal319, i1* @e, align 1
  %e = load i1, i1* @e, align 1
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i1 %e)
  %n1320 = load %node_struct*, %node_struct** @n1, align 8
  %graph_ptr321 = load %graph_tt*, %graph_tt** @g, align 8
  %edges322 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr321, i32 0, i32 1
  %head323 = load %edge_node*, %edge_node** %edges322, align 8
  store %edge_node* %head323, %edge_node** @llEdges.6, align 8
  br label %while324

while324:                                         ; preds = %merge314, %else332
  %putMeHere325 = load %edge_node*, %edge_node** @llEdges.6, align 8
  %curr326 = icmp ne %edge_node* %putMeHere325, null
  br i1 %curr326, label %while_body327, label %merge333

while_body327:                                    ; preds = %while324
  %putMeHere328 = load %edge_node*, %edge_node** @llEdges.6, align 8
  %nodes329 = getelementptr inbounds %edge_node, %edge_node* %putMeHere328, i32 0, i32 0
  %"stored_nodeA'" = load %edge_t*, %edge_t** %nodes329, align 8
  br label %if330

if330:                                            ; preds = %while_body327
  %nodes334 = getelementptr inbounds %edge_t, %edge_t* %"stored_nodeA'", i32 0, i32 0
  %nodes335 = getelementptr inbounds %edge_t, %edge_t* %"stored_nodeA'", i32 0, i32 1
  %"currEdgeSrc'" = load %node_struct*, %node_struct** %nodes334, align 8
  %"currEdgeDst'" = load %node_struct*, %node_struct** %nodes335, align 8
  %"foundSrc?" = icmp eq %node_struct* %"currEdgeSrc'", %n1320
  %"foundDst?" = icmp eq %node_struct* %"currEdgeDst'", %n1320
  %if_found = or i1 %"foundSrc?", %"foundDst?"
  br i1 %if_found, label %then331, label %else332

then331:                                          ; preds = %if330
  %malloccall336 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node337 = bitcast i8* %malloccall336 to %list_node*
  %nodes338 = getelementptr inbounds %list_node, %list_node* %node337, i32 0, i32 0
  %nodes339 = getelementptr inbounds %list_node, %list_node* %node337, i32 0, i32 1
  %malloccall340 = tail call i8* @malloc(i32 ptrtoint (%edge_t** getelementptr (%edge_t*, %edge_t** null, i32 1) to i32))
  %please_work = bitcast i8* %malloccall340 to %edge_t**
  store %edge_t* %"stored_nodeA'", %edge_t** %please_work, align 8
  %currEdgeVoidPtr = bitcast %edge_t** %please_work to i8*
  store i8* %currEdgeVoidPtr, i8** %nodes338, align 8
  %nextEdges = load %list_node*, %list_node** @edgesList, align 8
  store %list_node* %nextEdges, %list_node** %nodes339, align 8
  store %list_node* %node337, %list_node** @edgesList, align 8
  br label %else332

else332:                                          ; preds = %then331, %if330
  %toBeHere341 = load %edge_node*, %edge_node** @llEdges.6, align 8
  %llNodesPtr342 = getelementptr inbounds %edge_node, %edge_node* %toBeHere341, i32 0, i32 1
  %toBeHerenow343 = load %edge_node*, %edge_node** %llNodesPtr342, align 8
  store %edge_node* %toBeHerenow343, %edge_node** @llEdges.6, align 8
  br label %while324

merge333:                                         ; preds = %while324
  %return = load %list_node*, %list_node** @edgesList, align 8
  store %list_node* %return, %list_node** @l.7, align 8
  %list = load %list_node*, %list_node** @l.7, align 8
  %malloccall344 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %0 = bitcast i8* %malloccall344 to %list_node**
  %malloccall345 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %malloccall345 to i32*
  store %list_node* %list, %list_node** %0, align 8
  store i32 2, i32* %1, align 4
  br label %traverse_loop

traverse_loop:                                    ; preds = %while_body346, %merge333
  %2 = load i32, i32* %1, align 4
  %temp349 = icmp ne i32 %2, 0
  br i1 %temp349, label %while_body346, label %merge350

while_body346:                                    ; preds = %traverse_loop
  %3 = load %list_node*, %list_node** %0, align 8
  %temp347 = getelementptr inbounds %list_node, %list_node* %3, i32 0, i32 1
  %temp348 = load %list_node*, %list_node** %temp347, align 8
  %4 = load i32, i32* %1, align 4
  %subtract = sub i32 %4, 1
  store i32 %subtract, i32* %1, align 4
  store %list_node* %temp348, %list_node** %0, align 8
  br label %traverse_loop

merge350:                                         ; preds = %traverse_loop
  %5 = load %list_node*, %list_node** %0, align 8
  %temp351 = getelementptr inbounds %list_node, %list_node* %5, i32 0, i32 0
  %retval = load i8*, i8** %temp351, align 8
  %li_conv = bitcast i8* %retval to %edge_t**
  %val_ptr = load %edge_t*, %edge_t** %li_conv, align 8
  store %edge_t* %val_ptr, %edge_t** @e4, align 8
  %"lvar'352" = load %edge_t*, %edge_t** @e4, align 8
  %temp353 = getelementptr inbounds %edge_t, %edge_t* %"lvar'352", i32 0, i32 0
  %e4.src = load %node_struct*, %node_struct** %temp353, align 8
  %srcNode = load %node_struct*, %node_struct** %temp353, align 8
  %malloccall354 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node355 = bitcast i8* %malloccall354 to %node_struct*
  %malloccall356 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %data357 = bitcast i8* %malloccall356 to i32*
  %malloccall358 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name359 = bitcast i8* %malloccall358 to i8**
  %data_ptr360 = bitcast i32* %data357 to i8*
  %name_ptr361 = bitcast i8** %name359 to i8*
  %"name'362" = getelementptr inbounds %node_struct, %node_struct* %node355, i32 0, i32 0
  %"data'363" = getelementptr inbounds %node_struct, %node_struct* %node355, i32 0, i32 2
  store i8* %name_ptr361, i8** %"name'362", align 8
  store i8* %data_ptr360, i8** %"data'363", align 8
  store %node_struct* %node355, %node_struct** @n10, align 8
  store %node_struct* %srcNode, %node_struct** @n10, align 8
  %"lvar'364" = load %node_struct*, %node_struct** @n10, align 8
  %temp365 = getelementptr inbounds %node_struct, %node_struct* %"lvar'364", i32 0, i32 2
  %n10.data = load i8*, i8** %temp365, align 8
  %new_ptr = bitcast i8* %n10.data to i32*
  %n10.data366 = load i32, i32* %new_ptr, align 4
  store i32 %n10.data366, i32* @i10, align 4
  %i10 = load i32, i32* @i10, align 4
  %printf367 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.8, i32 0, i32 0), i32 %i10)
  %"lvar'368" = load %edge_t*, %edge_t** @e4, align 8
  %temp369 = getelementptr inbounds %edge_t, %edge_t* %"lvar'368", i32 0, i32 2
  %e4.weight = load i32, i32* %temp369, align 4
  %e4.weight370 = load i32, i32* %temp369, align 4
  store i32 %e4.weight370, i32* @w, align 4
  %w = load i32, i32* @w, align 4
  %printf371 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.9, i32 0, i32 0), i32 %w)
  ret i32 0
}

declare noalias i8* @malloc(i32)

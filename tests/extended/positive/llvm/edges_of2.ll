; ModuleID = 'Graphite'
source_filename = "Graphite"

%node_struct = type { i8*, i1, i8* }
%edge_t = type { %node_struct*, %node_struct*, i32 }
%graph_t = type { %node_node*, %edge_node* }
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
@g = global %graph_t zeroinitializer
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
  %n180 = load %node_struct*, %node_struct** @n1, align 8
  %nodes_hd = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall81 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node = bitcast i8* %malloccall81 to %node_node*
  %"lst_rst'" = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 1
  %node_ptr = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 0
  store %node_node* %nodes_hd, %node_node** %"lst_rst'", align 8
  store %node_struct* %n180, %node_struct** %node_ptr, align 8
  store %node_node* %new_node, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %n282 = load %node_struct*, %node_struct** @n2, align 8
  %nodes_hd83 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall84 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node85 = bitcast i8* %malloccall84 to %node_node*
  %"lst_rst'86" = getelementptr inbounds %node_node, %node_node* %new_node85, i32 0, i32 1
  %node_ptr87 = getelementptr inbounds %node_node, %node_node* %new_node85, i32 0, i32 0
  store %node_node* %nodes_hd83, %node_node** %"lst_rst'86", align 8
  store %node_struct* %n282, %node_struct** %node_ptr87, align 8
  store %node_node* %new_node85, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %n388 = load %node_struct*, %node_struct** @n3, align 8
  %nodes_hd89 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall90 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node91 = bitcast i8* %malloccall90 to %node_node*
  %"lst_rst'92" = getelementptr inbounds %node_node, %node_node* %new_node91, i32 0, i32 1
  %node_ptr93 = getelementptr inbounds %node_node, %node_node* %new_node91, i32 0, i32 0
  store %node_node* %nodes_hd89, %node_node** %"lst_rst'92", align 8
  store %node_struct* %n388, %node_struct** %node_ptr93, align 8
  store %node_node* %new_node91, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %n494 = load %node_struct*, %node_struct** @n4, align 8
  %nodes_hd95 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall96 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node97 = bitcast i8* %malloccall96 to %node_node*
  %"lst_rst'98" = getelementptr inbounds %node_node, %node_node* %new_node97, i32 0, i32 1
  %node_ptr99 = getelementptr inbounds %node_node, %node_node* %new_node97, i32 0, i32 0
  store %node_node* %nodes_hd95, %node_node** %"lst_rst'98", align 8
  store %node_struct* %n494, %node_struct** %node_ptr99, align 8
  store %node_node* %new_node97, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %e1 = load %edge_t*, %edge_t** @e1, align 8
  %edges_hd = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %malloccall100 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge = bitcast i8* %malloccall100 to %edge_node*
  %"lst_rst'101" = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 1
  %edge_ptr = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 0
  store %edge_node* %edges_hd, %edge_node** %"lst_rst'101", align 8
  store %edge_t* %e1, %edge_t** %edge_ptr, align 8
  %src_ptr = getelementptr inbounds %edge_t, %edge_t* %e1, i32 0, i32 0
  %dst_ptr = getelementptr inbounds %edge_t, %edge_t* %e1, i32 0, i32 1
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
  %putMeHere102 = load %node_node*, %node_node** @llNodes, align 8
  %nodes = getelementptr inbounds %node_node, %node_node* %putMeHere102, i32 0, i32 0
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
  %ret_true103 = alloca i1, align 1
  store i1 false, i1* %ret_true103, align 1
  %head104 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head104, %node_node** @llNodes.1, align 8
  br label %while105

while105:                                         ; preds = %merge, %else114
  %putMeHere106 = load %node_node*, %node_node** @llNodes.1, align 8
  %curr107 = icmp ne %node_node* %putMeHere106, null
  br i1 %curr107, label %while_body108, label %merge115

while_body108:                                    ; preds = %while105
  %putMeHere109 = load %node_node*, %node_node** @llNodes.1, align 8
  %nodes110 = getelementptr inbounds %node_node, %node_node* %putMeHere109, i32 0, i32 0
  %"stored_node'111" = load %node_struct*, %node_struct** %nodes110, align 8
  br label %if112

if112:                                            ; preds = %while_body108
  %"found?116" = icmp eq %node_struct* %"stored_node'111", %"dst'"
  br i1 %"found?116", label %then113, label %else114

then113:                                          ; preds = %if112
  store i1 true, i1* %ret_true103, align 1
  br label %merge115

else114:                                          ; preds = %if112
  %toBeHere117 = load %node_node*, %node_node** @llNodes.1, align 8
  %llNodesPtr118 = getelementptr inbounds %node_node, %node_node* %toBeHere117, i32 0, i32 1
  %toBeHerenow119 = load %node_node*, %node_node** %llNodesPtr118, align 8
  store %node_node* %toBeHerenow119, %node_node** @llNodes.1, align 8
  br label %while105

merge115:                                         ; preds = %while105, %then113
  %returnVal120 = load i1, i1* %ret_true103, align 1
  br label %if121

if121:                                            ; preds = %merge115
  br i1 %returnVal, label %merge123, label %else122

else122:                                          ; preds = %if121
  %nodes_hd124 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall125 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node126 = bitcast i8* %malloccall125 to %node_node*
  %"lst_rst'127" = getelementptr inbounds %node_node, %node_node* %new_node126, i32 0, i32 1
  %node_ptr128 = getelementptr inbounds %node_node, %node_node* %new_node126, i32 0, i32 0
  store %node_node* %nodes_hd124, %node_node** %"lst_rst'127", align 8
  store %node_struct* %"src'", %node_struct** %node_ptr128, align 8
  store %node_node* %new_node126, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  br label %merge123

merge123:                                         ; preds = %else122, %if121
  br label %if129

if129:                                            ; preds = %merge123
  br i1 %returnVal120, label %merge131, label %else130

else130:                                          ; preds = %if129
  %nodes_hd132 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall133 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node134 = bitcast i8* %malloccall133 to %node_node*
  %"lst_rst'135" = getelementptr inbounds %node_node, %node_node* %new_node134, i32 0, i32 1
  %node_ptr136 = getelementptr inbounds %node_node, %node_node* %new_node134, i32 0, i32 0
  store %node_node* %nodes_hd132, %node_node** %"lst_rst'135", align 8
  store %node_struct* %"dst'", %node_struct** %node_ptr136, align 8
  store %node_node* %new_node134, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  br label %merge131

merge131:                                         ; preds = %else130, %if129
  store %edge_node* %new_edge, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %e2 = load %edge_t*, %edge_t** @e2, align 8
  %edges_hd137 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %malloccall138 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge139 = bitcast i8* %malloccall138 to %edge_node*
  %"lst_rst'140" = getelementptr inbounds %edge_node, %edge_node* %new_edge139, i32 0, i32 1
  %edge_ptr141 = getelementptr inbounds %edge_node, %edge_node* %new_edge139, i32 0, i32 0
  store %edge_node* %edges_hd137, %edge_node** %"lst_rst'140", align 8
  store %edge_t* %e2, %edge_t** %edge_ptr141, align 8
  %src_ptr142 = getelementptr inbounds %edge_t, %edge_t* %e2, i32 0, i32 0
  %dst_ptr143 = getelementptr inbounds %edge_t, %edge_t* %e2, i32 0, i32 1
  %"src'144" = load %node_struct*, %node_struct** %src_ptr142, align 8
  %"dst'145" = load %node_struct*, %node_struct** %dst_ptr143, align 8
  %ret_true146 = alloca i1, align 1
  store i1 false, i1* %ret_true146, align 1
  %head147 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head147, %node_node** @llNodes.2, align 8
  br label %while148

while148:                                         ; preds = %merge131, %else157
  %putMeHere149 = load %node_node*, %node_node** @llNodes.2, align 8
  %curr150 = icmp ne %node_node* %putMeHere149, null
  br i1 %curr150, label %while_body151, label %merge158

while_body151:                                    ; preds = %while148
  %putMeHere152 = load %node_node*, %node_node** @llNodes.2, align 8
  %nodes153 = getelementptr inbounds %node_node, %node_node* %putMeHere152, i32 0, i32 0
  %"stored_node'154" = load %node_struct*, %node_struct** %nodes153, align 8
  br label %if155

if155:                                            ; preds = %while_body151
  %"found?159" = icmp eq %node_struct* %"stored_node'154", %"src'144"
  br i1 %"found?159", label %then156, label %else157

then156:                                          ; preds = %if155
  store i1 true, i1* %ret_true146, align 1
  br label %merge158

else157:                                          ; preds = %if155
  %toBeHere160 = load %node_node*, %node_node** @llNodes.2, align 8
  %llNodesPtr161 = getelementptr inbounds %node_node, %node_node* %toBeHere160, i32 0, i32 1
  %toBeHerenow162 = load %node_node*, %node_node** %llNodesPtr161, align 8
  store %node_node* %toBeHerenow162, %node_node** @llNodes.2, align 8
  br label %while148

merge158:                                         ; preds = %while148, %then156
  %returnVal163 = load i1, i1* %ret_true146, align 1
  %ret_true164 = alloca i1, align 1
  store i1 false, i1* %ret_true164, align 1
  %head165 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head165, %node_node** @llNodes.3, align 8
  br label %while166

while166:                                         ; preds = %merge158, %else175
  %putMeHere167 = load %node_node*, %node_node** @llNodes.3, align 8
  %curr168 = icmp ne %node_node* %putMeHere167, null
  br i1 %curr168, label %while_body169, label %merge176

while_body169:                                    ; preds = %while166
  %putMeHere170 = load %node_node*, %node_node** @llNodes.3, align 8
  %nodes171 = getelementptr inbounds %node_node, %node_node* %putMeHere170, i32 0, i32 0
  %"stored_node'172" = load %node_struct*, %node_struct** %nodes171, align 8
  br label %if173

if173:                                            ; preds = %while_body169
  %"found?177" = icmp eq %node_struct* %"stored_node'172", %"dst'145"
  br i1 %"found?177", label %then174, label %else175

then174:                                          ; preds = %if173
  store i1 true, i1* %ret_true164, align 1
  br label %merge176

else175:                                          ; preds = %if173
  %toBeHere178 = load %node_node*, %node_node** @llNodes.3, align 8
  %llNodesPtr179 = getelementptr inbounds %node_node, %node_node* %toBeHere178, i32 0, i32 1
  %toBeHerenow180 = load %node_node*, %node_node** %llNodesPtr179, align 8
  store %node_node* %toBeHerenow180, %node_node** @llNodes.3, align 8
  br label %while166

merge176:                                         ; preds = %while166, %then174
  %returnVal181 = load i1, i1* %ret_true164, align 1
  br label %if182

if182:                                            ; preds = %merge176
  br i1 %returnVal163, label %merge184, label %else183

else183:                                          ; preds = %if182
  %nodes_hd185 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall186 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node187 = bitcast i8* %malloccall186 to %node_node*
  %"lst_rst'188" = getelementptr inbounds %node_node, %node_node* %new_node187, i32 0, i32 1
  %node_ptr189 = getelementptr inbounds %node_node, %node_node* %new_node187, i32 0, i32 0
  store %node_node* %nodes_hd185, %node_node** %"lst_rst'188", align 8
  store %node_struct* %"src'144", %node_struct** %node_ptr189, align 8
  store %node_node* %new_node187, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  br label %merge184

merge184:                                         ; preds = %else183, %if182
  br label %if190

if190:                                            ; preds = %merge184
  br i1 %returnVal181, label %merge192, label %else191

else191:                                          ; preds = %if190
  %nodes_hd193 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall194 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node195 = bitcast i8* %malloccall194 to %node_node*
  %"lst_rst'196" = getelementptr inbounds %node_node, %node_node* %new_node195, i32 0, i32 1
  %node_ptr197 = getelementptr inbounds %node_node, %node_node* %new_node195, i32 0, i32 0
  store %node_node* %nodes_hd193, %node_node** %"lst_rst'196", align 8
  store %node_struct* %"dst'145", %node_struct** %node_ptr197, align 8
  store %node_node* %new_node195, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  br label %merge192

merge192:                                         ; preds = %else191, %if190
  store %edge_node* %new_edge139, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %e3 = load %edge_t*, %edge_t** @e3, align 8
  %edges_hd198 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %malloccall199 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge200 = bitcast i8* %malloccall199 to %edge_node*
  %"lst_rst'201" = getelementptr inbounds %edge_node, %edge_node* %new_edge200, i32 0, i32 1
  %edge_ptr202 = getelementptr inbounds %edge_node, %edge_node* %new_edge200, i32 0, i32 0
  store %edge_node* %edges_hd198, %edge_node** %"lst_rst'201", align 8
  store %edge_t* %e3, %edge_t** %edge_ptr202, align 8
  %src_ptr203 = getelementptr inbounds %edge_t, %edge_t* %e3, i32 0, i32 0
  %dst_ptr204 = getelementptr inbounds %edge_t, %edge_t* %e3, i32 0, i32 1
  %"src'205" = load %node_struct*, %node_struct** %src_ptr203, align 8
  %"dst'206" = load %node_struct*, %node_struct** %dst_ptr204, align 8
  %ret_true207 = alloca i1, align 1
  store i1 false, i1* %ret_true207, align 1
  %head208 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head208, %node_node** @llNodes.4, align 8
  br label %while209

while209:                                         ; preds = %merge192, %else218
  %putMeHere210 = load %node_node*, %node_node** @llNodes.4, align 8
  %curr211 = icmp ne %node_node* %putMeHere210, null
  br i1 %curr211, label %while_body212, label %merge219

while_body212:                                    ; preds = %while209
  %putMeHere213 = load %node_node*, %node_node** @llNodes.4, align 8
  %nodes214 = getelementptr inbounds %node_node, %node_node* %putMeHere213, i32 0, i32 0
  %"stored_node'215" = load %node_struct*, %node_struct** %nodes214, align 8
  br label %if216

if216:                                            ; preds = %while_body212
  %"found?220" = icmp eq %node_struct* %"stored_node'215", %"src'205"
  br i1 %"found?220", label %then217, label %else218

then217:                                          ; preds = %if216
  store i1 true, i1* %ret_true207, align 1
  br label %merge219

else218:                                          ; preds = %if216
  %toBeHere221 = load %node_node*, %node_node** @llNodes.4, align 8
  %llNodesPtr222 = getelementptr inbounds %node_node, %node_node* %toBeHere221, i32 0, i32 1
  %toBeHerenow223 = load %node_node*, %node_node** %llNodesPtr222, align 8
  store %node_node* %toBeHerenow223, %node_node** @llNodes.4, align 8
  br label %while209

merge219:                                         ; preds = %while209, %then217
  %returnVal224 = load i1, i1* %ret_true207, align 1
  %ret_true225 = alloca i1, align 1
  store i1 false, i1* %ret_true225, align 1
  %head226 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head226, %node_node** @llNodes.5, align 8
  br label %while227

while227:                                         ; preds = %merge219, %else236
  %putMeHere228 = load %node_node*, %node_node** @llNodes.5, align 8
  %curr229 = icmp ne %node_node* %putMeHere228, null
  br i1 %curr229, label %while_body230, label %merge237

while_body230:                                    ; preds = %while227
  %putMeHere231 = load %node_node*, %node_node** @llNodes.5, align 8
  %nodes232 = getelementptr inbounds %node_node, %node_node* %putMeHere231, i32 0, i32 0
  %"stored_node'233" = load %node_struct*, %node_struct** %nodes232, align 8
  br label %if234

if234:                                            ; preds = %while_body230
  %"found?238" = icmp eq %node_struct* %"stored_node'233", %"dst'206"
  br i1 %"found?238", label %then235, label %else236

then235:                                          ; preds = %if234
  store i1 true, i1* %ret_true225, align 1
  br label %merge237

else236:                                          ; preds = %if234
  %toBeHere239 = load %node_node*, %node_node** @llNodes.5, align 8
  %llNodesPtr240 = getelementptr inbounds %node_node, %node_node* %toBeHere239, i32 0, i32 1
  %toBeHerenow241 = load %node_node*, %node_node** %llNodesPtr240, align 8
  store %node_node* %toBeHerenow241, %node_node** @llNodes.5, align 8
  br label %while227

merge237:                                         ; preds = %while227, %then235
  %returnVal242 = load i1, i1* %ret_true225, align 1
  br label %if243

if243:                                            ; preds = %merge237
  br i1 %returnVal224, label %merge245, label %else244

else244:                                          ; preds = %if243
  %nodes_hd246 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall247 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node248 = bitcast i8* %malloccall247 to %node_node*
  %"lst_rst'249" = getelementptr inbounds %node_node, %node_node* %new_node248, i32 0, i32 1
  %node_ptr250 = getelementptr inbounds %node_node, %node_node* %new_node248, i32 0, i32 0
  store %node_node* %nodes_hd246, %node_node** %"lst_rst'249", align 8
  store %node_struct* %"src'205", %node_struct** %node_ptr250, align 8
  store %node_node* %new_node248, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  br label %merge245

merge245:                                         ; preds = %else244, %if243
  br label %if251

if251:                                            ; preds = %merge245
  br i1 %returnVal242, label %merge253, label %else252

else252:                                          ; preds = %if251
  %nodes_hd254 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall255 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node256 = bitcast i8* %malloccall255 to %node_node*
  %"lst_rst'257" = getelementptr inbounds %node_node, %node_node* %new_node256, i32 0, i32 1
  %node_ptr258 = getelementptr inbounds %node_node, %node_node* %new_node256, i32 0, i32 0
  store %node_node* %nodes_hd254, %node_node** %"lst_rst'257", align 8
  store %node_struct* %"dst'206", %node_struct** %node_ptr258, align 8
  store %node_node* %new_node256, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  br label %merge253

merge253:                                         ; preds = %else252, %if251
  store %edge_node* %new_edge200, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %ret_true259 = alloca i1, align 1
  store i1 false, i1* %ret_true259, align 1
  %e1260 = load %edge_t*, %edge_t** @e1, align 8
  %head261 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  store %edge_node* %head261, %edge_node** @llEdges, align 8
  br label %while262

while262:                                         ; preds = %merge253, %else271
  %putMeHere263 = load %edge_node*, %edge_node** @llEdges, align 8
  %curr264 = icmp ne %edge_node* %putMeHere263, null
  br i1 %curr264, label %while_body265, label %merge272

while_body265:                                    ; preds = %while262
  %putMeHere266 = load %edge_node*, %edge_node** @llEdges, align 8
  %nodes267 = getelementptr inbounds %edge_node, %edge_node* %putMeHere266, i32 0, i32 0
  %"stored_node'268" = load %edge_t*, %edge_t** %nodes267, align 8
  br label %if269

if269:                                            ; preds = %while_body265
  %"found?273" = icmp eq %edge_t* %"stored_node'268", %e1260
  br i1 %"found?273", label %then270, label %else271

then270:                                          ; preds = %if269
  store i1 true, i1* %ret_true259, align 1
  br label %merge272

else271:                                          ; preds = %if269
  %toBeHere274 = load %edge_node*, %edge_node** @llEdges, align 8
  %llNodesPtr275 = getelementptr inbounds %edge_node, %edge_node* %toBeHere274, i32 0, i32 1
  %toBeHerenow276 = load %edge_node*, %edge_node** %llNodesPtr275, align 8
  store %edge_node* %toBeHerenow276, %edge_node** @llEdges, align 8
  br label %while262

merge272:                                         ; preds = %while262, %then270
  %returnVal277 = load i1, i1* %ret_true259, align 1
  store i1 %returnVal277, i1* @e, align 1
  %e = load i1, i1* @e, align 1
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i1 %e)
  %n1278 = load %node_struct*, %node_struct** @n1, align 8
  %head279 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  store %edge_node* %head279, %edge_node** @llEdges.6, align 8
  br label %while280

while280:                                         ; preds = %merge272, %else288
  %putMeHere281 = load %edge_node*, %edge_node** @llEdges.6, align 8
  %curr282 = icmp ne %edge_node* %putMeHere281, null
  br i1 %curr282, label %while_body283, label %merge289

while_body283:                                    ; preds = %while280
  %putMeHere284 = load %edge_node*, %edge_node** @llEdges.6, align 8
  %nodes285 = getelementptr inbounds %edge_node, %edge_node* %putMeHere284, i32 0, i32 0
  %"stored_nodeA'" = load %edge_t*, %edge_t** %nodes285, align 8
  br label %if286

if286:                                            ; preds = %while_body283
  %nodes290 = getelementptr inbounds %edge_t, %edge_t* %"stored_nodeA'", i32 0, i32 0
  %nodes291 = getelementptr inbounds %edge_t, %edge_t* %"stored_nodeA'", i32 0, i32 1
  %"currEdgeSrc'" = load %node_struct*, %node_struct** %nodes290, align 8
  %"currEdgeDst'" = load %node_struct*, %node_struct** %nodes291, align 8
  %"foundSrc?" = icmp eq %node_struct* %"currEdgeSrc'", %n1278
  %"foundDst?" = icmp eq %node_struct* %"currEdgeDst'", %n1278
  %if_found = or i1 %"foundSrc?", %"foundDst?"
  br i1 %if_found, label %then287, label %else288

then287:                                          ; preds = %if286
  %malloccall292 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node293 = bitcast i8* %malloccall292 to %list_node*
  %nodes294 = getelementptr inbounds %list_node, %list_node* %node293, i32 0, i32 0
  %nodes295 = getelementptr inbounds %list_node, %list_node* %node293, i32 0, i32 1
  %malloccall296 = tail call i8* @malloc(i32 ptrtoint (%edge_t** getelementptr (%edge_t*, %edge_t** null, i32 1) to i32))
  %please_work = bitcast i8* %malloccall296 to %edge_t**
  store %edge_t* %"stored_nodeA'", %edge_t** %please_work, align 8
  %currEdgeVoidPtr = bitcast %edge_t** %please_work to i8*
  store i8* %currEdgeVoidPtr, i8** %nodes294, align 8
  %nextEdges = load %list_node*, %list_node** @edgesList, align 8
  store %list_node* %nextEdges, %list_node** %nodes295, align 8
  store %list_node* %node293, %list_node** @edgesList, align 8
  br label %else288

else288:                                          ; preds = %then287, %if286
  %toBeHere297 = load %edge_node*, %edge_node** @llEdges.6, align 8
  %llNodesPtr298 = getelementptr inbounds %edge_node, %edge_node* %toBeHere297, i32 0, i32 1
  %toBeHerenow299 = load %edge_node*, %edge_node** %llNodesPtr298, align 8
  store %edge_node* %toBeHerenow299, %edge_node** @llEdges.6, align 8
  br label %while280

merge289:                                         ; preds = %while280
  %return = load %list_node*, %list_node** @edgesList, align 8
  store %list_node* %return, %list_node** @l.7, align 8
  %list = load %list_node*, %list_node** @l.7, align 8
  %malloccall300 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %0 = bitcast i8* %malloccall300 to %list_node**
  %malloccall301 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %malloccall301 to i32*
  store %list_node* %list, %list_node** %0, align 8
  store i32 2, i32* %1, align 4
  br label %traverse_loop

traverse_loop:                                    ; preds = %while_body302, %merge289
  %2 = load i32, i32* %1, align 4
  %temp305 = icmp ne i32 %2, 0
  br i1 %temp305, label %while_body302, label %merge306

while_body302:                                    ; preds = %traverse_loop
  %3 = load %list_node*, %list_node** %0, align 8
  %temp303 = getelementptr inbounds %list_node, %list_node* %3, i32 0, i32 1
  %temp304 = load %list_node*, %list_node** %temp303, align 8
  %4 = load i32, i32* %1, align 4
  %subtract = sub i32 %4, 1
  store i32 %subtract, i32* %1, align 4
  store %list_node* %temp304, %list_node** %0, align 8
  br label %traverse_loop

merge306:                                         ; preds = %traverse_loop
  %5 = load %list_node*, %list_node** %0, align 8
  %temp307 = getelementptr inbounds %list_node, %list_node* %5, i32 0, i32 0
  %retval = load i8*, i8** %temp307, align 8
  %li_conv = bitcast i8* %retval to %edge_t**
  %val_ptr = load %edge_t*, %edge_t** %li_conv, align 8
  store %edge_t* %val_ptr, %edge_t** @e4, align 8
  %"lvar'308" = load %edge_t*, %edge_t** @e4, align 8
  %temp309 = getelementptr inbounds %edge_t, %edge_t* %"lvar'308", i32 0, i32 0
  %e4.src = load %node_struct*, %node_struct** %temp309, align 8
  %srcNode = load %node_struct*, %node_struct** %temp309, align 8
  %malloccall310 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node311 = bitcast i8* %malloccall310 to %node_struct*
  %malloccall312 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %data313 = bitcast i8* %malloccall312 to i32*
  %malloccall314 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name315 = bitcast i8* %malloccall314 to i8**
  %data_ptr316 = bitcast i32* %data313 to i8*
  %name_ptr317 = bitcast i8** %name315 to i8*
  %"name'318" = getelementptr inbounds %node_struct, %node_struct* %node311, i32 0, i32 0
  %"data'319" = getelementptr inbounds %node_struct, %node_struct* %node311, i32 0, i32 2
  store i8* %name_ptr317, i8** %"name'318", align 8
  store i8* %data_ptr316, i8** %"data'319", align 8
  store %node_struct* %node311, %node_struct** @n10, align 8
  store %node_struct* %srcNode, %node_struct** @n10, align 8
  %"lvar'320" = load %node_struct*, %node_struct** @n10, align 8
  %temp321 = getelementptr inbounds %node_struct, %node_struct* %"lvar'320", i32 0, i32 2
  %n10.data = load i8*, i8** %temp321, align 8
  %new_ptr = bitcast i8* %n10.data to i32*
  %n10.data322 = load i32, i32* %new_ptr, align 4
  store i32 %n10.data322, i32* @i10, align 4
  %i10 = load i32, i32* @i10, align 4
  %printf323 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.8, i32 0, i32 0), i32 %i10)
  %"lvar'324" = load %edge_t*, %edge_t** @e4, align 8
  %temp325 = getelementptr inbounds %edge_t, %edge_t* %"lvar'324", i32 0, i32 2
  %e4.weight = load i32, i32* %temp325, align 4
  %e4.weight326 = load i32, i32* %temp325, align 4
  store i32 %e4.weight326, i32* @w, align 4
  %w = load i32, i32* @w, align 4
  %printf327 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.9, i32 0, i32 0), i32 %w)
  ret i32 0
}

declare noalias i8* @malloc(i32)

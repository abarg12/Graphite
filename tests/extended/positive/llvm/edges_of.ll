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
@e5 = global %edge_t* null
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
  %n184 = load %node_struct*, %node_struct** @n1, align 8
  %nodes_hd = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall85 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node = bitcast i8* %malloccall85 to %node_node*
  %"lst_rst'" = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 1
  %node_ptr = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 0
  store %node_node* %nodes_hd, %node_node** %"lst_rst'", align 8
  store %node_struct* %n184, %node_struct** %node_ptr, align 8
  store %node_node* %new_node, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %n286 = load %node_struct*, %node_struct** @n2, align 8
  %nodes_hd87 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall88 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node89 = bitcast i8* %malloccall88 to %node_node*
  %"lst_rst'90" = getelementptr inbounds %node_node, %node_node* %new_node89, i32 0, i32 1
  %node_ptr91 = getelementptr inbounds %node_node, %node_node* %new_node89, i32 0, i32 0
  store %node_node* %nodes_hd87, %node_node** %"lst_rst'90", align 8
  store %node_struct* %n286, %node_struct** %node_ptr91, align 8
  store %node_node* %new_node89, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %n392 = load %node_struct*, %node_struct** @n3, align 8
  %nodes_hd93 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall94 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node95 = bitcast i8* %malloccall94 to %node_node*
  %"lst_rst'96" = getelementptr inbounds %node_node, %node_node* %new_node95, i32 0, i32 1
  %node_ptr97 = getelementptr inbounds %node_node, %node_node* %new_node95, i32 0, i32 0
  store %node_node* %nodes_hd93, %node_node** %"lst_rst'96", align 8
  store %node_struct* %n392, %node_struct** %node_ptr97, align 8
  store %node_node* %new_node95, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %n498 = load %node_struct*, %node_struct** @n4, align 8
  %nodes_hd99 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall100 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node101 = bitcast i8* %malloccall100 to %node_node*
  %"lst_rst'102" = getelementptr inbounds %node_node, %node_node* %new_node101, i32 0, i32 1
  %node_ptr103 = getelementptr inbounds %node_node, %node_node* %new_node101, i32 0, i32 0
  store %node_node* %nodes_hd99, %node_node** %"lst_rst'102", align 8
  store %node_struct* %n498, %node_struct** %node_ptr103, align 8
  store %node_node* %new_node101, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %e1 = load %edge_t*, %edge_t** @e1, align 8
  %edges_hd = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %malloccall104 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge = bitcast i8* %malloccall104 to %edge_node*
  %"lst_rst'105" = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 1
  %edge_ptr = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 0
  store %edge_node* %edges_hd, %edge_node** %"lst_rst'105", align 8
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
  %putMeHere106 = load %node_node*, %node_node** @llNodes, align 8
  %nodes = getelementptr inbounds %node_node, %node_node* %putMeHere106, i32 0, i32 0
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
  %ret_true107 = alloca i1, align 1
  store i1 false, i1* %ret_true107, align 1
  %head108 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head108, %node_node** @llNodes.1, align 8
  br label %while109

while109:                                         ; preds = %merge, %else118
  %putMeHere110 = load %node_node*, %node_node** @llNodes.1, align 8
  %curr111 = icmp ne %node_node* %putMeHere110, null
  br i1 %curr111, label %while_body112, label %merge119

while_body112:                                    ; preds = %while109
  %putMeHere113 = load %node_node*, %node_node** @llNodes.1, align 8
  %nodes114 = getelementptr inbounds %node_node, %node_node* %putMeHere113, i32 0, i32 0
  %"stored_node'115" = load %node_struct*, %node_struct** %nodes114, align 8
  br label %if116

if116:                                            ; preds = %while_body112
  %"found?120" = icmp eq %node_struct* %"stored_node'115", %"dst'"
  br i1 %"found?120", label %then117, label %else118

then117:                                          ; preds = %if116
  store i1 true, i1* %ret_true107, align 1
  br label %merge119

else118:                                          ; preds = %if116
  %toBeHere121 = load %node_node*, %node_node** @llNodes.1, align 8
  %llNodesPtr122 = getelementptr inbounds %node_node, %node_node* %toBeHere121, i32 0, i32 1
  %toBeHerenow123 = load %node_node*, %node_node** %llNodesPtr122, align 8
  store %node_node* %toBeHerenow123, %node_node** @llNodes.1, align 8
  br label %while109

merge119:                                         ; preds = %while109, %then117
  %returnVal124 = load i1, i1* %ret_true107, align 1
  br label %if125

if125:                                            ; preds = %merge119
  br i1 %returnVal, label %merge127, label %else126

else126:                                          ; preds = %if125
  %nodes_hd128 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall129 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node130 = bitcast i8* %malloccall129 to %node_node*
  %"lst_rst'131" = getelementptr inbounds %node_node, %node_node* %new_node130, i32 0, i32 1
  %node_ptr132 = getelementptr inbounds %node_node, %node_node* %new_node130, i32 0, i32 0
  store %node_node* %nodes_hd128, %node_node** %"lst_rst'131", align 8
  store %node_struct* %"src'", %node_struct** %node_ptr132, align 8
  store %node_node* %new_node130, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  br label %merge127

merge127:                                         ; preds = %else126, %if125
  br label %if133

if133:                                            ; preds = %merge127
  br i1 %returnVal124, label %merge135, label %else134

else134:                                          ; preds = %if133
  %nodes_hd136 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall137 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node138 = bitcast i8* %malloccall137 to %node_node*
  %"lst_rst'139" = getelementptr inbounds %node_node, %node_node* %new_node138, i32 0, i32 1
  %node_ptr140 = getelementptr inbounds %node_node, %node_node* %new_node138, i32 0, i32 0
  store %node_node* %nodes_hd136, %node_node** %"lst_rst'139", align 8
  store %node_struct* %"dst'", %node_struct** %node_ptr140, align 8
  store %node_node* %new_node138, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  br label %merge135

merge135:                                         ; preds = %else134, %if133
  store %edge_node* %new_edge, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %e2 = load %edge_t*, %edge_t** @e2, align 8
  %edges_hd141 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %malloccall142 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge143 = bitcast i8* %malloccall142 to %edge_node*
  %"lst_rst'144" = getelementptr inbounds %edge_node, %edge_node* %new_edge143, i32 0, i32 1
  %edge_ptr145 = getelementptr inbounds %edge_node, %edge_node* %new_edge143, i32 0, i32 0
  store %edge_node* %edges_hd141, %edge_node** %"lst_rst'144", align 8
  store %edge_t* %e2, %edge_t** %edge_ptr145, align 8
  %src_ptr146 = getelementptr inbounds %edge_t, %edge_t* %e2, i32 0, i32 0
  %dst_ptr147 = getelementptr inbounds %edge_t, %edge_t* %e2, i32 0, i32 1
  %"src'148" = load %node_struct*, %node_struct** %src_ptr146, align 8
  %"dst'149" = load %node_struct*, %node_struct** %dst_ptr147, align 8
  %ret_true150 = alloca i1, align 1
  store i1 false, i1* %ret_true150, align 1
  %head151 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head151, %node_node** @llNodes.2, align 8
  br label %while152

while152:                                         ; preds = %merge135, %else161
  %putMeHere153 = load %node_node*, %node_node** @llNodes.2, align 8
  %curr154 = icmp ne %node_node* %putMeHere153, null
  br i1 %curr154, label %while_body155, label %merge162

while_body155:                                    ; preds = %while152
  %putMeHere156 = load %node_node*, %node_node** @llNodes.2, align 8
  %nodes157 = getelementptr inbounds %node_node, %node_node* %putMeHere156, i32 0, i32 0
  %"stored_node'158" = load %node_struct*, %node_struct** %nodes157, align 8
  br label %if159

if159:                                            ; preds = %while_body155
  %"found?163" = icmp eq %node_struct* %"stored_node'158", %"src'148"
  br i1 %"found?163", label %then160, label %else161

then160:                                          ; preds = %if159
  store i1 true, i1* %ret_true150, align 1
  br label %merge162

else161:                                          ; preds = %if159
  %toBeHere164 = load %node_node*, %node_node** @llNodes.2, align 8
  %llNodesPtr165 = getelementptr inbounds %node_node, %node_node* %toBeHere164, i32 0, i32 1
  %toBeHerenow166 = load %node_node*, %node_node** %llNodesPtr165, align 8
  store %node_node* %toBeHerenow166, %node_node** @llNodes.2, align 8
  br label %while152

merge162:                                         ; preds = %while152, %then160
  %returnVal167 = load i1, i1* %ret_true150, align 1
  %ret_true168 = alloca i1, align 1
  store i1 false, i1* %ret_true168, align 1
  %head169 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head169, %node_node** @llNodes.3, align 8
  br label %while170

while170:                                         ; preds = %merge162, %else179
  %putMeHere171 = load %node_node*, %node_node** @llNodes.3, align 8
  %curr172 = icmp ne %node_node* %putMeHere171, null
  br i1 %curr172, label %while_body173, label %merge180

while_body173:                                    ; preds = %while170
  %putMeHere174 = load %node_node*, %node_node** @llNodes.3, align 8
  %nodes175 = getelementptr inbounds %node_node, %node_node* %putMeHere174, i32 0, i32 0
  %"stored_node'176" = load %node_struct*, %node_struct** %nodes175, align 8
  br label %if177

if177:                                            ; preds = %while_body173
  %"found?181" = icmp eq %node_struct* %"stored_node'176", %"dst'149"
  br i1 %"found?181", label %then178, label %else179

then178:                                          ; preds = %if177
  store i1 true, i1* %ret_true168, align 1
  br label %merge180

else179:                                          ; preds = %if177
  %toBeHere182 = load %node_node*, %node_node** @llNodes.3, align 8
  %llNodesPtr183 = getelementptr inbounds %node_node, %node_node* %toBeHere182, i32 0, i32 1
  %toBeHerenow184 = load %node_node*, %node_node** %llNodesPtr183, align 8
  store %node_node* %toBeHerenow184, %node_node** @llNodes.3, align 8
  br label %while170

merge180:                                         ; preds = %while170, %then178
  %returnVal185 = load i1, i1* %ret_true168, align 1
  br label %if186

if186:                                            ; preds = %merge180
  br i1 %returnVal167, label %merge188, label %else187

else187:                                          ; preds = %if186
  %nodes_hd189 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall190 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node191 = bitcast i8* %malloccall190 to %node_node*
  %"lst_rst'192" = getelementptr inbounds %node_node, %node_node* %new_node191, i32 0, i32 1
  %node_ptr193 = getelementptr inbounds %node_node, %node_node* %new_node191, i32 0, i32 0
  store %node_node* %nodes_hd189, %node_node** %"lst_rst'192", align 8
  store %node_struct* %"src'148", %node_struct** %node_ptr193, align 8
  store %node_node* %new_node191, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  br label %merge188

merge188:                                         ; preds = %else187, %if186
  br label %if194

if194:                                            ; preds = %merge188
  br i1 %returnVal185, label %merge196, label %else195

else195:                                          ; preds = %if194
  %nodes_hd197 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall198 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node199 = bitcast i8* %malloccall198 to %node_node*
  %"lst_rst'200" = getelementptr inbounds %node_node, %node_node* %new_node199, i32 0, i32 1
  %node_ptr201 = getelementptr inbounds %node_node, %node_node* %new_node199, i32 0, i32 0
  store %node_node* %nodes_hd197, %node_node** %"lst_rst'200", align 8
  store %node_struct* %"dst'149", %node_struct** %node_ptr201, align 8
  store %node_node* %new_node199, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  br label %merge196

merge196:                                         ; preds = %else195, %if194
  store %edge_node* %new_edge143, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %e3 = load %edge_t*, %edge_t** @e3, align 8
  %edges_hd202 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %malloccall203 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge204 = bitcast i8* %malloccall203 to %edge_node*
  %"lst_rst'205" = getelementptr inbounds %edge_node, %edge_node* %new_edge204, i32 0, i32 1
  %edge_ptr206 = getelementptr inbounds %edge_node, %edge_node* %new_edge204, i32 0, i32 0
  store %edge_node* %edges_hd202, %edge_node** %"lst_rst'205", align 8
  store %edge_t* %e3, %edge_t** %edge_ptr206, align 8
  %src_ptr207 = getelementptr inbounds %edge_t, %edge_t* %e3, i32 0, i32 0
  %dst_ptr208 = getelementptr inbounds %edge_t, %edge_t* %e3, i32 0, i32 1
  %"src'209" = load %node_struct*, %node_struct** %src_ptr207, align 8
  %"dst'210" = load %node_struct*, %node_struct** %dst_ptr208, align 8
  %ret_true211 = alloca i1, align 1
  store i1 false, i1* %ret_true211, align 1
  %head212 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head212, %node_node** @llNodes.4, align 8
  br label %while213

while213:                                         ; preds = %merge196, %else222
  %putMeHere214 = load %node_node*, %node_node** @llNodes.4, align 8
  %curr215 = icmp ne %node_node* %putMeHere214, null
  br i1 %curr215, label %while_body216, label %merge223

while_body216:                                    ; preds = %while213
  %putMeHere217 = load %node_node*, %node_node** @llNodes.4, align 8
  %nodes218 = getelementptr inbounds %node_node, %node_node* %putMeHere217, i32 0, i32 0
  %"stored_node'219" = load %node_struct*, %node_struct** %nodes218, align 8
  br label %if220

if220:                                            ; preds = %while_body216
  %"found?224" = icmp eq %node_struct* %"stored_node'219", %"src'209"
  br i1 %"found?224", label %then221, label %else222

then221:                                          ; preds = %if220
  store i1 true, i1* %ret_true211, align 1
  br label %merge223

else222:                                          ; preds = %if220
  %toBeHere225 = load %node_node*, %node_node** @llNodes.4, align 8
  %llNodesPtr226 = getelementptr inbounds %node_node, %node_node* %toBeHere225, i32 0, i32 1
  %toBeHerenow227 = load %node_node*, %node_node** %llNodesPtr226, align 8
  store %node_node* %toBeHerenow227, %node_node** @llNodes.4, align 8
  br label %while213

merge223:                                         ; preds = %while213, %then221
  %returnVal228 = load i1, i1* %ret_true211, align 1
  %ret_true229 = alloca i1, align 1
  store i1 false, i1* %ret_true229, align 1
  %head230 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head230, %node_node** @llNodes.5, align 8
  br label %while231

while231:                                         ; preds = %merge223, %else240
  %putMeHere232 = load %node_node*, %node_node** @llNodes.5, align 8
  %curr233 = icmp ne %node_node* %putMeHere232, null
  br i1 %curr233, label %while_body234, label %merge241

while_body234:                                    ; preds = %while231
  %putMeHere235 = load %node_node*, %node_node** @llNodes.5, align 8
  %nodes236 = getelementptr inbounds %node_node, %node_node* %putMeHere235, i32 0, i32 0
  %"stored_node'237" = load %node_struct*, %node_struct** %nodes236, align 8
  br label %if238

if238:                                            ; preds = %while_body234
  %"found?242" = icmp eq %node_struct* %"stored_node'237", %"dst'210"
  br i1 %"found?242", label %then239, label %else240

then239:                                          ; preds = %if238
  store i1 true, i1* %ret_true229, align 1
  br label %merge241

else240:                                          ; preds = %if238
  %toBeHere243 = load %node_node*, %node_node** @llNodes.5, align 8
  %llNodesPtr244 = getelementptr inbounds %node_node, %node_node* %toBeHere243, i32 0, i32 1
  %toBeHerenow245 = load %node_node*, %node_node** %llNodesPtr244, align 8
  store %node_node* %toBeHerenow245, %node_node** @llNodes.5, align 8
  br label %while231

merge241:                                         ; preds = %while231, %then239
  %returnVal246 = load i1, i1* %ret_true229, align 1
  br label %if247

if247:                                            ; preds = %merge241
  br i1 %returnVal228, label %merge249, label %else248

else248:                                          ; preds = %if247
  %nodes_hd250 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall251 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node252 = bitcast i8* %malloccall251 to %node_node*
  %"lst_rst'253" = getelementptr inbounds %node_node, %node_node* %new_node252, i32 0, i32 1
  %node_ptr254 = getelementptr inbounds %node_node, %node_node* %new_node252, i32 0, i32 0
  store %node_node* %nodes_hd250, %node_node** %"lst_rst'253", align 8
  store %node_struct* %"src'209", %node_struct** %node_ptr254, align 8
  store %node_node* %new_node252, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  br label %merge249

merge249:                                         ; preds = %else248, %if247
  br label %if255

if255:                                            ; preds = %merge249
  br i1 %returnVal246, label %merge257, label %else256

else256:                                          ; preds = %if255
  %nodes_hd258 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall259 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node260 = bitcast i8* %malloccall259 to %node_node*
  %"lst_rst'261" = getelementptr inbounds %node_node, %node_node* %new_node260, i32 0, i32 1
  %node_ptr262 = getelementptr inbounds %node_node, %node_node* %new_node260, i32 0, i32 0
  store %node_node* %nodes_hd258, %node_node** %"lst_rst'261", align 8
  store %node_struct* %"dst'210", %node_struct** %node_ptr262, align 8
  store %node_node* %new_node260, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  br label %merge257

merge257:                                         ; preds = %else256, %if255
  store %edge_node* %new_edge204, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %ret_true263 = alloca i1, align 1
  store i1 false, i1* %ret_true263, align 1
  %e1264 = load %edge_t*, %edge_t** @e1, align 8
  %head265 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  store %edge_node* %head265, %edge_node** @llEdges, align 8
  br label %while266

while266:                                         ; preds = %merge257, %else275
  %putMeHere267 = load %edge_node*, %edge_node** @llEdges, align 8
  %curr268 = icmp ne %edge_node* %putMeHere267, null
  br i1 %curr268, label %while_body269, label %merge276

while_body269:                                    ; preds = %while266
  %putMeHere270 = load %edge_node*, %edge_node** @llEdges, align 8
  %nodes271 = getelementptr inbounds %edge_node, %edge_node* %putMeHere270, i32 0, i32 0
  %"stored_node'272" = load %edge_t*, %edge_t** %nodes271, align 8
  br label %if273

if273:                                            ; preds = %while_body269
  %"found?277" = icmp eq %edge_t* %"stored_node'272", %e1264
  br i1 %"found?277", label %then274, label %else275

then274:                                          ; preds = %if273
  store i1 true, i1* %ret_true263, align 1
  br label %merge276

else275:                                          ; preds = %if273
  %toBeHere278 = load %edge_node*, %edge_node** @llEdges, align 8
  %llNodesPtr279 = getelementptr inbounds %edge_node, %edge_node* %toBeHere278, i32 0, i32 1
  %toBeHerenow280 = load %edge_node*, %edge_node** %llNodesPtr279, align 8
  store %edge_node* %toBeHerenow280, %edge_node** @llEdges, align 8
  br label %while266

merge276:                                         ; preds = %while266, %then274
  %returnVal281 = load i1, i1* %ret_true263, align 1
  store i1 %returnVal281, i1* @e, align 1
  %e = load i1, i1* @e, align 1
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i1 %e)
  %n1282 = load %node_struct*, %node_struct** @n1, align 8
  %head283 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  store %edge_node* %head283, %edge_node** @llEdges.6, align 8
  br label %while284

while284:                                         ; preds = %merge276, %else292
  %putMeHere285 = load %edge_node*, %edge_node** @llEdges.6, align 8
  %curr286 = icmp ne %edge_node* %putMeHere285, null
  br i1 %curr286, label %while_body287, label %merge293

while_body287:                                    ; preds = %while284
  %putMeHere288 = load %edge_node*, %edge_node** @llEdges.6, align 8
  %nodes289 = getelementptr inbounds %edge_node, %edge_node* %putMeHere288, i32 0, i32 0
  %"stored_nodeA'" = load %edge_t*, %edge_t** %nodes289, align 8
  br label %if290

if290:                                            ; preds = %while_body287
  %nodes294 = getelementptr inbounds %edge_t, %edge_t* %"stored_nodeA'", i32 0, i32 0
  %nodes295 = getelementptr inbounds %edge_t, %edge_t* %"stored_nodeA'", i32 0, i32 1
  %"currEdgeSrc'" = load %node_struct*, %node_struct** %nodes294, align 8
  %"currEdgeDst'" = load %node_struct*, %node_struct** %nodes295, align 8
  %"foundSrc?" = icmp eq %node_struct* %"currEdgeSrc'", %n1282
  %"foundDst?" = icmp eq %node_struct* %"currEdgeDst'", %n1282
  %if_found = or i1 %"foundSrc?", %"foundDst?"
  br i1 %if_found, label %then291, label %else292

then291:                                          ; preds = %if290
  %malloccall296 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node297 = bitcast i8* %malloccall296 to %list_node*
  %nodes298 = getelementptr inbounds %list_node, %list_node* %node297, i32 0, i32 0
  %nodes299 = getelementptr inbounds %list_node, %list_node* %node297, i32 0, i32 1
  %malloccall300 = tail call i8* @malloc(i32 ptrtoint (%edge_t** getelementptr (%edge_t*, %edge_t** null, i32 1) to i32))
  %please_work = bitcast i8* %malloccall300 to %edge_t**
  store %edge_t* %"stored_nodeA'", %edge_t** %please_work, align 8
  %currEdgeVoidPtr = bitcast %edge_t** %please_work to i8*
  store i8* %currEdgeVoidPtr, i8** %nodes298, align 8
  %nextEdges = load %list_node*, %list_node** @edgesList, align 8
  store %list_node* %nextEdges, %list_node** %nodes299, align 8
  store %list_node* %node297, %list_node** @edgesList, align 8
  br label %else292

else292:                                          ; preds = %then291, %if290
  %toBeHere301 = load %edge_node*, %edge_node** @llEdges.6, align 8
  %llNodesPtr302 = getelementptr inbounds %edge_node, %edge_node* %toBeHere301, i32 0, i32 1
  %toBeHerenow303 = load %edge_node*, %edge_node** %llNodesPtr302, align 8
  store %edge_node* %toBeHerenow303, %edge_node** @llEdges.6, align 8
  br label %while284

merge293:                                         ; preds = %while284
  %return = load %list_node*, %list_node** @edgesList, align 8
  store %list_node* %return, %list_node** @l, align 8
  %list = load %list_node*, %list_node** @l, align 8
  %malloccall304 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %0 = bitcast i8* %malloccall304 to %list_node**
  %malloccall305 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %malloccall305 to i32*
  store %list_node* %list, %list_node** %0, align 8
  store i32 0, i32* %1, align 4
  br label %traverse_loop

traverse_loop:                                    ; preds = %while_body306, %merge293
  %2 = load i32, i32* %1, align 4
  %temp309 = icmp ne i32 %2, 0
  br i1 %temp309, label %while_body306, label %merge310

while_body306:                                    ; preds = %traverse_loop
  %3 = load %list_node*, %list_node** %0, align 8
  %temp307 = getelementptr inbounds %list_node, %list_node* %3, i32 0, i32 1
  %temp308 = load %list_node*, %list_node** %temp307, align 8
  %4 = load i32, i32* %1, align 4
  %subtract = sub i32 %4, 1
  store i32 %subtract, i32* %1, align 4
  store %list_node* %temp308, %list_node** %0, align 8
  br label %traverse_loop

merge310:                                         ; preds = %traverse_loop
  %5 = load %list_node*, %list_node** %0, align 8
  %temp311 = getelementptr inbounds %list_node, %list_node* %5, i32 0, i32 0
  %retval = load i8*, i8** %temp311, align 8
  %li_conv = bitcast i8* %retval to %edge_t**
  %val_ptr = load %edge_t*, %edge_t** %li_conv, align 8
  store %edge_t* %val_ptr, %edge_t** @e5, align 8
  %e5 = load %edge_t*, %edge_t** @e5, align 8
  store %edge_t* %e5, %edge_t** @e4, align 8
  %"lvar'312" = load %edge_t*, %edge_t** @e4, align 8
  %temp313 = getelementptr inbounds %edge_t, %edge_t* %"lvar'312", i32 0, i32 0
  %e4.src = load %node_struct*, %node_struct** %temp313, align 8
  %srcNode = load %node_struct*, %node_struct** %temp313, align 8
  %malloccall314 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node315 = bitcast i8* %malloccall314 to %node_struct*
  %malloccall316 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %data317 = bitcast i8* %malloccall316 to i32*
  %malloccall318 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name319 = bitcast i8* %malloccall318 to i8**
  %data_ptr320 = bitcast i32* %data317 to i8*
  %name_ptr321 = bitcast i8** %name319 to i8*
  %"name'322" = getelementptr inbounds %node_struct, %node_struct* %node315, i32 0, i32 0
  %"data'323" = getelementptr inbounds %node_struct, %node_struct* %node315, i32 0, i32 2
  store i8* %name_ptr321, i8** %"name'322", align 8
  store i8* %data_ptr320, i8** %"data'323", align 8
  store %node_struct* %node315, %node_struct** @n10, align 8
  store %node_struct* %srcNode, %node_struct** @n10, align 8
  %"lvar'324" = load %node_struct*, %node_struct** @n10, align 8
  %temp325 = getelementptr inbounds %node_struct, %node_struct* %"lvar'324", i32 0, i32 2
  %n10.data = load i8*, i8** %temp325, align 8
  %new_ptr = bitcast i8* %n10.data to i32*
  %n10.data326 = load i32, i32* %new_ptr, align 4
  store i32 %n10.data326, i32* @i3, align 4
  %i3 = load i32, i32* @i3, align 4
  %printf327 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.7, i32 0, i32 0), i32 %i3)
  %"lvar'328" = load %edge_t*, %edge_t** @e4, align 8
  %temp329 = getelementptr inbounds %edge_t, %edge_t* %"lvar'328", i32 0, i32 2
  %e4.weight = load i32, i32* %temp329, align 4
  %e4.weight330 = load i32, i32* %temp329, align 4
  store i32 %e4.weight330, i32* @w, align 4
  %w = load i32, i32* @w, align 4
  %printf331 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.8, i32 0, i32 0), i32 %w)
  ret i32 0
}

declare noalias i8* @malloc(i32)

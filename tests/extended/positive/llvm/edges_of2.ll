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
@llEdges = global %edge_node* null
@e = global i1 false
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@l = global i8* null
@edgesList = global %list_node* null
@llEdges.1 = global %edge_node* null
@l.2 = global %list_node* null
@n10 = global %node_struct* null
@i10 = global i32 0
@fmt.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@w = global i32 0
@fmt.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

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
  store %edge_node* %new_edge, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %e2 = load %edge_t*, %edge_t** @e2, align 8
  %edges_hd102 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %malloccall103 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge104 = bitcast i8* %malloccall103 to %edge_node*
  %"lst_rst'105" = getelementptr inbounds %edge_node, %edge_node* %new_edge104, i32 0, i32 1
  %edge_ptr106 = getelementptr inbounds %edge_node, %edge_node* %new_edge104, i32 0, i32 0
  store %edge_node* %edges_hd102, %edge_node** %"lst_rst'105", align 8
  store %edge_t* %e2, %edge_t** %edge_ptr106, align 8
  store %edge_node* %new_edge104, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %e3 = load %edge_t*, %edge_t** @e3, align 8
  %edges_hd107 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %malloccall108 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge109 = bitcast i8* %malloccall108 to %edge_node*
  %"lst_rst'110" = getelementptr inbounds %edge_node, %edge_node* %new_edge109, i32 0, i32 1
  %edge_ptr111 = getelementptr inbounds %edge_node, %edge_node* %new_edge109, i32 0, i32 0
  store %edge_node* %edges_hd107, %edge_node** %"lst_rst'110", align 8
  store %edge_t* %e3, %edge_t** %edge_ptr111, align 8
  store %edge_node* %new_edge109, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %ret_true = alloca i1, align 1
  store i1 false, i1* %ret_true, align 1
  %e1112 = load %edge_t*, %edge_t** @e1, align 8
  %head = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  store %edge_node* %head, %edge_node** @llEdges, align 8
  br label %while

while:                                            ; preds = %entry, %else
  %putMeHere = load %edge_node*, %edge_node** @llEdges, align 8
  %curr = icmp ne %edge_node* %putMeHere, null
  br i1 %curr, label %while_body, label %merge

while_body:                                       ; preds = %while
  %putMeHere113 = load %edge_node*, %edge_node** @llEdges, align 8
  %nodes = getelementptr inbounds %edge_node, %edge_node* %putMeHere113, i32 0, i32 0
  %"stored_node'" = load %edge_t*, %edge_t** %nodes, align 8
  br label %if

if:                                               ; preds = %while_body
  %"found?" = icmp eq %edge_t* %"stored_node'", %e1112
  br i1 %"found?", label %then, label %else

then:                                             ; preds = %if
  store i1 true, i1* %ret_true, align 1
  br label %merge

else:                                             ; preds = %if
  %toBeHere = load %edge_node*, %edge_node** @llEdges, align 8
  %llNodesPtr = getelementptr inbounds %edge_node, %edge_node* %toBeHere, i32 0, i32 1
  %toBeHerenow = load %edge_node*, %edge_node** %llNodesPtr, align 8
  store %edge_node* %toBeHerenow, %edge_node** @llEdges, align 8
  br label %while

merge:                                            ; preds = %while, %then
  %e1114 = load %edge_t*, %edge_t** @e1, align 8
  %returnVal = load i1, i1* %ret_true, align 1
  store i1 %returnVal, i1* @e, align 1
  %e = load i1, i1* @e, align 1
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i1 %e)
  %n1115 = load %node_struct*, %node_struct** @n1, align 8
  %head116 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  store %edge_node* %head116, %edge_node** @llEdges.1, align 8
  br label %while117

while117:                                         ; preds = %merge, %else125
  %putMeHere118 = load %edge_node*, %edge_node** @llEdges.1, align 8
  %curr119 = icmp ne %edge_node* %putMeHere118, null
  br i1 %curr119, label %while_body120, label %merge126

while_body120:                                    ; preds = %while117
  %putMeHere121 = load %edge_node*, %edge_node** @llEdges.1, align 8
  %nodes122 = getelementptr inbounds %edge_node, %edge_node* %putMeHere121, i32 0, i32 0
  %"stored_nodeA'" = load %edge_t*, %edge_t** %nodes122, align 8
  br label %if123

if123:                                            ; preds = %while_body120
  %nodes127 = getelementptr inbounds %edge_t, %edge_t* %"stored_nodeA'", i32 0, i32 0
  %nodes128 = getelementptr inbounds %edge_t, %edge_t* %"stored_nodeA'", i32 0, i32 1
  %"currEdgeSrc'" = load %node_struct*, %node_struct** %nodes127, align 8
  %"currEdgeDst'" = load %node_struct*, %node_struct** %nodes128, align 8
  %"foundSrc?" = icmp eq %node_struct* %"currEdgeSrc'", %n1115
  %"foundDst?" = icmp eq %node_struct* %"currEdgeDst'", %n1115
  %if_found = or i1 %"foundSrc?", %"foundDst?"
  br i1 %if_found, label %then124, label %else125

then124:                                          ; preds = %if123
  %malloccall129 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node130 = bitcast i8* %malloccall129 to %list_node*
  %nodes131 = getelementptr inbounds %list_node, %list_node* %node130, i32 0, i32 0
  %nodes132 = getelementptr inbounds %list_node, %list_node* %node130, i32 0, i32 1
  %malloccall133 = tail call i8* @malloc(i32 ptrtoint (%edge_t** getelementptr (%edge_t*, %edge_t** null, i32 1) to i32))
  %please_work = bitcast i8* %malloccall133 to %edge_t**
  store %edge_t* %"stored_nodeA'", %edge_t** %please_work, align 8
  %currEdgeVoidPtr = bitcast %edge_t** %please_work to i8*
  store i8* %currEdgeVoidPtr, i8** %nodes131, align 8
  %nextEdges = load %list_node*, %list_node** @edgesList, align 8
  store %list_node* %nextEdges, %list_node** %nodes132, align 8
  store %list_node* %node130, %list_node** @edgesList, align 8
  br label %else125

else125:                                          ; preds = %then124, %if123
  %toBeHere134 = load %edge_node*, %edge_node** @llEdges.1, align 8
  %llNodesPtr135 = getelementptr inbounds %edge_node, %edge_node* %toBeHere134, i32 0, i32 1
  %toBeHerenow136 = load %edge_node*, %edge_node** %llNodesPtr135, align 8
  store %edge_node* %toBeHerenow136, %edge_node** @llEdges.1, align 8
  br label %while117

merge126:                                         ; preds = %while117
  %n1137 = load %node_struct*, %node_struct** @n1, align 8
  %return = load %list_node*, %list_node** @edgesList, align 8
  store %list_node* %return, %list_node** @l.2, align 8
  %list = load %list_node*, %list_node** @l.2, align 8
  %malloccall138 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %0 = bitcast i8* %malloccall138 to %list_node**
  %malloccall139 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %malloccall139 to i32*
  store %list_node* %list, %list_node** %0, align 8
  store i32 2, i32* %1, align 4
  br label %traverse_loop

traverse_loop:                                    ; preds = %while_body140, %merge126
  %2 = load i32, i32* %1, align 4
  %temp143 = icmp ne i32 %2, 0
  br i1 %temp143, label %while_body140, label %merge144

while_body140:                                    ; preds = %traverse_loop
  %3 = load %list_node*, %list_node** %0, align 8
  %temp141 = getelementptr inbounds %list_node, %list_node* %3, i32 0, i32 1
  %temp142 = load %list_node*, %list_node** %temp141, align 8
  %4 = load i32, i32* %1, align 4
  %subtract = sub i32 %4, 1
  store i32 %subtract, i32* %1, align 4
  store %list_node* %temp142, %list_node** %0, align 8
  br label %traverse_loop

merge144:                                         ; preds = %traverse_loop
  %5 = load %list_node*, %list_node** %0, align 8
  %temp145 = getelementptr inbounds %list_node, %list_node* %5, i32 0, i32 0
  %retval = load i8*, i8** %temp145, align 8
  %li_conv = bitcast i8* %retval to %edge_t**
  %val_ptr = load %edge_t*, %edge_t** %li_conv, align 8
  store %edge_t* %val_ptr, %edge_t** @e4, align 8
  %"lvar'146" = load %edge_t*, %edge_t** @e4, align 8
  %temp147 = getelementptr inbounds %edge_t, %edge_t* %"lvar'146", i32 0, i32 0
  %e4.src = load %node_struct*, %node_struct** %temp147, align 8
  %srcNode = load %node_struct*, %node_struct** %temp147, align 8
  %malloccall148 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node149 = bitcast i8* %malloccall148 to %node_struct*
  %malloccall150 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %data151 = bitcast i8* %malloccall150 to i32*
  %malloccall152 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name153 = bitcast i8* %malloccall152 to i8**
  %data_ptr154 = bitcast i32* %data151 to i8*
  %name_ptr155 = bitcast i8** %name153 to i8*
  %"name'156" = getelementptr inbounds %node_struct, %node_struct* %node149, i32 0, i32 0
  %"data'157" = getelementptr inbounds %node_struct, %node_struct* %node149, i32 0, i32 2
  store i8* %name_ptr155, i8** %"name'156", align 8
  store i8* %data_ptr154, i8** %"data'157", align 8
  store %node_struct* %node149, %node_struct** @n10, align 8
  store %node_struct* %srcNode, %node_struct** @n10, align 8
  %"lvar'158" = load %node_struct*, %node_struct** @n10, align 8
  %temp159 = getelementptr inbounds %node_struct, %node_struct* %"lvar'158", i32 0, i32 2
  %n10.data = load i8*, i8** %temp159, align 8
  %new_ptr = bitcast i8* %n10.data to i32*
  %n10.data160 = load i32, i32* %new_ptr, align 4
  store i32 %n10.data160, i32* @i10, align 4
  %i10 = load i32, i32* @i10, align 4
  %printf161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.3, i32 0, i32 0), i32 %i10)
  %"lvar'162" = load %edge_t*, %edge_t** @e4, align 8
  %temp163 = getelementptr inbounds %edge_t, %edge_t* %"lvar'162", i32 0, i32 2
  %e4.weight = load i32, i32* %temp163, align 4
  %e4.weight164 = load i32, i32* %temp163, align 4
  store i32 %e4.weight164, i32* @w, align 4
  %w = load i32, i32* @w, align 4
  %printf165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.4, i32 0, i32 0), i32 %w)
  ret i32 0
}

declare noalias i8* @malloc(i32)

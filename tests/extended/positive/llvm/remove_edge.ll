; ModuleID = 'Graphite'
source_filename = "Graphite"

%node_struct = type { i8*, i1, i8* }
%graph_t = type { %node_node*, %edge_node* }
%node_node = type { %node_struct*, %node_node* }
%edge_node = type { %edge_t*, %edge_node* }
%edge_t = type { %node_struct*, %node_struct*, i32 }

@n = global %node_struct* null
@m = global %node_struct* null
@g = global %graph_t zeroinitializer
@e = global %edge_t* null
@e2 = global %edge_t* null
@llNodes = global %node_node* null
@llNodes.1 = global %node_node* null
@llEdges = global %edge_node* null
@found_e = global i1 false
@llEdges.2 = global %edge_node* null
@found_e2 = global i1 false
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llEdges.4 = global %edge_node* null
@prevEdge = global %edge_node* null
@llEdges.5 = global %edge_node* null
@llEdges.6 = global %edge_node* null
@fmt.7 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
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
  store %node_struct* %node, %node_struct** @n, align 8
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node4 = bitcast i8* %malloccall3 to %node_struct*
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %data6 = bitcast i8* %malloccall5 to i32*
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name8 = bitcast i8* %malloccall7 to i8**
  %data_ptr9 = bitcast i32* %data6 to i8*
  %name_ptr10 = bitcast i8** %name8 to i8*
  %"name'11" = getelementptr inbounds %node_struct, %node_struct* %node4, i32 0, i32 0
  %"data'12" = getelementptr inbounds %node_struct, %node_struct* %node4, i32 0, i32 2
  store i8* %name_ptr10, i8** %"name'11", align 8
  store i8* %data_ptr9, i8** %"data'12", align 8
  store %node_struct* %node4, %node_struct** @m, align 8
  %n = load %node_struct*, %node_struct** @n, align 8
  %m = load %node_struct*, %node_struct** @m, align 8
  %malloccall13 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct = bitcast i8* %malloccall13 to %edge_t*
  %"name'14" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 0
  %"name'15" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 1
  %"name'16" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 2
  store %node_struct* %n, %node_struct** %"name'14", align 8
  store %node_struct* %m, %node_struct** %"name'15", align 8
  store i32 0, i32* %"name'16", align 4
  %malloccall17 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge = bitcast i8* %malloccall17 to %edge_t*
  %"name'18" = getelementptr inbounds %edge_t, %edge_t* %edge, i32 0, i32 0
  %"data'19" = getelementptr inbounds %edge_t, %edge_t* %edge, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'18", align 8
  store %node_struct* null, %node_struct** %"data'19", align 8
  store %edge_t* %edge, %edge_t** @e, align 8
  store %edge_t* %myEdgeStruct, %edge_t** @e, align 8
  %m20 = load %node_struct*, %node_struct** @m, align 8
  %n21 = load %node_struct*, %node_struct** @n, align 8
  %malloccall22 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct23 = bitcast i8* %malloccall22 to %edge_t*
  %"name'24" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct23, i32 0, i32 0
  %"name'25" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct23, i32 0, i32 1
  %"name'26" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct23, i32 0, i32 2
  store %node_struct* %m20, %node_struct** %"name'24", align 8
  store %node_struct* %n21, %node_struct** %"name'25", align 8
  store i32 0, i32* %"name'26", align 4
  %malloccall27 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge28 = bitcast i8* %malloccall27 to %edge_t*
  %"name'29" = getelementptr inbounds %edge_t, %edge_t* %edge28, i32 0, i32 0
  %"data'30" = getelementptr inbounds %edge_t, %edge_t* %edge28, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'29", align 8
  store %node_struct* null, %node_struct** %"data'30", align 8
  store %edge_t* %edge28, %edge_t** @e2, align 8
  store %edge_t* %myEdgeStruct23, %edge_t** @e2, align 8
  %e = load %edge_t*, %edge_t** @e, align 8
  %edges_hd = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %malloccall31 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge = bitcast i8* %malloccall31 to %edge_node*
  %"lst_rst'" = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 1
  %edge_ptr = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 0
  store %edge_node* %edges_hd, %edge_node** %"lst_rst'", align 8
  store %edge_t* %e, %edge_t** %edge_ptr, align 8
  %src_ptr = getelementptr inbounds %edge_t, %edge_t* %e, i32 0, i32 0
  %dst_ptr = getelementptr inbounds %edge_t, %edge_t* %e, i32 0, i32 1
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
  %putMeHere32 = load %node_node*, %node_node** @llNodes, align 8
  %nodes = getelementptr inbounds %node_node, %node_node* %putMeHere32, i32 0, i32 0
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
  %ret_true33 = alloca i1, align 1
  store i1 false, i1* %ret_true33, align 1
  %head34 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head34, %node_node** @llNodes.1, align 8
  br label %while35

while35:                                          ; preds = %merge, %else44
  %putMeHere36 = load %node_node*, %node_node** @llNodes.1, align 8
  %curr37 = icmp ne %node_node* %putMeHere36, null
  br i1 %curr37, label %while_body38, label %merge45

while_body38:                                     ; preds = %while35
  %putMeHere39 = load %node_node*, %node_node** @llNodes.1, align 8
  %nodes40 = getelementptr inbounds %node_node, %node_node* %putMeHere39, i32 0, i32 0
  %"stored_node'41" = load %node_struct*, %node_struct** %nodes40, align 8
  br label %if42

if42:                                             ; preds = %while_body38
  %"found?46" = icmp eq %node_struct* %"stored_node'41", %"dst'"
  br i1 %"found?46", label %then43, label %else44

then43:                                           ; preds = %if42
  store i1 true, i1* %ret_true33, align 1
  br label %merge45

else44:                                           ; preds = %if42
  %toBeHere47 = load %node_node*, %node_node** @llNodes.1, align 8
  %llNodesPtr48 = getelementptr inbounds %node_node, %node_node* %toBeHere47, i32 0, i32 1
  %toBeHerenow49 = load %node_node*, %node_node** %llNodesPtr48, align 8
  store %node_node* %toBeHerenow49, %node_node** @llNodes.1, align 8
  br label %while35

merge45:                                          ; preds = %while35, %then43
  %returnVal50 = load i1, i1* %ret_true33, align 1
  br label %if51

if51:                                             ; preds = %merge45
  br i1 %returnVal, label %merge53, label %else52

else52:                                           ; preds = %if51
  %nodes_hd = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall54 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node = bitcast i8* %malloccall54 to %node_node*
  %"lst_rst'55" = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 1
  %node_ptr = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 0
  store %node_node* %nodes_hd, %node_node** %"lst_rst'55", align 8
  store %node_struct* %"src'", %node_struct** %node_ptr, align 8
  store %node_node* %new_node, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  br label %merge53

merge53:                                          ; preds = %else52, %if51
  br label %if56

if56:                                             ; preds = %merge53
  br i1 %returnVal50, label %merge58, label %else57

else57:                                           ; preds = %if56
  %nodes_hd59 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall60 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node61 = bitcast i8* %malloccall60 to %node_node*
  %"lst_rst'62" = getelementptr inbounds %node_node, %node_node* %new_node61, i32 0, i32 1
  %node_ptr63 = getelementptr inbounds %node_node, %node_node* %new_node61, i32 0, i32 0
  store %node_node* %nodes_hd59, %node_node** %"lst_rst'62", align 8
  store %node_struct* %"dst'", %node_struct** %node_ptr63, align 8
  store %node_node* %new_node61, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  br label %merge58

merge58:                                          ; preds = %else57, %if56
  store %edge_node* %new_edge, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %ret_true64 = alloca i1, align 1
  store i1 false, i1* %ret_true64, align 1
  %e65 = load %edge_t*, %edge_t** @e, align 8
  %head66 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  store %edge_node* %head66, %edge_node** @llEdges, align 8
  br label %while67

while67:                                          ; preds = %merge58, %else76
  %putMeHere68 = load %edge_node*, %edge_node** @llEdges, align 8
  %curr69 = icmp ne %edge_node* %putMeHere68, null
  br i1 %curr69, label %while_body70, label %merge77

while_body70:                                     ; preds = %while67
  %putMeHere71 = load %edge_node*, %edge_node** @llEdges, align 8
  %nodes72 = getelementptr inbounds %edge_node, %edge_node* %putMeHere71, i32 0, i32 0
  %"stored_node'73" = load %edge_t*, %edge_t** %nodes72, align 8
  br label %if74

if74:                                             ; preds = %while_body70
  %"found?78" = icmp eq %edge_t* %"stored_node'73", %e65
  br i1 %"found?78", label %then75, label %else76

then75:                                           ; preds = %if74
  store i1 true, i1* %ret_true64, align 1
  br label %merge77

else76:                                           ; preds = %if74
  %toBeHere79 = load %edge_node*, %edge_node** @llEdges, align 8
  %llNodesPtr80 = getelementptr inbounds %edge_node, %edge_node* %toBeHere79, i32 0, i32 1
  %toBeHerenow81 = load %edge_node*, %edge_node** %llNodesPtr80, align 8
  store %edge_node* %toBeHerenow81, %edge_node** @llEdges, align 8
  br label %while67

merge77:                                          ; preds = %while67, %then75
  %returnVal82 = load i1, i1* %ret_true64, align 1
  store i1 %returnVal82, i1* @found_e, align 1
  %ret_true83 = alloca i1, align 1
  store i1 false, i1* %ret_true83, align 1
  %e2 = load %edge_t*, %edge_t** @e2, align 8
  %head84 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  store %edge_node* %head84, %edge_node** @llEdges.2, align 8
  br label %while85

while85:                                          ; preds = %merge77, %else94
  %putMeHere86 = load %edge_node*, %edge_node** @llEdges.2, align 8
  %curr87 = icmp ne %edge_node* %putMeHere86, null
  br i1 %curr87, label %while_body88, label %merge95

while_body88:                                     ; preds = %while85
  %putMeHere89 = load %edge_node*, %edge_node** @llEdges.2, align 8
  %nodes90 = getelementptr inbounds %edge_node, %edge_node* %putMeHere89, i32 0, i32 0
  %"stored_node'91" = load %edge_t*, %edge_t** %nodes90, align 8
  br label %if92

if92:                                             ; preds = %while_body88
  %"found?96" = icmp eq %edge_t* %"stored_node'91", %e2
  br i1 %"found?96", label %then93, label %else94

then93:                                           ; preds = %if92
  store i1 true, i1* %ret_true83, align 1
  br label %merge95

else94:                                           ; preds = %if92
  %toBeHere97 = load %edge_node*, %edge_node** @llEdges.2, align 8
  %llNodesPtr98 = getelementptr inbounds %edge_node, %edge_node* %toBeHere97, i32 0, i32 1
  %toBeHerenow99 = load %edge_node*, %edge_node** %llNodesPtr98, align 8
  store %edge_node* %toBeHerenow99, %edge_node** @llEdges.2, align 8
  br label %while85

merge95:                                          ; preds = %while85, %then93
  %returnVal100 = load i1, i1* %ret_true83, align 1
  store i1 %returnVal100, i1* @found_e2, align 1
  %found_e = load i1, i1* @found_e, align 1
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i1 %found_e)
  %found_e2 = load i1, i1* @found_e2, align 1
  %printf101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.3, i32 0, i32 0), i1 %found_e2)
  %ret_true102 = alloca i1, align 1
  store i1 false, i1* %ret_true102, align 1
  %e103 = load %edge_t*, %edge_t** @e, align 8
  %head104 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  store %edge_node* %head104, %edge_node** @prevEdge, align 8
  store %edge_node* %head104, %edge_node** @llEdges.4, align 8
  br label %while105

while105:                                         ; preds = %merge95, %else114
  %putMeHere106 = load %edge_node*, %edge_node** @llEdges.4, align 8
  %curr107 = icmp ne %edge_node* %putMeHere106, null
  br i1 %curr107, label %while_body108, label %merge115

while_body108:                                    ; preds = %while105
  %putMeHere109 = load %edge_node*, %edge_node** @llEdges.4, align 8
  %edges = getelementptr inbounds %edge_node, %edge_node* %putMeHere109, i32 0, i32 0
  %"stored_edge'" = load %edge_t*, %edge_t** %edges, align 8
  br label %if110

if110:                                            ; preds = %while_body108
  %"found?116" = icmp eq %edge_t* %"stored_edge'", %e103
  br i1 %"found?116", label %then111, label %else114

then111:                                          ; preds = %if110
  %toBeHere117 = load %edge_node*, %edge_node** @llEdges.4, align 8
  %toBeHere118 = load %edge_node*, %edge_node** @prevEdge, align 8
  %"found?119" = icmp eq %edge_node* %toBeHere117, %toBeHere118
  br i1 %"found?119", label %then113, label %then112

then112:                                          ; preds = %then111
  %loadHere = load %edge_node*, %edge_node** @prevEdge, align 8
  %nxtEdge = getelementptr inbounds %edge_node, %edge_node* %loadHere, i32 0, i32 1
  %edgesmore = getelementptr inbounds %edge_node, %edge_node* %toBeHere117, i32 0, i32 1
  %"stored_edgemore'" = load %edge_node*, %edge_node** %edgesmore, align 8
  store %edge_node* %"stored_edgemore'", %edge_node** %nxtEdge, align 8
  store i1 true, i1* %ret_true102, align 1
  br label %merge115

then113:                                          ; preds = %then111
  %edgesmore120 = getelementptr inbounds %edge_node, %edge_node* %toBeHere117, i32 0, i32 1
  %"stored_edgemore'121" = load %edge_node*, %edge_node** %edgesmore120, align 8
  store %edge_node* %"stored_edgemore'121", %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  store i1 true, i1* %ret_true102, align 1
  br label %merge115

else114:                                          ; preds = %if110
  %toBeHere122 = load %edge_node*, %edge_node** @llEdges.4, align 8
  %llEdgesPtr = getelementptr inbounds %edge_node, %edge_node* %toBeHere122, i32 0, i32 1
  %toBeHerenow123 = load %edge_node*, %edge_node** %llEdgesPtr, align 8
  store %edge_node* %toBeHerenow123, %edge_node** @llEdges.4, align 8
  br label %while105

merge115:                                         ; preds = %while105, %then113, %then112
  %returnVal124 = load i1, i1* %ret_true102, align 1
  %ret_true125 = alloca i1, align 1
  store i1 false, i1* %ret_true125, align 1
  %e126 = load %edge_t*, %edge_t** @e, align 8
  %head127 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  store %edge_node* %head127, %edge_node** @llEdges.5, align 8
  br label %while128

while128:                                         ; preds = %merge115, %else137
  %putMeHere129 = load %edge_node*, %edge_node** @llEdges.5, align 8
  %curr130 = icmp ne %edge_node* %putMeHere129, null
  br i1 %curr130, label %while_body131, label %merge138

while_body131:                                    ; preds = %while128
  %putMeHere132 = load %edge_node*, %edge_node** @llEdges.5, align 8
  %nodes133 = getelementptr inbounds %edge_node, %edge_node* %putMeHere132, i32 0, i32 0
  %"stored_node'134" = load %edge_t*, %edge_t** %nodes133, align 8
  br label %if135

if135:                                            ; preds = %while_body131
  %"found?139" = icmp eq %edge_t* %"stored_node'134", %e126
  br i1 %"found?139", label %then136, label %else137

then136:                                          ; preds = %if135
  store i1 true, i1* %ret_true125, align 1
  br label %merge138

else137:                                          ; preds = %if135
  %toBeHere140 = load %edge_node*, %edge_node** @llEdges.5, align 8
  %llNodesPtr141 = getelementptr inbounds %edge_node, %edge_node* %toBeHere140, i32 0, i32 1
  %toBeHerenow142 = load %edge_node*, %edge_node** %llNodesPtr141, align 8
  store %edge_node* %toBeHerenow142, %edge_node** @llEdges.5, align 8
  br label %while128

merge138:                                         ; preds = %while128, %then136
  %returnVal143 = load i1, i1* %ret_true125, align 1
  store i1 %returnVal143, i1* @found_e, align 1
  %ret_true144 = alloca i1, align 1
  store i1 false, i1* %ret_true144, align 1
  %e2145 = load %edge_t*, %edge_t** @e2, align 8
  %head146 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  store %edge_node* %head146, %edge_node** @llEdges.6, align 8
  br label %while147

while147:                                         ; preds = %merge138, %else156
  %putMeHere148 = load %edge_node*, %edge_node** @llEdges.6, align 8
  %curr149 = icmp ne %edge_node* %putMeHere148, null
  br i1 %curr149, label %while_body150, label %merge157

while_body150:                                    ; preds = %while147
  %putMeHere151 = load %edge_node*, %edge_node** @llEdges.6, align 8
  %nodes152 = getelementptr inbounds %edge_node, %edge_node* %putMeHere151, i32 0, i32 0
  %"stored_node'153" = load %edge_t*, %edge_t** %nodes152, align 8
  br label %if154

if154:                                            ; preds = %while_body150
  %"found?158" = icmp eq %edge_t* %"stored_node'153", %e2145
  br i1 %"found?158", label %then155, label %else156

then155:                                          ; preds = %if154
  store i1 true, i1* %ret_true144, align 1
  br label %merge157

else156:                                          ; preds = %if154
  %toBeHere159 = load %edge_node*, %edge_node** @llEdges.6, align 8
  %llNodesPtr160 = getelementptr inbounds %edge_node, %edge_node* %toBeHere159, i32 0, i32 1
  %toBeHerenow161 = load %edge_node*, %edge_node** %llNodesPtr160, align 8
  store %edge_node* %toBeHerenow161, %edge_node** @llEdges.6, align 8
  br label %while147

merge157:                                         ; preds = %while147, %then155
  %returnVal162 = load i1, i1* %ret_true144, align 1
  store i1 %returnVal162, i1* @found_e2, align 1
  %found_e163 = load i1, i1* @found_e, align 1
  %printf164 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.7, i32 0, i32 0), i1 %found_e163)
  %found_e2165 = load i1, i1* @found_e2, align 1
  %printf166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.8, i32 0, i32 0), i1 %found_e2165)
  ret i32 0
}

declare noalias i8* @malloc(i32)

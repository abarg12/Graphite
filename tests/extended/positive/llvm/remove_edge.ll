; ModuleID = 'Graphite'
source_filename = "Graphite"

%node_struct = type { i8*, i1, i8* }
%graph_tt = type { %node_node*, %edge_node* }
%node_node = type { %node_struct*, %node_node* }
%edge_node = type { %edge_t*, %edge_node* }
%edge_t = type { %node_struct*, %node_struct*, i32 }

@n = global %node_struct* null
@m = global %node_struct* null
@g = global %graph_tt* null
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
  %malloccall13 = tail call i8* @malloc(i32 ptrtoint (%graph_tt* getelementptr (%graph_tt, %graph_tt* null, i32 1) to i32))
  %node14 = bitcast i8* %malloccall13 to %graph_tt*
  %"name'15" = getelementptr inbounds %graph_tt, %graph_tt* %node14, i32 0, i32 0
  %"data'16" = getelementptr inbounds %graph_tt, %graph_tt* %node14, i32 0, i32 1
  store %node_node* null, %node_node** %"name'15", align 8
  store %edge_node* null, %edge_node** %"data'16", align 8
  store %graph_tt* %node14, %graph_tt** @g, align 8
  %n = load %node_struct*, %node_struct** @n, align 8
  %m = load %node_struct*, %node_struct** @m, align 8
  %malloccall17 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct = bitcast i8* %malloccall17 to %edge_t*
  %"name'18" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 0
  %"name'19" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 1
  %"name'20" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 2
  store %node_struct* %n, %node_struct** %"name'18", align 8
  store %node_struct* %m, %node_struct** %"name'19", align 8
  store i32 0, i32* %"name'20", align 4
  %malloccall21 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge = bitcast i8* %malloccall21 to %edge_t*
  %"name'22" = getelementptr inbounds %edge_t, %edge_t* %edge, i32 0, i32 0
  %"data'23" = getelementptr inbounds %edge_t, %edge_t* %edge, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'22", align 8
  store %node_struct* null, %node_struct** %"data'23", align 8
  store %edge_t* %edge, %edge_t** @e, align 8
  store %edge_t* %myEdgeStruct, %edge_t** @e, align 8
  %m24 = load %node_struct*, %node_struct** @m, align 8
  %n25 = load %node_struct*, %node_struct** @n, align 8
  %malloccall26 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct27 = bitcast i8* %malloccall26 to %edge_t*
  %"name'28" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct27, i32 0, i32 0
  %"name'29" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct27, i32 0, i32 1
  %"name'30" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct27, i32 0, i32 2
  store %node_struct* %m24, %node_struct** %"name'28", align 8
  store %node_struct* %n25, %node_struct** %"name'29", align 8
  store i32 0, i32* %"name'30", align 4
  %malloccall31 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge32 = bitcast i8* %malloccall31 to %edge_t*
  %"name'33" = getelementptr inbounds %edge_t, %edge_t* %edge32, i32 0, i32 0
  %"data'34" = getelementptr inbounds %edge_t, %edge_t* %edge32, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'33", align 8
  store %node_struct* null, %node_struct** %"data'34", align 8
  store %edge_t* %edge32, %edge_t** @e2, align 8
  store %edge_t* %myEdgeStruct27, %edge_t** @e2, align 8
  %e = load %edge_t*, %edge_t** @e, align 8
  %graph_ptr = load %graph_tt*, %graph_tt** @g, align 8
  %edges = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr, i32 0, i32 1
  %edges_hd = load %edge_node*, %edge_node** %edges, align 8
  %malloccall35 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge = bitcast i8* %malloccall35 to %edge_node*
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
  %graph_ptr36 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr36, i32 0, i32 0
  %head = load %node_node*, %node_node** %nodes, align 8
  store %node_node* %head, %node_node** @llNodes, align 8
  br label %while

while:                                            ; preds = %entry, %else
  %putMeHere = load %node_node*, %node_node** @llNodes, align 8
  %curr = icmp ne %node_node* %putMeHere, null
  br i1 %curr, label %while_body, label %merge

while_body:                                       ; preds = %while
  %putMeHere37 = load %node_node*, %node_node** @llNodes, align 8
  %nodes38 = getelementptr inbounds %node_node, %node_node* %putMeHere37, i32 0, i32 0
  %"stored_node'" = load %node_struct*, %node_struct** %nodes38, align 8
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
  %ret_true39 = alloca i1, align 1
  store i1 false, i1* %ret_true39, align 1
  %graph_ptr40 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes41 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr40, i32 0, i32 0
  %head42 = load %node_node*, %node_node** %nodes41, align 8
  store %node_node* %head42, %node_node** @llNodes.1, align 8
  br label %while43

while43:                                          ; preds = %merge, %else52
  %putMeHere44 = load %node_node*, %node_node** @llNodes.1, align 8
  %curr45 = icmp ne %node_node* %putMeHere44, null
  br i1 %curr45, label %while_body46, label %merge53

while_body46:                                     ; preds = %while43
  %putMeHere47 = load %node_node*, %node_node** @llNodes.1, align 8
  %nodes48 = getelementptr inbounds %node_node, %node_node* %putMeHere47, i32 0, i32 0
  %"stored_node'49" = load %node_struct*, %node_struct** %nodes48, align 8
  br label %if50

if50:                                             ; preds = %while_body46
  %"found?54" = icmp eq %node_struct* %"stored_node'49", %"dst'"
  br i1 %"found?54", label %then51, label %else52

then51:                                           ; preds = %if50
  store i1 true, i1* %ret_true39, align 1
  br label %merge53

else52:                                           ; preds = %if50
  %toBeHere55 = load %node_node*, %node_node** @llNodes.1, align 8
  %llNodesPtr56 = getelementptr inbounds %node_node, %node_node* %toBeHere55, i32 0, i32 1
  %toBeHerenow57 = load %node_node*, %node_node** %llNodesPtr56, align 8
  store %node_node* %toBeHerenow57, %node_node** @llNodes.1, align 8
  br label %while43

merge53:                                          ; preds = %while43, %then51
  %returnVal58 = load i1, i1* %ret_true39, align 1
  br label %if59

if59:                                             ; preds = %merge53
  br i1 %returnVal, label %merge61, label %else60

else60:                                           ; preds = %if59
  %graph_ptr62 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes63 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr62, i32 0, i32 0
  %nodes_hd = load %node_node*, %node_node** %nodes63, align 8
  %malloccall64 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node = bitcast i8* %malloccall64 to %node_node*
  %"lst_rst'65" = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 1
  %node_ptr = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 0
  store %node_node* %nodes_hd, %node_node** %"lst_rst'65", align 8
  store %node_struct* %"src'", %node_struct** %node_ptr, align 8
  store %node_node* %new_node, %node_node** %nodes63, align 8
  br label %merge61

merge61:                                          ; preds = %else60, %if59
  br label %if66

if66:                                             ; preds = %merge61
  br i1 %returnVal58, label %merge68, label %else67

else67:                                           ; preds = %if66
  %graph_ptr69 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes70 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr69, i32 0, i32 0
  %nodes_hd71 = load %node_node*, %node_node** %nodes70, align 8
  %malloccall72 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node73 = bitcast i8* %malloccall72 to %node_node*
  %"lst_rst'74" = getelementptr inbounds %node_node, %node_node* %new_node73, i32 0, i32 1
  %node_ptr75 = getelementptr inbounds %node_node, %node_node* %new_node73, i32 0, i32 0
  store %node_node* %nodes_hd71, %node_node** %"lst_rst'74", align 8
  store %node_struct* %"dst'", %node_struct** %node_ptr75, align 8
  store %node_node* %new_node73, %node_node** %nodes70, align 8
  br label %merge68

merge68:                                          ; preds = %else67, %if66
  store %edge_node* %new_edge, %edge_node** %edges, align 8
  %ret_true76 = alloca i1, align 1
  store i1 false, i1* %ret_true76, align 1
  %e77 = load %edge_t*, %edge_t** @e, align 8
  %graph_ptr78 = load %graph_tt*, %graph_tt** @g, align 8
  %edges79 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr78, i32 0, i32 1
  %head80 = load %edge_node*, %edge_node** %edges79, align 8
  store %edge_node* %head80, %edge_node** @llEdges, align 8
  br label %while81

while81:                                          ; preds = %merge68, %else90
  %putMeHere82 = load %edge_node*, %edge_node** @llEdges, align 8
  %curr83 = icmp ne %edge_node* %putMeHere82, null
  br i1 %curr83, label %while_body84, label %merge91

while_body84:                                     ; preds = %while81
  %putMeHere85 = load %edge_node*, %edge_node** @llEdges, align 8
  %nodes86 = getelementptr inbounds %edge_node, %edge_node* %putMeHere85, i32 0, i32 0
  %"stored_node'87" = load %edge_t*, %edge_t** %nodes86, align 8
  br label %if88

if88:                                             ; preds = %while_body84
  %"found?92" = icmp eq %edge_t* %"stored_node'87", %e77
  br i1 %"found?92", label %then89, label %else90

then89:                                           ; preds = %if88
  store i1 true, i1* %ret_true76, align 1
  br label %merge91

else90:                                           ; preds = %if88
  %toBeHere93 = load %edge_node*, %edge_node** @llEdges, align 8
  %llNodesPtr94 = getelementptr inbounds %edge_node, %edge_node* %toBeHere93, i32 0, i32 1
  %toBeHerenow95 = load %edge_node*, %edge_node** %llNodesPtr94, align 8
  store %edge_node* %toBeHerenow95, %edge_node** @llEdges, align 8
  br label %while81

merge91:                                          ; preds = %while81, %then89
  %returnVal96 = load i1, i1* %ret_true76, align 1
  store i1 %returnVal96, i1* @found_e, align 1
  %ret_true97 = alloca i1, align 1
  store i1 false, i1* %ret_true97, align 1
  %e2 = load %edge_t*, %edge_t** @e2, align 8
  %graph_ptr98 = load %graph_tt*, %graph_tt** @g, align 8
  %edges99 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr98, i32 0, i32 1
  %head100 = load %edge_node*, %edge_node** %edges99, align 8
  store %edge_node* %head100, %edge_node** @llEdges.2, align 8
  br label %while101

while101:                                         ; preds = %merge91, %else110
  %putMeHere102 = load %edge_node*, %edge_node** @llEdges.2, align 8
  %curr103 = icmp ne %edge_node* %putMeHere102, null
  br i1 %curr103, label %while_body104, label %merge111

while_body104:                                    ; preds = %while101
  %putMeHere105 = load %edge_node*, %edge_node** @llEdges.2, align 8
  %nodes106 = getelementptr inbounds %edge_node, %edge_node* %putMeHere105, i32 0, i32 0
  %"stored_node'107" = load %edge_t*, %edge_t** %nodes106, align 8
  br label %if108

if108:                                            ; preds = %while_body104
  %"found?112" = icmp eq %edge_t* %"stored_node'107", %e2
  br i1 %"found?112", label %then109, label %else110

then109:                                          ; preds = %if108
  store i1 true, i1* %ret_true97, align 1
  br label %merge111

else110:                                          ; preds = %if108
  %toBeHere113 = load %edge_node*, %edge_node** @llEdges.2, align 8
  %llNodesPtr114 = getelementptr inbounds %edge_node, %edge_node* %toBeHere113, i32 0, i32 1
  %toBeHerenow115 = load %edge_node*, %edge_node** %llNodesPtr114, align 8
  store %edge_node* %toBeHerenow115, %edge_node** @llEdges.2, align 8
  br label %while101

merge111:                                         ; preds = %while101, %then109
  %returnVal116 = load i1, i1* %ret_true97, align 1
  store i1 %returnVal116, i1* @found_e2, align 1
  %found_e = load i1, i1* @found_e, align 1
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i1 %found_e)
  %found_e2 = load i1, i1* @found_e2, align 1
  %printf117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.3, i32 0, i32 0), i1 %found_e2)
  %ret_true118 = alloca i1, align 1
  store i1 false, i1* %ret_true118, align 1
  %e119 = load %edge_t*, %edge_t** @e, align 8
  %graph_ptr120 = load %graph_tt*, %graph_tt** @g, align 8
  %edges121 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr120, i32 0, i32 1
  %head122 = load %edge_node*, %edge_node** %edges121, align 8
  store %edge_node* %head122, %edge_node** @prevEdge, align 8
  store %edge_node* %head122, %edge_node** @llEdges.4, align 8
  br label %while123

while123:                                         ; preds = %merge111, %else133
  %putMeHere124 = load %edge_node*, %edge_node** @llEdges.4, align 8
  %curr125 = icmp ne %edge_node* %putMeHere124, null
  br i1 %curr125, label %while_body126, label %merge134

while_body126:                                    ; preds = %while123
  %putMeHere127 = load %edge_node*, %edge_node** @llEdges.4, align 8
  %edges128 = getelementptr inbounds %edge_node, %edge_node* %putMeHere127, i32 0, i32 0
  %"stored_edge'" = load %edge_t*, %edge_t** %edges128, align 8
  br label %if129

if129:                                            ; preds = %while_body126
  %"found?135" = icmp eq %edge_t* %"stored_edge'", %e119
  br i1 %"found?135", label %then130, label %else133

then130:                                          ; preds = %if129
  %toBeHere136 = load %edge_node*, %edge_node** @llEdges.4, align 8
  %toBeHere137 = load %edge_node*, %edge_node** @prevEdge, align 8
  %"found?138" = icmp eq %edge_node* %toBeHere136, %toBeHere137
  br i1 %"found?138", label %then132, label %then131

then131:                                          ; preds = %then130
  %loadHere = load %edge_node*, %edge_node** @prevEdge, align 8
  %nxtEdge = getelementptr inbounds %edge_node, %edge_node* %loadHere, i32 0, i32 1
  %edgesmore = getelementptr inbounds %edge_node, %edge_node* %toBeHere136, i32 0, i32 1
  %"stored_edgemore'" = load %edge_node*, %edge_node** %edgesmore, align 8
  store %edge_node* %"stored_edgemore'", %edge_node** %nxtEdge, align 8
  store i1 true, i1* %ret_true118, align 1
  br label %merge134

then132:                                          ; preds = %then130
  %llEdgesPtr_original = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr120, i32 0, i32 1
  %edgesmore139 = getelementptr inbounds %edge_node, %edge_node* %toBeHere136, i32 0, i32 1
  %"stored_edgemore'140" = load %edge_node*, %edge_node** %edgesmore139, align 8
  store %edge_node* %"stored_edgemore'140", %edge_node** %llEdgesPtr_original, align 8
  store i1 true, i1* %ret_true118, align 1
  br label %merge134

else133:                                          ; preds = %if129
  %toBeHere141 = load %edge_node*, %edge_node** @llEdges.4, align 8
  %llEdgesPtr = getelementptr inbounds %edge_node, %edge_node* %toBeHere141, i32 0, i32 1
  %toBeHerenow142 = load %edge_node*, %edge_node** %llEdgesPtr, align 8
  store %edge_node* %toBeHerenow142, %edge_node** @llEdges.4, align 8
  br label %while123

merge134:                                         ; preds = %while123, %then132, %then131
  %returnVal143 = load i1, i1* %ret_true118, align 1
  %ret_true144 = alloca i1, align 1
  store i1 false, i1* %ret_true144, align 1
  %e145 = load %edge_t*, %edge_t** @e, align 8
  %graph_ptr146 = load %graph_tt*, %graph_tt** @g, align 8
  %edges147 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr146, i32 0, i32 1
  %head148 = load %edge_node*, %edge_node** %edges147, align 8
  store %edge_node* %head148, %edge_node** @llEdges.5, align 8
  br label %while149

while149:                                         ; preds = %merge134, %else158
  %putMeHere150 = load %edge_node*, %edge_node** @llEdges.5, align 8
  %curr151 = icmp ne %edge_node* %putMeHere150, null
  br i1 %curr151, label %while_body152, label %merge159

while_body152:                                    ; preds = %while149
  %putMeHere153 = load %edge_node*, %edge_node** @llEdges.5, align 8
  %nodes154 = getelementptr inbounds %edge_node, %edge_node* %putMeHere153, i32 0, i32 0
  %"stored_node'155" = load %edge_t*, %edge_t** %nodes154, align 8
  br label %if156

if156:                                            ; preds = %while_body152
  %"found?160" = icmp eq %edge_t* %"stored_node'155", %e145
  br i1 %"found?160", label %then157, label %else158

then157:                                          ; preds = %if156
  store i1 true, i1* %ret_true144, align 1
  br label %merge159

else158:                                          ; preds = %if156
  %toBeHere161 = load %edge_node*, %edge_node** @llEdges.5, align 8
  %llNodesPtr162 = getelementptr inbounds %edge_node, %edge_node* %toBeHere161, i32 0, i32 1
  %toBeHerenow163 = load %edge_node*, %edge_node** %llNodesPtr162, align 8
  store %edge_node* %toBeHerenow163, %edge_node** @llEdges.5, align 8
  br label %while149

merge159:                                         ; preds = %while149, %then157
  %returnVal164 = load i1, i1* %ret_true144, align 1
  store i1 %returnVal164, i1* @found_e, align 1
  %ret_true165 = alloca i1, align 1
  store i1 false, i1* %ret_true165, align 1
  %e2166 = load %edge_t*, %edge_t** @e2, align 8
  %graph_ptr167 = load %graph_tt*, %graph_tt** @g, align 8
  %edges168 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr167, i32 0, i32 1
  %head169 = load %edge_node*, %edge_node** %edges168, align 8
  store %edge_node* %head169, %edge_node** @llEdges.6, align 8
  br label %while170

while170:                                         ; preds = %merge159, %else179
  %putMeHere171 = load %edge_node*, %edge_node** @llEdges.6, align 8
  %curr172 = icmp ne %edge_node* %putMeHere171, null
  br i1 %curr172, label %while_body173, label %merge180

while_body173:                                    ; preds = %while170
  %putMeHere174 = load %edge_node*, %edge_node** @llEdges.6, align 8
  %nodes175 = getelementptr inbounds %edge_node, %edge_node* %putMeHere174, i32 0, i32 0
  %"stored_node'176" = load %edge_t*, %edge_t** %nodes175, align 8
  br label %if177

if177:                                            ; preds = %while_body173
  %"found?181" = icmp eq %edge_t* %"stored_node'176", %e2166
  br i1 %"found?181", label %then178, label %else179

then178:                                          ; preds = %if177
  store i1 true, i1* %ret_true165, align 1
  br label %merge180

else179:                                          ; preds = %if177
  %toBeHere182 = load %edge_node*, %edge_node** @llEdges.6, align 8
  %llNodesPtr183 = getelementptr inbounds %edge_node, %edge_node* %toBeHere182, i32 0, i32 1
  %toBeHerenow184 = load %edge_node*, %edge_node** %llNodesPtr183, align 8
  store %edge_node* %toBeHerenow184, %edge_node** @llEdges.6, align 8
  br label %while170

merge180:                                         ; preds = %while170, %then178
  %returnVal185 = load i1, i1* %ret_true165, align 1
  store i1 %returnVal185, i1* @found_e2, align 1
  %found_e186 = load i1, i1* @found_e, align 1
  %printf187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.7, i32 0, i32 0), i1 %found_e186)
  %found_e2188 = load i1, i1* @found_e2, align 1
  %printf189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.8, i32 0, i32 0), i1 %found_e2188)
  ret i32 0
}

declare noalias i8* @malloc(i32)

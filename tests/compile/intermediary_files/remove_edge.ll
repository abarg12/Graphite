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
@llEdges = global %edge_node* null
@found_e = global i1 false
@llEdges.1 = global %edge_node* null
@found_e2 = global i1 false
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llEdges.3 = global %edge_node* null
@prevEdge = global %edge_node* null
@llEdges.4 = global %edge_node* null
@llEdges.5 = global %edge_node* null
@fmt.6 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.7 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @printf(i8*, ...)

declare i32 @strcmp(i8*, i8*)

declare i8* @array_get(i8*, i32, ...)

declare i8* @array_set(i8*, i32, i8*, ...)

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
  store %edge_node* %new_edge, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %ret_true = alloca i1, align 1
  store i1 false, i1* %ret_true, align 1
  %e32 = load %edge_t*, %edge_t** @e, align 8
  %head = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  store %edge_node* %head, %edge_node** @llEdges, align 8
  br label %while

while:                                            ; preds = %entry, %else
  %putMeHere = load %edge_node*, %edge_node** @llEdges, align 8
  %curr = icmp ne %edge_node* %putMeHere, null
  br i1 %curr, label %while_body, label %merge

while_body:                                       ; preds = %while
  %putMeHere33 = load %edge_node*, %edge_node** @llEdges, align 8
  %nodes = getelementptr inbounds %edge_node, %edge_node* %putMeHere33, i32 0, i32 0
  %"stored_node'" = load %edge_t*, %edge_t** %nodes, align 8
  br label %if

if:                                               ; preds = %while_body
  %"found?" = icmp eq %edge_t* %"stored_node'", %e32
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
  %e34 = load %edge_t*, %edge_t** @e, align 8
  %returnVal = load i1, i1* %ret_true, align 1
  store i1 %returnVal, i1* @found_e, align 1
  %ret_true35 = alloca i1, align 1
  store i1 false, i1* %ret_true35, align 1
  %e2 = load %edge_t*, %edge_t** @e2, align 8
  %head36 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  store %edge_node* %head36, %edge_node** @llEdges.1, align 8
  br label %while37

while37:                                          ; preds = %merge, %else46
  %putMeHere38 = load %edge_node*, %edge_node** @llEdges.1, align 8
  %curr39 = icmp ne %edge_node* %putMeHere38, null
  br i1 %curr39, label %while_body40, label %merge47

while_body40:                                     ; preds = %while37
  %putMeHere41 = load %edge_node*, %edge_node** @llEdges.1, align 8
  %nodes42 = getelementptr inbounds %edge_node, %edge_node* %putMeHere41, i32 0, i32 0
  %"stored_node'43" = load %edge_t*, %edge_t** %nodes42, align 8
  br label %if44

if44:                                             ; preds = %while_body40
  %"found?48" = icmp eq %edge_t* %"stored_node'43", %e2
  br i1 %"found?48", label %then45, label %else46

then45:                                           ; preds = %if44
  store i1 true, i1* %ret_true35, align 1
  br label %merge47

else46:                                           ; preds = %if44
  %toBeHere49 = load %edge_node*, %edge_node** @llEdges.1, align 8
  %llNodesPtr50 = getelementptr inbounds %edge_node, %edge_node* %toBeHere49, i32 0, i32 1
  %toBeHerenow51 = load %edge_node*, %edge_node** %llNodesPtr50, align 8
  store %edge_node* %toBeHerenow51, %edge_node** @llEdges.1, align 8
  br label %while37

merge47:                                          ; preds = %while37, %then45
  %e252 = load %edge_t*, %edge_t** @e2, align 8
  %returnVal53 = load i1, i1* %ret_true35, align 1
  store i1 %returnVal53, i1* @found_e2, align 1
  %found_e = load i1, i1* @found_e, align 1
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i1 %found_e)
  %found_e2 = load i1, i1* @found_e2, align 1
  %printf54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.2, i32 0, i32 0), i1 %found_e2)
  %ret_true55 = alloca i1, align 1
  store i1 false, i1* %ret_true55, align 1
  %e56 = load %edge_t*, %edge_t** @e, align 8
  %head57 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  store %edge_node* %head57, %edge_node** @prevEdge, align 8
  store %edge_node* %head57, %edge_node** @llEdges.3, align 8
  br label %while58

while58:                                          ; preds = %merge47, %else67
  %putMeHere59 = load %edge_node*, %edge_node** @llEdges.3, align 8
  %curr60 = icmp ne %edge_node* %putMeHere59, null
  br i1 %curr60, label %while_body61, label %merge68

while_body61:                                     ; preds = %while58
  %putMeHere62 = load %edge_node*, %edge_node** @llEdges.3, align 8
  %edges = getelementptr inbounds %edge_node, %edge_node* %putMeHere62, i32 0, i32 0
  %"stored_edge'" = load %edge_t*, %edge_t** %edges, align 8
  br label %if63

if63:                                             ; preds = %while_body61
  %"found?69" = icmp eq %edge_t* %"stored_edge'", %e56
  br i1 %"found?69", label %then64, label %else67

then64:                                           ; preds = %if63
  %toBeHere70 = load %edge_node*, %edge_node** @llEdges.3, align 8
  %toBeHere71 = load %edge_node*, %edge_node** @prevEdge, align 8
  %"found?72" = icmp eq %edge_node* %toBeHere70, %toBeHere71
  br i1 %"found?72", label %then66, label %then65

then65:                                           ; preds = %then64
  %loadHere = load %edge_node*, %edge_node** @prevEdge, align 8
  %nxtEdge = getelementptr inbounds %edge_node, %edge_node* %loadHere, i32 0, i32 1
  %edgesmore = getelementptr inbounds %edge_node, %edge_node* %toBeHere70, i32 0, i32 1
  %"stored_edgemore'" = load %edge_node*, %edge_node** %edgesmore, align 8
  store %edge_node* %"stored_edgemore'", %edge_node** %nxtEdge, align 8
  store i1 true, i1* %ret_true55, align 1
  br label %merge68

then66:                                           ; preds = %then64
  %edgesmore73 = getelementptr inbounds %edge_node, %edge_node* %toBeHere70, i32 0, i32 1
  %"stored_edgemore'74" = load %edge_node*, %edge_node** %edgesmore73, align 8
  store %edge_node* %"stored_edgemore'74", %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  store i1 true, i1* %ret_true55, align 1
  br label %merge68

else67:                                           ; preds = %if63
  %toBeHere75 = load %edge_node*, %edge_node** @llEdges.3, align 8
  %llEdgesPtr = getelementptr inbounds %edge_node, %edge_node* %toBeHere75, i32 0, i32 1
  %toBeHerenow76 = load %edge_node*, %edge_node** %llEdgesPtr, align 8
  store %edge_node* %toBeHerenow76, %edge_node** @llEdges.3, align 8
  br label %while58

merge68:                                          ; preds = %while58, %then66, %then65
  %returnVal77 = load i1, i1* %ret_true55, align 1
  %ret_true78 = alloca i1, align 1
  store i1 false, i1* %ret_true78, align 1
  %e79 = load %edge_t*, %edge_t** @e, align 8
  %head80 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  store %edge_node* %head80, %edge_node** @llEdges.4, align 8
  br label %while81

while81:                                          ; preds = %merge68, %else90
  %putMeHere82 = load %edge_node*, %edge_node** @llEdges.4, align 8
  %curr83 = icmp ne %edge_node* %putMeHere82, null
  br i1 %curr83, label %while_body84, label %merge91

while_body84:                                     ; preds = %while81
  %putMeHere85 = load %edge_node*, %edge_node** @llEdges.4, align 8
  %nodes86 = getelementptr inbounds %edge_node, %edge_node* %putMeHere85, i32 0, i32 0
  %"stored_node'87" = load %edge_t*, %edge_t** %nodes86, align 8
  br label %if88

if88:                                             ; preds = %while_body84
  %"found?92" = icmp eq %edge_t* %"stored_node'87", %e79
  br i1 %"found?92", label %then89, label %else90

then89:                                           ; preds = %if88
  store i1 true, i1* %ret_true78, align 1
  br label %merge91

else90:                                           ; preds = %if88
  %toBeHere93 = load %edge_node*, %edge_node** @llEdges.4, align 8
  %llNodesPtr94 = getelementptr inbounds %edge_node, %edge_node* %toBeHere93, i32 0, i32 1
  %toBeHerenow95 = load %edge_node*, %edge_node** %llNodesPtr94, align 8
  store %edge_node* %toBeHerenow95, %edge_node** @llEdges.4, align 8
  br label %while81

merge91:                                          ; preds = %while81, %then89
  %e96 = load %edge_t*, %edge_t** @e, align 8
  %returnVal97 = load i1, i1* %ret_true78, align 1
  store i1 %returnVal97, i1* @found_e, align 1
  %ret_true98 = alloca i1, align 1
  store i1 false, i1* %ret_true98, align 1
  %e299 = load %edge_t*, %edge_t** @e2, align 8
  %head100 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  store %edge_node* %head100, %edge_node** @llEdges.5, align 8
  br label %while101

while101:                                         ; preds = %merge91, %else110
  %putMeHere102 = load %edge_node*, %edge_node** @llEdges.5, align 8
  %curr103 = icmp ne %edge_node* %putMeHere102, null
  br i1 %curr103, label %while_body104, label %merge111

while_body104:                                    ; preds = %while101
  %putMeHere105 = load %edge_node*, %edge_node** @llEdges.5, align 8
  %nodes106 = getelementptr inbounds %edge_node, %edge_node* %putMeHere105, i32 0, i32 0
  %"stored_node'107" = load %edge_t*, %edge_t** %nodes106, align 8
  br label %if108

if108:                                            ; preds = %while_body104
  %"found?112" = icmp eq %edge_t* %"stored_node'107", %e299
  br i1 %"found?112", label %then109, label %else110

then109:                                          ; preds = %if108
  store i1 true, i1* %ret_true98, align 1
  br label %merge111

else110:                                          ; preds = %if108
  %toBeHere113 = load %edge_node*, %edge_node** @llEdges.5, align 8
  %llNodesPtr114 = getelementptr inbounds %edge_node, %edge_node* %toBeHere113, i32 0, i32 1
  %toBeHerenow115 = load %edge_node*, %edge_node** %llNodesPtr114, align 8
  store %edge_node* %toBeHerenow115, %edge_node** @llEdges.5, align 8
  br label %while101

merge111:                                         ; preds = %while101, %then109
  %e2116 = load %edge_t*, %edge_t** @e2, align 8
  %returnVal117 = load i1, i1* %ret_true98, align 1
  store i1 %returnVal117, i1* @found_e2, align 1
  %found_e118 = load i1, i1* @found_e, align 1
  %printf119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.6, i32 0, i32 0), i1 %found_e118)
  %found_e2120 = load i1, i1* @found_e2, align 1
  %printf121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.7, i32 0, i32 0), i1 %found_e2120)
  ret i32 0
}

declare noalias i8* @malloc(i32)

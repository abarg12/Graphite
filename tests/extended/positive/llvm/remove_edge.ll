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
  %returnVal = load i1, i1* %ret_true, align 1
  store i1 %returnVal, i1* @found_e, align 1
  %ret_true34 = alloca i1, align 1
  store i1 false, i1* %ret_true34, align 1
  %e2 = load %edge_t*, %edge_t** @e2, align 8
  %head35 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  store %edge_node* %head35, %edge_node** @llEdges.1, align 8
  br label %while36

while36:                                          ; preds = %merge, %else45
  %putMeHere37 = load %edge_node*, %edge_node** @llEdges.1, align 8
  %curr38 = icmp ne %edge_node* %putMeHere37, null
  br i1 %curr38, label %while_body39, label %merge46

while_body39:                                     ; preds = %while36
  %putMeHere40 = load %edge_node*, %edge_node** @llEdges.1, align 8
  %nodes41 = getelementptr inbounds %edge_node, %edge_node* %putMeHere40, i32 0, i32 0
  %"stored_node'42" = load %edge_t*, %edge_t** %nodes41, align 8
  br label %if43

if43:                                             ; preds = %while_body39
  %"found?47" = icmp eq %edge_t* %"stored_node'42", %e2
  br i1 %"found?47", label %then44, label %else45

then44:                                           ; preds = %if43
  store i1 true, i1* %ret_true34, align 1
  br label %merge46

else45:                                           ; preds = %if43
  %toBeHere48 = load %edge_node*, %edge_node** @llEdges.1, align 8
  %llNodesPtr49 = getelementptr inbounds %edge_node, %edge_node* %toBeHere48, i32 0, i32 1
  %toBeHerenow50 = load %edge_node*, %edge_node** %llNodesPtr49, align 8
  store %edge_node* %toBeHerenow50, %edge_node** @llEdges.1, align 8
  br label %while36

merge46:                                          ; preds = %while36, %then44
  %returnVal51 = load i1, i1* %ret_true34, align 1
  store i1 %returnVal51, i1* @found_e2, align 1
  %found_e = load i1, i1* @found_e, align 1
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i1 %found_e)
  %found_e2 = load i1, i1* @found_e2, align 1
  %printf52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.2, i32 0, i32 0), i1 %found_e2)
  %ret_true53 = alloca i1, align 1
  store i1 false, i1* %ret_true53, align 1
  %e54 = load %edge_t*, %edge_t** @e, align 8
  %head55 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  store %edge_node* %head55, %edge_node** @prevEdge, align 8
  store %edge_node* %head55, %edge_node** @llEdges.3, align 8
  br label %while56

while56:                                          ; preds = %merge46, %else65
  %putMeHere57 = load %edge_node*, %edge_node** @llEdges.3, align 8
  %curr58 = icmp ne %edge_node* %putMeHere57, null
  br i1 %curr58, label %while_body59, label %merge66

while_body59:                                     ; preds = %while56
  %putMeHere60 = load %edge_node*, %edge_node** @llEdges.3, align 8
  %edges = getelementptr inbounds %edge_node, %edge_node* %putMeHere60, i32 0, i32 0
  %"stored_edge'" = load %edge_t*, %edge_t** %edges, align 8
  br label %if61

if61:                                             ; preds = %while_body59
  %"found?67" = icmp eq %edge_t* %"stored_edge'", %e54
  br i1 %"found?67", label %then62, label %else65

then62:                                           ; preds = %if61
  %toBeHere68 = load %edge_node*, %edge_node** @llEdges.3, align 8
  %toBeHere69 = load %edge_node*, %edge_node** @prevEdge, align 8
  %"found?70" = icmp eq %edge_node* %toBeHere68, %toBeHere69
  br i1 %"found?70", label %then64, label %then63

then63:                                           ; preds = %then62
  %loadHere = load %edge_node*, %edge_node** @prevEdge, align 8
  %nxtEdge = getelementptr inbounds %edge_node, %edge_node* %loadHere, i32 0, i32 1
  %edgesmore = getelementptr inbounds %edge_node, %edge_node* %toBeHere68, i32 0, i32 1
  %"stored_edgemore'" = load %edge_node*, %edge_node** %edgesmore, align 8
  store %edge_node* %"stored_edgemore'", %edge_node** %nxtEdge, align 8
  store i1 true, i1* %ret_true53, align 1
  br label %merge66

then64:                                           ; preds = %then62
  %edgesmore71 = getelementptr inbounds %edge_node, %edge_node* %toBeHere68, i32 0, i32 1
  %"stored_edgemore'72" = load %edge_node*, %edge_node** %edgesmore71, align 8
  store %edge_node* %"stored_edgemore'72", %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  store i1 true, i1* %ret_true53, align 1
  br label %merge66

else65:                                           ; preds = %if61
  %toBeHere73 = load %edge_node*, %edge_node** @llEdges.3, align 8
  %llEdgesPtr = getelementptr inbounds %edge_node, %edge_node* %toBeHere73, i32 0, i32 1
  %toBeHerenow74 = load %edge_node*, %edge_node** %llEdgesPtr, align 8
  store %edge_node* %toBeHerenow74, %edge_node** @llEdges.3, align 8
  br label %while56

merge66:                                          ; preds = %while56, %then64, %then63
  %returnVal75 = load i1, i1* %ret_true53, align 1
  %ret_true76 = alloca i1, align 1
  store i1 false, i1* %ret_true76, align 1
  %e77 = load %edge_t*, %edge_t** @e, align 8
  %head78 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  store %edge_node* %head78, %edge_node** @llEdges.4, align 8
  br label %while79

while79:                                          ; preds = %merge66, %else88
  %putMeHere80 = load %edge_node*, %edge_node** @llEdges.4, align 8
  %curr81 = icmp ne %edge_node* %putMeHere80, null
  br i1 %curr81, label %while_body82, label %merge89

while_body82:                                     ; preds = %while79
  %putMeHere83 = load %edge_node*, %edge_node** @llEdges.4, align 8
  %nodes84 = getelementptr inbounds %edge_node, %edge_node* %putMeHere83, i32 0, i32 0
  %"stored_node'85" = load %edge_t*, %edge_t** %nodes84, align 8
  br label %if86

if86:                                             ; preds = %while_body82
  %"found?90" = icmp eq %edge_t* %"stored_node'85", %e77
  br i1 %"found?90", label %then87, label %else88

then87:                                           ; preds = %if86
  store i1 true, i1* %ret_true76, align 1
  br label %merge89

else88:                                           ; preds = %if86
  %toBeHere91 = load %edge_node*, %edge_node** @llEdges.4, align 8
  %llNodesPtr92 = getelementptr inbounds %edge_node, %edge_node* %toBeHere91, i32 0, i32 1
  %toBeHerenow93 = load %edge_node*, %edge_node** %llNodesPtr92, align 8
  store %edge_node* %toBeHerenow93, %edge_node** @llEdges.4, align 8
  br label %while79

merge89:                                          ; preds = %while79, %then87
  %returnVal94 = load i1, i1* %ret_true76, align 1
  store i1 %returnVal94, i1* @found_e, align 1
  %ret_true95 = alloca i1, align 1
  store i1 false, i1* %ret_true95, align 1
  %e296 = load %edge_t*, %edge_t** @e2, align 8
  %head97 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  store %edge_node* %head97, %edge_node** @llEdges.5, align 8
  br label %while98

while98:                                          ; preds = %merge89, %else107
  %putMeHere99 = load %edge_node*, %edge_node** @llEdges.5, align 8
  %curr100 = icmp ne %edge_node* %putMeHere99, null
  br i1 %curr100, label %while_body101, label %merge108

while_body101:                                    ; preds = %while98
  %putMeHere102 = load %edge_node*, %edge_node** @llEdges.5, align 8
  %nodes103 = getelementptr inbounds %edge_node, %edge_node* %putMeHere102, i32 0, i32 0
  %"stored_node'104" = load %edge_t*, %edge_t** %nodes103, align 8
  br label %if105

if105:                                            ; preds = %while_body101
  %"found?109" = icmp eq %edge_t* %"stored_node'104", %e296
  br i1 %"found?109", label %then106, label %else107

then106:                                          ; preds = %if105
  store i1 true, i1* %ret_true95, align 1
  br label %merge108

else107:                                          ; preds = %if105
  %toBeHere110 = load %edge_node*, %edge_node** @llEdges.5, align 8
  %llNodesPtr111 = getelementptr inbounds %edge_node, %edge_node* %toBeHere110, i32 0, i32 1
  %toBeHerenow112 = load %edge_node*, %edge_node** %llNodesPtr111, align 8
  store %edge_node* %toBeHerenow112, %edge_node** @llEdges.5, align 8
  br label %while98

merge108:                                         ; preds = %while98, %then106
  %returnVal113 = load i1, i1* %ret_true95, align 1
  store i1 %returnVal113, i1* @found_e2, align 1
  %found_e114 = load i1, i1* @found_e, align 1
  %printf115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.6, i32 0, i32 0), i1 %found_e114)
  %found_e2116 = load i1, i1* @found_e2, align 1
  %printf117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.7, i32 0, i32 0), i1 %found_e2116)
  ret i32 0
}

declare noalias i8* @malloc(i32)

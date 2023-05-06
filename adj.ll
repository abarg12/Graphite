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
  %adjacents = alloca %list_node*, align 8
  %list = load %list_node*, %list_node** %edges10, align 8
  %malloccall11 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %0 = bitcast i8* %malloccall11 to %list_node**
  %malloccall12 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %malloccall12 to i32*
  store i32 0, i32* %1, align 4
  store %list_node* %list, %list_node** %0, align 8
  %2 = icmp eq %list_node* %list, null
  br i1 %2, label %then14, label %else15

merge13:                                          ; preds = %merge18, %then14
  %3 = load i32, i32* %1, align 4
  %amount_of_edges = alloca i32, align 4
  store i32 %3, i32* %amount_of_edges, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %while19

then14:                                           ; preds = %merge
  store i32 0, i32* %1, align 4
  br label %merge13

else15:                                           ; preds = %merge
  br label %traverse_loop

traverse_loop:                                    ; preds = %while_body16, %else15
  %4 = load %list_node*, %list_node** %0, align 8
  %5 = icmp ne %list_node* %4, null
  br i1 %5, label %while_body16, label %merge18

while_body16:                                     ; preds = %traverse_loop
  %6 = load %list_node*, %list_node** %0, align 8
  %temp = getelementptr inbounds %list_node, %list_node* %6, i32 0, i32 1
  %temp17 = load %list_node*, %list_node** %temp, align 8
  %7 = load i32, i32* %1, align 4
  %add = add i32 %7, 1
  store i32 %add, i32* %1, align 4
  store %list_node* %temp17, %list_node** %0, align 8
  br label %traverse_loop

merge18:                                          ; preds = %traverse_loop
  br label %merge13

while19:                                          ; preds = %merge35, %merge13
  %i71 = load i32, i32* %i, align 4
  %amount_of_edges72 = load i32, i32* %amount_of_edges, align 4
  %tmp73 = icmp slt i32 %i71, %amount_of_edges72
  br i1 %tmp73, label %while_body20, label %merge74

while_body20:                                     ; preds = %while19
  %list21 = load %list_node*, %list_node** %edges10, align 8
  %i22 = load i32, i32* %i, align 4
  %malloccall23 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %8 = bitcast i8* %malloccall23 to %list_node**
  %malloccall24 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %9 = bitcast i8* %malloccall24 to i32*
  store %list_node* %list21, %list_node** %8, align 8
  store i32 %i22, i32* %9, align 4
  br label %traverse_loop25

traverse_loop25:                                  ; preds = %while_body26, %while_body20
  %10 = load i32, i32* %9, align 4
  %temp29 = icmp ne i32 %10, 0
  br i1 %temp29, label %while_body26, label %merge30

while_body26:                                     ; preds = %traverse_loop25
  %11 = load %list_node*, %list_node** %8, align 8
  %temp27 = getelementptr inbounds %list_node, %list_node* %11, i32 0, i32 1
  %temp28 = load %list_node*, %list_node** %temp27, align 8
  %12 = load i32, i32* %9, align 4
  %subtract = sub i32 %12, 1
  store i32 %subtract, i32* %9, align 4
  store %list_node* %temp28, %list_node** %8, align 8
  br label %traverse_loop25

merge30:                                          ; preds = %traverse_loop25
  %13 = load %list_node*, %list_node** %8, align 8
  %temp31 = getelementptr inbounds %list_node, %list_node* %13, i32 0, i32 0
  %retval = load i8*, i8** %temp31, align 8
  %li_conv = bitcast i8* %retval to %edge_t**
  %val_ptr = load %edge_t*, %edge_t** %li_conv, align 8
  %curr_edge = alloca %edge_t*, align 8
  store %edge_t* %val_ptr, %edge_t** %curr_edge, align 8
  %"lvar'" = load %edge_t*, %edge_t** %curr_edge, align 8
  %temp32 = getelementptr inbounds %edge_t, %edge_t* %"lvar'", i32 0, i32 1
  %curr_edge.dst = load %node_struct*, %node_struct** %temp32, align 8
  %srcNode = load %node_struct*, %node_struct** %temp32, align 8
  %dst_node = alloca %node_struct*, align 8
  store %node_struct* %srcNode, %node_struct** %dst_node, align 8
  %dst_node33 = load %node_struct*, %node_struct** %dst_node, align 8
  %n34 = load %node_struct*, %node_struct** %n, align 8
  %tmp = icmp ne %node_struct* %dst_node33, %n34
  br i1 %tmp, label %then36, label %else68

merge35:                                          ; preds = %else68, %merge45
  %i69 = load i32, i32* %i, align 4
  %tmp70 = add i32 %i69, 1
  store i32 %tmp70, i32* %i, align 4
  br label %while19

then36:                                           ; preds = %merge30
  %"lvar'37" = load %node_struct*, %node_struct** %dst_node, align 8
  %temp38 = getelementptr inbounds %node_struct, %node_struct* %"lvar'37", i32 0, i32 0
  %dst_node.name = load i8*, i8** %temp38, align 8
  %srcNode39 = load i8*, i8** %temp38, align 8
  %dst_name = alloca i8*, align 8
  store i8* %srcNode39, i8** %dst_name, align 8
  %dst_node40 = load %node_struct*, %node_struct** %dst_node, align 8
  %malloccall41 = tail call i8* @malloc(i32 ptrtoint (%node_struct** getelementptr (%node_struct*, %node_struct** null, i32 1) to i32))
  %arr_val = bitcast i8* %malloccall41 to %node_struct**
  store %node_struct* %dst_node40, %node_struct** %arr_val, align 8
  %i8ptr = bitcast %node_struct** %arr_val to i8*
  %malloccall42 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p = bitcast i8* %malloccall42 to %list_node*
  %valloc = getelementptr inbounds %list_node, %list_node* %node_p, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p, align 8
  store i8* %i8ptr, i8** %valloc, align 8
  %list43 = load %list_node*, %list_node** %adjacents, align 8
  %malloccall44 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %14 = bitcast i8* %malloccall44 to i32*
  store i32 -1, i32* %14, align 4
  br i1 true, label %then46, label %else47

merge45:                                          ; preds = %merge66, %then46
  br label %merge35

then46:                                           ; preds = %then36
  %15 = getelementptr inbounds %list_node, %list_node* %node_p, i32 0, i32 1
  store %list_node* %list43, %list_node** %15, align 8
  store %list_node* %node_p, %list_node** %adjacents, align 8
  br label %merge45

else47:                                           ; preds = %then36
  %16 = load i32, i32* %14, align 4
  %malloccall48 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %17 = bitcast i8* %malloccall48 to %list_node**
  %malloccall49 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %18 = bitcast i8* %malloccall49 to i32*
  store %list_node* %list43, %list_node** %17, align 8
  store i32 %16, i32* %18, align 4
  br label %traverse_loop50

traverse_loop50:                                  ; preds = %while_body51, %else47
  %19 = load i32, i32* %18, align 4
  %temp55 = icmp ne i32 %19, 0
  br i1 %temp55, label %while_body51, label %merge56

while_body51:                                     ; preds = %traverse_loop50
  %20 = load %list_node*, %list_node** %17, align 8
  %temp52 = getelementptr inbounds %list_node, %list_node* %20, i32 0, i32 1
  %temp53 = load %list_node*, %list_node** %temp52, align 8
  %21 = load i32, i32* %18, align 4
  %subtract54 = sub i32 %21, 1
  store i32 %subtract54, i32* %18, align 4
  store %list_node* %temp53, %list_node** %17, align 8
  br label %traverse_loop50

merge56:                                          ; preds = %traverse_loop50
  %22 = load %list_node*, %list_node** %17, align 8
  %temp57 = getelementptr inbounds %list_node, %list_node* %22, i32 0, i32 1
  store %list_node* %node_p, %list_node** %temp57, align 8
  %malloccall58 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %23 = bitcast i8* %malloccall58 to %list_node**
  %malloccall59 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %24 = bitcast i8* %malloccall59 to i32*
  store %list_node* %list43, %list_node** %23, align 8
  store i32 0, i32* %24, align 4
  br label %traverse_loop60

traverse_loop60:                                  ; preds = %while_body61, %merge56
  %25 = load i32, i32* %24, align 4
  %temp65 = icmp ne i32 %25, 0
  br i1 %temp65, label %while_body61, label %merge66

while_body61:                                     ; preds = %traverse_loop60
  %26 = load %list_node*, %list_node** %23, align 8
  %temp62 = getelementptr inbounds %list_node, %list_node* %26, i32 0, i32 1
  %temp63 = load %list_node*, %list_node** %temp62, align 8
  %27 = load i32, i32* %24, align 4
  %subtract64 = sub i32 %27, 1
  store i32 %subtract64, i32* %24, align 4
  store %list_node* %temp63, %list_node** %23, align 8
  br label %traverse_loop60

merge66:                                          ; preds = %traverse_loop60
  %28 = load %list_node*, %list_node** %23, align 8
  %temp67 = getelementptr inbounds %list_node, %list_node* %node_p, i32 0, i32 1
  store %list_node* %28, %list_node** %temp67, align 8
  br label %merge45

else68:                                           ; preds = %merge30
  br label %merge35

merge74:                                          ; preds = %while19
  %adjacents75 = load %list_node*, %list_node** %adjacents, align 8
  ret %list_node* %adjacents75
}

declare noalias i8* @malloc(i32)

; ModuleID = 'Graphite'
source_filename = "Graphite"

%graph_t = type { %node_node*, %edge_node* }
%node_node = type { %node_struct*, %node_node* }
%node_struct = type { i8*, i1, i8* }
%edge_node = type { %edge_t*, %edge_node* }
%edge_t = type { %node_struct*, %node_struct*, i32 }
%list_node = type { i8*, %list_node* }

@g = global %graph_t zeroinitializer
@n = global %node_struct* null
@m = global %node_struct* null
@r = global %node_struct* null
@e1 = global %edge_t* null
@e2 = global %edge_t* null
@edgesList = global %list_node* null
@llEdges = global %edge_node* null
@edges_of_n = global %list_node* null
@list_length = global i32 0
@0 = private unnamed_addr constant [27 x i8] c"lenght of list of edges: \0A\00", align 1
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@total_weight = global i32 0
@fmt.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

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
  %malloccall13 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node14 = bitcast i8* %malloccall13 to %node_struct*
  %malloccall15 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %data16 = bitcast i8* %malloccall15 to i32*
  %malloccall17 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name18 = bitcast i8* %malloccall17 to i8**
  %data_ptr19 = bitcast i32* %data16 to i8*
  %name_ptr20 = bitcast i8** %name18 to i8*
  %"name'21" = getelementptr inbounds %node_struct, %node_struct* %node14, i32 0, i32 0
  %"data'22" = getelementptr inbounds %node_struct, %node_struct* %node14, i32 0, i32 2
  store i8* %name_ptr20, i8** %"name'21", align 8
  store i8* %data_ptr19, i8** %"data'22", align 8
  store %node_struct* %node14, %node_struct** @r, align 8
  %n = load %node_struct*, %node_struct** @n, align 8
  %m = load %node_struct*, %node_struct** @m, align 8
  %malloccall23 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct = bitcast i8* %malloccall23 to %edge_t*
  %"name'24" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 0
  %"name'25" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 1
  %"name'26" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 2
  store %node_struct* %n, %node_struct** %"name'24", align 8
  store %node_struct* %m, %node_struct** %"name'25", align 8
  store i32 0, i32* %"name'26", align 4
  %malloccall27 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge = bitcast i8* %malloccall27 to %edge_t*
  %"name'28" = getelementptr inbounds %edge_t, %edge_t* %edge, i32 0, i32 0
  %"data'29" = getelementptr inbounds %edge_t, %edge_t* %edge, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'28", align 8
  store %node_struct* null, %node_struct** %"data'29", align 8
  store %edge_t* %edge, %edge_t** @e1, align 8
  store %edge_t* %myEdgeStruct, %edge_t** @e1, align 8
  %n30 = load %node_struct*, %node_struct** @n, align 8
  %r = load %node_struct*, %node_struct** @r, align 8
  %malloccall31 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct32 = bitcast i8* %malloccall31 to %edge_t*
  %"name'33" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct32, i32 0, i32 0
  %"name'34" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct32, i32 0, i32 1
  %"name'35" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct32, i32 0, i32 2
  store %node_struct* %n30, %node_struct** %"name'33", align 8
  store %node_struct* %r, %node_struct** %"name'34", align 8
  store i32 0, i32* %"name'35", align 4
  %malloccall36 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge37 = bitcast i8* %malloccall36 to %edge_t*
  %"name'38" = getelementptr inbounds %edge_t, %edge_t* %edge37, i32 0, i32 0
  %"data'39" = getelementptr inbounds %edge_t, %edge_t* %edge37, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'38", align 8
  store %node_struct* null, %node_struct** %"data'39", align 8
  store %edge_t* %edge37, %edge_t** @e2, align 8
  store %edge_t* %myEdgeStruct32, %edge_t** @e2, align 8
  %"lvar'" = load %edge_t*, %edge_t** @e1, align 8
  %temp = getelementptr inbounds %edge_t, %edge_t* %"lvar'", i32 0, i32 2
  store i32 5, i32* %temp, align 4
  %"lvar'40" = load %edge_t*, %edge_t** @e2, align 8
  %temp41 = getelementptr inbounds %edge_t, %edge_t* %"lvar'40", i32 0, i32 2
  store i32 10, i32* %temp41, align 4
  %n42 = load %node_struct*, %node_struct** @n, align 8
  %nodes_hd = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall43 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node = bitcast i8* %malloccall43 to %node_node*
  %"lst_rst'" = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 1
  %node_ptr = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 0
  store %node_node* %nodes_hd, %node_node** %"lst_rst'", align 8
  store %node_struct* %n42, %node_struct** %node_ptr, align 8
  store %node_node* %new_node, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %m44 = load %node_struct*, %node_struct** @m, align 8
  %nodes_hd45 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall46 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node47 = bitcast i8* %malloccall46 to %node_node*
  %"lst_rst'48" = getelementptr inbounds %node_node, %node_node* %new_node47, i32 0, i32 1
  %node_ptr49 = getelementptr inbounds %node_node, %node_node* %new_node47, i32 0, i32 0
  store %node_node* %nodes_hd45, %node_node** %"lst_rst'48", align 8
  store %node_struct* %m44, %node_struct** %node_ptr49, align 8
  store %node_node* %new_node47, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %e1 = load %edge_t*, %edge_t** @e1, align 8
  %edges_hd = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %malloccall50 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge = bitcast i8* %malloccall50 to %edge_node*
  %"lst_rst'51" = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 1
  %edge_ptr = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 0
  store %edge_node* %edges_hd, %edge_node** %"lst_rst'51", align 8
  store %edge_t* %e1, %edge_t** %edge_ptr, align 8
  store %edge_node* %new_edge, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %e2 = load %edge_t*, %edge_t** @e2, align 8
  %edges_hd52 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %malloccall53 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge54 = bitcast i8* %malloccall53 to %edge_node*
  %"lst_rst'55" = getelementptr inbounds %edge_node, %edge_node* %new_edge54, i32 0, i32 1
  %edge_ptr56 = getelementptr inbounds %edge_node, %edge_node* %new_edge54, i32 0, i32 0
  store %edge_node* %edges_hd52, %edge_node** %"lst_rst'55", align 8
  store %edge_t* %e2, %edge_t** %edge_ptr56, align 8
  store %edge_node* %new_edge54, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %n57 = load %node_struct*, %node_struct** @n, align 8
  %head = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  store %edge_node* %head, %edge_node** @llEdges, align 8
  br label %while

while:                                            ; preds = %entry, %else
  %putMeHere = load %edge_node*, %edge_node** @llEdges, align 8
  %curr = icmp ne %edge_node* %putMeHere, null
  br i1 %curr, label %while_body, label %merge

while_body:                                       ; preds = %while
  %putMeHere58 = load %edge_node*, %edge_node** @llEdges, align 8
  %nodes = getelementptr inbounds %edge_node, %edge_node* %putMeHere58, i32 0, i32 0
  %"stored_nodeA'" = load %edge_t*, %edge_t** %nodes, align 8
  br label %if

if:                                               ; preds = %while_body
  %nodes59 = getelementptr inbounds %edge_t, %edge_t* %"stored_nodeA'", i32 0, i32 0
  %nodes60 = getelementptr inbounds %edge_t, %edge_t* %"stored_nodeA'", i32 0, i32 1
  %"currEdgeSrc'" = load %node_struct*, %node_struct** %nodes59, align 8
  %"currEdgeDst'" = load %node_struct*, %node_struct** %nodes60, align 8
  %"foundSrc?" = icmp eq %node_struct* %"currEdgeSrc'", %n57
  %"foundDst?" = icmp eq %node_struct* %"currEdgeDst'", %n57
  %if_found = or i1 %"foundSrc?", %"foundDst?"
  br i1 %if_found, label %then, label %else

then:                                             ; preds = %if
  %malloccall61 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node62 = bitcast i8* %malloccall61 to %list_node*
  %nodes63 = getelementptr inbounds %list_node, %list_node* %node62, i32 0, i32 0
  %nodes64 = getelementptr inbounds %list_node, %list_node* %node62, i32 0, i32 1
  %malloccall65 = tail call i8* @malloc(i32 ptrtoint (%edge_t** getelementptr (%edge_t*, %edge_t** null, i32 1) to i32))
  %please_work = bitcast i8* %malloccall65 to %edge_t**
  store %edge_t* %"stored_nodeA'", %edge_t** %please_work, align 8
  %currEdgeVoidPtr = bitcast %edge_t** %please_work to i8*
  store i8* %currEdgeVoidPtr, i8** %nodes63, align 8
  %nextEdges = load %list_node*, %list_node** @edgesList, align 8
  store %list_node* %nextEdges, %list_node** %nodes64, align 8
  store %list_node* %node62, %list_node** @edgesList, align 8
  br label %else

else:                                             ; preds = %then, %if
  %toBeHere = load %edge_node*, %edge_node** @llEdges, align 8
  %llNodesPtr = getelementptr inbounds %edge_node, %edge_node* %toBeHere, i32 0, i32 1
  %toBeHerenow = load %edge_node*, %edge_node** %llNodesPtr, align 8
  store %edge_node* %toBeHerenow, %edge_node** @llEdges, align 8
  br label %while

merge:                                            ; preds = %while
  %return = load %list_node*, %list_node** @edgesList, align 8
  store %list_node* %return, %list_node** @edges_of_n, align 8
  %list = load %list_node*, %list_node** @edges_of_n, align 8
  %malloccall66 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %0 = bitcast i8* %malloccall66 to %list_node**
  %malloccall67 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %malloccall67 to i32*
  store %list_node* %list, %list_node** %0, align 8
  store i32 0, i32* %1, align 4
  br label %traverse_loop

traverse_loop:                                    ; preds = %while_body68, %merge
  %2 = load %list_node*, %list_node** %0, align 8
  %3 = icmp ne %list_node* %2, null
  br i1 %3, label %while_body68, label %merge71

while_body68:                                     ; preds = %traverse_loop
  %4 = load %list_node*, %list_node** %0, align 8
  %temp69 = getelementptr inbounds %list_node, %list_node* %4, i32 0, i32 1
  %temp70 = load %list_node*, %list_node** %temp69, align 8
  %5 = load i32, i32* %1, align 4
  %add = add i32 %5, 1
  store i32 %add, i32* %1, align 4
  store %list_node* %temp70, %list_node** %0, align 8
  br label %traverse_loop

merge71:                                          ; preds = %traverse_loop
  %6 = load i32, i32* %1, align 4
  store i32 %6, i32* @list_length, align 4
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0))
  %list_length = load i32, i32* @list_length, align 4
  %printf72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %list_length)
  %edges_of_n = load %list_node*, %list_node** @edges_of_n, align 8
  %edge_weight_sum_result = call i32 @edge_weight_sum(%list_node* %edges_of_n)
  store i32 %edge_weight_sum_result, i32* @total_weight, align 4
  %total_weight = load i32, i32* @total_weight, align 4
  %printf73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.1, i32 0, i32 0), i32 %total_weight)
  ret i32 0
}

define i32 @edge_weight_sum(%list_node* %edges1) {
entry:
  %edges = alloca %list_node*, align 8
  store %list_node* %edges1, %list_node** %edges, align 8
  %list = load %list_node*, %list_node** %edges, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %0 = bitcast i8* %malloccall to %list_node**
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %malloccall2 to i32*
  store %list_node* %list, %list_node** %0, align 8
  store i32 0, i32* %1, align 4
  br label %traverse_loop

traverse_loop:                                    ; preds = %while_body, %entry
  %2 = load i32, i32* %1, align 4
  %temp4 = icmp ne i32 %2, 0
  br i1 %temp4, label %while_body, label %merge

while_body:                                       ; preds = %traverse_loop
  %3 = load %list_node*, %list_node** %0, align 8
  %temp = getelementptr inbounds %list_node, %list_node* %3, i32 0, i32 1
  %temp3 = load %list_node*, %list_node** %temp, align 8
  %4 = load i32, i32* %1, align 4
  %subtract = sub i32 %4, 1
  store i32 %subtract, i32* %1, align 4
  store %list_node* %temp3, %list_node** %0, align 8
  br label %traverse_loop

merge:                                            ; preds = %traverse_loop
  %5 = load %list_node*, %list_node** %0, align 8
  %temp5 = getelementptr inbounds %list_node, %list_node* %5, i32 0, i32 0
  %retval = load i8*, i8** %temp5, align 8
  %li_conv = bitcast i8* %retval to %edge_t**
  %val_ptr = load %edge_t*, %edge_t** %li_conv, align 8
  %get1 = alloca %edge_t*, align 8
  store %edge_t* %val_ptr, %edge_t** %get1, align 8
  %list6 = load %list_node*, %list_node** %edges, align 8
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %6 = bitcast i8* %malloccall7 to %list_node**
  %malloccall8 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %7 = bitcast i8* %malloccall8 to i32*
  store %list_node* %list6, %list_node** %6, align 8
  store i32 1, i32* %7, align 4
  br label %traverse_loop9

traverse_loop9:                                   ; preds = %while_body10, %merge
  %8 = load i32, i32* %7, align 4
  %temp14 = icmp ne i32 %8, 0
  br i1 %temp14, label %while_body10, label %merge15

while_body10:                                     ; preds = %traverse_loop9
  %9 = load %list_node*, %list_node** %6, align 8
  %temp11 = getelementptr inbounds %list_node, %list_node* %9, i32 0, i32 1
  %temp12 = load %list_node*, %list_node** %temp11, align 8
  %10 = load i32, i32* %7, align 4
  %subtract13 = sub i32 %10, 1
  store i32 %subtract13, i32* %7, align 4
  store %list_node* %temp12, %list_node** %6, align 8
  br label %traverse_loop9

merge15:                                          ; preds = %traverse_loop9
  %11 = load %list_node*, %list_node** %6, align 8
  %temp16 = getelementptr inbounds %list_node, %list_node* %11, i32 0, i32 0
  %retval17 = load i8*, i8** %temp16, align 8
  %li_conv18 = bitcast i8* %retval17 to %edge_t**
  %val_ptr19 = load %edge_t*, %edge_t** %li_conv18, align 8
  %get2 = alloca %edge_t*, align 8
  store %edge_t* %val_ptr19, %edge_t** %get2, align 8
  %"lvar'" = load %edge_t*, %edge_t** %get1, align 8
  %temp20 = getelementptr inbounds %edge_t, %edge_t* %"lvar'", i32 0, i32 2
  %get1.weight = load i32, i32* %temp20, align 4
  %get1.weight21 = load i32, i32* %temp20, align 4
  %w1 = alloca i32, align 4
  store i32 %get1.weight21, i32* %w1, align 4
  %"lvar'22" = load %edge_t*, %edge_t** %get2, align 8
  %temp23 = getelementptr inbounds %edge_t, %edge_t* %"lvar'22", i32 0, i32 2
  %get2.weight = load i32, i32* %temp23, align 4
  %get2.weight24 = load i32, i32* %temp23, align 4
  %w2 = alloca i32, align 4
  store i32 %get2.weight24, i32* %w2, align 4
  %w125 = load i32, i32* %w1, align 4
  %w226 = load i32, i32* %w2, align 4
  %tmp = add i32 %w125, %w226
  %total_weight = alloca i32, align 4
  store i32 %tmp, i32* %total_weight, align 4
  %total_weight27 = load i32, i32* %total_weight, align 4
  ret i32 %total_weight27
}

declare noalias i8* @malloc(i32)

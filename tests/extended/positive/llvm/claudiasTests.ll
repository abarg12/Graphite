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
@e3 = global %edge_t* null
@int_l = global %list_node* null
@llNodes = global %node_node* null
@llNodes.1 = global %node_node* null
@llNodes.2 = global %node_node* null
@llNodes.3 = global %node_node* null
@llNodes.4 = global %node_node* null
@llNodes.5 = global %node_node* null
@edgesList = global %list_node* null
@llEdges = global %edge_node* null
@edges_of_n = global %list_node* null
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.6 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@list_length = global i32 0
@0 = private unnamed_addr constant [27 x i8] c"lenght of list of edges: \0A\00", align 1
@fmt.7 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@total_weight = global i32 0
@1 = private unnamed_addr constant [34 x i8] c"total weight of edges of n in g \0A\00", align 1
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
  %e1 = load %edge_t*, %edge_t** @e1, align 8
  %malloccall40 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge41 = bitcast i8* %malloccall40 to %edge_t*
  %"name'42" = getelementptr inbounds %edge_t, %edge_t* %edge41, i32 0, i32 0
  %"data'43" = getelementptr inbounds %edge_t, %edge_t* %edge41, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'42", align 8
  store %node_struct* null, %node_struct** %"data'43", align 8
  store %edge_t* %edge41, %edge_t** @e3, align 8
  store %edge_t* %e1, %edge_t** @e3, align 8
  %"lvar'" = load %edge_t*, %edge_t** @e1, align 8
  %temp = getelementptr inbounds %edge_t, %edge_t* %"lvar'", i32 0, i32 2
  store i32 5, i32* %temp, align 4
  %"lvar'44" = load %edge_t*, %edge_t** @e2, align 8
  %temp45 = getelementptr inbounds %edge_t, %edge_t* %"lvar'44", i32 0, i32 2
  store i32 10, i32* %temp45, align 4
  %"lvar'46" = load %edge_t*, %edge_t** @e3, align 8
  %temp47 = getelementptr inbounds %edge_t, %edge_t* %"lvar'46", i32 0, i32 2
  store i32 2, i32* %temp47, align 4
  %malloccall48 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %new_list = bitcast i8* %malloccall48 to %list_node**
  %malloccall49 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val = bitcast i8* %malloccall49 to i32*
  store i32 1, i32* %arr_val, align 4
  %i8ptr = bitcast i32* %arr_val to i8*
  %malloccall50 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p = bitcast i8* %malloccall50 to %list_node*
  %valloc = getelementptr inbounds %list_node, %list_node* %node_p, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p, align 8
  store i8* %i8ptr, i8** %valloc, align 8
  store %list_node* %node_p, %list_node** %new_list, align 8
  %malloccall51 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val52 = bitcast i8* %malloccall51 to i32*
  store i32 2, i32* %arr_val52, align 4
  %i8ptr53 = bitcast i32* %arr_val52 to i8*
  %malloccall54 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p55 = bitcast i8* %malloccall54 to %list_node*
  %valloc56 = getelementptr inbounds %list_node, %list_node* %node_p55, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p55, align 8
  store i8* %i8ptr53, i8** %valloc56, align 8
  %temp57 = getelementptr inbounds %list_node, %list_node* %node_p, i32 0, i32 1
  store %list_node* %node_p55, %list_node** %temp57, align 8
  %malloccall58 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val59 = bitcast i8* %malloccall58 to i32*
  store i32 3, i32* %arr_val59, align 4
  %i8ptr60 = bitcast i32* %arr_val59 to i8*
  %malloccall61 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p62 = bitcast i8* %malloccall61 to %list_node*
  %valloc63 = getelementptr inbounds %list_node, %list_node* %node_p62, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p62, align 8
  store i8* %i8ptr60, i8** %valloc63, align 8
  %temp64 = getelementptr inbounds %list_node, %list_node* %node_p55, i32 0, i32 1
  store %list_node* %node_p62, %list_node** %temp64, align 8
  %temp65 = load %list_node*, %list_node** %new_list, align 8
  store %list_node* %temp65, %list_node** @int_l, align 8
  %e166 = load %edge_t*, %edge_t** @e1, align 8
  %malloccall67 = tail call i8* @malloc(i32 ptrtoint (%edge_t** getelementptr (%edge_t*, %edge_t** null, i32 1) to i32))
  %arr_val68 = bitcast i8* %malloccall67 to %edge_t**
  store %edge_t* %e166, %edge_t** %arr_val68, align 8
  %i8ptr69 = bitcast %edge_t** %arr_val68 to i8*
  %list = load %list_node*, %list_node** @int_l, align 8
  %malloccall70 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %0 = bitcast i8* %malloccall70 to %list_node**
  %malloccall71 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %malloccall71 to i32*
  store %list_node* %list, %list_node** %0, align 8
  store i32 0, i32* %1, align 4
  br label %traverse_loop

traverse_loop:                                    ; preds = %while_body, %entry
  %2 = load i32, i32* %1, align 4
  %temp74 = icmp ne i32 %2, 0
  br i1 %temp74, label %while_body, label %merge

while_body:                                       ; preds = %traverse_loop
  %3 = load %list_node*, %list_node** %0, align 8
  %temp72 = getelementptr inbounds %list_node, %list_node* %3, i32 0, i32 1
  %temp73 = load %list_node*, %list_node** %temp72, align 8
  %4 = load i32, i32* %1, align 4
  %subtract = sub i32 %4, 1
  store i32 %subtract, i32* %1, align 4
  store %list_node* %temp73, %list_node** %0, align 8
  br label %traverse_loop

merge:                                            ; preds = %traverse_loop
  %5 = load %list_node*, %list_node** %0, align 8
  %temp75 = getelementptr inbounds %list_node, %list_node* %5, i32 0, i32 0
  store i8* %i8ptr69, i8** %temp75, align 8
  %e3 = load %edge_t*, %edge_t** @e3, align 8
  %malloccall76 = tail call i8* @malloc(i32 ptrtoint (%edge_t** getelementptr (%edge_t*, %edge_t** null, i32 1) to i32))
  %arr_val77 = bitcast i8* %malloccall76 to %edge_t**
  store %edge_t* %e3, %edge_t** %arr_val77, align 8
  %i8ptr78 = bitcast %edge_t** %arr_val77 to i8*
  %list79 = load %list_node*, %list_node** @int_l, align 8
  %malloccall80 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %6 = bitcast i8* %malloccall80 to %list_node**
  %malloccall81 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %7 = bitcast i8* %malloccall81 to i32*
  store %list_node* %list79, %list_node** %6, align 8
  store i32 2, i32* %7, align 4
  br label %traverse_loop82

traverse_loop82:                                  ; preds = %while_body83, %merge
  %8 = load i32, i32* %7, align 4
  %temp87 = icmp ne i32 %8, 0
  br i1 %temp87, label %while_body83, label %merge88

while_body83:                                     ; preds = %traverse_loop82
  %9 = load %list_node*, %list_node** %6, align 8
  %temp84 = getelementptr inbounds %list_node, %list_node* %9, i32 0, i32 1
  %temp85 = load %list_node*, %list_node** %temp84, align 8
  %10 = load i32, i32* %7, align 4
  %subtract86 = sub i32 %10, 1
  store i32 %subtract86, i32* %7, align 4
  store %list_node* %temp85, %list_node** %6, align 8
  br label %traverse_loop82

merge88:                                          ; preds = %traverse_loop82
  %11 = load %list_node*, %list_node** %6, align 8
  %temp89 = getelementptr inbounds %list_node, %list_node* %11, i32 0, i32 0
  store i8* %i8ptr78, i8** %temp89, align 8
  %n90 = load %node_struct*, %node_struct** @n, align 8
  %nodes_hd = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall91 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node = bitcast i8* %malloccall91 to %node_node*
  %"lst_rst'" = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 1
  %node_ptr = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 0
  store %node_node* %nodes_hd, %node_node** %"lst_rst'", align 8
  store %node_struct* %n90, %node_struct** %node_ptr, align 8
  store %node_node* %new_node, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %m92 = load %node_struct*, %node_struct** @m, align 8
  %nodes_hd93 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall94 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node95 = bitcast i8* %malloccall94 to %node_node*
  %"lst_rst'96" = getelementptr inbounds %node_node, %node_node* %new_node95, i32 0, i32 1
  %node_ptr97 = getelementptr inbounds %node_node, %node_node* %new_node95, i32 0, i32 0
  store %node_node* %nodes_hd93, %node_node** %"lst_rst'96", align 8
  store %node_struct* %m92, %node_struct** %node_ptr97, align 8
  store %node_node* %new_node95, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %e198 = load %edge_t*, %edge_t** @e1, align 8
  %edges_hd = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %malloccall99 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge = bitcast i8* %malloccall99 to %edge_node*
  %"lst_rst'100" = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 1
  %edge_ptr = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 0
  store %edge_node* %edges_hd, %edge_node** %"lst_rst'100", align 8
  store %edge_t* %e198, %edge_t** %edge_ptr, align 8
  %src_ptr = getelementptr inbounds %edge_t, %edge_t* %e198, i32 0, i32 0
  %dst_ptr = getelementptr inbounds %edge_t, %edge_t* %e198, i32 0, i32 1
  %"src'" = load %node_struct*, %node_struct** %src_ptr, align 8
  %"dst'" = load %node_struct*, %node_struct** %dst_ptr, align 8
  %ret_true = alloca i1, align 1
  store i1 false, i1* %ret_true, align 1
  %head = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head, %node_node** @llNodes, align 8
  br label %while

while:                                            ; preds = %merge88, %else
  %putMeHere = load %node_node*, %node_node** @llNodes, align 8
  %curr = icmp ne %node_node* %putMeHere, null
  br i1 %curr, label %while_body101, label %merge103

while_body101:                                    ; preds = %while
  %putMeHere102 = load %node_node*, %node_node** @llNodes, align 8
  %nodes = getelementptr inbounds %node_node, %node_node* %putMeHere102, i32 0, i32 0
  %"stored_node'" = load %node_struct*, %node_struct** %nodes, align 8
  br label %if

if:                                               ; preds = %while_body101
  %"found?" = icmp eq %node_struct* %"stored_node'", %"src'"
  br i1 %"found?", label %then, label %else

then:                                             ; preds = %if
  store i1 true, i1* %ret_true, align 1
  br label %merge103

else:                                             ; preds = %if
  %toBeHere = load %node_node*, %node_node** @llNodes, align 8
  %llNodesPtr = getelementptr inbounds %node_node, %node_node* %toBeHere, i32 0, i32 1
  %toBeHerenow = load %node_node*, %node_node** %llNodesPtr, align 8
  store %node_node* %toBeHerenow, %node_node** @llNodes, align 8
  br label %while

merge103:                                         ; preds = %while, %then
  %returnVal = load i1, i1* %ret_true, align 1
  %ret_true104 = alloca i1, align 1
  store i1 false, i1* %ret_true104, align 1
  %head105 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head105, %node_node** @llNodes.1, align 8
  br label %while106

while106:                                         ; preds = %merge103, %else115
  %putMeHere107 = load %node_node*, %node_node** @llNodes.1, align 8
  %curr108 = icmp ne %node_node* %putMeHere107, null
  br i1 %curr108, label %while_body109, label %merge116

while_body109:                                    ; preds = %while106
  %putMeHere110 = load %node_node*, %node_node** @llNodes.1, align 8
  %nodes111 = getelementptr inbounds %node_node, %node_node* %putMeHere110, i32 0, i32 0
  %"stored_node'112" = load %node_struct*, %node_struct** %nodes111, align 8
  br label %if113

if113:                                            ; preds = %while_body109
  %"found?117" = icmp eq %node_struct* %"stored_node'112", %"dst'"
  br i1 %"found?117", label %then114, label %else115

then114:                                          ; preds = %if113
  store i1 true, i1* %ret_true104, align 1
  br label %merge116

else115:                                          ; preds = %if113
  %toBeHere118 = load %node_node*, %node_node** @llNodes.1, align 8
  %llNodesPtr119 = getelementptr inbounds %node_node, %node_node* %toBeHere118, i32 0, i32 1
  %toBeHerenow120 = load %node_node*, %node_node** %llNodesPtr119, align 8
  store %node_node* %toBeHerenow120, %node_node** @llNodes.1, align 8
  br label %while106

merge116:                                         ; preds = %while106, %then114
  %returnVal121 = load i1, i1* %ret_true104, align 1
  br label %if122

if122:                                            ; preds = %merge116
  br i1 %returnVal, label %merge124, label %else123

else123:                                          ; preds = %if122
  %nodes_hd125 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall126 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node127 = bitcast i8* %malloccall126 to %node_node*
  %"lst_rst'128" = getelementptr inbounds %node_node, %node_node* %new_node127, i32 0, i32 1
  %node_ptr129 = getelementptr inbounds %node_node, %node_node* %new_node127, i32 0, i32 0
  store %node_node* %nodes_hd125, %node_node** %"lst_rst'128", align 8
  store %node_struct* %"src'", %node_struct** %node_ptr129, align 8
  store %node_node* %new_node127, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  br label %merge124

merge124:                                         ; preds = %else123, %if122
  br label %if130

if130:                                            ; preds = %merge124
  br i1 %returnVal121, label %merge132, label %else131

else131:                                          ; preds = %if130
  %nodes_hd133 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall134 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node135 = bitcast i8* %malloccall134 to %node_node*
  %"lst_rst'136" = getelementptr inbounds %node_node, %node_node* %new_node135, i32 0, i32 1
  %node_ptr137 = getelementptr inbounds %node_node, %node_node* %new_node135, i32 0, i32 0
  store %node_node* %nodes_hd133, %node_node** %"lst_rst'136", align 8
  store %node_struct* %"dst'", %node_struct** %node_ptr137, align 8
  store %node_node* %new_node135, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  br label %merge132

merge132:                                         ; preds = %else131, %if130
  store %edge_node* %new_edge, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %e2 = load %edge_t*, %edge_t** @e2, align 8
  %edges_hd138 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %malloccall139 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge140 = bitcast i8* %malloccall139 to %edge_node*
  %"lst_rst'141" = getelementptr inbounds %edge_node, %edge_node* %new_edge140, i32 0, i32 1
  %edge_ptr142 = getelementptr inbounds %edge_node, %edge_node* %new_edge140, i32 0, i32 0
  store %edge_node* %edges_hd138, %edge_node** %"lst_rst'141", align 8
  store %edge_t* %e2, %edge_t** %edge_ptr142, align 8
  %src_ptr143 = getelementptr inbounds %edge_t, %edge_t* %e2, i32 0, i32 0
  %dst_ptr144 = getelementptr inbounds %edge_t, %edge_t* %e2, i32 0, i32 1
  %"src'145" = load %node_struct*, %node_struct** %src_ptr143, align 8
  %"dst'146" = load %node_struct*, %node_struct** %dst_ptr144, align 8
  %ret_true147 = alloca i1, align 1
  store i1 false, i1* %ret_true147, align 1
  %head148 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head148, %node_node** @llNodes.2, align 8
  br label %while149

while149:                                         ; preds = %merge132, %else158
  %putMeHere150 = load %node_node*, %node_node** @llNodes.2, align 8
  %curr151 = icmp ne %node_node* %putMeHere150, null
  br i1 %curr151, label %while_body152, label %merge159

while_body152:                                    ; preds = %while149
  %putMeHere153 = load %node_node*, %node_node** @llNodes.2, align 8
  %nodes154 = getelementptr inbounds %node_node, %node_node* %putMeHere153, i32 0, i32 0
  %"stored_node'155" = load %node_struct*, %node_struct** %nodes154, align 8
  br label %if156

if156:                                            ; preds = %while_body152
  %"found?160" = icmp eq %node_struct* %"stored_node'155", %"src'145"
  br i1 %"found?160", label %then157, label %else158

then157:                                          ; preds = %if156
  store i1 true, i1* %ret_true147, align 1
  br label %merge159

else158:                                          ; preds = %if156
  %toBeHere161 = load %node_node*, %node_node** @llNodes.2, align 8
  %llNodesPtr162 = getelementptr inbounds %node_node, %node_node* %toBeHere161, i32 0, i32 1
  %toBeHerenow163 = load %node_node*, %node_node** %llNodesPtr162, align 8
  store %node_node* %toBeHerenow163, %node_node** @llNodes.2, align 8
  br label %while149

merge159:                                         ; preds = %while149, %then157
  %returnVal164 = load i1, i1* %ret_true147, align 1
  %ret_true165 = alloca i1, align 1
  store i1 false, i1* %ret_true165, align 1
  %head166 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head166, %node_node** @llNodes.3, align 8
  br label %while167

while167:                                         ; preds = %merge159, %else176
  %putMeHere168 = load %node_node*, %node_node** @llNodes.3, align 8
  %curr169 = icmp ne %node_node* %putMeHere168, null
  br i1 %curr169, label %while_body170, label %merge177

while_body170:                                    ; preds = %while167
  %putMeHere171 = load %node_node*, %node_node** @llNodes.3, align 8
  %nodes172 = getelementptr inbounds %node_node, %node_node* %putMeHere171, i32 0, i32 0
  %"stored_node'173" = load %node_struct*, %node_struct** %nodes172, align 8
  br label %if174

if174:                                            ; preds = %while_body170
  %"found?178" = icmp eq %node_struct* %"stored_node'173", %"dst'146"
  br i1 %"found?178", label %then175, label %else176

then175:                                          ; preds = %if174
  store i1 true, i1* %ret_true165, align 1
  br label %merge177

else176:                                          ; preds = %if174
  %toBeHere179 = load %node_node*, %node_node** @llNodes.3, align 8
  %llNodesPtr180 = getelementptr inbounds %node_node, %node_node* %toBeHere179, i32 0, i32 1
  %toBeHerenow181 = load %node_node*, %node_node** %llNodesPtr180, align 8
  store %node_node* %toBeHerenow181, %node_node** @llNodes.3, align 8
  br label %while167

merge177:                                         ; preds = %while167, %then175
  %returnVal182 = load i1, i1* %ret_true165, align 1
  br label %if183

if183:                                            ; preds = %merge177
  br i1 %returnVal164, label %merge185, label %else184

else184:                                          ; preds = %if183
  %nodes_hd186 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall187 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node188 = bitcast i8* %malloccall187 to %node_node*
  %"lst_rst'189" = getelementptr inbounds %node_node, %node_node* %new_node188, i32 0, i32 1
  %node_ptr190 = getelementptr inbounds %node_node, %node_node* %new_node188, i32 0, i32 0
  store %node_node* %nodes_hd186, %node_node** %"lst_rst'189", align 8
  store %node_struct* %"src'145", %node_struct** %node_ptr190, align 8
  store %node_node* %new_node188, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  br label %merge185

merge185:                                         ; preds = %else184, %if183
  br label %if191

if191:                                            ; preds = %merge185
  br i1 %returnVal182, label %merge193, label %else192

else192:                                          ; preds = %if191
  %nodes_hd194 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall195 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node196 = bitcast i8* %malloccall195 to %node_node*
  %"lst_rst'197" = getelementptr inbounds %node_node, %node_node* %new_node196, i32 0, i32 1
  %node_ptr198 = getelementptr inbounds %node_node, %node_node* %new_node196, i32 0, i32 0
  store %node_node* %nodes_hd194, %node_node** %"lst_rst'197", align 8
  store %node_struct* %"dst'146", %node_struct** %node_ptr198, align 8
  store %node_node* %new_node196, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  br label %merge193

merge193:                                         ; preds = %else192, %if191
  store %edge_node* %new_edge140, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %e3199 = load %edge_t*, %edge_t** @e3, align 8
  %edges_hd200 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %malloccall201 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge202 = bitcast i8* %malloccall201 to %edge_node*
  %"lst_rst'203" = getelementptr inbounds %edge_node, %edge_node* %new_edge202, i32 0, i32 1
  %edge_ptr204 = getelementptr inbounds %edge_node, %edge_node* %new_edge202, i32 0, i32 0
  store %edge_node* %edges_hd200, %edge_node** %"lst_rst'203", align 8
  store %edge_t* %e3199, %edge_t** %edge_ptr204, align 8
  %src_ptr205 = getelementptr inbounds %edge_t, %edge_t* %e3199, i32 0, i32 0
  %dst_ptr206 = getelementptr inbounds %edge_t, %edge_t* %e3199, i32 0, i32 1
  %"src'207" = load %node_struct*, %node_struct** %src_ptr205, align 8
  %"dst'208" = load %node_struct*, %node_struct** %dst_ptr206, align 8
  %ret_true209 = alloca i1, align 1
  store i1 false, i1* %ret_true209, align 1
  %head210 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head210, %node_node** @llNodes.4, align 8
  br label %while211

while211:                                         ; preds = %merge193, %else220
  %putMeHere212 = load %node_node*, %node_node** @llNodes.4, align 8
  %curr213 = icmp ne %node_node* %putMeHere212, null
  br i1 %curr213, label %while_body214, label %merge221

while_body214:                                    ; preds = %while211
  %putMeHere215 = load %node_node*, %node_node** @llNodes.4, align 8
  %nodes216 = getelementptr inbounds %node_node, %node_node* %putMeHere215, i32 0, i32 0
  %"stored_node'217" = load %node_struct*, %node_struct** %nodes216, align 8
  br label %if218

if218:                                            ; preds = %while_body214
  %"found?222" = icmp eq %node_struct* %"stored_node'217", %"src'207"
  br i1 %"found?222", label %then219, label %else220

then219:                                          ; preds = %if218
  store i1 true, i1* %ret_true209, align 1
  br label %merge221

else220:                                          ; preds = %if218
  %toBeHere223 = load %node_node*, %node_node** @llNodes.4, align 8
  %llNodesPtr224 = getelementptr inbounds %node_node, %node_node* %toBeHere223, i32 0, i32 1
  %toBeHerenow225 = load %node_node*, %node_node** %llNodesPtr224, align 8
  store %node_node* %toBeHerenow225, %node_node** @llNodes.4, align 8
  br label %while211

merge221:                                         ; preds = %while211, %then219
  %returnVal226 = load i1, i1* %ret_true209, align 1
  %ret_true227 = alloca i1, align 1
  store i1 false, i1* %ret_true227, align 1
  %head228 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head228, %node_node** @llNodes.5, align 8
  br label %while229

while229:                                         ; preds = %merge221, %else238
  %putMeHere230 = load %node_node*, %node_node** @llNodes.5, align 8
  %curr231 = icmp ne %node_node* %putMeHere230, null
  br i1 %curr231, label %while_body232, label %merge239

while_body232:                                    ; preds = %while229
  %putMeHere233 = load %node_node*, %node_node** @llNodes.5, align 8
  %nodes234 = getelementptr inbounds %node_node, %node_node* %putMeHere233, i32 0, i32 0
  %"stored_node'235" = load %node_struct*, %node_struct** %nodes234, align 8
  br label %if236

if236:                                            ; preds = %while_body232
  %"found?240" = icmp eq %node_struct* %"stored_node'235", %"dst'208"
  br i1 %"found?240", label %then237, label %else238

then237:                                          ; preds = %if236
  store i1 true, i1* %ret_true227, align 1
  br label %merge239

else238:                                          ; preds = %if236
  %toBeHere241 = load %node_node*, %node_node** @llNodes.5, align 8
  %llNodesPtr242 = getelementptr inbounds %node_node, %node_node* %toBeHere241, i32 0, i32 1
  %toBeHerenow243 = load %node_node*, %node_node** %llNodesPtr242, align 8
  store %node_node* %toBeHerenow243, %node_node** @llNodes.5, align 8
  br label %while229

merge239:                                         ; preds = %while229, %then237
  %returnVal244 = load i1, i1* %ret_true227, align 1
  br label %if245

if245:                                            ; preds = %merge239
  br i1 %returnVal226, label %merge247, label %else246

else246:                                          ; preds = %if245
  %nodes_hd248 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall249 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node250 = bitcast i8* %malloccall249 to %node_node*
  %"lst_rst'251" = getelementptr inbounds %node_node, %node_node* %new_node250, i32 0, i32 1
  %node_ptr252 = getelementptr inbounds %node_node, %node_node* %new_node250, i32 0, i32 0
  store %node_node* %nodes_hd248, %node_node** %"lst_rst'251", align 8
  store %node_struct* %"src'207", %node_struct** %node_ptr252, align 8
  store %node_node* %new_node250, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  br label %merge247

merge247:                                         ; preds = %else246, %if245
  br label %if253

if253:                                            ; preds = %merge247
  br i1 %returnVal244, label %merge255, label %else254

else254:                                          ; preds = %if253
  %nodes_hd256 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall257 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node258 = bitcast i8* %malloccall257 to %node_node*
  %"lst_rst'259" = getelementptr inbounds %node_node, %node_node* %new_node258, i32 0, i32 1
  %node_ptr260 = getelementptr inbounds %node_node, %node_node* %new_node258, i32 0, i32 0
  store %node_node* %nodes_hd256, %node_node** %"lst_rst'259", align 8
  store %node_struct* %"dst'208", %node_struct** %node_ptr260, align 8
  store %node_node* %new_node258, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  br label %merge255

merge255:                                         ; preds = %else254, %if253
  store %edge_node* %new_edge202, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %n261 = load %node_struct*, %node_struct** @n, align 8
  %head262 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  store %edge_node* %head262, %edge_node** @llEdges, align 8
  br label %while263

while263:                                         ; preds = %merge255, %else271
  %putMeHere264 = load %edge_node*, %edge_node** @llEdges, align 8
  %curr265 = icmp ne %edge_node* %putMeHere264, null
  br i1 %curr265, label %while_body266, label %merge272

while_body266:                                    ; preds = %while263
  %putMeHere267 = load %edge_node*, %edge_node** @llEdges, align 8
  %nodes268 = getelementptr inbounds %edge_node, %edge_node* %putMeHere267, i32 0, i32 0
  %"stored_nodeA'" = load %edge_t*, %edge_t** %nodes268, align 8
  br label %if269

if269:                                            ; preds = %while_body266
  %nodes273 = getelementptr inbounds %edge_t, %edge_t* %"stored_nodeA'", i32 0, i32 0
  %nodes274 = getelementptr inbounds %edge_t, %edge_t* %"stored_nodeA'", i32 0, i32 1
  %"currEdgeSrc'" = load %node_struct*, %node_struct** %nodes273, align 8
  %"currEdgeDst'" = load %node_struct*, %node_struct** %nodes274, align 8
  %"foundSrc?" = icmp eq %node_struct* %"currEdgeSrc'", %n261
  %"foundDst?" = icmp eq %node_struct* %"currEdgeDst'", %n261
  %if_found = or i1 %"foundSrc?", %"foundDst?"
  br i1 %if_found, label %then270, label %else271

then270:                                          ; preds = %if269
  %malloccall275 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node276 = bitcast i8* %malloccall275 to %list_node*
  %nodes277 = getelementptr inbounds %list_node, %list_node* %node276, i32 0, i32 0
  %nodes278 = getelementptr inbounds %list_node, %list_node* %node276, i32 0, i32 1
  %malloccall279 = tail call i8* @malloc(i32 ptrtoint (%edge_t** getelementptr (%edge_t*, %edge_t** null, i32 1) to i32))
  %please_work = bitcast i8* %malloccall279 to %edge_t**
  store %edge_t* %"stored_nodeA'", %edge_t** %please_work, align 8
  %currEdgeVoidPtr = bitcast %edge_t** %please_work to i8*
  store i8* %currEdgeVoidPtr, i8** %nodes277, align 8
  %nextEdges = load %list_node*, %list_node** @edgesList, align 8
  store %list_node* %nextEdges, %list_node** %nodes278, align 8
  store %list_node* %node276, %list_node** @edgesList, align 8
  br label %else271

else271:                                          ; preds = %then270, %if269
  %toBeHere280 = load %edge_node*, %edge_node** @llEdges, align 8
  %llNodesPtr281 = getelementptr inbounds %edge_node, %edge_node* %toBeHere280, i32 0, i32 1
  %toBeHerenow282 = load %edge_node*, %edge_node** %llNodesPtr281, align 8
  store %edge_node* %toBeHerenow282, %edge_node** @llEdges, align 8
  br label %while263

merge272:                                         ; preds = %while263
  %return = load %list_node*, %list_node** @edgesList, align 8
  store %list_node* %return, %list_node** @edges_of_n, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 69)
  %list283 = load %list_node*, %list_node** @edges_of_n, align 8
  %malloccall284 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %12 = bitcast i8* %malloccall284 to %list_node**
  %malloccall285 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %13 = bitcast i8* %malloccall285 to i32*
  store i32 0, i32* %13, align 4
  store %list_node* %list283, %list_node** %12, align 8
  %14 = icmp eq %list_node* %list283, null
  br i1 %14, label %then287, label %else288

merge286:                                         ; preds = %merge294, %then287
  %15 = load i32, i32* %13, align 4
  store i32 %15, i32* @list_length, align 4
  %printf295 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0))
  %list_length = load i32, i32* @list_length, align 4
  %printf296 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.7, i32 0, i32 0), i32 %list_length)
  %int_l = load %list_node*, %list_node** @int_l, align 8
  %edge_weight_sum_result = call i32 @edge_weight_sum(%list_node* %int_l)
  store i32 %edge_weight_sum_result, i32* @total_weight, align 4
  %printf297 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @1, i32 0, i32 0))
  %total_weight = load i32, i32* @total_weight, align 4
  %printf298 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.8, i32 0, i32 0), i32 %total_weight)
  ret i32 0

then287:                                          ; preds = %merge272
  store i32 0, i32* %13, align 4
  br label %merge286

else288:                                          ; preds = %merge272
  %printf289 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.6, i32 0, i32 0), i32 69)
  br label %traverse_loop290

traverse_loop290:                                 ; preds = %while_body291, %else288
  %16 = load %list_node*, %list_node** %12, align 8
  %17 = icmp ne %list_node* %16, null
  br i1 %17, label %while_body291, label %merge294

while_body291:                                    ; preds = %traverse_loop290
  %18 = load %list_node*, %list_node** %12, align 8
  %temp292 = getelementptr inbounds %list_node, %list_node* %18, i32 0, i32 1
  %temp293 = load %list_node*, %list_node** %temp292, align 8
  %19 = load i32, i32* %13, align 4
  %add = add i32 %19, 1
  store i32 %add, i32* %13, align 4
  store %list_node* %temp293, %list_node** %12, align 8
  br label %traverse_loop290

merge294:                                         ; preds = %traverse_loop290
  br label %merge286
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
  store i32 2, i32* %7, align 4
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

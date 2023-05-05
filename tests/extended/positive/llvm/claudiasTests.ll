; ModuleID = 'Graphite'
source_filename = "Graphite"

%graph_tt = type { %node_node*, %edge_node* }
%node_node = type { %node_struct*, %node_node* }
%node_struct = type { i8*, i1, i8* }
%edge_node = type { %edge_t*, %edge_node* }
%edge_t = type { %node_struct*, %node_struct*, i32 }
%list_node = type { i8*, %list_node* }

@g = global %graph_tt* null
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
@list_length = global i32 0
@0 = private unnamed_addr constant [27 x i8] c"lenght of list of edges: \0A\00", align 1
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@total_weight = global i32 0
@1 = private unnamed_addr constant [34 x i8] c"total weight of edges of n in g \0A\00", align 1
@fmt.6 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @printf(i8*, ...)

declare i32 @strcmp(i8*, i8*)

declare i8* @array_get(i8*, i32, ...)

declare i8* @array_set(i8*, i32, i8*, ...)

declare i8* @array_len(i8*, ...)

declare i8 @nodeExists(%node_struct*, ...)

declare i8* @array_add(i8*, i32, i8*, ...)

define i32 @main() {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%graph_tt* getelementptr (%graph_tt, %graph_tt* null, i32 1) to i32))
  %node = bitcast i8* %malloccall to %graph_tt*
  %"name'" = getelementptr inbounds %graph_tt, %graph_tt* %node, i32 0, i32 0
  %"data'" = getelementptr inbounds %graph_tt, %graph_tt* %node, i32 0, i32 1
  store %node_node* null, %node_node** %"name'", align 8
  store %edge_node* null, %edge_node** %"data'", align 8
  store %graph_tt* %node, %graph_tt** @g, align 8
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node2 = bitcast i8* %malloccall1 to %node_struct*
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %data = bitcast i8* %malloccall3 to i32*
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name = bitcast i8* %malloccall4 to i8**
  %data_ptr = bitcast i32* %data to i8*
  %name_ptr = bitcast i8** %name to i8*
  %"name'5" = getelementptr inbounds %node_struct, %node_struct* %node2, i32 0, i32 0
  %"data'6" = getelementptr inbounds %node_struct, %node_struct* %node2, i32 0, i32 2
  store i8* %name_ptr, i8** %"name'5", align 8
  store i8* %data_ptr, i8** %"data'6", align 8
  store %node_struct* %node2, %node_struct** @n, align 8
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node8 = bitcast i8* %malloccall7 to %node_struct*
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %data10 = bitcast i8* %malloccall9 to i32*
  %malloccall11 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name12 = bitcast i8* %malloccall11 to i8**
  %data_ptr13 = bitcast i32* %data10 to i8*
  %name_ptr14 = bitcast i8** %name12 to i8*
  %"name'15" = getelementptr inbounds %node_struct, %node_struct* %node8, i32 0, i32 0
  %"data'16" = getelementptr inbounds %node_struct, %node_struct* %node8, i32 0, i32 2
  store i8* %name_ptr14, i8** %"name'15", align 8
  store i8* %data_ptr13, i8** %"data'16", align 8
  store %node_struct* %node8, %node_struct** @m, align 8
  %malloccall17 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node18 = bitcast i8* %malloccall17 to %node_struct*
  %malloccall19 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %data20 = bitcast i8* %malloccall19 to i32*
  %malloccall21 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name22 = bitcast i8* %malloccall21 to i8**
  %data_ptr23 = bitcast i32* %data20 to i8*
  %name_ptr24 = bitcast i8** %name22 to i8*
  %"name'25" = getelementptr inbounds %node_struct, %node_struct* %node18, i32 0, i32 0
  %"data'26" = getelementptr inbounds %node_struct, %node_struct* %node18, i32 0, i32 2
  store i8* %name_ptr24, i8** %"name'25", align 8
  store i8* %data_ptr23, i8** %"data'26", align 8
  store %node_struct* %node18, %node_struct** @r, align 8
  %n = load %node_struct*, %node_struct** @n, align 8
  %m = load %node_struct*, %node_struct** @m, align 8
  %malloccall27 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct = bitcast i8* %malloccall27 to %edge_t*
  %"name'28" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 0
  %"name'29" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 1
  %"name'30" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 2
  store %node_struct* %n, %node_struct** %"name'28", align 8
  store %node_struct* %m, %node_struct** %"name'29", align 8
  store i32 0, i32* %"name'30", align 4
  %malloccall31 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge = bitcast i8* %malloccall31 to %edge_t*
  %"name'32" = getelementptr inbounds %edge_t, %edge_t* %edge, i32 0, i32 0
  %"data'33" = getelementptr inbounds %edge_t, %edge_t* %edge, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'32", align 8
  store %node_struct* null, %node_struct** %"data'33", align 8
  store %edge_t* %edge, %edge_t** @e1, align 8
  store %edge_t* %myEdgeStruct, %edge_t** @e1, align 8
  %n34 = load %node_struct*, %node_struct** @n, align 8
  %r = load %node_struct*, %node_struct** @r, align 8
  %malloccall35 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct36 = bitcast i8* %malloccall35 to %edge_t*
  %"name'37" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct36, i32 0, i32 0
  %"name'38" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct36, i32 0, i32 1
  %"name'39" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct36, i32 0, i32 2
  store %node_struct* %n34, %node_struct** %"name'37", align 8
  store %node_struct* %r, %node_struct** %"name'38", align 8
  store i32 0, i32* %"name'39", align 4
  %malloccall40 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge41 = bitcast i8* %malloccall40 to %edge_t*
  %"name'42" = getelementptr inbounds %edge_t, %edge_t* %edge41, i32 0, i32 0
  %"data'43" = getelementptr inbounds %edge_t, %edge_t* %edge41, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'42", align 8
  store %node_struct* null, %node_struct** %"data'43", align 8
  store %edge_t* %edge41, %edge_t** @e2, align 8
  store %edge_t* %myEdgeStruct36, %edge_t** @e2, align 8
  %e1 = load %edge_t*, %edge_t** @e1, align 8
  %malloccall44 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge45 = bitcast i8* %malloccall44 to %edge_t*
  %"name'46" = getelementptr inbounds %edge_t, %edge_t* %edge45, i32 0, i32 0
  %"data'47" = getelementptr inbounds %edge_t, %edge_t* %edge45, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'46", align 8
  store %node_struct* null, %node_struct** %"data'47", align 8
  store %edge_t* %edge45, %edge_t** @e3, align 8
  store %edge_t* %e1, %edge_t** @e3, align 8
  %"lvar'" = load %edge_t*, %edge_t** @e1, align 8
  %temp = getelementptr inbounds %edge_t, %edge_t* %"lvar'", i32 0, i32 2
  store i32 5, i32* %temp, align 4
  %"lvar'48" = load %edge_t*, %edge_t** @e2, align 8
  %temp49 = getelementptr inbounds %edge_t, %edge_t* %"lvar'48", i32 0, i32 2
  store i32 10, i32* %temp49, align 4
  %"lvar'50" = load %edge_t*, %edge_t** @e3, align 8
  %temp51 = getelementptr inbounds %edge_t, %edge_t* %"lvar'50", i32 0, i32 2
  store i32 2, i32* %temp51, align 4
  %malloccall52 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %new_list = bitcast i8* %malloccall52 to %list_node**
  %malloccall53 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val = bitcast i8* %malloccall53 to i32*
  store i32 1, i32* %arr_val, align 4
  %i8ptr = bitcast i32* %arr_val to i8*
  %malloccall54 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p = bitcast i8* %malloccall54 to %list_node*
  %valloc = getelementptr inbounds %list_node, %list_node* %node_p, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p, align 8
  store i8* %i8ptr, i8** %valloc, align 8
  store %list_node* %node_p, %list_node** %new_list, align 8
  %malloccall55 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val56 = bitcast i8* %malloccall55 to i32*
  store i32 2, i32* %arr_val56, align 4
  %i8ptr57 = bitcast i32* %arr_val56 to i8*
  %malloccall58 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p59 = bitcast i8* %malloccall58 to %list_node*
  %valloc60 = getelementptr inbounds %list_node, %list_node* %node_p59, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p59, align 8
  store i8* %i8ptr57, i8** %valloc60, align 8
  %temp61 = getelementptr inbounds %list_node, %list_node* %node_p, i32 0, i32 1
  store %list_node* %node_p59, %list_node** %temp61, align 8
  %malloccall62 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val63 = bitcast i8* %malloccall62 to i32*
  store i32 3, i32* %arr_val63, align 4
  %i8ptr64 = bitcast i32* %arr_val63 to i8*
  %malloccall65 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p66 = bitcast i8* %malloccall65 to %list_node*
  %valloc67 = getelementptr inbounds %list_node, %list_node* %node_p66, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p66, align 8
  store i8* %i8ptr64, i8** %valloc67, align 8
  %temp68 = getelementptr inbounds %list_node, %list_node* %node_p59, i32 0, i32 1
  store %list_node* %node_p66, %list_node** %temp68, align 8
  %temp69 = load %list_node*, %list_node** %new_list, align 8
  store %list_node* %temp69, %list_node** @int_l, align 8
  %e170 = load %edge_t*, %edge_t** @e1, align 8
  %malloccall71 = tail call i8* @malloc(i32 ptrtoint (%edge_t** getelementptr (%edge_t*, %edge_t** null, i32 1) to i32))
  %arr_val72 = bitcast i8* %malloccall71 to %edge_t**
  store %edge_t* %e170, %edge_t** %arr_val72, align 8
  %i8ptr73 = bitcast %edge_t** %arr_val72 to i8*
  %list = load %list_node*, %list_node** @int_l, align 8
  %malloccall74 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %0 = bitcast i8* %malloccall74 to %list_node**
  %malloccall75 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %malloccall75 to i32*
  store %list_node* %list, %list_node** %0, align 8
  store i32 0, i32* %1, align 4
  br label %traverse_loop

traverse_loop:                                    ; preds = %while_body, %entry
  %2 = load i32, i32* %1, align 4
  %temp78 = icmp ne i32 %2, 0
  br i1 %temp78, label %while_body, label %merge

while_body:                                       ; preds = %traverse_loop
  %3 = load %list_node*, %list_node** %0, align 8
  %temp76 = getelementptr inbounds %list_node, %list_node* %3, i32 0, i32 1
  %temp77 = load %list_node*, %list_node** %temp76, align 8
  %4 = load i32, i32* %1, align 4
  %subtract = sub i32 %4, 1
  store i32 %subtract, i32* %1, align 4
  store %list_node* %temp77, %list_node** %0, align 8
  br label %traverse_loop

merge:                                            ; preds = %traverse_loop
  %5 = load %list_node*, %list_node** %0, align 8
  %temp79 = getelementptr inbounds %list_node, %list_node* %5, i32 0, i32 0
  store i8* %i8ptr73, i8** %temp79, align 8
  %e3 = load %edge_t*, %edge_t** @e3, align 8
  %malloccall80 = tail call i8* @malloc(i32 ptrtoint (%edge_t** getelementptr (%edge_t*, %edge_t** null, i32 1) to i32))
  %arr_val81 = bitcast i8* %malloccall80 to %edge_t**
  store %edge_t* %e3, %edge_t** %arr_val81, align 8
  %i8ptr82 = bitcast %edge_t** %arr_val81 to i8*
  %list83 = load %list_node*, %list_node** @int_l, align 8
  %malloccall84 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %6 = bitcast i8* %malloccall84 to %list_node**
  %malloccall85 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %7 = bitcast i8* %malloccall85 to i32*
  store %list_node* %list83, %list_node** %6, align 8
  store i32 2, i32* %7, align 4
  br label %traverse_loop86

traverse_loop86:                                  ; preds = %while_body87, %merge
  %8 = load i32, i32* %7, align 4
  %temp91 = icmp ne i32 %8, 0
  br i1 %temp91, label %while_body87, label %merge92

while_body87:                                     ; preds = %traverse_loop86
  %9 = load %list_node*, %list_node** %6, align 8
  %temp88 = getelementptr inbounds %list_node, %list_node* %9, i32 0, i32 1
  %temp89 = load %list_node*, %list_node** %temp88, align 8
  %10 = load i32, i32* %7, align 4
  %subtract90 = sub i32 %10, 1
  store i32 %subtract90, i32* %7, align 4
  store %list_node* %temp89, %list_node** %6, align 8
  br label %traverse_loop86

merge92:                                          ; preds = %traverse_loop86
  %11 = load %list_node*, %list_node** %6, align 8
  %temp93 = getelementptr inbounds %list_node, %list_node* %11, i32 0, i32 0
  store i8* %i8ptr82, i8** %temp93, align 8
  %n94 = load %node_struct*, %node_struct** @n, align 8
  %graph_ptr = load %graph_tt*, %graph_tt** @g, align 8
  %nodes = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr, i32 0, i32 0
  %nodes_hd = load %node_node*, %node_node** %nodes, align 8
  %malloccall95 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node = bitcast i8* %malloccall95 to %node_node*
  %"lst_rst'" = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 1
  %node_ptr = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 0
  store %node_node* %nodes_hd, %node_node** %"lst_rst'", align 8
  store %node_struct* %n94, %node_struct** %node_ptr, align 8
  store %node_node* %new_node, %node_node** %nodes, align 8
  %m96 = load %node_struct*, %node_struct** @m, align 8
  %graph_ptr97 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes98 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr97, i32 0, i32 0
  %nodes_hd99 = load %node_node*, %node_node** %nodes98, align 8
  %malloccall100 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node101 = bitcast i8* %malloccall100 to %node_node*
  %"lst_rst'102" = getelementptr inbounds %node_node, %node_node* %new_node101, i32 0, i32 1
  %node_ptr103 = getelementptr inbounds %node_node, %node_node* %new_node101, i32 0, i32 0
  store %node_node* %nodes_hd99, %node_node** %"lst_rst'102", align 8
  store %node_struct* %m96, %node_struct** %node_ptr103, align 8
  store %node_node* %new_node101, %node_node** %nodes98, align 8
  %e1104 = load %edge_t*, %edge_t** @e1, align 8
  %graph_ptr105 = load %graph_tt*, %graph_tt** @g, align 8
  %edges = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr105, i32 0, i32 1
  %edges_hd = load %edge_node*, %edge_node** %edges, align 8
  %malloccall106 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge = bitcast i8* %malloccall106 to %edge_node*
  %"lst_rst'107" = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 1
  %edge_ptr = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 0
  store %edge_node* %edges_hd, %edge_node** %"lst_rst'107", align 8
  store %edge_t* %e1104, %edge_t** %edge_ptr, align 8
  %src_ptr = getelementptr inbounds %edge_t, %edge_t* %e1104, i32 0, i32 0
  %dst_ptr = getelementptr inbounds %edge_t, %edge_t* %e1104, i32 0, i32 1
  %"src'" = load %node_struct*, %node_struct** %src_ptr, align 8
  %"dst'" = load %node_struct*, %node_struct** %dst_ptr, align 8
  %ret_true = alloca i1, align 1
  store i1 false, i1* %ret_true, align 1
  %graph_ptr108 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes109 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr108, i32 0, i32 0
  %head = load %node_node*, %node_node** %nodes109, align 8
  store %node_node* %head, %node_node** @llNodes, align 8
  br label %while

while:                                            ; preds = %merge92, %else
  %putMeHere = load %node_node*, %node_node** @llNodes, align 8
  %curr = icmp ne %node_node* %putMeHere, null
  br i1 %curr, label %while_body110, label %merge113

while_body110:                                    ; preds = %while
  %putMeHere111 = load %node_node*, %node_node** @llNodes, align 8
  %nodes112 = getelementptr inbounds %node_node, %node_node* %putMeHere111, i32 0, i32 0
  %"stored_node'" = load %node_struct*, %node_struct** %nodes112, align 8
  br label %if

if:                                               ; preds = %while_body110
  %"found?" = icmp eq %node_struct* %"stored_node'", %"src'"
  br i1 %"found?", label %then, label %else

then:                                             ; preds = %if
  store i1 true, i1* %ret_true, align 1
  br label %merge113

else:                                             ; preds = %if
  %toBeHere = load %node_node*, %node_node** @llNodes, align 8
  %llNodesPtr = getelementptr inbounds %node_node, %node_node* %toBeHere, i32 0, i32 1
  %toBeHerenow = load %node_node*, %node_node** %llNodesPtr, align 8
  store %node_node* %toBeHerenow, %node_node** @llNodes, align 8
  br label %while

merge113:                                         ; preds = %while, %then
  %returnVal = load i1, i1* %ret_true, align 1
  %ret_true114 = alloca i1, align 1
  store i1 false, i1* %ret_true114, align 1
  %graph_ptr115 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes116 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr115, i32 0, i32 0
  %head117 = load %node_node*, %node_node** %nodes116, align 8
  store %node_node* %head117, %node_node** @llNodes.1, align 8
  br label %while118

while118:                                         ; preds = %merge113, %else127
  %putMeHere119 = load %node_node*, %node_node** @llNodes.1, align 8
  %curr120 = icmp ne %node_node* %putMeHere119, null
  br i1 %curr120, label %while_body121, label %merge128

while_body121:                                    ; preds = %while118
  %putMeHere122 = load %node_node*, %node_node** @llNodes.1, align 8
  %nodes123 = getelementptr inbounds %node_node, %node_node* %putMeHere122, i32 0, i32 0
  %"stored_node'124" = load %node_struct*, %node_struct** %nodes123, align 8
  br label %if125

if125:                                            ; preds = %while_body121
  %"found?129" = icmp eq %node_struct* %"stored_node'124", %"dst'"
  br i1 %"found?129", label %then126, label %else127

then126:                                          ; preds = %if125
  store i1 true, i1* %ret_true114, align 1
  br label %merge128

else127:                                          ; preds = %if125
  %toBeHere130 = load %node_node*, %node_node** @llNodes.1, align 8
  %llNodesPtr131 = getelementptr inbounds %node_node, %node_node* %toBeHere130, i32 0, i32 1
  %toBeHerenow132 = load %node_node*, %node_node** %llNodesPtr131, align 8
  store %node_node* %toBeHerenow132, %node_node** @llNodes.1, align 8
  br label %while118

merge128:                                         ; preds = %while118, %then126
  %returnVal133 = load i1, i1* %ret_true114, align 1
  br label %if134

if134:                                            ; preds = %merge128
  br i1 %returnVal, label %merge136, label %else135

else135:                                          ; preds = %if134
  %graph_ptr137 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes138 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr137, i32 0, i32 0
  %nodes_hd139 = load %node_node*, %node_node** %nodes138, align 8
  %malloccall140 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node141 = bitcast i8* %malloccall140 to %node_node*
  %"lst_rst'142" = getelementptr inbounds %node_node, %node_node* %new_node141, i32 0, i32 1
  %node_ptr143 = getelementptr inbounds %node_node, %node_node* %new_node141, i32 0, i32 0
  store %node_node* %nodes_hd139, %node_node** %"lst_rst'142", align 8
  store %node_struct* %"src'", %node_struct** %node_ptr143, align 8
  store %node_node* %new_node141, %node_node** %nodes138, align 8
  br label %merge136

merge136:                                         ; preds = %else135, %if134
  br label %if144

if144:                                            ; preds = %merge136
  br i1 %returnVal133, label %merge146, label %else145

else145:                                          ; preds = %if144
  %graph_ptr147 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes148 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr147, i32 0, i32 0
  %nodes_hd149 = load %node_node*, %node_node** %nodes148, align 8
  %malloccall150 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node151 = bitcast i8* %malloccall150 to %node_node*
  %"lst_rst'152" = getelementptr inbounds %node_node, %node_node* %new_node151, i32 0, i32 1
  %node_ptr153 = getelementptr inbounds %node_node, %node_node* %new_node151, i32 0, i32 0
  store %node_node* %nodes_hd149, %node_node** %"lst_rst'152", align 8
  store %node_struct* %"dst'", %node_struct** %node_ptr153, align 8
  store %node_node* %new_node151, %node_node** %nodes148, align 8
  br label %merge146

merge146:                                         ; preds = %else145, %if144
  store %edge_node* %new_edge, %edge_node** %edges, align 8
  %e2 = load %edge_t*, %edge_t** @e2, align 8
  %graph_ptr154 = load %graph_tt*, %graph_tt** @g, align 8
  %edges155 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr154, i32 0, i32 1
  %edges_hd156 = load %edge_node*, %edge_node** %edges155, align 8
  %malloccall157 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge158 = bitcast i8* %malloccall157 to %edge_node*
  %"lst_rst'159" = getelementptr inbounds %edge_node, %edge_node* %new_edge158, i32 0, i32 1
  %edge_ptr160 = getelementptr inbounds %edge_node, %edge_node* %new_edge158, i32 0, i32 0
  store %edge_node* %edges_hd156, %edge_node** %"lst_rst'159", align 8
  store %edge_t* %e2, %edge_t** %edge_ptr160, align 8
  %src_ptr161 = getelementptr inbounds %edge_t, %edge_t* %e2, i32 0, i32 0
  %dst_ptr162 = getelementptr inbounds %edge_t, %edge_t* %e2, i32 0, i32 1
  %"src'163" = load %node_struct*, %node_struct** %src_ptr161, align 8
  %"dst'164" = load %node_struct*, %node_struct** %dst_ptr162, align 8
  %ret_true165 = alloca i1, align 1
  store i1 false, i1* %ret_true165, align 1
  %graph_ptr166 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes167 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr166, i32 0, i32 0
  %head168 = load %node_node*, %node_node** %nodes167, align 8
  store %node_node* %head168, %node_node** @llNodes.2, align 8
  br label %while169

while169:                                         ; preds = %merge146, %else178
  %putMeHere170 = load %node_node*, %node_node** @llNodes.2, align 8
  %curr171 = icmp ne %node_node* %putMeHere170, null
  br i1 %curr171, label %while_body172, label %merge179

while_body172:                                    ; preds = %while169
  %putMeHere173 = load %node_node*, %node_node** @llNodes.2, align 8
  %nodes174 = getelementptr inbounds %node_node, %node_node* %putMeHere173, i32 0, i32 0
  %"stored_node'175" = load %node_struct*, %node_struct** %nodes174, align 8
  br label %if176

if176:                                            ; preds = %while_body172
  %"found?180" = icmp eq %node_struct* %"stored_node'175", %"src'163"
  br i1 %"found?180", label %then177, label %else178

then177:                                          ; preds = %if176
  store i1 true, i1* %ret_true165, align 1
  br label %merge179

else178:                                          ; preds = %if176
  %toBeHere181 = load %node_node*, %node_node** @llNodes.2, align 8
  %llNodesPtr182 = getelementptr inbounds %node_node, %node_node* %toBeHere181, i32 0, i32 1
  %toBeHerenow183 = load %node_node*, %node_node** %llNodesPtr182, align 8
  store %node_node* %toBeHerenow183, %node_node** @llNodes.2, align 8
  br label %while169

merge179:                                         ; preds = %while169, %then177
  %returnVal184 = load i1, i1* %ret_true165, align 1
  %ret_true185 = alloca i1, align 1
  store i1 false, i1* %ret_true185, align 1
  %graph_ptr186 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes187 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr186, i32 0, i32 0
  %head188 = load %node_node*, %node_node** %nodes187, align 8
  store %node_node* %head188, %node_node** @llNodes.3, align 8
  br label %while189

while189:                                         ; preds = %merge179, %else198
  %putMeHere190 = load %node_node*, %node_node** @llNodes.3, align 8
  %curr191 = icmp ne %node_node* %putMeHere190, null
  br i1 %curr191, label %while_body192, label %merge199

while_body192:                                    ; preds = %while189
  %putMeHere193 = load %node_node*, %node_node** @llNodes.3, align 8
  %nodes194 = getelementptr inbounds %node_node, %node_node* %putMeHere193, i32 0, i32 0
  %"stored_node'195" = load %node_struct*, %node_struct** %nodes194, align 8
  br label %if196

if196:                                            ; preds = %while_body192
  %"found?200" = icmp eq %node_struct* %"stored_node'195", %"dst'164"
  br i1 %"found?200", label %then197, label %else198

then197:                                          ; preds = %if196
  store i1 true, i1* %ret_true185, align 1
  br label %merge199

else198:                                          ; preds = %if196
  %toBeHere201 = load %node_node*, %node_node** @llNodes.3, align 8
  %llNodesPtr202 = getelementptr inbounds %node_node, %node_node* %toBeHere201, i32 0, i32 1
  %toBeHerenow203 = load %node_node*, %node_node** %llNodesPtr202, align 8
  store %node_node* %toBeHerenow203, %node_node** @llNodes.3, align 8
  br label %while189

merge199:                                         ; preds = %while189, %then197
  %returnVal204 = load i1, i1* %ret_true185, align 1
  br label %if205

if205:                                            ; preds = %merge199
  br i1 %returnVal184, label %merge207, label %else206

else206:                                          ; preds = %if205
  %graph_ptr208 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes209 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr208, i32 0, i32 0
  %nodes_hd210 = load %node_node*, %node_node** %nodes209, align 8
  %malloccall211 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node212 = bitcast i8* %malloccall211 to %node_node*
  %"lst_rst'213" = getelementptr inbounds %node_node, %node_node* %new_node212, i32 0, i32 1
  %node_ptr214 = getelementptr inbounds %node_node, %node_node* %new_node212, i32 0, i32 0
  store %node_node* %nodes_hd210, %node_node** %"lst_rst'213", align 8
  store %node_struct* %"src'163", %node_struct** %node_ptr214, align 8
  store %node_node* %new_node212, %node_node** %nodes209, align 8
  br label %merge207

merge207:                                         ; preds = %else206, %if205
  br label %if215

if215:                                            ; preds = %merge207
  br i1 %returnVal204, label %merge217, label %else216

else216:                                          ; preds = %if215
  %graph_ptr218 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes219 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr218, i32 0, i32 0
  %nodes_hd220 = load %node_node*, %node_node** %nodes219, align 8
  %malloccall221 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node222 = bitcast i8* %malloccall221 to %node_node*
  %"lst_rst'223" = getelementptr inbounds %node_node, %node_node* %new_node222, i32 0, i32 1
  %node_ptr224 = getelementptr inbounds %node_node, %node_node* %new_node222, i32 0, i32 0
  store %node_node* %nodes_hd220, %node_node** %"lst_rst'223", align 8
  store %node_struct* %"dst'164", %node_struct** %node_ptr224, align 8
  store %node_node* %new_node222, %node_node** %nodes219, align 8
  br label %merge217

merge217:                                         ; preds = %else216, %if215
  store %edge_node* %new_edge158, %edge_node** %edges155, align 8
  %e3225 = load %edge_t*, %edge_t** @e3, align 8
  %graph_ptr226 = load %graph_tt*, %graph_tt** @g, align 8
  %edges227 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr226, i32 0, i32 1
  %edges_hd228 = load %edge_node*, %edge_node** %edges227, align 8
  %malloccall229 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge230 = bitcast i8* %malloccall229 to %edge_node*
  %"lst_rst'231" = getelementptr inbounds %edge_node, %edge_node* %new_edge230, i32 0, i32 1
  %edge_ptr232 = getelementptr inbounds %edge_node, %edge_node* %new_edge230, i32 0, i32 0
  store %edge_node* %edges_hd228, %edge_node** %"lst_rst'231", align 8
  store %edge_t* %e3225, %edge_t** %edge_ptr232, align 8
  %src_ptr233 = getelementptr inbounds %edge_t, %edge_t* %e3225, i32 0, i32 0
  %dst_ptr234 = getelementptr inbounds %edge_t, %edge_t* %e3225, i32 0, i32 1
  %"src'235" = load %node_struct*, %node_struct** %src_ptr233, align 8
  %"dst'236" = load %node_struct*, %node_struct** %dst_ptr234, align 8
  %ret_true237 = alloca i1, align 1
  store i1 false, i1* %ret_true237, align 1
  %graph_ptr238 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes239 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr238, i32 0, i32 0
  %head240 = load %node_node*, %node_node** %nodes239, align 8
  store %node_node* %head240, %node_node** @llNodes.4, align 8
  br label %while241

while241:                                         ; preds = %merge217, %else250
  %putMeHere242 = load %node_node*, %node_node** @llNodes.4, align 8
  %curr243 = icmp ne %node_node* %putMeHere242, null
  br i1 %curr243, label %while_body244, label %merge251

while_body244:                                    ; preds = %while241
  %putMeHere245 = load %node_node*, %node_node** @llNodes.4, align 8
  %nodes246 = getelementptr inbounds %node_node, %node_node* %putMeHere245, i32 0, i32 0
  %"stored_node'247" = load %node_struct*, %node_struct** %nodes246, align 8
  br label %if248

if248:                                            ; preds = %while_body244
  %"found?252" = icmp eq %node_struct* %"stored_node'247", %"src'235"
  br i1 %"found?252", label %then249, label %else250

then249:                                          ; preds = %if248
  store i1 true, i1* %ret_true237, align 1
  br label %merge251

else250:                                          ; preds = %if248
  %toBeHere253 = load %node_node*, %node_node** @llNodes.4, align 8
  %llNodesPtr254 = getelementptr inbounds %node_node, %node_node* %toBeHere253, i32 0, i32 1
  %toBeHerenow255 = load %node_node*, %node_node** %llNodesPtr254, align 8
  store %node_node* %toBeHerenow255, %node_node** @llNodes.4, align 8
  br label %while241

merge251:                                         ; preds = %while241, %then249
  %returnVal256 = load i1, i1* %ret_true237, align 1
  %ret_true257 = alloca i1, align 1
  store i1 false, i1* %ret_true257, align 1
  %graph_ptr258 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes259 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr258, i32 0, i32 0
  %head260 = load %node_node*, %node_node** %nodes259, align 8
  store %node_node* %head260, %node_node** @llNodes.5, align 8
  br label %while261

while261:                                         ; preds = %merge251, %else270
  %putMeHere262 = load %node_node*, %node_node** @llNodes.5, align 8
  %curr263 = icmp ne %node_node* %putMeHere262, null
  br i1 %curr263, label %while_body264, label %merge271

while_body264:                                    ; preds = %while261
  %putMeHere265 = load %node_node*, %node_node** @llNodes.5, align 8
  %nodes266 = getelementptr inbounds %node_node, %node_node* %putMeHere265, i32 0, i32 0
  %"stored_node'267" = load %node_struct*, %node_struct** %nodes266, align 8
  br label %if268

if268:                                            ; preds = %while_body264
  %"found?272" = icmp eq %node_struct* %"stored_node'267", %"dst'236"
  br i1 %"found?272", label %then269, label %else270

then269:                                          ; preds = %if268
  store i1 true, i1* %ret_true257, align 1
  br label %merge271

else270:                                          ; preds = %if268
  %toBeHere273 = load %node_node*, %node_node** @llNodes.5, align 8
  %llNodesPtr274 = getelementptr inbounds %node_node, %node_node* %toBeHere273, i32 0, i32 1
  %toBeHerenow275 = load %node_node*, %node_node** %llNodesPtr274, align 8
  store %node_node* %toBeHerenow275, %node_node** @llNodes.5, align 8
  br label %while261

merge271:                                         ; preds = %while261, %then269
  %returnVal276 = load i1, i1* %ret_true257, align 1
  br label %if277

if277:                                            ; preds = %merge271
  br i1 %returnVal256, label %merge279, label %else278

else278:                                          ; preds = %if277
  %graph_ptr280 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes281 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr280, i32 0, i32 0
  %nodes_hd282 = load %node_node*, %node_node** %nodes281, align 8
  %malloccall283 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node284 = bitcast i8* %malloccall283 to %node_node*
  %"lst_rst'285" = getelementptr inbounds %node_node, %node_node* %new_node284, i32 0, i32 1
  %node_ptr286 = getelementptr inbounds %node_node, %node_node* %new_node284, i32 0, i32 0
  store %node_node* %nodes_hd282, %node_node** %"lst_rst'285", align 8
  store %node_struct* %"src'235", %node_struct** %node_ptr286, align 8
  store %node_node* %new_node284, %node_node** %nodes281, align 8
  br label %merge279

merge279:                                         ; preds = %else278, %if277
  br label %if287

if287:                                            ; preds = %merge279
  br i1 %returnVal276, label %merge289, label %else288

else288:                                          ; preds = %if287
  %graph_ptr290 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes291 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr290, i32 0, i32 0
  %nodes_hd292 = load %node_node*, %node_node** %nodes291, align 8
  %malloccall293 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node294 = bitcast i8* %malloccall293 to %node_node*
  %"lst_rst'295" = getelementptr inbounds %node_node, %node_node* %new_node294, i32 0, i32 1
  %node_ptr296 = getelementptr inbounds %node_node, %node_node* %new_node294, i32 0, i32 0
  store %node_node* %nodes_hd292, %node_node** %"lst_rst'295", align 8
  store %node_struct* %"dst'236", %node_struct** %node_ptr296, align 8
  store %node_node* %new_node294, %node_node** %nodes291, align 8
  br label %merge289

merge289:                                         ; preds = %else288, %if287
  store %edge_node* %new_edge230, %edge_node** %edges227, align 8
  %n297 = load %node_struct*, %node_struct** @n, align 8
  %graph_ptr298 = load %graph_tt*, %graph_tt** @g, align 8
  %edges299 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr298, i32 0, i32 1
  %head300 = load %edge_node*, %edge_node** %edges299, align 8
  store %edge_node* %head300, %edge_node** @llEdges, align 8
  br label %while301

while301:                                         ; preds = %merge289, %else309
  %putMeHere302 = load %edge_node*, %edge_node** @llEdges, align 8
  %curr303 = icmp ne %edge_node* %putMeHere302, null
  br i1 %curr303, label %while_body304, label %merge310

while_body304:                                    ; preds = %while301
  %putMeHere305 = load %edge_node*, %edge_node** @llEdges, align 8
  %nodes306 = getelementptr inbounds %edge_node, %edge_node* %putMeHere305, i32 0, i32 0
  %"stored_nodeA'" = load %edge_t*, %edge_t** %nodes306, align 8
  br label %if307

if307:                                            ; preds = %while_body304
  %nodes311 = getelementptr inbounds %edge_t, %edge_t* %"stored_nodeA'", i32 0, i32 0
  %nodes312 = getelementptr inbounds %edge_t, %edge_t* %"stored_nodeA'", i32 0, i32 1
  %"currEdgeSrc'" = load %node_struct*, %node_struct** %nodes311, align 8
  %"currEdgeDst'" = load %node_struct*, %node_struct** %nodes312, align 8
  %"foundSrc?" = icmp eq %node_struct* %"currEdgeSrc'", %n297
  %"foundDst?" = icmp eq %node_struct* %"currEdgeDst'", %n297
  %if_found = or i1 %"foundSrc?", %"foundDst?"
  br i1 %if_found, label %then308, label %else309

then308:                                          ; preds = %if307
  %malloccall313 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node314 = bitcast i8* %malloccall313 to %list_node*
  %nodes315 = getelementptr inbounds %list_node, %list_node* %node314, i32 0, i32 0
  %nodes316 = getelementptr inbounds %list_node, %list_node* %node314, i32 0, i32 1
  %malloccall317 = tail call i8* @malloc(i32 ptrtoint (%edge_t** getelementptr (%edge_t*, %edge_t** null, i32 1) to i32))
  %please_work = bitcast i8* %malloccall317 to %edge_t**
  store %edge_t* %"stored_nodeA'", %edge_t** %please_work, align 8
  %currEdgeVoidPtr = bitcast %edge_t** %please_work to i8*
  store i8* %currEdgeVoidPtr, i8** %nodes315, align 8
  %nextEdges = load %list_node*, %list_node** @edgesList, align 8
  store %list_node* %nextEdges, %list_node** %nodes316, align 8
  store %list_node* %node314, %list_node** @edgesList, align 8
  br label %else309

else309:                                          ; preds = %then308, %if307
  %toBeHere318 = load %edge_node*, %edge_node** @llEdges, align 8
  %llNodesPtr319 = getelementptr inbounds %edge_node, %edge_node* %toBeHere318, i32 0, i32 1
  %toBeHerenow320 = load %edge_node*, %edge_node** %llNodesPtr319, align 8
  store %edge_node* %toBeHerenow320, %edge_node** @llEdges, align 8
  br label %while301

merge310:                                         ; preds = %while301
  %return = load %list_node*, %list_node** @edgesList, align 8
  store %list_node* %return, %list_node** @edges_of_n, align 8
  %list321 = load %list_node*, %list_node** @edges_of_n, align 8
  %malloccall322 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %12 = bitcast i8* %malloccall322 to %list_node**
  %malloccall323 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %13 = bitcast i8* %malloccall323 to i32*
  store %list_node* %list321, %list_node** %12, align 8
  store i32 0, i32* %13, align 4
  br label %traverse_loop324

traverse_loop324:                                 ; preds = %while_body325, %merge310
  %14 = load %list_node*, %list_node** %12, align 8
  %15 = icmp ne %list_node* %14, null
  br i1 %15, label %while_body325, label %merge328

while_body325:                                    ; preds = %traverse_loop324
  %16 = load %list_node*, %list_node** %12, align 8
  %temp326 = getelementptr inbounds %list_node, %list_node* %16, i32 0, i32 1
  %temp327 = load %list_node*, %list_node** %temp326, align 8
  %17 = load i32, i32* %13, align 4
  %add = add i32 %17, 1
  store i32 %add, i32* %13, align 4
  store %list_node* %temp327, %list_node** %12, align 8
  br label %traverse_loop324

merge328:                                         ; preds = %traverse_loop324
  %18 = load i32, i32* %13, align 4
  store i32 %18, i32* @list_length, align 4
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0))
  %list_length = load i32, i32* @list_length, align 4
  %printf329 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %list_length)
  %int_l = load %list_node*, %list_node** @int_l, align 8
  %edge_weight_sum_result = call i32 @edge_weight_sum(%list_node* %int_l)
  store i32 %edge_weight_sum_result, i32* @total_weight, align 4
  %printf330 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @1, i32 0, i32 0))
  %total_weight = load i32, i32* @total_weight, align 4
  %printf331 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.6, i32 0, i32 0), i32 %total_weight)
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

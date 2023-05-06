; ModuleID = 'Graphite'
source_filename = "Graphite"

%node_struct = type { i8*, i1, i8* }
%edge_t = type { %node_struct*, %node_struct*, i32 }
%graph_tt = type { %node_node*, %edge_node* }
%node_node = type { %node_struct*, %node_node* }
%edge_node = type { %edge_t*, %edge_node* }
%list_node = type { i8*, %list_node* }

@n1 = global %node_struct* null
@n2 = global %node_struct* null
@n3 = global %node_struct* null
@n4 = global %node_struct* null
@n5 = global %node_struct* null
@n6 = global %node_struct* null
@e1 = global %edge_t* null
@e2 = global %edge_t* null
@e3 = global %edge_t* null
@e4 = global %edge_t* null
@0 = private unnamed_addr constant [12 x i8] c"swaggy node\00", align 1
@1 = private unnamed_addr constant [11 x i8] c"yerba mate\00", align 1
@2 = private unnamed_addr constant [12 x i8] c"power level\00", align 1
@g = global %graph_tt* null
@llNodes = global %node_node* null
@llNodes.1 = global %node_node* null
@llNodes.2 = global %node_node* null
@llNodes.3 = global %node_node* null
@edgesList = global %list_node* null
@llEdges = global %edge_node* null
@b = global i1 false
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

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
  store %node_struct* %node4, %node_struct** @n2, align 8
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
  store %node_struct* %node14, %node_struct** @n3, align 8
  %malloccall23 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node24 = bitcast i8* %malloccall23 to %node_struct*
  %malloccall25 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %data26 = bitcast i8* %malloccall25 to i32*
  %malloccall27 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name28 = bitcast i8* %malloccall27 to i8**
  %data_ptr29 = bitcast i32* %data26 to i8*
  %name_ptr30 = bitcast i8** %name28 to i8*
  %"name'31" = getelementptr inbounds %node_struct, %node_struct* %node24, i32 0, i32 0
  %"data'32" = getelementptr inbounds %node_struct, %node_struct* %node24, i32 0, i32 2
  store i8* %name_ptr30, i8** %"name'31", align 8
  store i8* %data_ptr29, i8** %"data'32", align 8
  store %node_struct* %node24, %node_struct** @n4, align 8
  %malloccall33 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node34 = bitcast i8* %malloccall33 to %node_struct*
  %malloccall35 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %data36 = bitcast i8* %malloccall35 to i32*
  %malloccall37 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name38 = bitcast i8* %malloccall37 to i8**
  %data_ptr39 = bitcast i32* %data36 to i8*
  %name_ptr40 = bitcast i8** %name38 to i8*
  %"name'41" = getelementptr inbounds %node_struct, %node_struct* %node34, i32 0, i32 0
  %"data'42" = getelementptr inbounds %node_struct, %node_struct* %node34, i32 0, i32 2
  store i8* %name_ptr40, i8** %"name'41", align 8
  store i8* %data_ptr39, i8** %"data'42", align 8
  store %node_struct* %node34, %node_struct** @n5, align 8
  %malloccall43 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node44 = bitcast i8* %malloccall43 to %node_struct*
  %malloccall45 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %data46 = bitcast i8* %malloccall45 to i32*
  %malloccall47 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name48 = bitcast i8* %malloccall47 to i8**
  %data_ptr49 = bitcast i32* %data46 to i8*
  %name_ptr50 = bitcast i8** %name48 to i8*
  %"name'51" = getelementptr inbounds %node_struct, %node_struct* %node44, i32 0, i32 0
  %"data'52" = getelementptr inbounds %node_struct, %node_struct* %node44, i32 0, i32 2
  store i8* %name_ptr50, i8** %"name'51", align 8
  store i8* %data_ptr49, i8** %"data'52", align 8
  store %node_struct* %node44, %node_struct** @n6, align 8
  %malloccall53 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge = bitcast i8* %malloccall53 to %edge_t*
  %"src''" = getelementptr inbounds %edge_t, %edge_t* %edge, i32 0, i32 0
  %"dst''" = getelementptr inbounds %edge_t, %edge_t* %edge, i32 0, i32 1
  store %node_struct* null, %node_struct** %"src''", align 8
  store %node_struct* null, %node_struct** %"dst''", align 8
  store %edge_t* %edge, %edge_t** @e1, align 8
  %malloccall54 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge55 = bitcast i8* %malloccall54 to %edge_t*
  %"src''56" = getelementptr inbounds %edge_t, %edge_t* %edge55, i32 0, i32 0
  %"dst''57" = getelementptr inbounds %edge_t, %edge_t* %edge55, i32 0, i32 1
  store %node_struct* null, %node_struct** %"src''56", align 8
  store %node_struct* null, %node_struct** %"dst''57", align 8
  store %edge_t* %edge55, %edge_t** @e2, align 8
  %malloccall58 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge59 = bitcast i8* %malloccall58 to %edge_t*
  %"src''60" = getelementptr inbounds %edge_t, %edge_t* %edge59, i32 0, i32 0
  %"dst''61" = getelementptr inbounds %edge_t, %edge_t* %edge59, i32 0, i32 1
  store %node_struct* null, %node_struct** %"src''60", align 8
  store %node_struct* null, %node_struct** %"dst''61", align 8
  store %edge_t* %edge59, %edge_t** @e3, align 8
  %malloccall62 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge63 = bitcast i8* %malloccall62 to %edge_t*
  %"src''64" = getelementptr inbounds %edge_t, %edge_t* %edge63, i32 0, i32 0
  %"dst''65" = getelementptr inbounds %edge_t, %edge_t* %edge63, i32 0, i32 1
  store %node_struct* null, %node_struct** %"src''64", align 8
  store %node_struct* null, %node_struct** %"dst''65", align 8
  store %edge_t* %edge63, %edge_t** @e4, align 8
  %"lvar'" = load %node_struct*, %node_struct** @n1, align 8
  %temp = getelementptr inbounds %node_struct, %node_struct* %"lvar'", i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @0, i32 0, i32 0), i8** %temp, align 8
  %"lvar'66" = load %node_struct*, %node_struct** @n1, align 8
  %temp67 = getelementptr inbounds %node_struct, %node_struct* %"lvar'66", i32 0, i32 2
  %malloccall68 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %bruh = bitcast i8* %malloccall68 to i32*
  store i32 5, i32* %bruh, align 4
  %name69 = bitcast i32* %bruh to i8*
  store i8* %name69, i8** %temp67, align 8
  %"lvar'70" = load %node_struct*, %node_struct** @n1, align 8
  %temp71 = getelementptr inbounds %node_struct, %node_struct* %"lvar'70", i32 0, i32 1
  store i1 true, i1* %temp71, align 1
  %"lvar'72" = load %node_struct*, %node_struct** @n2, align 8
  %temp73 = getelementptr inbounds %node_struct, %node_struct* %"lvar'72", i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i8** %temp73, align 8
  %"lvar'74" = load %node_struct*, %node_struct** @n2, align 8
  %temp75 = getelementptr inbounds %node_struct, %node_struct* %"lvar'74", i32 0, i32 2
  %malloccall76 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %bruh77 = bitcast i8* %malloccall76 to i32*
  store i32 10, i32* %bruh77, align 4
  %name78 = bitcast i32* %bruh77 to i8*
  store i8* %name78, i8** %temp75, align 8
  %"lvar'79" = load %node_struct*, %node_struct** @n2, align 8
  %temp80 = getelementptr inbounds %node_struct, %node_struct* %"lvar'79", i32 0, i32 1
  store i1 false, i1* %temp80, align 1
  %"lvar'81" = load %node_struct*, %node_struct** @n3, align 8
  %temp82 = getelementptr inbounds %node_struct, %node_struct* %"lvar'81", i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8** %temp82, align 8
  %"lvar'83" = load %node_struct*, %node_struct** @n3, align 8
  %temp84 = getelementptr inbounds %node_struct, %node_struct* %"lvar'83", i32 0, i32 2
  %malloccall85 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %bruh86 = bitcast i8* %malloccall85 to i32*
  store i32 9001, i32* %bruh86, align 4
  %name87 = bitcast i32* %bruh86 to i8*
  store i8* %name87, i8** %temp84, align 8
  %"lvar'88" = load %node_struct*, %node_struct** @n3, align 8
  %temp89 = getelementptr inbounds %node_struct, %node_struct* %"lvar'88", i32 0, i32 1
  store i1 true, i1* %temp89, align 1
  %n1 = load %node_struct*, %node_struct** @n1, align 8
  %"lvar'90" = load %edge_t*, %edge_t** @e1, align 8
  %temp91 = getelementptr inbounds %edge_t, %edge_t* %"lvar'90", i32 0, i32 0
  store %node_struct* %n1, %node_struct** %temp91, align 8
  %n2 = load %node_struct*, %node_struct** @n2, align 8
  %"lvar'92" = load %edge_t*, %edge_t** @e1, align 8
  %temp93 = getelementptr inbounds %edge_t, %edge_t* %"lvar'92", i32 0, i32 1
  store %node_struct* %n2, %node_struct** %temp93, align 8
  %malloccall94 = tail call i8* @malloc(i32 ptrtoint (%graph_tt* getelementptr (%graph_tt, %graph_tt* null, i32 1) to i32))
  %node95 = bitcast i8* %malloccall94 to %graph_tt*
  %"name'96" = getelementptr inbounds %graph_tt, %graph_tt* %node95, i32 0, i32 0
  %"data'97" = getelementptr inbounds %graph_tt, %graph_tt* %node95, i32 0, i32 1
  store %node_node* null, %node_node** %"name'96", align 8
  store %edge_node* null, %edge_node** %"data'97", align 8
  store %graph_tt* %node95, %graph_tt** @g, align 8
  %e1 = load %edge_t*, %edge_t** @e1, align 8
  %graph_ptr = load %graph_tt*, %graph_tt** @g, align 8
  %edges = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr, i32 0, i32 1
  %edges_hd = load %edge_node*, %edge_node** %edges, align 8
  %malloccall98 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge = bitcast i8* %malloccall98 to %edge_node*
  %"lst_rst'" = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 1
  %edge_ptr = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 0
  store %edge_node* %edges_hd, %edge_node** %"lst_rst'", align 8
  store %edge_t* %e1, %edge_t** %edge_ptr, align 8
  %src_ptr = getelementptr inbounds %edge_t, %edge_t* %e1, i32 0, i32 0
  %dst_ptr = getelementptr inbounds %edge_t, %edge_t* %e1, i32 0, i32 1
  %"src'" = load %node_struct*, %node_struct** %src_ptr, align 8
  %"dst'" = load %node_struct*, %node_struct** %dst_ptr, align 8
  %ret_true = alloca i1, align 1
  store i1 false, i1* %ret_true, align 1
  %graph_ptr99 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr99, i32 0, i32 0
  %head = load %node_node*, %node_node** %nodes, align 8
  store %node_node* %head, %node_node** @llNodes, align 8
  br label %while

while:                                            ; preds = %entry, %else
  %putMeHere = load %node_node*, %node_node** @llNodes, align 8
  %curr = icmp ne %node_node* %putMeHere, null
  br i1 %curr, label %while_body, label %merge

while_body:                                       ; preds = %while
  %putMeHere100 = load %node_node*, %node_node** @llNodes, align 8
  %nodes101 = getelementptr inbounds %node_node, %node_node* %putMeHere100, i32 0, i32 0
  %"stored_node'" = load %node_struct*, %node_struct** %nodes101, align 8
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
  %ret_true102 = alloca i1, align 1
  store i1 false, i1* %ret_true102, align 1
  %graph_ptr103 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes104 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr103, i32 0, i32 0
  %head105 = load %node_node*, %node_node** %nodes104, align 8
  store %node_node* %head105, %node_node** @llNodes.1, align 8
  br label %while106

while106:                                         ; preds = %merge, %else115
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
  store i1 true, i1* %ret_true102, align 1
  br label %merge116

else115:                                          ; preds = %if113
  %toBeHere118 = load %node_node*, %node_node** @llNodes.1, align 8
  %llNodesPtr119 = getelementptr inbounds %node_node, %node_node* %toBeHere118, i32 0, i32 1
  %toBeHerenow120 = load %node_node*, %node_node** %llNodesPtr119, align 8
  store %node_node* %toBeHerenow120, %node_node** @llNodes.1, align 8
  br label %while106

merge116:                                         ; preds = %while106, %then114
  %returnVal121 = load i1, i1* %ret_true102, align 1
  br label %if122

if122:                                            ; preds = %merge116
  br i1 %returnVal, label %merge124, label %else123

else123:                                          ; preds = %if122
  %graph_ptr125 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes126 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr125, i32 0, i32 0
  %nodes_hd = load %node_node*, %node_node** %nodes126, align 8
  %malloccall127 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node = bitcast i8* %malloccall127 to %node_node*
  %"lst_rst'128" = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 1
  %node_ptr = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 0
  store %node_node* %nodes_hd, %node_node** %"lst_rst'128", align 8
  store %node_struct* %"src'", %node_struct** %node_ptr, align 8
  store %node_node* %new_node, %node_node** %nodes126, align 8
  br label %merge124

merge124:                                         ; preds = %else123, %if122
  br label %if129

if129:                                            ; preds = %merge124
  br i1 %returnVal121, label %merge131, label %else130

else130:                                          ; preds = %if129
  %graph_ptr132 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes133 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr132, i32 0, i32 0
  %nodes_hd134 = load %node_node*, %node_node** %nodes133, align 8
  %malloccall135 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node136 = bitcast i8* %malloccall135 to %node_node*
  %"lst_rst'137" = getelementptr inbounds %node_node, %node_node* %new_node136, i32 0, i32 1
  %node_ptr138 = getelementptr inbounds %node_node, %node_node* %new_node136, i32 0, i32 0
  store %node_node* %nodes_hd134, %node_node** %"lst_rst'137", align 8
  store %node_struct* %"dst'", %node_struct** %node_ptr138, align 8
  store %node_node* %new_node136, %node_node** %nodes133, align 8
  br label %merge131

merge131:                                         ; preds = %else130, %if129
  store %edge_node* %new_edge, %edge_node** %edges, align 8
  %e2 = load %edge_t*, %edge_t** @e2, align 8
  %graph_ptr139 = load %graph_tt*, %graph_tt** @g, align 8
  %edges140 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr139, i32 0, i32 1
  %edges_hd141 = load %edge_node*, %edge_node** %edges140, align 8
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
  %graph_ptr151 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes152 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr151, i32 0, i32 0
  %head153 = load %node_node*, %node_node** %nodes152, align 8
  store %node_node* %head153, %node_node** @llNodes.2, align 8
  br label %while154

while154:                                         ; preds = %merge131, %else163
  %putMeHere155 = load %node_node*, %node_node** @llNodes.2, align 8
  %curr156 = icmp ne %node_node* %putMeHere155, null
  br i1 %curr156, label %while_body157, label %merge164

while_body157:                                    ; preds = %while154
  %putMeHere158 = load %node_node*, %node_node** @llNodes.2, align 8
  %nodes159 = getelementptr inbounds %node_node, %node_node* %putMeHere158, i32 0, i32 0
  %"stored_node'160" = load %node_struct*, %node_struct** %nodes159, align 8
  br label %if161

if161:                                            ; preds = %while_body157
  %"found?165" = icmp eq %node_struct* %"stored_node'160", %"src'148"
  br i1 %"found?165", label %then162, label %else163

then162:                                          ; preds = %if161
  store i1 true, i1* %ret_true150, align 1
  br label %merge164

else163:                                          ; preds = %if161
  %toBeHere166 = load %node_node*, %node_node** @llNodes.2, align 8
  %llNodesPtr167 = getelementptr inbounds %node_node, %node_node* %toBeHere166, i32 0, i32 1
  %toBeHerenow168 = load %node_node*, %node_node** %llNodesPtr167, align 8
  store %node_node* %toBeHerenow168, %node_node** @llNodes.2, align 8
  br label %while154

merge164:                                         ; preds = %while154, %then162
  %returnVal169 = load i1, i1* %ret_true150, align 1
  %ret_true170 = alloca i1, align 1
  store i1 false, i1* %ret_true170, align 1
  %graph_ptr171 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes172 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr171, i32 0, i32 0
  %head173 = load %node_node*, %node_node** %nodes172, align 8
  store %node_node* %head173, %node_node** @llNodes.3, align 8
  br label %while174

while174:                                         ; preds = %merge164, %else183
  %putMeHere175 = load %node_node*, %node_node** @llNodes.3, align 8
  %curr176 = icmp ne %node_node* %putMeHere175, null
  br i1 %curr176, label %while_body177, label %merge184

while_body177:                                    ; preds = %while174
  %putMeHere178 = load %node_node*, %node_node** @llNodes.3, align 8
  %nodes179 = getelementptr inbounds %node_node, %node_node* %putMeHere178, i32 0, i32 0
  %"stored_node'180" = load %node_struct*, %node_struct** %nodes179, align 8
  br label %if181

if181:                                            ; preds = %while_body177
  %"found?185" = icmp eq %node_struct* %"stored_node'180", %"dst'149"
  br i1 %"found?185", label %then182, label %else183

then182:                                          ; preds = %if181
  store i1 true, i1* %ret_true170, align 1
  br label %merge184

else183:                                          ; preds = %if181
  %toBeHere186 = load %node_node*, %node_node** @llNodes.3, align 8
  %llNodesPtr187 = getelementptr inbounds %node_node, %node_node* %toBeHere186, i32 0, i32 1
  %toBeHerenow188 = load %node_node*, %node_node** %llNodesPtr187, align 8
  store %node_node* %toBeHerenow188, %node_node** @llNodes.3, align 8
  br label %while174

merge184:                                         ; preds = %while174, %then182
  %returnVal189 = load i1, i1* %ret_true170, align 1
  br label %if190

if190:                                            ; preds = %merge184
  br i1 %returnVal169, label %merge192, label %else191

else191:                                          ; preds = %if190
  %graph_ptr193 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes194 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr193, i32 0, i32 0
  %nodes_hd195 = load %node_node*, %node_node** %nodes194, align 8
  %malloccall196 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node197 = bitcast i8* %malloccall196 to %node_node*
  %"lst_rst'198" = getelementptr inbounds %node_node, %node_node* %new_node197, i32 0, i32 1
  %node_ptr199 = getelementptr inbounds %node_node, %node_node* %new_node197, i32 0, i32 0
  store %node_node* %nodes_hd195, %node_node** %"lst_rst'198", align 8
  store %node_struct* %"src'148", %node_struct** %node_ptr199, align 8
  store %node_node* %new_node197, %node_node** %nodes194, align 8
  br label %merge192

merge192:                                         ; preds = %else191, %if190
  br label %if200

if200:                                            ; preds = %merge192
  br i1 %returnVal189, label %merge202, label %else201

else201:                                          ; preds = %if200
  %graph_ptr203 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes204 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr203, i32 0, i32 0
  %nodes_hd205 = load %node_node*, %node_node** %nodes204, align 8
  %malloccall206 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node207 = bitcast i8* %malloccall206 to %node_node*
  %"lst_rst'208" = getelementptr inbounds %node_node, %node_node* %new_node207, i32 0, i32 1
  %node_ptr209 = getelementptr inbounds %node_node, %node_node* %new_node207, i32 0, i32 0
  store %node_node* %nodes_hd205, %node_node** %"lst_rst'208", align 8
  store %node_struct* %"dst'149", %node_struct** %node_ptr209, align 8
  store %node_node* %new_node207, %node_node** %nodes204, align 8
  br label %merge202

merge202:                                         ; preds = %else201, %if200
  store %edge_node* %new_edge143, %edge_node** %edges140, align 8
  %n1210 = load %node_struct*, %node_struct** @n1, align 8
  %graph_ptr211 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes212 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr211, i32 0, i32 0
  %nodes_hd213 = load %node_node*, %node_node** %nodes212, align 8
  %malloccall214 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node215 = bitcast i8* %malloccall214 to %node_node*
  %"lst_rst'216" = getelementptr inbounds %node_node, %node_node* %new_node215, i32 0, i32 1
  %node_ptr217 = getelementptr inbounds %node_node, %node_node* %new_node215, i32 0, i32 0
  store %node_node* %nodes_hd213, %node_node** %"lst_rst'216", align 8
  store %node_struct* %n1210, %node_struct** %node_ptr217, align 8
  store %node_node* %new_node215, %node_node** %nodes212, align 8
  %n2218 = load %node_struct*, %node_struct** @n2, align 8
  %graph_ptr219 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes220 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr219, i32 0, i32 0
  %nodes_hd221 = load %node_node*, %node_node** %nodes220, align 8
  %malloccall222 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node223 = bitcast i8* %malloccall222 to %node_node*
  %"lst_rst'224" = getelementptr inbounds %node_node, %node_node* %new_node223, i32 0, i32 1
  %node_ptr225 = getelementptr inbounds %node_node, %node_node* %new_node223, i32 0, i32 0
  store %node_node* %nodes_hd221, %node_node** %"lst_rst'224", align 8
  store %node_struct* %n2218, %node_struct** %node_ptr225, align 8
  store %node_node* %new_node223, %node_node** %nodes220, align 8
  %n3 = load %node_struct*, %node_struct** @n3, align 8
  %graph_ptr226 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes227 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr226, i32 0, i32 0
  %nodes_hd228 = load %node_node*, %node_node** %nodes227, align 8
  %malloccall229 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node230 = bitcast i8* %malloccall229 to %node_node*
  %"lst_rst'231" = getelementptr inbounds %node_node, %node_node* %new_node230, i32 0, i32 1
  %node_ptr232 = getelementptr inbounds %node_node, %node_node* %new_node230, i32 0, i32 0
  store %node_node* %nodes_hd228, %node_node** %"lst_rst'231", align 8
  store %node_struct* %n3, %node_struct** %node_ptr232, align 8
  store %node_node* %new_node230, %node_node** %nodes227, align 8
  %n4 = load %node_struct*, %node_struct** @n4, align 8
  %graph_ptr233 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes234 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr233, i32 0, i32 0
  %nodes_hd235 = load %node_node*, %node_node** %nodes234, align 8
  %malloccall236 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node237 = bitcast i8* %malloccall236 to %node_node*
  %"lst_rst'238" = getelementptr inbounds %node_node, %node_node* %new_node237, i32 0, i32 1
  %node_ptr239 = getelementptr inbounds %node_node, %node_node* %new_node237, i32 0, i32 0
  store %node_node* %nodes_hd235, %node_node** %"lst_rst'238", align 8
  store %node_struct* %n4, %node_struct** %node_ptr239, align 8
  store %node_node* %new_node237, %node_node** %nodes234, align 8
  %n2240 = load %node_struct*, %node_struct** @n2, align 8
  %n1241 = load %node_struct*, %node_struct** @n1, align 8
  %edgeBetweenNodes_result = call i1 @edgeBetweenNodes(%node_struct* %n1241, %node_struct* %n2240)
  store i1 %edgeBetweenNodes_result, i1* @b, align 1
  %b = load i1, i1* @b, align 1
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i1 %b)
  ret i32 0
}

declare noalias i8* @malloc(i32)

define i1 @edgeBetweenNodes(%node_struct* %n11, %node_struct* %n22) {
entry:
  %n1 = alloca %node_struct*, align 8
  store %node_struct* %n11, %node_struct** %n1, align 8
  %n2 = alloca %node_struct*, align 8
  store %node_struct* %n22, %node_struct** %n2, align 8
  %n13 = load %node_struct*, %node_struct** %n1, align 8
  %graph_ptr = load %graph_tt*, %graph_tt** @g, align 8
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
  %"foundSrc?" = icmp eq %node_struct* %"currEdgeSrc'", %n13
  %"foundDst?" = icmp eq %node_struct* %"currEdgeDst'", %n13
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
  %edge_len = alloca i32, align 4
  store i32 %3, i32* %edge_len, align 4
  %index = alloca i32, align 4
  store i32 0, i32* %index, align 4
  %found = alloca i1, align 1
  store i1 false, i1* %found, align 1
  store i32 0, i32* %index, align 4
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

while19:                                          ; preds = %merge50, %merge13
  %index55 = load i32, i32* %index, align 4
  %edge_len56 = load i32, i32* %edge_len, align 4
  %tmp57 = icmp slt i32 %index55, %edge_len56
  br i1 %tmp57, label %while_body20, label %merge58

while_body20:                                     ; preds = %while19
  %list21 = load %list_node*, %list_node** %edges10, align 8
  %index22 = load i32, i32* %index, align 4
  %malloccall23 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %8 = bitcast i8* %malloccall23 to %list_node**
  %malloccall24 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %9 = bitcast i8* %malloccall24 to i32*
  store %list_node* %list21, %list_node** %8, align 8
  store i32 %index22, i32* %9, align 4
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
  %currEdge = alloca %edge_t*, align 8
  store %edge_t* %val_ptr, %edge_t** %currEdge, align 8
  %"lvar'" = load %edge_t*, %edge_t** %currEdge, align 8
  %temp32 = getelementptr inbounds %edge_t, %edge_t* %"lvar'", i32 0, i32 1
  %currEdge.dst = load %node_struct*, %node_struct** %temp32, align 8
  %srcNode = load %node_struct*, %node_struct** %temp32, align 8
  %node1 = alloca %node_struct*, align 8
  store %node_struct* %srcNode, %node_struct** %node1, align 8
  %"lvar'33" = load %edge_t*, %edge_t** %currEdge, align 8
  %temp34 = getelementptr inbounds %edge_t, %edge_t* %"lvar'33", i32 0, i32 0
  %currEdge.src = load %node_struct*, %node_struct** %temp34, align 8
  %srcNode35 = load %node_struct*, %node_struct** %temp34, align 8
  %node2 = alloca %node_struct*, align 8
  store %node_struct* %srcNode35, %node_struct** %node2, align 8
  %node236 = load %node_struct*, %node_struct** %node2, align 8
  %n237 = load %node_struct*, %node_struct** %n2, align 8
  %tmp = icmp eq %node_struct* %node236, %n237
  %node138 = load %node_struct*, %node_struct** %node1, align 8
  %n139 = load %node_struct*, %node_struct** %n1, align 8
  %tmp40 = icmp eq %node_struct* %node138, %n139
  %tmp41 = and i1 %tmp, %tmp40
  %node242 = load %node_struct*, %node_struct** %node2, align 8
  %n143 = load %node_struct*, %node_struct** %n1, align 8
  %tmp44 = icmp eq %node_struct* %node242, %n143
  %node145 = load %node_struct*, %node_struct** %node1, align 8
  %n246 = load %node_struct*, %node_struct** %n2, align 8
  %tmp47 = icmp eq %node_struct* %node145, %n246
  %tmp48 = and i1 %tmp44, %tmp47
  %tmp49 = or i1 %tmp41, %tmp48
  br i1 %tmp49, label %then51, label %else52

merge50:                                          ; preds = %else52, %then51
  %index53 = load i32, i32* %index, align 4
  %tmp54 = add i32 %index53, 1
  store i32 %tmp54, i32* %index, align 4
  br label %while19

then51:                                           ; preds = %merge30
  store i1 true, i1* %found, align 1
  br label %merge50

else52:                                           ; preds = %merge30
  br label %merge50

merge58:                                          ; preds = %while19
  %found59 = load i1, i1* %found, align 1
  ret i1 %found59
}

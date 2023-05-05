; ModuleID = 'Graphite'
source_filename = "Graphite"

%graph_t = type { %node_node*, %edge_node* }
%node_node = type { %node_struct*, %node_node* }
%node_struct = type { i8*, i1, i8* }
%edge_node = type { %edge_t*, %edge_node* }
%edge_t = type { %node_struct*, %node_struct*, i32 }
%list_node = type { i8*, %list_node* }

@social_network = global %graph_t zeroinitializer
@user = global %node_struct* null
@0 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@p1 = global %node_struct* null
@1 = private unnamed_addr constant [6 x i8] c"Alice\00", align 1
@alice = global %node_struct* null
@2 = private unnamed_addr constant [6 x i8] c"Alice\00", align 1
@bob = global %node_struct* null
@3 = private unnamed_addr constant [4 x i8] c"Bob\00", align 1
@charlie = global %node_struct* null
@4 = private unnamed_addr constant [8 x i8] c"Charlie\00", align 1
@e1 = global %edge_t* null
@llNodes = global %node_node* null
@llNodes.1 = global %node_node* null
@e2 = global %edge_t* null
@e3 = global %edge_t* null
@e4 = global %edge_t* null
@llNodes.2 = global %node_node* null
@llNodes.3 = global %node_node* null
@llNodes.4 = global %node_node* null
@llNodes.5 = global %node_node* null
@llNodes.6 = global %node_node* null
@llNodes.7 = global %node_node* null
@edgesList = global %list_node* null
@llEdges = global %edge_node* null
@bobs_connections = global %list_node* null
@num_bobs_connections = global i32 0
@5 = private unnamed_addr constant [9 x i8] c"bob has\0A\00", align 1
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@6 = private unnamed_addr constant [13 x i8] c"connections\0A\00", align 1

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
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32))
  %data = bitcast i8* %malloccall1 to i1*
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name = bitcast i8* %malloccall2 to i8**
  %data_ptr = bitcast i1* %data to i8*
  %name_ptr = bitcast i8** %name to i8*
  %"name'" = getelementptr inbounds %node_struct, %node_struct* %node, i32 0, i32 0
  %"data'" = getelementptr inbounds %node_struct, %node_struct* %node, i32 0, i32 2
  store i8* %name_ptr, i8** %"name'", align 8
  store i8* %data_ptr, i8** %"data'", align 8
  store %node_struct* %node, %node_struct** @user, align 8
  %"lvar'" = load %node_struct*, %node_struct** @user, align 8
  %temp = getelementptr inbounds %node_struct, %node_struct* %"lvar'", i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @0, i32 0, i32 0), i8** %temp, align 8
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node4 = bitcast i8* %malloccall3 to %node_struct*
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32))
  %data6 = bitcast i8* %malloccall5 to i1*
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name8 = bitcast i8* %malloccall7 to i8**
  %data_ptr9 = bitcast i1* %data6 to i8*
  %name_ptr10 = bitcast i8** %name8 to i8*
  %"name'11" = getelementptr inbounds %node_struct, %node_struct* %node4, i32 0, i32 0
  %"data'12" = getelementptr inbounds %node_struct, %node_struct* %node4, i32 0, i32 2
  store i8* %name_ptr10, i8** %"name'11", align 8
  store i8* %data_ptr9, i8** %"data'12", align 8
  store %node_struct* %node4, %node_struct** @p1, align 8
  %"lvar'13" = load %node_struct*, %node_struct** @p1, align 8
  %temp14 = getelementptr inbounds %node_struct, %node_struct* %"lvar'13", i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1, i32 0, i32 0), i8** %temp14, align 8
  %"lvar'15" = load %node_struct*, %node_struct** @p1, align 8
  %temp16 = getelementptr inbounds %node_struct, %node_struct* %"lvar'15", i32 0, i32 1
  %p1.flag = load i1, i1* %temp16, align 1
  %p1.flag17 = load i1, i1* %temp16, align 1
  %malloccall18 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node19 = bitcast i8* %malloccall18 to %node_struct*
  %malloccall20 = tail call i8* @malloc(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32))
  %data21 = bitcast i8* %malloccall20 to i1*
  %malloccall22 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name23 = bitcast i8* %malloccall22 to i8**
  %data_ptr24 = bitcast i1* %data21 to i8*
  %name_ptr25 = bitcast i8** %name23 to i8*
  %"name'26" = getelementptr inbounds %node_struct, %node_struct* %node19, i32 0, i32 0
  %"data'27" = getelementptr inbounds %node_struct, %node_struct* %node19, i32 0, i32 2
  store i8* %name_ptr25, i8** %"name'26", align 8
  store i8* %data_ptr24, i8** %"data'27", align 8
  store %node_struct* %node19, %node_struct** @alice, align 8
  %"lvar'28" = load %node_struct*, %node_struct** @alice, align 8
  %temp29 = getelementptr inbounds %node_struct, %node_struct* %"lvar'28", i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2, i32 0, i32 0), i8** %temp29, align 8
  %"lvar'30" = load %node_struct*, %node_struct** @alice, align 8
  %temp31 = getelementptr inbounds %node_struct, %node_struct* %"lvar'30", i32 0, i32 1
  store i1 false, i1* %temp31, align 1
  %malloccall32 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node33 = bitcast i8* %malloccall32 to %node_struct*
  %malloccall34 = tail call i8* @malloc(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32))
  %data35 = bitcast i8* %malloccall34 to i1*
  %malloccall36 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name37 = bitcast i8* %malloccall36 to i8**
  %data_ptr38 = bitcast i1* %data35 to i8*
  %name_ptr39 = bitcast i8** %name37 to i8*
  %"name'40" = getelementptr inbounds %node_struct, %node_struct* %node33, i32 0, i32 0
  %"data'41" = getelementptr inbounds %node_struct, %node_struct* %node33, i32 0, i32 2
  store i8* %name_ptr39, i8** %"name'40", align 8
  store i8* %data_ptr38, i8** %"data'41", align 8
  store %node_struct* %node33, %node_struct** @bob, align 8
  %"lvar'42" = load %node_struct*, %node_struct** @bob, align 8
  %temp43 = getelementptr inbounds %node_struct, %node_struct* %"lvar'42", i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3, i32 0, i32 0), i8** %temp43, align 8
  %"lvar'44" = load %node_struct*, %node_struct** @bob, align 8
  %temp45 = getelementptr inbounds %node_struct, %node_struct* %"lvar'44", i32 0, i32 1
  store i1 true, i1* %temp45, align 1
  %malloccall46 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node47 = bitcast i8* %malloccall46 to %node_struct*
  %malloccall48 = tail call i8* @malloc(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32))
  %data49 = bitcast i8* %malloccall48 to i1*
  %malloccall50 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name51 = bitcast i8* %malloccall50 to i8**
  %data_ptr52 = bitcast i1* %data49 to i8*
  %name_ptr53 = bitcast i8** %name51 to i8*
  %"name'54" = getelementptr inbounds %node_struct, %node_struct* %node47, i32 0, i32 0
  %"data'55" = getelementptr inbounds %node_struct, %node_struct* %node47, i32 0, i32 2
  store i8* %name_ptr53, i8** %"name'54", align 8
  store i8* %data_ptr52, i8** %"data'55", align 8
  store %node_struct* %node47, %node_struct** @charlie, align 8
  %"lvar'56" = load %node_struct*, %node_struct** @charlie, align 8
  %temp57 = getelementptr inbounds %node_struct, %node_struct* %"lvar'56", i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @4, i32 0, i32 0), i8** %temp57, align 8
  %"lvar'58" = load %node_struct*, %node_struct** @charlie, align 8
  %temp59 = getelementptr inbounds %node_struct, %node_struct* %"lvar'58", i32 0, i32 1
  store i1 true, i1* %temp59, align 1
  %user = load %node_struct*, %node_struct** @user, align 8
  %bob = load %node_struct*, %node_struct** @bob, align 8
  %malloccall60 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct = bitcast i8* %malloccall60 to %edge_t*
  %"name'61" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 0
  %"name'62" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 1
  %"name'63" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 2
  store %node_struct* %user, %node_struct** %"name'61", align 8
  store %node_struct* %bob, %node_struct** %"name'62", align 8
  store i32 0, i32* %"name'63", align 4
  %malloccall64 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge = bitcast i8* %malloccall64 to %edge_t*
  %"name'65" = getelementptr inbounds %edge_t, %edge_t* %edge, i32 0, i32 0
  %"data'66" = getelementptr inbounds %edge_t, %edge_t* %edge, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'65", align 8
  store %node_struct* null, %node_struct** %"data'66", align 8
  store %edge_t* %edge, %edge_t** @e1, align 8
  store %edge_t* %myEdgeStruct, %edge_t** @e1, align 8
  %e1 = load %edge_t*, %edge_t** @e1, align 8
  %edges_hd = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @social_network, i32 0, i32 1), align 8
  %malloccall67 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge = bitcast i8* %malloccall67 to %edge_node*
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
  %head = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @social_network, i32 0, i32 0), align 8
  store %node_node* %head, %node_node** @llNodes, align 8
  br label %while

while:                                            ; preds = %entry, %else
  %putMeHere = load %node_node*, %node_node** @llNodes, align 8
  %curr = icmp ne %node_node* %putMeHere, null
  br i1 %curr, label %while_body, label %merge

while_body:                                       ; preds = %while
  %putMeHere68 = load %node_node*, %node_node** @llNodes, align 8
  %nodes = getelementptr inbounds %node_node, %node_node* %putMeHere68, i32 0, i32 0
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
  %ret_true69 = alloca i1, align 1
  store i1 false, i1* %ret_true69, align 1
  %head70 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @social_network, i32 0, i32 0), align 8
  store %node_node* %head70, %node_node** @llNodes.1, align 8
  br label %while71

while71:                                          ; preds = %merge, %else80
  %putMeHere72 = load %node_node*, %node_node** @llNodes.1, align 8
  %curr73 = icmp ne %node_node* %putMeHere72, null
  br i1 %curr73, label %while_body74, label %merge81

while_body74:                                     ; preds = %while71
  %putMeHere75 = load %node_node*, %node_node** @llNodes.1, align 8
  %nodes76 = getelementptr inbounds %node_node, %node_node* %putMeHere75, i32 0, i32 0
  %"stored_node'77" = load %node_struct*, %node_struct** %nodes76, align 8
  br label %if78

if78:                                             ; preds = %while_body74
  %"found?82" = icmp eq %node_struct* %"stored_node'77", %"dst'"
  br i1 %"found?82", label %then79, label %else80

then79:                                           ; preds = %if78
  store i1 true, i1* %ret_true69, align 1
  br label %merge81

else80:                                           ; preds = %if78
  %toBeHere83 = load %node_node*, %node_node** @llNodes.1, align 8
  %llNodesPtr84 = getelementptr inbounds %node_node, %node_node* %toBeHere83, i32 0, i32 1
  %toBeHerenow85 = load %node_node*, %node_node** %llNodesPtr84, align 8
  store %node_node* %toBeHerenow85, %node_node** @llNodes.1, align 8
  br label %while71

merge81:                                          ; preds = %while71, %then79
  %returnVal86 = load i1, i1* %ret_true69, align 1
  br label %if87

if87:                                             ; preds = %merge81
  br i1 %returnVal, label %merge89, label %else88

else88:                                           ; preds = %if87
  %nodes_hd = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @social_network, i32 0, i32 0), align 8
  %malloccall90 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node = bitcast i8* %malloccall90 to %node_node*
  %"lst_rst'91" = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 1
  %node_ptr = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 0
  store %node_node* %nodes_hd, %node_node** %"lst_rst'91", align 8
  store %node_struct* %"src'", %node_struct** %node_ptr, align 8
  store %node_node* %new_node, %node_node** getelementptr inbounds (%graph_t, %graph_t* @social_network, i32 0, i32 0), align 8
  br label %merge89

merge89:                                          ; preds = %else88, %if87
  br label %if92

if92:                                             ; preds = %merge89
  br i1 %returnVal86, label %merge94, label %else93

else93:                                           ; preds = %if92
  %nodes_hd95 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @social_network, i32 0, i32 0), align 8
  %malloccall96 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node97 = bitcast i8* %malloccall96 to %node_node*
  %"lst_rst'98" = getelementptr inbounds %node_node, %node_node* %new_node97, i32 0, i32 1
  %node_ptr99 = getelementptr inbounds %node_node, %node_node* %new_node97, i32 0, i32 0
  store %node_node* %nodes_hd95, %node_node** %"lst_rst'98", align 8
  store %node_struct* %"dst'", %node_struct** %node_ptr99, align 8
  store %node_node* %new_node97, %node_node** getelementptr inbounds (%graph_t, %graph_t* @social_network, i32 0, i32 0), align 8
  br label %merge94

merge94:                                          ; preds = %else93, %if92
  store %edge_node* %new_edge, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @social_network, i32 0, i32 1), align 8
  %bob100 = load %node_struct*, %node_struct** @bob, align 8
  %alice = load %node_struct*, %node_struct** @alice, align 8
  %malloccall101 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct102 = bitcast i8* %malloccall101 to %edge_t*
  %"name'103" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct102, i32 0, i32 0
  %"name'104" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct102, i32 0, i32 1
  %"name'105" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct102, i32 0, i32 2
  store %node_struct* %bob100, %node_struct** %"name'103", align 8
  store %node_struct* %alice, %node_struct** %"name'104", align 8
  store i32 0, i32* %"name'105", align 4
  %malloccall106 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge107 = bitcast i8* %malloccall106 to %edge_t*
  %"name'108" = getelementptr inbounds %edge_t, %edge_t* %edge107, i32 0, i32 0
  %"data'109" = getelementptr inbounds %edge_t, %edge_t* %edge107, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'108", align 8
  store %node_struct* null, %node_struct** %"data'109", align 8
  store %edge_t* %edge107, %edge_t** @e2, align 8
  store %edge_t* %myEdgeStruct102, %edge_t** @e2, align 8
  %bob110 = load %node_struct*, %node_struct** @bob, align 8
  %charlie = load %node_struct*, %node_struct** @charlie, align 8
  %malloccall111 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct112 = bitcast i8* %malloccall111 to %edge_t*
  %"name'113" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct112, i32 0, i32 0
  %"name'114" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct112, i32 0, i32 1
  %"name'115" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct112, i32 0, i32 2
  store %node_struct* %bob110, %node_struct** %"name'113", align 8
  store %node_struct* %charlie, %node_struct** %"name'114", align 8
  store i32 0, i32* %"name'115", align 4
  %malloccall116 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge117 = bitcast i8* %malloccall116 to %edge_t*
  %"name'118" = getelementptr inbounds %edge_t, %edge_t* %edge117, i32 0, i32 0
  %"data'119" = getelementptr inbounds %edge_t, %edge_t* %edge117, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'118", align 8
  store %node_struct* null, %node_struct** %"data'119", align 8
  store %edge_t* %edge117, %edge_t** @e3, align 8
  store %edge_t* %myEdgeStruct112, %edge_t** @e3, align 8
  %charlie120 = load %node_struct*, %node_struct** @charlie, align 8
  %alice121 = load %node_struct*, %node_struct** @alice, align 8
  %malloccall122 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct123 = bitcast i8* %malloccall122 to %edge_t*
  %"name'124" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct123, i32 0, i32 0
  %"name'125" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct123, i32 0, i32 1
  %"name'126" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct123, i32 0, i32 2
  store %node_struct* %charlie120, %node_struct** %"name'124", align 8
  store %node_struct* %alice121, %node_struct** %"name'125", align 8
  store i32 0, i32* %"name'126", align 4
  %malloccall127 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge128 = bitcast i8* %malloccall127 to %edge_t*
  %"name'129" = getelementptr inbounds %edge_t, %edge_t* %edge128, i32 0, i32 0
  %"data'130" = getelementptr inbounds %edge_t, %edge_t* %edge128, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'129", align 8
  store %node_struct* null, %node_struct** %"data'130", align 8
  store %edge_t* %edge128, %edge_t** @e4, align 8
  store %edge_t* %myEdgeStruct123, %edge_t** @e4, align 8
  %e2 = load %edge_t*, %edge_t** @e2, align 8
  %edges_hd131 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @social_network, i32 0, i32 1), align 8
  %malloccall132 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge133 = bitcast i8* %malloccall132 to %edge_node*
  %"lst_rst'134" = getelementptr inbounds %edge_node, %edge_node* %new_edge133, i32 0, i32 1
  %edge_ptr135 = getelementptr inbounds %edge_node, %edge_node* %new_edge133, i32 0, i32 0
  store %edge_node* %edges_hd131, %edge_node** %"lst_rst'134", align 8
  store %edge_t* %e2, %edge_t** %edge_ptr135, align 8
  %src_ptr136 = getelementptr inbounds %edge_t, %edge_t* %e2, i32 0, i32 0
  %dst_ptr137 = getelementptr inbounds %edge_t, %edge_t* %e2, i32 0, i32 1
  %"src'138" = load %node_struct*, %node_struct** %src_ptr136, align 8
  %"dst'139" = load %node_struct*, %node_struct** %dst_ptr137, align 8
  %ret_true140 = alloca i1, align 1
  store i1 false, i1* %ret_true140, align 1
  %head141 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @social_network, i32 0, i32 0), align 8
  store %node_node* %head141, %node_node** @llNodes.2, align 8
  br label %while142

while142:                                         ; preds = %merge94, %else151
  %putMeHere143 = load %node_node*, %node_node** @llNodes.2, align 8
  %curr144 = icmp ne %node_node* %putMeHere143, null
  br i1 %curr144, label %while_body145, label %merge152

while_body145:                                    ; preds = %while142
  %putMeHere146 = load %node_node*, %node_node** @llNodes.2, align 8
  %nodes147 = getelementptr inbounds %node_node, %node_node* %putMeHere146, i32 0, i32 0
  %"stored_node'148" = load %node_struct*, %node_struct** %nodes147, align 8
  br label %if149

if149:                                            ; preds = %while_body145
  %"found?153" = icmp eq %node_struct* %"stored_node'148", %"src'138"
  br i1 %"found?153", label %then150, label %else151

then150:                                          ; preds = %if149
  store i1 true, i1* %ret_true140, align 1
  br label %merge152

else151:                                          ; preds = %if149
  %toBeHere154 = load %node_node*, %node_node** @llNodes.2, align 8
  %llNodesPtr155 = getelementptr inbounds %node_node, %node_node* %toBeHere154, i32 0, i32 1
  %toBeHerenow156 = load %node_node*, %node_node** %llNodesPtr155, align 8
  store %node_node* %toBeHerenow156, %node_node** @llNodes.2, align 8
  br label %while142

merge152:                                         ; preds = %while142, %then150
  %returnVal157 = load i1, i1* %ret_true140, align 1
  %ret_true158 = alloca i1, align 1
  store i1 false, i1* %ret_true158, align 1
  %head159 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @social_network, i32 0, i32 0), align 8
  store %node_node* %head159, %node_node** @llNodes.3, align 8
  br label %while160

while160:                                         ; preds = %merge152, %else169
  %putMeHere161 = load %node_node*, %node_node** @llNodes.3, align 8
  %curr162 = icmp ne %node_node* %putMeHere161, null
  br i1 %curr162, label %while_body163, label %merge170

while_body163:                                    ; preds = %while160
  %putMeHere164 = load %node_node*, %node_node** @llNodes.3, align 8
  %nodes165 = getelementptr inbounds %node_node, %node_node* %putMeHere164, i32 0, i32 0
  %"stored_node'166" = load %node_struct*, %node_struct** %nodes165, align 8
  br label %if167

if167:                                            ; preds = %while_body163
  %"found?171" = icmp eq %node_struct* %"stored_node'166", %"dst'139"
  br i1 %"found?171", label %then168, label %else169

then168:                                          ; preds = %if167
  store i1 true, i1* %ret_true158, align 1
  br label %merge170

else169:                                          ; preds = %if167
  %toBeHere172 = load %node_node*, %node_node** @llNodes.3, align 8
  %llNodesPtr173 = getelementptr inbounds %node_node, %node_node* %toBeHere172, i32 0, i32 1
  %toBeHerenow174 = load %node_node*, %node_node** %llNodesPtr173, align 8
  store %node_node* %toBeHerenow174, %node_node** @llNodes.3, align 8
  br label %while160

merge170:                                         ; preds = %while160, %then168
  %returnVal175 = load i1, i1* %ret_true158, align 1
  br label %if176

if176:                                            ; preds = %merge170
  br i1 %returnVal157, label %merge178, label %else177

else177:                                          ; preds = %if176
  %nodes_hd179 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @social_network, i32 0, i32 0), align 8
  %malloccall180 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node181 = bitcast i8* %malloccall180 to %node_node*
  %"lst_rst'182" = getelementptr inbounds %node_node, %node_node* %new_node181, i32 0, i32 1
  %node_ptr183 = getelementptr inbounds %node_node, %node_node* %new_node181, i32 0, i32 0
  store %node_node* %nodes_hd179, %node_node** %"lst_rst'182", align 8
  store %node_struct* %"src'138", %node_struct** %node_ptr183, align 8
  store %node_node* %new_node181, %node_node** getelementptr inbounds (%graph_t, %graph_t* @social_network, i32 0, i32 0), align 8
  br label %merge178

merge178:                                         ; preds = %else177, %if176
  br label %if184

if184:                                            ; preds = %merge178
  br i1 %returnVal175, label %merge186, label %else185

else185:                                          ; preds = %if184
  %nodes_hd187 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @social_network, i32 0, i32 0), align 8
  %malloccall188 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node189 = bitcast i8* %malloccall188 to %node_node*
  %"lst_rst'190" = getelementptr inbounds %node_node, %node_node* %new_node189, i32 0, i32 1
  %node_ptr191 = getelementptr inbounds %node_node, %node_node* %new_node189, i32 0, i32 0
  store %node_node* %nodes_hd187, %node_node** %"lst_rst'190", align 8
  store %node_struct* %"dst'139", %node_struct** %node_ptr191, align 8
  store %node_node* %new_node189, %node_node** getelementptr inbounds (%graph_t, %graph_t* @social_network, i32 0, i32 0), align 8
  br label %merge186

merge186:                                         ; preds = %else185, %if184
  store %edge_node* %new_edge133, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @social_network, i32 0, i32 1), align 8
  %e3 = load %edge_t*, %edge_t** @e3, align 8
  %edges_hd192 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @social_network, i32 0, i32 1), align 8
  %malloccall193 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge194 = bitcast i8* %malloccall193 to %edge_node*
  %"lst_rst'195" = getelementptr inbounds %edge_node, %edge_node* %new_edge194, i32 0, i32 1
  %edge_ptr196 = getelementptr inbounds %edge_node, %edge_node* %new_edge194, i32 0, i32 0
  store %edge_node* %edges_hd192, %edge_node** %"lst_rst'195", align 8
  store %edge_t* %e3, %edge_t** %edge_ptr196, align 8
  %src_ptr197 = getelementptr inbounds %edge_t, %edge_t* %e3, i32 0, i32 0
  %dst_ptr198 = getelementptr inbounds %edge_t, %edge_t* %e3, i32 0, i32 1
  %"src'199" = load %node_struct*, %node_struct** %src_ptr197, align 8
  %"dst'200" = load %node_struct*, %node_struct** %dst_ptr198, align 8
  %ret_true201 = alloca i1, align 1
  store i1 false, i1* %ret_true201, align 1
  %head202 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @social_network, i32 0, i32 0), align 8
  store %node_node* %head202, %node_node** @llNodes.4, align 8
  br label %while203

while203:                                         ; preds = %merge186, %else212
  %putMeHere204 = load %node_node*, %node_node** @llNodes.4, align 8
  %curr205 = icmp ne %node_node* %putMeHere204, null
  br i1 %curr205, label %while_body206, label %merge213

while_body206:                                    ; preds = %while203
  %putMeHere207 = load %node_node*, %node_node** @llNodes.4, align 8
  %nodes208 = getelementptr inbounds %node_node, %node_node* %putMeHere207, i32 0, i32 0
  %"stored_node'209" = load %node_struct*, %node_struct** %nodes208, align 8
  br label %if210

if210:                                            ; preds = %while_body206
  %"found?214" = icmp eq %node_struct* %"stored_node'209", %"src'199"
  br i1 %"found?214", label %then211, label %else212

then211:                                          ; preds = %if210
  store i1 true, i1* %ret_true201, align 1
  br label %merge213

else212:                                          ; preds = %if210
  %toBeHere215 = load %node_node*, %node_node** @llNodes.4, align 8
  %llNodesPtr216 = getelementptr inbounds %node_node, %node_node* %toBeHere215, i32 0, i32 1
  %toBeHerenow217 = load %node_node*, %node_node** %llNodesPtr216, align 8
  store %node_node* %toBeHerenow217, %node_node** @llNodes.4, align 8
  br label %while203

merge213:                                         ; preds = %while203, %then211
  %returnVal218 = load i1, i1* %ret_true201, align 1
  %ret_true219 = alloca i1, align 1
  store i1 false, i1* %ret_true219, align 1
  %head220 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @social_network, i32 0, i32 0), align 8
  store %node_node* %head220, %node_node** @llNodes.5, align 8
  br label %while221

while221:                                         ; preds = %merge213, %else230
  %putMeHere222 = load %node_node*, %node_node** @llNodes.5, align 8
  %curr223 = icmp ne %node_node* %putMeHere222, null
  br i1 %curr223, label %while_body224, label %merge231

while_body224:                                    ; preds = %while221
  %putMeHere225 = load %node_node*, %node_node** @llNodes.5, align 8
  %nodes226 = getelementptr inbounds %node_node, %node_node* %putMeHere225, i32 0, i32 0
  %"stored_node'227" = load %node_struct*, %node_struct** %nodes226, align 8
  br label %if228

if228:                                            ; preds = %while_body224
  %"found?232" = icmp eq %node_struct* %"stored_node'227", %"dst'200"
  br i1 %"found?232", label %then229, label %else230

then229:                                          ; preds = %if228
  store i1 true, i1* %ret_true219, align 1
  br label %merge231

else230:                                          ; preds = %if228
  %toBeHere233 = load %node_node*, %node_node** @llNodes.5, align 8
  %llNodesPtr234 = getelementptr inbounds %node_node, %node_node* %toBeHere233, i32 0, i32 1
  %toBeHerenow235 = load %node_node*, %node_node** %llNodesPtr234, align 8
  store %node_node* %toBeHerenow235, %node_node** @llNodes.5, align 8
  br label %while221

merge231:                                         ; preds = %while221, %then229
  %returnVal236 = load i1, i1* %ret_true219, align 1
  br label %if237

if237:                                            ; preds = %merge231
  br i1 %returnVal218, label %merge239, label %else238

else238:                                          ; preds = %if237
  %nodes_hd240 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @social_network, i32 0, i32 0), align 8
  %malloccall241 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node242 = bitcast i8* %malloccall241 to %node_node*
  %"lst_rst'243" = getelementptr inbounds %node_node, %node_node* %new_node242, i32 0, i32 1
  %node_ptr244 = getelementptr inbounds %node_node, %node_node* %new_node242, i32 0, i32 0
  store %node_node* %nodes_hd240, %node_node** %"lst_rst'243", align 8
  store %node_struct* %"src'199", %node_struct** %node_ptr244, align 8
  store %node_node* %new_node242, %node_node** getelementptr inbounds (%graph_t, %graph_t* @social_network, i32 0, i32 0), align 8
  br label %merge239

merge239:                                         ; preds = %else238, %if237
  br label %if245

if245:                                            ; preds = %merge239
  br i1 %returnVal236, label %merge247, label %else246

else246:                                          ; preds = %if245
  %nodes_hd248 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @social_network, i32 0, i32 0), align 8
  %malloccall249 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node250 = bitcast i8* %malloccall249 to %node_node*
  %"lst_rst'251" = getelementptr inbounds %node_node, %node_node* %new_node250, i32 0, i32 1
  %node_ptr252 = getelementptr inbounds %node_node, %node_node* %new_node250, i32 0, i32 0
  store %node_node* %nodes_hd248, %node_node** %"lst_rst'251", align 8
  store %node_struct* %"dst'200", %node_struct** %node_ptr252, align 8
  store %node_node* %new_node250, %node_node** getelementptr inbounds (%graph_t, %graph_t* @social_network, i32 0, i32 0), align 8
  br label %merge247

merge247:                                         ; preds = %else246, %if245
  store %edge_node* %new_edge194, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @social_network, i32 0, i32 1), align 8
  %e4 = load %edge_t*, %edge_t** @e4, align 8
  %edges_hd253 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @social_network, i32 0, i32 1), align 8
  %malloccall254 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge255 = bitcast i8* %malloccall254 to %edge_node*
  %"lst_rst'256" = getelementptr inbounds %edge_node, %edge_node* %new_edge255, i32 0, i32 1
  %edge_ptr257 = getelementptr inbounds %edge_node, %edge_node* %new_edge255, i32 0, i32 0
  store %edge_node* %edges_hd253, %edge_node** %"lst_rst'256", align 8
  store %edge_t* %e4, %edge_t** %edge_ptr257, align 8
  %src_ptr258 = getelementptr inbounds %edge_t, %edge_t* %e4, i32 0, i32 0
  %dst_ptr259 = getelementptr inbounds %edge_t, %edge_t* %e4, i32 0, i32 1
  %"src'260" = load %node_struct*, %node_struct** %src_ptr258, align 8
  %"dst'261" = load %node_struct*, %node_struct** %dst_ptr259, align 8
  %ret_true262 = alloca i1, align 1
  store i1 false, i1* %ret_true262, align 1
  %head263 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @social_network, i32 0, i32 0), align 8
  store %node_node* %head263, %node_node** @llNodes.6, align 8
  br label %while264

while264:                                         ; preds = %merge247, %else273
  %putMeHere265 = load %node_node*, %node_node** @llNodes.6, align 8
  %curr266 = icmp ne %node_node* %putMeHere265, null
  br i1 %curr266, label %while_body267, label %merge274

while_body267:                                    ; preds = %while264
  %putMeHere268 = load %node_node*, %node_node** @llNodes.6, align 8
  %nodes269 = getelementptr inbounds %node_node, %node_node* %putMeHere268, i32 0, i32 0
  %"stored_node'270" = load %node_struct*, %node_struct** %nodes269, align 8
  br label %if271

if271:                                            ; preds = %while_body267
  %"found?275" = icmp eq %node_struct* %"stored_node'270", %"src'260"
  br i1 %"found?275", label %then272, label %else273

then272:                                          ; preds = %if271
  store i1 true, i1* %ret_true262, align 1
  br label %merge274

else273:                                          ; preds = %if271
  %toBeHere276 = load %node_node*, %node_node** @llNodes.6, align 8
  %llNodesPtr277 = getelementptr inbounds %node_node, %node_node* %toBeHere276, i32 0, i32 1
  %toBeHerenow278 = load %node_node*, %node_node** %llNodesPtr277, align 8
  store %node_node* %toBeHerenow278, %node_node** @llNodes.6, align 8
  br label %while264

merge274:                                         ; preds = %while264, %then272
  %returnVal279 = load i1, i1* %ret_true262, align 1
  %ret_true280 = alloca i1, align 1
  store i1 false, i1* %ret_true280, align 1
  %head281 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @social_network, i32 0, i32 0), align 8
  store %node_node* %head281, %node_node** @llNodes.7, align 8
  br label %while282

while282:                                         ; preds = %merge274, %else291
  %putMeHere283 = load %node_node*, %node_node** @llNodes.7, align 8
  %curr284 = icmp ne %node_node* %putMeHere283, null
  br i1 %curr284, label %while_body285, label %merge292

while_body285:                                    ; preds = %while282
  %putMeHere286 = load %node_node*, %node_node** @llNodes.7, align 8
  %nodes287 = getelementptr inbounds %node_node, %node_node* %putMeHere286, i32 0, i32 0
  %"stored_node'288" = load %node_struct*, %node_struct** %nodes287, align 8
  br label %if289

if289:                                            ; preds = %while_body285
  %"found?293" = icmp eq %node_struct* %"stored_node'288", %"dst'261"
  br i1 %"found?293", label %then290, label %else291

then290:                                          ; preds = %if289
  store i1 true, i1* %ret_true280, align 1
  br label %merge292

else291:                                          ; preds = %if289
  %toBeHere294 = load %node_node*, %node_node** @llNodes.7, align 8
  %llNodesPtr295 = getelementptr inbounds %node_node, %node_node* %toBeHere294, i32 0, i32 1
  %toBeHerenow296 = load %node_node*, %node_node** %llNodesPtr295, align 8
  store %node_node* %toBeHerenow296, %node_node** @llNodes.7, align 8
  br label %while282

merge292:                                         ; preds = %while282, %then290
  %returnVal297 = load i1, i1* %ret_true280, align 1
  br label %if298

if298:                                            ; preds = %merge292
  br i1 %returnVal279, label %merge300, label %else299

else299:                                          ; preds = %if298
  %nodes_hd301 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @social_network, i32 0, i32 0), align 8
  %malloccall302 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node303 = bitcast i8* %malloccall302 to %node_node*
  %"lst_rst'304" = getelementptr inbounds %node_node, %node_node* %new_node303, i32 0, i32 1
  %node_ptr305 = getelementptr inbounds %node_node, %node_node* %new_node303, i32 0, i32 0
  store %node_node* %nodes_hd301, %node_node** %"lst_rst'304", align 8
  store %node_struct* %"src'260", %node_struct** %node_ptr305, align 8
  store %node_node* %new_node303, %node_node** getelementptr inbounds (%graph_t, %graph_t* @social_network, i32 0, i32 0), align 8
  br label %merge300

merge300:                                         ; preds = %else299, %if298
  br label %if306

if306:                                            ; preds = %merge300
  br i1 %returnVal297, label %merge308, label %else307

else307:                                          ; preds = %if306
  %nodes_hd309 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @social_network, i32 0, i32 0), align 8
  %malloccall310 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node311 = bitcast i8* %malloccall310 to %node_node*
  %"lst_rst'312" = getelementptr inbounds %node_node, %node_node* %new_node311, i32 0, i32 1
  %node_ptr313 = getelementptr inbounds %node_node, %node_node* %new_node311, i32 0, i32 0
  store %node_node* %nodes_hd309, %node_node** %"lst_rst'312", align 8
  store %node_struct* %"dst'261", %node_struct** %node_ptr313, align 8
  store %node_node* %new_node311, %node_node** getelementptr inbounds (%graph_t, %graph_t* @social_network, i32 0, i32 0), align 8
  br label %merge308

merge308:                                         ; preds = %else307, %if306
  store %edge_node* %new_edge255, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @social_network, i32 0, i32 1), align 8
  %bob314 = load %node_struct*, %node_struct** @bob, align 8
  %head315 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @social_network, i32 0, i32 1), align 8
  store %edge_node* %head315, %edge_node** @llEdges, align 8
  br label %while316

while316:                                         ; preds = %merge308, %else324
  %putMeHere317 = load %edge_node*, %edge_node** @llEdges, align 8
  %curr318 = icmp ne %edge_node* %putMeHere317, null
  br i1 %curr318, label %while_body319, label %merge325

while_body319:                                    ; preds = %while316
  %putMeHere320 = load %edge_node*, %edge_node** @llEdges, align 8
  %nodes321 = getelementptr inbounds %edge_node, %edge_node* %putMeHere320, i32 0, i32 0
  %"stored_nodeA'" = load %edge_t*, %edge_t** %nodes321, align 8
  br label %if322

if322:                                            ; preds = %while_body319
  %nodes326 = getelementptr inbounds %edge_t, %edge_t* %"stored_nodeA'", i32 0, i32 0
  %nodes327 = getelementptr inbounds %edge_t, %edge_t* %"stored_nodeA'", i32 0, i32 1
  %"currEdgeSrc'" = load %node_struct*, %node_struct** %nodes326, align 8
  %"currEdgeDst'" = load %node_struct*, %node_struct** %nodes327, align 8
  %"foundSrc?" = icmp eq %node_struct* %"currEdgeSrc'", %bob314
  %"foundDst?" = icmp eq %node_struct* %"currEdgeDst'", %bob314
  %if_found = or i1 %"foundSrc?", %"foundDst?"
  br i1 %if_found, label %then323, label %else324

then323:                                          ; preds = %if322
  %malloccall328 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node329 = bitcast i8* %malloccall328 to %list_node*
  %nodes330 = getelementptr inbounds %list_node, %list_node* %node329, i32 0, i32 0
  %nodes331 = getelementptr inbounds %list_node, %list_node* %node329, i32 0, i32 1
  %malloccall332 = tail call i8* @malloc(i32 ptrtoint (%edge_t** getelementptr (%edge_t*, %edge_t** null, i32 1) to i32))
  %please_work = bitcast i8* %malloccall332 to %edge_t**
  store %edge_t* %"stored_nodeA'", %edge_t** %please_work, align 8
  %currEdgeVoidPtr = bitcast %edge_t** %please_work to i8*
  store i8* %currEdgeVoidPtr, i8** %nodes330, align 8
  %nextEdges = load %list_node*, %list_node** @edgesList, align 8
  store %list_node* %nextEdges, %list_node** %nodes331, align 8
  store %list_node* %node329, %list_node** @edgesList, align 8
  br label %else324

else324:                                          ; preds = %then323, %if322
  %toBeHere333 = load %edge_node*, %edge_node** @llEdges, align 8
  %llNodesPtr334 = getelementptr inbounds %edge_node, %edge_node* %toBeHere333, i32 0, i32 1
  %toBeHerenow335 = load %edge_node*, %edge_node** %llNodesPtr334, align 8
  store %edge_node* %toBeHerenow335, %edge_node** @llEdges, align 8
  br label %while316

merge325:                                         ; preds = %while316
  %return = load %list_node*, %list_node** @edgesList, align 8
  store %list_node* %return, %list_node** @bobs_connections, align 8
  %list = load %list_node*, %list_node** @bobs_connections, align 8
  %malloccall336 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %0 = bitcast i8* %malloccall336 to %list_node**
  %malloccall337 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %malloccall337 to i32*
  store i32 0, i32* %1, align 4
  store %list_node* %list, %list_node** %0, align 8
  %2 = icmp eq %list_node* %list, null
  br i1 %2, label %then339, label %else340

merge338:                                         ; preds = %merge344, %then339
  %3 = load i32, i32* %1, align 4
  store i32 %3, i32* @num_bobs_connections, align 4
  %num_bobs_connections = load i32, i32* @num_bobs_connections, align 4
  %tmp = sub i32 %num_bobs_connections, 1
  store i32 %tmp, i32* @num_bobs_connections, align 4
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0))
  %num_bobs_connections345 = load i32, i32* @num_bobs_connections, align 4
  %printf346 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %num_bobs_connections345)
  %printf347 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @6, i32 0, i32 0))
  ret i32 0

then339:                                          ; preds = %merge325
  store i32 0, i32* %1, align 4
  br label %merge338

else340:                                          ; preds = %merge325
  br label %traverse_loop

traverse_loop:                                    ; preds = %while_body341, %else340
  %4 = load %list_node*, %list_node** %0, align 8
  %5 = icmp ne %list_node* %4, null
  br i1 %5, label %while_body341, label %merge344

while_body341:                                    ; preds = %traverse_loop
  %6 = load %list_node*, %list_node** %0, align 8
  %temp342 = getelementptr inbounds %list_node, %list_node* %6, i32 0, i32 1
  %temp343 = load %list_node*, %list_node** %temp342, align 8
  %7 = load i32, i32* %1, align 4
  %add = add i32 %7, 1
  store i32 %add, i32* %1, align 4
  store %list_node* %temp343, %list_node** %0, align 8
  br label %traverse_loop

merge344:                                         ; preds = %traverse_loop
  br label %merge338
}

declare noalias i8* @malloc(i32)

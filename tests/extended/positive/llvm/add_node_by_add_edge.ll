; ModuleID = 'Graphite'
source_filename = "Graphite"

%graph_tt = type { %node_node*, %edge_node* }
%node_node = type { %node_struct*, %node_node* }
%node_struct = type { i8*, i1, i8* }
%edge_node = type { %edge_t*, %edge_node* }
%edge_t = type { %node_struct*, %node_struct*, i32 }

@g = global %graph_tt* null
@n1 = global %node_struct* null
@n2 = global %node_struct* null
@0 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@1 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@e = global %edge_t* null
@llNodes = global %node_node* null
@llNodes.1 = global %node_node* null
@2 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@llNodes.2 = global %node_node* null
@b1 = global i1 false
@3 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@llNodes.3 = global %node_node* null
@b2 = global i1 false
@4 = private unnamed_addr constant [19 x i8] c"one and two exist\0A\00", align 1
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@5 = private unnamed_addr constant [13 x i8] c"always true\0A\00", align 1
@b3 = global i1 false
@fmt.5 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@6 = private unnamed_addr constant [13 x i8] c"edge exists\0A\00", align 1
@llEdges = global %edge_node* null
@b4 = global i1 false
@fmt.6 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@7 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@llNodes.7 = global %node_node* null
@b6 = global i1 false
@8 = private unnamed_addr constant [49 x i8] c"name still exists (should be! we just added it)\0A\00", align 1
@fmt.8 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llNodes.9 = global %node_node* null
@prevNode = global %node_node* null
@9 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@llNodes.10 = global %node_node* null
@b5 = global i1 false
@10 = private unnamed_addr constant [55 x i8] c"name still exists (should not be! we just removed it)\0A\00", align 1
@fmt.11 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

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
  store %node_struct* %node2, %node_struct** @n1, align 8
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
  store %node_struct* %node8, %node_struct** @n2, align 8
  %"lvar'" = load %node_struct*, %node_struct** @n1, align 8
  %temp = getelementptr inbounds %node_struct, %node_struct* %"lvar'", i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @0, i32 0, i32 0), i8** %temp, align 8
  %"lvar'17" = load %node_struct*, %node_struct** @n2, align 8
  %temp18 = getelementptr inbounds %node_struct, %node_struct* %"lvar'17", i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1, i32 0, i32 0), i8** %temp18, align 8
  %n1 = load %node_struct*, %node_struct** @n1, align 8
  %n2 = load %node_struct*, %node_struct** @n2, align 8
  %malloccall19 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct = bitcast i8* %malloccall19 to %edge_t*
  %"name'20" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 0
  %"name'21" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 1
  %"name'22" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 2
  store %node_struct* %n1, %node_struct** %"name'20", align 8
  store %node_struct* %n2, %node_struct** %"name'21", align 8
  store i32 0, i32* %"name'22", align 4
  %malloccall23 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge = bitcast i8* %malloccall23 to %edge_t*
  %"name'24" = getelementptr inbounds %edge_t, %edge_t* %edge, i32 0, i32 0
  %"data'25" = getelementptr inbounds %edge_t, %edge_t* %edge, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'24", align 8
  store %node_struct* null, %node_struct** %"data'25", align 8
  store %edge_t* %edge, %edge_t** @e, align 8
  store %edge_t* %myEdgeStruct, %edge_t** @e, align 8
  %n126 = load %node_struct*, %node_struct** @n1, align 8
  %graph_ptr = load %graph_tt*, %graph_tt** @g, align 8
  %nodes = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr, i32 0, i32 0
  %nodes_hd = load %node_node*, %node_node** %nodes, align 8
  %malloccall27 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node = bitcast i8* %malloccall27 to %node_node*
  %"lst_rst'" = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 1
  %node_ptr = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 0
  store %node_node* %nodes_hd, %node_node** %"lst_rst'", align 8
  store %node_struct* %n126, %node_struct** %node_ptr, align 8
  store %node_node* %new_node, %node_node** %nodes, align 8
  %e = load %edge_t*, %edge_t** @e, align 8
  %graph_ptr28 = load %graph_tt*, %graph_tt** @g, align 8
  %edges = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr28, i32 0, i32 1
  %edges_hd = load %edge_node*, %edge_node** %edges, align 8
  %malloccall29 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge = bitcast i8* %malloccall29 to %edge_node*
  %"lst_rst'30" = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 1
  %edge_ptr = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 0
  store %edge_node* %edges_hd, %edge_node** %"lst_rst'30", align 8
  store %edge_t* %e, %edge_t** %edge_ptr, align 8
  %src_ptr = getelementptr inbounds %edge_t, %edge_t* %e, i32 0, i32 0
  %dst_ptr = getelementptr inbounds %edge_t, %edge_t* %e, i32 0, i32 1
  %"src'" = load %node_struct*, %node_struct** %src_ptr, align 8
  %"dst'" = load %node_struct*, %node_struct** %dst_ptr, align 8
  %ret_true = alloca i1, align 1
  store i1 false, i1* %ret_true, align 1
  %graph_ptr31 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes32 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr31, i32 0, i32 0
  %head = load %node_node*, %node_node** %nodes32, align 8
  store %node_node* %head, %node_node** @llNodes, align 8
  br label %while

while:                                            ; preds = %entry, %else
  %putMeHere = load %node_node*, %node_node** @llNodes, align 8
  %curr = icmp ne %node_node* %putMeHere, null
  br i1 %curr, label %while_body, label %merge

while_body:                                       ; preds = %while
  %putMeHere33 = load %node_node*, %node_node** @llNodes, align 8
  %nodes34 = getelementptr inbounds %node_node, %node_node* %putMeHere33, i32 0, i32 0
  %"stored_node'" = load %node_struct*, %node_struct** %nodes34, align 8
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
  %ret_true35 = alloca i1, align 1
  store i1 false, i1* %ret_true35, align 1
  %graph_ptr36 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes37 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr36, i32 0, i32 0
  %head38 = load %node_node*, %node_node** %nodes37, align 8
  store %node_node* %head38, %node_node** @llNodes.1, align 8
  br label %while39

while39:                                          ; preds = %merge, %else48
  %putMeHere40 = load %node_node*, %node_node** @llNodes.1, align 8
  %curr41 = icmp ne %node_node* %putMeHere40, null
  br i1 %curr41, label %while_body42, label %merge49

while_body42:                                     ; preds = %while39
  %putMeHere43 = load %node_node*, %node_node** @llNodes.1, align 8
  %nodes44 = getelementptr inbounds %node_node, %node_node* %putMeHere43, i32 0, i32 0
  %"stored_node'45" = load %node_struct*, %node_struct** %nodes44, align 8
  br label %if46

if46:                                             ; preds = %while_body42
  %"found?50" = icmp eq %node_struct* %"stored_node'45", %"dst'"
  br i1 %"found?50", label %then47, label %else48

then47:                                           ; preds = %if46
  store i1 true, i1* %ret_true35, align 1
  br label %merge49

else48:                                           ; preds = %if46
  %toBeHere51 = load %node_node*, %node_node** @llNodes.1, align 8
  %llNodesPtr52 = getelementptr inbounds %node_node, %node_node* %toBeHere51, i32 0, i32 1
  %toBeHerenow53 = load %node_node*, %node_node** %llNodesPtr52, align 8
  store %node_node* %toBeHerenow53, %node_node** @llNodes.1, align 8
  br label %while39

merge49:                                          ; preds = %while39, %then47
  %returnVal54 = load i1, i1* %ret_true35, align 1
  br label %if55

if55:                                             ; preds = %merge49
  br i1 %returnVal, label %merge57, label %else56

else56:                                           ; preds = %if55
  %graph_ptr58 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes59 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr58, i32 0, i32 0
  %nodes_hd60 = load %node_node*, %node_node** %nodes59, align 8
  %malloccall61 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node62 = bitcast i8* %malloccall61 to %node_node*
  %"lst_rst'63" = getelementptr inbounds %node_node, %node_node* %new_node62, i32 0, i32 1
  %node_ptr64 = getelementptr inbounds %node_node, %node_node* %new_node62, i32 0, i32 0
  store %node_node* %nodes_hd60, %node_node** %"lst_rst'63", align 8
  store %node_struct* %"src'", %node_struct** %node_ptr64, align 8
  store %node_node* %new_node62, %node_node** %nodes59, align 8
  br label %merge57

merge57:                                          ; preds = %else56, %if55
  br label %if65

if65:                                             ; preds = %merge57
  br i1 %returnVal54, label %merge67, label %else66

else66:                                           ; preds = %if65
  %graph_ptr68 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes69 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr68, i32 0, i32 0
  %nodes_hd70 = load %node_node*, %node_node** %nodes69, align 8
  %malloccall71 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node72 = bitcast i8* %malloccall71 to %node_node*
  %"lst_rst'73" = getelementptr inbounds %node_node, %node_node* %new_node72, i32 0, i32 1
  %node_ptr74 = getelementptr inbounds %node_node, %node_node* %new_node72, i32 0, i32 0
  store %node_node* %nodes_hd70, %node_node** %"lst_rst'73", align 8
  store %node_struct* %"dst'", %node_struct** %node_ptr74, align 8
  store %node_node* %new_node72, %node_node** %nodes69, align 8
  br label %merge67

merge67:                                          ; preds = %else66, %if65
  store %edge_node* %new_edge, %edge_node** %edges, align 8
  %ret_true75 = alloca i1, align 1
  store i1 false, i1* %ret_true75, align 1
  %graph_ptr76 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes77 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr76, i32 0, i32 0
  %head78 = load %node_node*, %node_node** %nodes77, align 8
  store %node_node* %head78, %node_node** @llNodes.2, align 8
  br label %while79

while79:                                          ; preds = %merge67, %else88
  %putMeHere80 = load %node_node*, %node_node** @llNodes.2, align 8
  %curr81 = icmp ne %node_node* %putMeHere80, null
  br i1 %curr81, label %while_body82, label %merge89

while_body82:                                     ; preds = %while79
  %putMeHere83 = load %node_node*, %node_node** @llNodes.2, align 8
  %nodes84 = getelementptr inbounds %node_node, %node_node* %putMeHere83, i32 0, i32 0
  %"stored_node'85" = load %node_struct*, %node_struct** %nodes84, align 8
  br label %if86

if86:                                             ; preds = %while_body82
  %namePtr = getelementptr inbounds %node_struct, %node_struct* %"stored_node'85", i32 0, i32 0
  %nodeName = load i8*, i8** %namePtr, align 8
  %strcmp = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @2, i32 0, i32 0), i8* %nodeName)
  %equal = icmp eq i32 %strcmp, 0
  br i1 %equal, label %then87, label %else88

then87:                                           ; preds = %if86
  store i1 %equal, i1* %ret_true75, align 1
  br label %merge89

else88:                                           ; preds = %if86
  store i1 %equal, i1* %ret_true75, align 1
  %toBeHere90 = load %node_node*, %node_node** @llNodes.2, align 8
  %llNodesPtr91 = getelementptr inbounds %node_node, %node_node* %toBeHere90, i32 0, i32 1
  %toBeHerenow92 = load %node_node*, %node_node** %llNodesPtr91, align 8
  store %node_node* %toBeHerenow92, %node_node** @llNodes.2, align 8
  br label %while79

merge89:                                          ; preds = %while79, %then87
  %toRtrn = load i1, i1* %ret_true75, align 1
  store i1 %toRtrn, i1* @b1, align 1
  %ret_true93 = alloca i1, align 1
  store i1 false, i1* %ret_true93, align 1
  %graph_ptr94 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes95 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr94, i32 0, i32 0
  %head96 = load %node_node*, %node_node** %nodes95, align 8
  store %node_node* %head96, %node_node** @llNodes.3, align 8
  br label %while97

while97:                                          ; preds = %merge89, %else106
  %putMeHere98 = load %node_node*, %node_node** @llNodes.3, align 8
  %curr99 = icmp ne %node_node* %putMeHere98, null
  br i1 %curr99, label %while_body100, label %merge107

while_body100:                                    ; preds = %while97
  %putMeHere101 = load %node_node*, %node_node** @llNodes.3, align 8
  %nodes102 = getelementptr inbounds %node_node, %node_node* %putMeHere101, i32 0, i32 0
  %"stored_node'103" = load %node_struct*, %node_struct** %nodes102, align 8
  br label %if104

if104:                                            ; preds = %while_body100
  %namePtr108 = getelementptr inbounds %node_struct, %node_struct* %"stored_node'103", i32 0, i32 0
  %nodeName109 = load i8*, i8** %namePtr108, align 8
  %strcmp110 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3, i32 0, i32 0), i8* %nodeName109)
  %equal111 = icmp eq i32 %strcmp110, 0
  br i1 %equal111, label %then105, label %else106

then105:                                          ; preds = %if104
  store i1 %equal111, i1* %ret_true93, align 1
  br label %merge107

else106:                                          ; preds = %if104
  store i1 %equal111, i1* %ret_true93, align 1
  %toBeHere112 = load %node_node*, %node_node** @llNodes.3, align 8
  %llNodesPtr113 = getelementptr inbounds %node_node, %node_node* %toBeHere112, i32 0, i32 1
  %toBeHerenow114 = load %node_node*, %node_node** %llNodesPtr113, align 8
  store %node_node* %toBeHerenow114, %node_node** @llNodes.3, align 8
  br label %while97

merge107:                                         ; preds = %while97, %then105
  %toRtrn115 = load i1, i1* %ret_true93, align 1
  store i1 %toRtrn115, i1* @b2, align 1
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0))
  %b1 = load i1, i1* @b1, align 1
  %printf116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i1 %b1)
  %b2 = load i1, i1* @b2, align 1
  %printf117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.4, i32 0, i32 0), i1 %b2)
  %printf118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0))
  store i1 true, i1* @b3, align 1
  %b3 = load i1, i1* @b3, align 1
  %printf119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.5, i32 0, i32 0), i1 %b3)
  %printf120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @6, i32 0, i32 0))
  %ret_true121 = alloca i1, align 1
  store i1 false, i1* %ret_true121, align 1
  %e122 = load %edge_t*, %edge_t** @e, align 8
  %graph_ptr123 = load %graph_tt*, %graph_tt** @g, align 8
  %edges124 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr123, i32 0, i32 1
  %head125 = load %edge_node*, %edge_node** %edges124, align 8
  store %edge_node* %head125, %edge_node** @llEdges, align 8
  br label %while126

while126:                                         ; preds = %merge107, %else135
  %putMeHere127 = load %edge_node*, %edge_node** @llEdges, align 8
  %curr128 = icmp ne %edge_node* %putMeHere127, null
  br i1 %curr128, label %while_body129, label %merge136

while_body129:                                    ; preds = %while126
  %putMeHere130 = load %edge_node*, %edge_node** @llEdges, align 8
  %nodes131 = getelementptr inbounds %edge_node, %edge_node* %putMeHere130, i32 0, i32 0
  %"stored_node'132" = load %edge_t*, %edge_t** %nodes131, align 8
  br label %if133

if133:                                            ; preds = %while_body129
  %"found?137" = icmp eq %edge_t* %"stored_node'132", %e122
  br i1 %"found?137", label %then134, label %else135

then134:                                          ; preds = %if133
  store i1 true, i1* %ret_true121, align 1
  br label %merge136

else135:                                          ; preds = %if133
  %toBeHere138 = load %edge_node*, %edge_node** @llEdges, align 8
  %llNodesPtr139 = getelementptr inbounds %edge_node, %edge_node* %toBeHere138, i32 0, i32 1
  %toBeHerenow140 = load %edge_node*, %edge_node** %llNodesPtr139, align 8
  store %edge_node* %toBeHerenow140, %edge_node** @llEdges, align 8
  br label %while126

merge136:                                         ; preds = %while126, %then134
  %returnVal141 = load i1, i1* %ret_true121, align 1
  store i1 %returnVal141, i1* @b4, align 1
  %b4 = load i1, i1* @b4, align 1
  %printf142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.6, i32 0, i32 0), i1 %b4)
  %ret_true143 = alloca i1, align 1
  store i1 false, i1* %ret_true143, align 1
  %graph_ptr144 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes145 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr144, i32 0, i32 0
  %head146 = load %node_node*, %node_node** %nodes145, align 8
  store %node_node* %head146, %node_node** @llNodes.7, align 8
  br label %while147

while147:                                         ; preds = %merge136, %else156
  %putMeHere148 = load %node_node*, %node_node** @llNodes.7, align 8
  %curr149 = icmp ne %node_node* %putMeHere148, null
  br i1 %curr149, label %while_body150, label %merge157

while_body150:                                    ; preds = %while147
  %putMeHere151 = load %node_node*, %node_node** @llNodes.7, align 8
  %nodes152 = getelementptr inbounds %node_node, %node_node* %putMeHere151, i32 0, i32 0
  %"stored_node'153" = load %node_struct*, %node_struct** %nodes152, align 8
  br label %if154

if154:                                            ; preds = %while_body150
  %namePtr158 = getelementptr inbounds %node_struct, %node_struct* %"stored_node'153", i32 0, i32 0
  %nodeName159 = load i8*, i8** %namePtr158, align 8
  %strcmp160 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @7, i32 0, i32 0), i8* %nodeName159)
  %equal161 = icmp eq i32 %strcmp160, 0
  br i1 %equal161, label %then155, label %else156

then155:                                          ; preds = %if154
  store i1 %equal161, i1* %ret_true143, align 1
  br label %merge157

else156:                                          ; preds = %if154
  store i1 %equal161, i1* %ret_true143, align 1
  %toBeHere162 = load %node_node*, %node_node** @llNodes.7, align 8
  %llNodesPtr163 = getelementptr inbounds %node_node, %node_node* %toBeHere162, i32 0, i32 1
  %toBeHerenow164 = load %node_node*, %node_node** %llNodesPtr163, align 8
  store %node_node* %toBeHerenow164, %node_node** @llNodes.7, align 8
  br label %while147

merge157:                                         ; preds = %while147, %then155
  %toRtrn165 = load i1, i1* %ret_true143, align 1
  store i1 %toRtrn165, i1* @b6, align 1
  %printf166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @8, i32 0, i32 0))
  %b6 = load i1, i1* @b6, align 1
  %printf167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.8, i32 0, i32 0), i1 %b6)
  %ret_true168 = alloca i1, align 1
  store i1 false, i1* %ret_true168, align 1
  %n1169 = load %node_struct*, %node_struct** @n1, align 8
  %graph_ptr170 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes171 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr170, i32 0, i32 0
  %head172 = load %node_node*, %node_node** %nodes171, align 8
  store %node_node* %head172, %node_node** @prevNode, align 8
  store %node_node* %head172, %node_node** @llNodes.9, align 8
  br label %while173

while173:                                         ; preds = %merge157, %else184
  %putMeHere174 = load %node_node*, %node_node** @llNodes.9, align 8
  %curr175 = icmp ne %node_node* %putMeHere174, null
  br i1 %curr175, label %while_body176, label %merge185

while_body176:                                    ; preds = %while173
  %putMeHere177 = load %node_node*, %node_node** @llNodes.9, align 8
  %nodes178 = getelementptr inbounds %node_node, %node_node* %putMeHere177, i32 0, i32 0
  %"stored_node'179" = load %node_struct*, %node_struct** %nodes178, align 8
  br label %if180

if180:                                            ; preds = %while_body176
  %"found?186" = icmp eq %node_struct* %"stored_node'179", %n1169
  br i1 %"found?186", label %then181, label %else184

then181:                                          ; preds = %if180
  %toBeHere187 = load %node_node*, %node_node** @llNodes.9, align 8
  %toBeHere188 = load %node_node*, %node_node** @prevNode, align 8
  %"found?189" = icmp eq %node_node* %toBeHere187, %toBeHere188
  br i1 %"found?189", label %then183, label %then182

then182:                                          ; preds = %then181
  %loadHere = load %node_node*, %node_node** @prevNode, align 8
  %nxtNode = getelementptr inbounds %node_node, %node_node* %loadHere, i32 0, i32 1
  %nodesmore = getelementptr inbounds %node_node, %node_node* %toBeHere187, i32 0, i32 1
  %"stored_nodemore'" = load %node_node*, %node_node** %nodesmore, align 8
  store %node_node* %"stored_nodemore'", %node_node** %nxtNode, align 8
  store i1 true, i1* %ret_true168, align 1
  br label %merge185

then183:                                          ; preds = %then181
  %llNodesPtr_original = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr170, i32 0, i32 0
  %nodesmore190 = getelementptr inbounds %node_node, %node_node* %toBeHere187, i32 0, i32 1
  %"stored_nodemore'191" = load %node_node*, %node_node** %nodesmore190, align 8
  store %node_node* %"stored_nodemore'191", %node_node** %llNodesPtr_original, align 8
  store i1 true, i1* %ret_true168, align 1
  br label %merge185

else184:                                          ; preds = %if180
  %toBeHere192 = load %node_node*, %node_node** @llNodes.9, align 8
  %llNodesPtr193 = getelementptr inbounds %node_node, %node_node* %toBeHere192, i32 0, i32 1
  %toBeHerenow194 = load %node_node*, %node_node** %llNodesPtr193, align 8
  store %node_node* %toBeHerenow194, %node_node** @llNodes.9, align 8
  br label %while173

merge185:                                         ; preds = %while173, %then183, %then182
  %returnVal195 = load i1, i1* %ret_true168, align 1
  %ret_true196 = alloca i1, align 1
  store i1 false, i1* %ret_true196, align 1
  %graph_ptr197 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes198 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr197, i32 0, i32 0
  %head199 = load %node_node*, %node_node** %nodes198, align 8
  store %node_node* %head199, %node_node** @llNodes.10, align 8
  br label %while200

while200:                                         ; preds = %merge185, %else209
  %putMeHere201 = load %node_node*, %node_node** @llNodes.10, align 8
  %curr202 = icmp ne %node_node* %putMeHere201, null
  br i1 %curr202, label %while_body203, label %merge210

while_body203:                                    ; preds = %while200
  %putMeHere204 = load %node_node*, %node_node** @llNodes.10, align 8
  %nodes205 = getelementptr inbounds %node_node, %node_node* %putMeHere204, i32 0, i32 0
  %"stored_node'206" = load %node_struct*, %node_struct** %nodes205, align 8
  br label %if207

if207:                                            ; preds = %while_body203
  %namePtr211 = getelementptr inbounds %node_struct, %node_struct* %"stored_node'206", i32 0, i32 0
  %nodeName212 = load i8*, i8** %namePtr211, align 8
  %strcmp213 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @9, i32 0, i32 0), i8* %nodeName212)
  %equal214 = icmp eq i32 %strcmp213, 0
  br i1 %equal214, label %then208, label %else209

then208:                                          ; preds = %if207
  store i1 %equal214, i1* %ret_true196, align 1
  br label %merge210

else209:                                          ; preds = %if207
  store i1 %equal214, i1* %ret_true196, align 1
  %toBeHere215 = load %node_node*, %node_node** @llNodes.10, align 8
  %llNodesPtr216 = getelementptr inbounds %node_node, %node_node* %toBeHere215, i32 0, i32 1
  %toBeHerenow217 = load %node_node*, %node_node** %llNodesPtr216, align 8
  store %node_node* %toBeHerenow217, %node_node** @llNodes.10, align 8
  br label %while200

merge210:                                         ; preds = %while200, %then208
  %toRtrn218 = load i1, i1* %ret_true196, align 1
  store i1 %toRtrn218, i1* @b5, align 1
  %printf219 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @10, i32 0, i32 0))
  %b5 = load i1, i1* @b5, align 1
  %printf220 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.11, i32 0, i32 0), i1 %b5)
  ret i32 0
}

declare noalias i8* @malloc(i32)

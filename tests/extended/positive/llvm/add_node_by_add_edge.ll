; ModuleID = 'Graphite'
source_filename = "Graphite"

%graph_t = type { %node_node*, %edge_node* }
%node_node = type { %node_struct*, %node_node* }
%node_struct = type { i8*, i1, i8* }
%edge_node = type { %edge_t*, %edge_node* }
%edge_t = type { %node_struct*, %node_struct*, i32 }

@g = global %graph_t zeroinitializer
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
  %"lvar'" = load %node_struct*, %node_struct** @n1, align 8
  %temp = getelementptr inbounds %node_struct, %node_struct* %"lvar'", i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @0, i32 0, i32 0), i8** %temp, align 8
  %"lvar'13" = load %node_struct*, %node_struct** @n2, align 8
  %temp14 = getelementptr inbounds %node_struct, %node_struct* %"lvar'13", i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1, i32 0, i32 0), i8** %temp14, align 8
  %n1 = load %node_struct*, %node_struct** @n1, align 8
  %n2 = load %node_struct*, %node_struct** @n2, align 8
  %malloccall15 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct = bitcast i8* %malloccall15 to %edge_t*
  %"name'16" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 0
  %"name'17" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 1
  %"name'18" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 2
  store %node_struct* %n1, %node_struct** %"name'16", align 8
  store %node_struct* %n2, %node_struct** %"name'17", align 8
  store i32 0, i32* %"name'18", align 4
  %malloccall19 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge = bitcast i8* %malloccall19 to %edge_t*
  %"name'20" = getelementptr inbounds %edge_t, %edge_t* %edge, i32 0, i32 0
  %"data'21" = getelementptr inbounds %edge_t, %edge_t* %edge, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'20", align 8
  store %node_struct* null, %node_struct** %"data'21", align 8
  store %edge_t* %edge, %edge_t** @e, align 8
  store %edge_t* %myEdgeStruct, %edge_t** @e, align 8
  %n122 = load %node_struct*, %node_struct** @n1, align 8
  %nodes_hd = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall23 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node = bitcast i8* %malloccall23 to %node_node*
  %"lst_rst'" = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 1
  %node_ptr = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 0
  store %node_node* %nodes_hd, %node_node** %"lst_rst'", align 8
  store %node_struct* %n122, %node_struct** %node_ptr, align 8
  store %node_node* %new_node, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %e = load %edge_t*, %edge_t** @e, align 8
  %edges_hd = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %malloccall24 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge = bitcast i8* %malloccall24 to %edge_node*
  %"lst_rst'25" = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 1
  %edge_ptr = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 0
  store %edge_node* %edges_hd, %edge_node** %"lst_rst'25", align 8
  store %edge_t* %e, %edge_t** %edge_ptr, align 8
  %src_ptr = getelementptr inbounds %edge_t, %edge_t* %e, i32 0, i32 0
  %dst_ptr = getelementptr inbounds %edge_t, %edge_t* %e, i32 0, i32 1
  %"src'" = load %node_struct*, %node_struct** %src_ptr, align 8
  %"dst'" = load %node_struct*, %node_struct** %dst_ptr, align 8
  %ret_true = alloca i1, align 1
  store i1 false, i1* %ret_true, align 1
  %head = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head, %node_node** @llNodes, align 8
  br label %while

while:                                            ; preds = %entry, %else
  %putMeHere = load %node_node*, %node_node** @llNodes, align 8
  %curr = icmp ne %node_node* %putMeHere, null
  br i1 %curr, label %while_body, label %merge

while_body:                                       ; preds = %while
  %putMeHere26 = load %node_node*, %node_node** @llNodes, align 8
  %nodes = getelementptr inbounds %node_node, %node_node* %putMeHere26, i32 0, i32 0
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
  %ret_true27 = alloca i1, align 1
  store i1 false, i1* %ret_true27, align 1
  %head28 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head28, %node_node** @llNodes.1, align 8
  br label %while29

while29:                                          ; preds = %merge, %else38
  %putMeHere30 = load %node_node*, %node_node** @llNodes.1, align 8
  %curr31 = icmp ne %node_node* %putMeHere30, null
  br i1 %curr31, label %while_body32, label %merge39

while_body32:                                     ; preds = %while29
  %putMeHere33 = load %node_node*, %node_node** @llNodes.1, align 8
  %nodes34 = getelementptr inbounds %node_node, %node_node* %putMeHere33, i32 0, i32 0
  %"stored_node'35" = load %node_struct*, %node_struct** %nodes34, align 8
  br label %if36

if36:                                             ; preds = %while_body32
  %"found?40" = icmp eq %node_struct* %"stored_node'35", %"dst'"
  br i1 %"found?40", label %then37, label %else38

then37:                                           ; preds = %if36
  store i1 true, i1* %ret_true27, align 1
  br label %merge39

else38:                                           ; preds = %if36
  %toBeHere41 = load %node_node*, %node_node** @llNodes.1, align 8
  %llNodesPtr42 = getelementptr inbounds %node_node, %node_node* %toBeHere41, i32 0, i32 1
  %toBeHerenow43 = load %node_node*, %node_node** %llNodesPtr42, align 8
  store %node_node* %toBeHerenow43, %node_node** @llNodes.1, align 8
  br label %while29

merge39:                                          ; preds = %while29, %then37
  %returnVal44 = load i1, i1* %ret_true27, align 1
  br label %if45

if45:                                             ; preds = %merge39
  br i1 %returnVal, label %merge47, label %else46

else46:                                           ; preds = %if45
  %nodes_hd48 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall49 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node50 = bitcast i8* %malloccall49 to %node_node*
  %"lst_rst'51" = getelementptr inbounds %node_node, %node_node* %new_node50, i32 0, i32 1
  %node_ptr52 = getelementptr inbounds %node_node, %node_node* %new_node50, i32 0, i32 0
  store %node_node* %nodes_hd48, %node_node** %"lst_rst'51", align 8
  store %node_struct* %"src'", %node_struct** %node_ptr52, align 8
  store %node_node* %new_node50, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  br label %merge47

merge47:                                          ; preds = %else46, %if45
  br label %if53

if53:                                             ; preds = %merge47
  br i1 %returnVal44, label %merge55, label %else54

else54:                                           ; preds = %if53
  %nodes_hd56 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall57 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node58 = bitcast i8* %malloccall57 to %node_node*
  %"lst_rst'59" = getelementptr inbounds %node_node, %node_node* %new_node58, i32 0, i32 1
  %node_ptr60 = getelementptr inbounds %node_node, %node_node* %new_node58, i32 0, i32 0
  store %node_node* %nodes_hd56, %node_node** %"lst_rst'59", align 8
  store %node_struct* %"dst'", %node_struct** %node_ptr60, align 8
  store %node_node* %new_node58, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  br label %merge55

merge55:                                          ; preds = %else54, %if53
  store %edge_node* %new_edge, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %ret_true61 = alloca i1, align 1
  store i1 false, i1* %ret_true61, align 1
  %head62 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head62, %node_node** @llNodes.2, align 8
  br label %while63

while63:                                          ; preds = %merge55, %else72
  %putMeHere64 = load %node_node*, %node_node** @llNodes.2, align 8
  %curr65 = icmp ne %node_node* %putMeHere64, null
  br i1 %curr65, label %while_body66, label %merge73

while_body66:                                     ; preds = %while63
  %putMeHere67 = load %node_node*, %node_node** @llNodes.2, align 8
  %nodes68 = getelementptr inbounds %node_node, %node_node* %putMeHere67, i32 0, i32 0
  %"stored_node'69" = load %node_struct*, %node_struct** %nodes68, align 8
  br label %if70

if70:                                             ; preds = %while_body66
  %namePtr = getelementptr inbounds %node_struct, %node_struct* %"stored_node'69", i32 0, i32 0
  %nodeName = load i8*, i8** %namePtr, align 8
  %strcmp = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @2, i32 0, i32 0), i8* %nodeName)
  %equal = icmp eq i32 %strcmp, 0
  br i1 %equal, label %then71, label %else72

then71:                                           ; preds = %if70
  store i1 %equal, i1* %ret_true61, align 1
  br label %merge73

else72:                                           ; preds = %if70
  store i1 %equal, i1* %ret_true61, align 1
  %toBeHere74 = load %node_node*, %node_node** @llNodes.2, align 8
  %llNodesPtr75 = getelementptr inbounds %node_node, %node_node* %toBeHere74, i32 0, i32 1
  %toBeHerenow76 = load %node_node*, %node_node** %llNodesPtr75, align 8
  store %node_node* %toBeHerenow76, %node_node** @llNodes.2, align 8
  br label %while63

merge73:                                          ; preds = %while63, %then71
  %toRtrn = load i1, i1* %ret_true61, align 1
  store i1 %toRtrn, i1* @b1, align 1
  %ret_true77 = alloca i1, align 1
  store i1 false, i1* %ret_true77, align 1
  %head78 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head78, %node_node** @llNodes.3, align 8
  br label %while79

while79:                                          ; preds = %merge73, %else88
  %putMeHere80 = load %node_node*, %node_node** @llNodes.3, align 8
  %curr81 = icmp ne %node_node* %putMeHere80, null
  br i1 %curr81, label %while_body82, label %merge89

while_body82:                                     ; preds = %while79
  %putMeHere83 = load %node_node*, %node_node** @llNodes.3, align 8
  %nodes84 = getelementptr inbounds %node_node, %node_node* %putMeHere83, i32 0, i32 0
  %"stored_node'85" = load %node_struct*, %node_struct** %nodes84, align 8
  br label %if86

if86:                                             ; preds = %while_body82
  %namePtr90 = getelementptr inbounds %node_struct, %node_struct* %"stored_node'85", i32 0, i32 0
  %nodeName91 = load i8*, i8** %namePtr90, align 8
  %strcmp92 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3, i32 0, i32 0), i8* %nodeName91)
  %equal93 = icmp eq i32 %strcmp92, 0
  br i1 %equal93, label %then87, label %else88

then87:                                           ; preds = %if86
  store i1 %equal93, i1* %ret_true77, align 1
  br label %merge89

else88:                                           ; preds = %if86
  store i1 %equal93, i1* %ret_true77, align 1
  %toBeHere94 = load %node_node*, %node_node** @llNodes.3, align 8
  %llNodesPtr95 = getelementptr inbounds %node_node, %node_node* %toBeHere94, i32 0, i32 1
  %toBeHerenow96 = load %node_node*, %node_node** %llNodesPtr95, align 8
  store %node_node* %toBeHerenow96, %node_node** @llNodes.3, align 8
  br label %while79

merge89:                                          ; preds = %while79, %then87
  %toRtrn97 = load i1, i1* %ret_true77, align 1
  store i1 %toRtrn97, i1* @b2, align 1
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0))
  %b1 = load i1, i1* @b1, align 1
  %printf98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i1 %b1)
  %b2 = load i1, i1* @b2, align 1
  %printf99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.4, i32 0, i32 0), i1 %b2)
  %printf100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0))
  store i1 true, i1* @b3, align 1
  %b3 = load i1, i1* @b3, align 1
  %printf101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.5, i32 0, i32 0), i1 %b3)
  %printf102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @6, i32 0, i32 0))
  %ret_true103 = alloca i1, align 1
  store i1 false, i1* %ret_true103, align 1
  %e104 = load %edge_t*, %edge_t** @e, align 8
  %head105 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  store %edge_node* %head105, %edge_node** @llEdges, align 8
  br label %while106

while106:                                         ; preds = %merge89, %else115
  %putMeHere107 = load %edge_node*, %edge_node** @llEdges, align 8
  %curr108 = icmp ne %edge_node* %putMeHere107, null
  br i1 %curr108, label %while_body109, label %merge116

while_body109:                                    ; preds = %while106
  %putMeHere110 = load %edge_node*, %edge_node** @llEdges, align 8
  %nodes111 = getelementptr inbounds %edge_node, %edge_node* %putMeHere110, i32 0, i32 0
  %"stored_node'112" = load %edge_t*, %edge_t** %nodes111, align 8
  br label %if113

if113:                                            ; preds = %while_body109
  %"found?117" = icmp eq %edge_t* %"stored_node'112", %e104
  br i1 %"found?117", label %then114, label %else115

then114:                                          ; preds = %if113
  store i1 true, i1* %ret_true103, align 1
  br label %merge116

else115:                                          ; preds = %if113
  %toBeHere118 = load %edge_node*, %edge_node** @llEdges, align 8
  %llNodesPtr119 = getelementptr inbounds %edge_node, %edge_node* %toBeHere118, i32 0, i32 1
  %toBeHerenow120 = load %edge_node*, %edge_node** %llNodesPtr119, align 8
  store %edge_node* %toBeHerenow120, %edge_node** @llEdges, align 8
  br label %while106

merge116:                                         ; preds = %while106, %then114
  %returnVal121 = load i1, i1* %ret_true103, align 1
  store i1 %returnVal121, i1* @b4, align 1
  %b4 = load i1, i1* @b4, align 1
  %printf122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.6, i32 0, i32 0), i1 %b4)
  %ret_true123 = alloca i1, align 1
  store i1 false, i1* %ret_true123, align 1
  %head124 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head124, %node_node** @llNodes.7, align 8
  br label %while125

while125:                                         ; preds = %merge116, %else134
  %putMeHere126 = load %node_node*, %node_node** @llNodes.7, align 8
  %curr127 = icmp ne %node_node* %putMeHere126, null
  br i1 %curr127, label %while_body128, label %merge135

while_body128:                                    ; preds = %while125
  %putMeHere129 = load %node_node*, %node_node** @llNodes.7, align 8
  %nodes130 = getelementptr inbounds %node_node, %node_node* %putMeHere129, i32 0, i32 0
  %"stored_node'131" = load %node_struct*, %node_struct** %nodes130, align 8
  br label %if132

if132:                                            ; preds = %while_body128
  %namePtr136 = getelementptr inbounds %node_struct, %node_struct* %"stored_node'131", i32 0, i32 0
  %nodeName137 = load i8*, i8** %namePtr136, align 8
  %strcmp138 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @7, i32 0, i32 0), i8* %nodeName137)
  %equal139 = icmp eq i32 %strcmp138, 0
  br i1 %equal139, label %then133, label %else134

then133:                                          ; preds = %if132
  store i1 %equal139, i1* %ret_true123, align 1
  br label %merge135

else134:                                          ; preds = %if132
  store i1 %equal139, i1* %ret_true123, align 1
  %toBeHere140 = load %node_node*, %node_node** @llNodes.7, align 8
  %llNodesPtr141 = getelementptr inbounds %node_node, %node_node* %toBeHere140, i32 0, i32 1
  %toBeHerenow142 = load %node_node*, %node_node** %llNodesPtr141, align 8
  store %node_node* %toBeHerenow142, %node_node** @llNodes.7, align 8
  br label %while125

merge135:                                         ; preds = %while125, %then133
  %toRtrn143 = load i1, i1* %ret_true123, align 1
  store i1 %toRtrn143, i1* @b6, align 1
  %printf144 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @8, i32 0, i32 0))
  %b6 = load i1, i1* @b6, align 1
  %printf145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.8, i32 0, i32 0), i1 %b6)
  %ret_true146 = alloca i1, align 1
  store i1 false, i1* %ret_true146, align 1
  %n1147 = load %node_struct*, %node_struct** @n1, align 8
  %head148 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head148, %node_node** @prevNode, align 8
  store %node_node* %head148, %node_node** @llNodes.9, align 8
  br label %while149

while149:                                         ; preds = %merge135, %else160
  %putMeHere150 = load %node_node*, %node_node** @llNodes.9, align 8
  %curr151 = icmp ne %node_node* %putMeHere150, null
  br i1 %curr151, label %while_body152, label %merge161

while_body152:                                    ; preds = %while149
  %putMeHere153 = load %node_node*, %node_node** @llNodes.9, align 8
  %nodes154 = getelementptr inbounds %node_node, %node_node* %putMeHere153, i32 0, i32 0
  %"stored_node'155" = load %node_struct*, %node_struct** %nodes154, align 8
  br label %if156

if156:                                            ; preds = %while_body152
  %"found?162" = icmp eq %node_struct* %"stored_node'155", %n1147
  br i1 %"found?162", label %then157, label %else160

then157:                                          ; preds = %if156
  %toBeHere163 = load %node_node*, %node_node** @llNodes.9, align 8
  %toBeHere164 = load %node_node*, %node_node** @prevNode, align 8
  %"found?165" = icmp eq %node_node* %toBeHere163, %toBeHere164
  br i1 %"found?165", label %then159, label %then158

then158:                                          ; preds = %then157
  %loadHere = load %node_node*, %node_node** @prevNode, align 8
  %nxtNode = getelementptr inbounds %node_node, %node_node* %loadHere, i32 0, i32 1
  %nodesmore = getelementptr inbounds %node_node, %node_node* %toBeHere163, i32 0, i32 1
  %"stored_nodemore'" = load %node_node*, %node_node** %nodesmore, align 8
  store %node_node* %"stored_nodemore'", %node_node** %nxtNode, align 8
  store i1 true, i1* %ret_true146, align 1
  br label %merge161

then159:                                          ; preds = %then157
  %nodesmore166 = getelementptr inbounds %node_node, %node_node* %toBeHere163, i32 0, i32 1
  %"stored_nodemore'167" = load %node_node*, %node_node** %nodesmore166, align 8
  store %node_node* %"stored_nodemore'167", %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store i1 true, i1* %ret_true146, align 1
  br label %merge161

else160:                                          ; preds = %if156
  %toBeHere168 = load %node_node*, %node_node** @llNodes.9, align 8
  %llNodesPtr169 = getelementptr inbounds %node_node, %node_node* %toBeHere168, i32 0, i32 1
  %toBeHerenow170 = load %node_node*, %node_node** %llNodesPtr169, align 8
  store %node_node* %toBeHerenow170, %node_node** @llNodes.9, align 8
  br label %while149

merge161:                                         ; preds = %while149, %then159, %then158
  %returnVal171 = load i1, i1* %ret_true146, align 1
  %ret_true172 = alloca i1, align 1
  store i1 false, i1* %ret_true172, align 1
  %head173 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head173, %node_node** @llNodes.10, align 8
  br label %while174

while174:                                         ; preds = %merge161, %else183
  %putMeHere175 = load %node_node*, %node_node** @llNodes.10, align 8
  %curr176 = icmp ne %node_node* %putMeHere175, null
  br i1 %curr176, label %while_body177, label %merge184

while_body177:                                    ; preds = %while174
  %putMeHere178 = load %node_node*, %node_node** @llNodes.10, align 8
  %nodes179 = getelementptr inbounds %node_node, %node_node* %putMeHere178, i32 0, i32 0
  %"stored_node'180" = load %node_struct*, %node_struct** %nodes179, align 8
  br label %if181

if181:                                            ; preds = %while_body177
  %namePtr185 = getelementptr inbounds %node_struct, %node_struct* %"stored_node'180", i32 0, i32 0
  %nodeName186 = load i8*, i8** %namePtr185, align 8
  %strcmp187 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @9, i32 0, i32 0), i8* %nodeName186)
  %equal188 = icmp eq i32 %strcmp187, 0
  br i1 %equal188, label %then182, label %else183

then182:                                          ; preds = %if181
  store i1 %equal188, i1* %ret_true172, align 1
  br label %merge184

else183:                                          ; preds = %if181
  store i1 %equal188, i1* %ret_true172, align 1
  %toBeHere189 = load %node_node*, %node_node** @llNodes.10, align 8
  %llNodesPtr190 = getelementptr inbounds %node_node, %node_node* %toBeHere189, i32 0, i32 1
  %toBeHerenow191 = load %node_node*, %node_node** %llNodesPtr190, align 8
  store %node_node* %toBeHerenow191, %node_node** @llNodes.10, align 8
  br label %while174

merge184:                                         ; preds = %while174, %then182
  %toRtrn192 = load i1, i1* %ret_true172, align 1
  store i1 %toRtrn192, i1* @b5, align 1
  %printf193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @10, i32 0, i32 0))
  %b5 = load i1, i1* @b5, align 1
  %printf194 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.11, i32 0, i32 0), i1 %b5)
  ret i32 0
}

declare noalias i8* @malloc(i32)

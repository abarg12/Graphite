; ModuleID = 'Graphite'
source_filename = "Graphite"

%node_struct = type { i8*, i1, i8* }
%graph_tt = type { %node_node*, %edge_node* }
%node_node = type { %node_struct*, %node_node* }
%edge_node = type { %edge_t*, %edge_node* }
%edge_t = type { %node_struct*, %node_struct*, i32 }

@n = global %node_struct* null
@m = global %node_struct* null
@g = global %graph_tt* null
@llNodes = global %node_node* null
@found_n = global i1 false
@llNodes.1 = global %node_node* null
@found_m = global i1 false
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llNodes.3 = global %node_node* null
@prevNode = global %node_node* null
@llNodes.4 = global %node_node* null
@llNodes.5 = global %node_node* null
@fmt.6 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.7 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llNodes.8 = global %node_node* null
@prevNode.9 = global %node_node* null
@llNodes.10 = global %node_node* null
@llNodes.11 = global %node_node* null
@fmt.12 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.13 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

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
  %malloccall13 = tail call i8* @malloc(i32 ptrtoint (%graph_tt* getelementptr (%graph_tt, %graph_tt* null, i32 1) to i32))
  %node14 = bitcast i8* %malloccall13 to %graph_tt*
  %"name'15" = getelementptr inbounds %graph_tt, %graph_tt* %node14, i32 0, i32 0
  %"data'16" = getelementptr inbounds %graph_tt, %graph_tt* %node14, i32 0, i32 1
  store %node_node* null, %node_node** %"name'15", align 8
  store %edge_node* null, %edge_node** %"data'16", align 8
  store %graph_tt* %node14, %graph_tt** @g, align 8
  %n = load %node_struct*, %node_struct** @n, align 8
  %graph_ptr = load %graph_tt*, %graph_tt** @g, align 8
  %nodes = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr, i32 0, i32 0
  %nodes_hd = load %node_node*, %node_node** %nodes, align 8
  %malloccall17 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node = bitcast i8* %malloccall17 to %node_node*
  %"lst_rst'" = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 1
  %node_ptr = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 0
  store %node_node* %nodes_hd, %node_node** %"lst_rst'", align 8
  store %node_struct* %n, %node_struct** %node_ptr, align 8
  store %node_node* %new_node, %node_node** %nodes, align 8
  %m = load %node_struct*, %node_struct** @m, align 8
  %graph_ptr18 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes19 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr18, i32 0, i32 0
  %nodes_hd20 = load %node_node*, %node_node** %nodes19, align 8
  %malloccall21 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node22 = bitcast i8* %malloccall21 to %node_node*
  %"lst_rst'23" = getelementptr inbounds %node_node, %node_node* %new_node22, i32 0, i32 1
  %node_ptr24 = getelementptr inbounds %node_node, %node_node* %new_node22, i32 0, i32 0
  store %node_node* %nodes_hd20, %node_node** %"lst_rst'23", align 8
  store %node_struct* %m, %node_struct** %node_ptr24, align 8
  store %node_node* %new_node22, %node_node** %nodes19, align 8
  %ret_true = alloca i1, align 1
  store i1 false, i1* %ret_true, align 1
  %n25 = load %node_struct*, %node_struct** @n, align 8
  %graph_ptr26 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes27 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr26, i32 0, i32 0
  %head = load %node_node*, %node_node** %nodes27, align 8
  store %node_node* %head, %node_node** @llNodes, align 8
  br label %while

while:                                            ; preds = %entry, %else
  %putMeHere = load %node_node*, %node_node** @llNodes, align 8
  %curr = icmp ne %node_node* %putMeHere, null
  br i1 %curr, label %while_body, label %merge

while_body:                                       ; preds = %while
  %putMeHere28 = load %node_node*, %node_node** @llNodes, align 8
  %nodes29 = getelementptr inbounds %node_node, %node_node* %putMeHere28, i32 0, i32 0
  %"stored_node'" = load %node_struct*, %node_struct** %nodes29, align 8
  br label %if

if:                                               ; preds = %while_body
  %"found?" = icmp eq %node_struct* %"stored_node'", %n25
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
  store i1 %returnVal, i1* @found_n, align 1
  %ret_true30 = alloca i1, align 1
  store i1 false, i1* %ret_true30, align 1
  %m31 = load %node_struct*, %node_struct** @m, align 8
  %graph_ptr32 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes33 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr32, i32 0, i32 0
  %head34 = load %node_node*, %node_node** %nodes33, align 8
  store %node_node* %head34, %node_node** @llNodes.1, align 8
  br label %while35

while35:                                          ; preds = %merge, %else44
  %putMeHere36 = load %node_node*, %node_node** @llNodes.1, align 8
  %curr37 = icmp ne %node_node* %putMeHere36, null
  br i1 %curr37, label %while_body38, label %merge45

while_body38:                                     ; preds = %while35
  %putMeHere39 = load %node_node*, %node_node** @llNodes.1, align 8
  %nodes40 = getelementptr inbounds %node_node, %node_node* %putMeHere39, i32 0, i32 0
  %"stored_node'41" = load %node_struct*, %node_struct** %nodes40, align 8
  br label %if42

if42:                                             ; preds = %while_body38
  %"found?46" = icmp eq %node_struct* %"stored_node'41", %m31
  br i1 %"found?46", label %then43, label %else44

then43:                                           ; preds = %if42
  store i1 true, i1* %ret_true30, align 1
  br label %merge45

else44:                                           ; preds = %if42
  %toBeHere47 = load %node_node*, %node_node** @llNodes.1, align 8
  %llNodesPtr48 = getelementptr inbounds %node_node, %node_node* %toBeHere47, i32 0, i32 1
  %toBeHerenow49 = load %node_node*, %node_node** %llNodesPtr48, align 8
  store %node_node* %toBeHerenow49, %node_node** @llNodes.1, align 8
  br label %while35

merge45:                                          ; preds = %while35, %then43
  %returnVal50 = load i1, i1* %ret_true30, align 1
  store i1 %returnVal50, i1* @found_m, align 1
  %found_n = load i1, i1* @found_n, align 1
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i1 %found_n)
  %found_m = load i1, i1* @found_m, align 1
  %printf51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.2, i32 0, i32 0), i1 %found_m)
  %ret_true52 = alloca i1, align 1
  store i1 false, i1* %ret_true52, align 1
  %n53 = load %node_struct*, %node_struct** @n, align 8
  %graph_ptr54 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes55 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr54, i32 0, i32 0
  %head56 = load %node_node*, %node_node** %nodes55, align 8
  store %node_node* %head56, %node_node** @prevNode, align 8
  store %node_node* %head56, %node_node** @llNodes.3, align 8
  br label %while57

while57:                                          ; preds = %merge45, %else68
  %putMeHere58 = load %node_node*, %node_node** @llNodes.3, align 8
  %curr59 = icmp ne %node_node* %putMeHere58, null
  br i1 %curr59, label %while_body60, label %merge69

while_body60:                                     ; preds = %while57
  %putMeHere61 = load %node_node*, %node_node** @llNodes.3, align 8
  %nodes62 = getelementptr inbounds %node_node, %node_node* %putMeHere61, i32 0, i32 0
  %"stored_node'63" = load %node_struct*, %node_struct** %nodes62, align 8
  br label %if64

if64:                                             ; preds = %while_body60
  %"found?70" = icmp eq %node_struct* %"stored_node'63", %n53
  br i1 %"found?70", label %then65, label %else68

then65:                                           ; preds = %if64
  %toBeHere71 = load %node_node*, %node_node** @llNodes.3, align 8
  %toBeHere72 = load %node_node*, %node_node** @prevNode, align 8
  %"found?73" = icmp eq %node_node* %toBeHere71, %toBeHere72
  br i1 %"found?73", label %then67, label %then66

then66:                                           ; preds = %then65
  %loadHere = load %node_node*, %node_node** @prevNode, align 8
  %nxtNode = getelementptr inbounds %node_node, %node_node* %loadHere, i32 0, i32 1
  %nodesmore = getelementptr inbounds %node_node, %node_node* %toBeHere71, i32 0, i32 1
  %"stored_nodemore'" = load %node_node*, %node_node** %nodesmore, align 8
  store %node_node* %"stored_nodemore'", %node_node** %nxtNode, align 8
  store i1 true, i1* %ret_true52, align 1
  br label %merge69

then67:                                           ; preds = %then65
  %llNodesPtr_original = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr54, i32 0, i32 0
  %nodesmore74 = getelementptr inbounds %node_node, %node_node* %toBeHere71, i32 0, i32 1
  %"stored_nodemore'75" = load %node_node*, %node_node** %nodesmore74, align 8
  store %node_node* %"stored_nodemore'75", %node_node** %llNodesPtr_original, align 8
  store i1 true, i1* %ret_true52, align 1
  br label %merge69

else68:                                           ; preds = %if64
  %toBeHere76 = load %node_node*, %node_node** @llNodes.3, align 8
  %llNodesPtr77 = getelementptr inbounds %node_node, %node_node* %toBeHere76, i32 0, i32 1
  %toBeHerenow78 = load %node_node*, %node_node** %llNodesPtr77, align 8
  store %node_node* %toBeHerenow78, %node_node** @llNodes.3, align 8
  br label %while57

merge69:                                          ; preds = %while57, %then67, %then66
  %returnVal79 = load i1, i1* %ret_true52, align 1
  %ret_true80 = alloca i1, align 1
  store i1 false, i1* %ret_true80, align 1
  %n81 = load %node_struct*, %node_struct** @n, align 8
  %graph_ptr82 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes83 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr82, i32 0, i32 0
  %head84 = load %node_node*, %node_node** %nodes83, align 8
  store %node_node* %head84, %node_node** @llNodes.4, align 8
  br label %while85

while85:                                          ; preds = %merge69, %else94
  %putMeHere86 = load %node_node*, %node_node** @llNodes.4, align 8
  %curr87 = icmp ne %node_node* %putMeHere86, null
  br i1 %curr87, label %while_body88, label %merge95

while_body88:                                     ; preds = %while85
  %putMeHere89 = load %node_node*, %node_node** @llNodes.4, align 8
  %nodes90 = getelementptr inbounds %node_node, %node_node* %putMeHere89, i32 0, i32 0
  %"stored_node'91" = load %node_struct*, %node_struct** %nodes90, align 8
  br label %if92

if92:                                             ; preds = %while_body88
  %"found?96" = icmp eq %node_struct* %"stored_node'91", %n81
  br i1 %"found?96", label %then93, label %else94

then93:                                           ; preds = %if92
  store i1 true, i1* %ret_true80, align 1
  br label %merge95

else94:                                           ; preds = %if92
  %toBeHere97 = load %node_node*, %node_node** @llNodes.4, align 8
  %llNodesPtr98 = getelementptr inbounds %node_node, %node_node* %toBeHere97, i32 0, i32 1
  %toBeHerenow99 = load %node_node*, %node_node** %llNodesPtr98, align 8
  store %node_node* %toBeHerenow99, %node_node** @llNodes.4, align 8
  br label %while85

merge95:                                          ; preds = %while85, %then93
  %returnVal100 = load i1, i1* %ret_true80, align 1
  store i1 %returnVal100, i1* @found_n, align 1
  %ret_true101 = alloca i1, align 1
  store i1 false, i1* %ret_true101, align 1
  %m102 = load %node_struct*, %node_struct** @m, align 8
  %graph_ptr103 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes104 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr103, i32 0, i32 0
  %head105 = load %node_node*, %node_node** %nodes104, align 8
  store %node_node* %head105, %node_node** @llNodes.5, align 8
  br label %while106

while106:                                         ; preds = %merge95, %else115
  %putMeHere107 = load %node_node*, %node_node** @llNodes.5, align 8
  %curr108 = icmp ne %node_node* %putMeHere107, null
  br i1 %curr108, label %while_body109, label %merge116

while_body109:                                    ; preds = %while106
  %putMeHere110 = load %node_node*, %node_node** @llNodes.5, align 8
  %nodes111 = getelementptr inbounds %node_node, %node_node* %putMeHere110, i32 0, i32 0
  %"stored_node'112" = load %node_struct*, %node_struct** %nodes111, align 8
  br label %if113

if113:                                            ; preds = %while_body109
  %"found?117" = icmp eq %node_struct* %"stored_node'112", %m102
  br i1 %"found?117", label %then114, label %else115

then114:                                          ; preds = %if113
  store i1 true, i1* %ret_true101, align 1
  br label %merge116

else115:                                          ; preds = %if113
  %toBeHere118 = load %node_node*, %node_node** @llNodes.5, align 8
  %llNodesPtr119 = getelementptr inbounds %node_node, %node_node* %toBeHere118, i32 0, i32 1
  %toBeHerenow120 = load %node_node*, %node_node** %llNodesPtr119, align 8
  store %node_node* %toBeHerenow120, %node_node** @llNodes.5, align 8
  br label %while106

merge116:                                         ; preds = %while106, %then114
  %returnVal121 = load i1, i1* %ret_true101, align 1
  store i1 %returnVal121, i1* @found_m, align 1
  %found_n122 = load i1, i1* @found_n, align 1
  %printf123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.6, i32 0, i32 0), i1 %found_n122)
  %found_m124 = load i1, i1* @found_m, align 1
  %printf125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.7, i32 0, i32 0), i1 %found_m124)
  %ret_true126 = alloca i1, align 1
  store i1 false, i1* %ret_true126, align 1
  %m127 = load %node_struct*, %node_struct** @m, align 8
  %graph_ptr128 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes129 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr128, i32 0, i32 0
  %head130 = load %node_node*, %node_node** %nodes129, align 8
  store %node_node* %head130, %node_node** @prevNode.9, align 8
  store %node_node* %head130, %node_node** @llNodes.8, align 8
  br label %while131

while131:                                         ; preds = %merge116, %else142
  %putMeHere132 = load %node_node*, %node_node** @llNodes.8, align 8
  %curr133 = icmp ne %node_node* %putMeHere132, null
  br i1 %curr133, label %while_body134, label %merge143

while_body134:                                    ; preds = %while131
  %putMeHere135 = load %node_node*, %node_node** @llNodes.8, align 8
  %nodes136 = getelementptr inbounds %node_node, %node_node* %putMeHere135, i32 0, i32 0
  %"stored_node'137" = load %node_struct*, %node_struct** %nodes136, align 8
  br label %if138

if138:                                            ; preds = %while_body134
  %"found?144" = icmp eq %node_struct* %"stored_node'137", %m127
  br i1 %"found?144", label %then139, label %else142

then139:                                          ; preds = %if138
  %toBeHere145 = load %node_node*, %node_node** @llNodes.8, align 8
  %toBeHere146 = load %node_node*, %node_node** @prevNode.9, align 8
  %"found?147" = icmp eq %node_node* %toBeHere145, %toBeHere146
  br i1 %"found?147", label %then141, label %then140

then140:                                          ; preds = %then139
  %loadHere148 = load %node_node*, %node_node** @prevNode.9, align 8
  %nxtNode149 = getelementptr inbounds %node_node, %node_node* %loadHere148, i32 0, i32 1
  %nodesmore150 = getelementptr inbounds %node_node, %node_node* %toBeHere145, i32 0, i32 1
  %"stored_nodemore'151" = load %node_node*, %node_node** %nodesmore150, align 8
  store %node_node* %"stored_nodemore'151", %node_node** %nxtNode149, align 8
  store i1 true, i1* %ret_true126, align 1
  br label %merge143

then141:                                          ; preds = %then139
  %llNodesPtr_original152 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr128, i32 0, i32 0
  %nodesmore153 = getelementptr inbounds %node_node, %node_node* %toBeHere145, i32 0, i32 1
  %"stored_nodemore'154" = load %node_node*, %node_node** %nodesmore153, align 8
  store %node_node* %"stored_nodemore'154", %node_node** %llNodesPtr_original152, align 8
  store i1 true, i1* %ret_true126, align 1
  br label %merge143

else142:                                          ; preds = %if138
  %toBeHere155 = load %node_node*, %node_node** @llNodes.8, align 8
  %llNodesPtr156 = getelementptr inbounds %node_node, %node_node* %toBeHere155, i32 0, i32 1
  %toBeHerenow157 = load %node_node*, %node_node** %llNodesPtr156, align 8
  store %node_node* %toBeHerenow157, %node_node** @llNodes.8, align 8
  br label %while131

merge143:                                         ; preds = %while131, %then141, %then140
  %returnVal158 = load i1, i1* %ret_true126, align 1
  %ret_true159 = alloca i1, align 1
  store i1 false, i1* %ret_true159, align 1
  %n160 = load %node_struct*, %node_struct** @n, align 8
  %graph_ptr161 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes162 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr161, i32 0, i32 0
  %head163 = load %node_node*, %node_node** %nodes162, align 8
  store %node_node* %head163, %node_node** @llNodes.10, align 8
  br label %while164

while164:                                         ; preds = %merge143, %else173
  %putMeHere165 = load %node_node*, %node_node** @llNodes.10, align 8
  %curr166 = icmp ne %node_node* %putMeHere165, null
  br i1 %curr166, label %while_body167, label %merge174

while_body167:                                    ; preds = %while164
  %putMeHere168 = load %node_node*, %node_node** @llNodes.10, align 8
  %nodes169 = getelementptr inbounds %node_node, %node_node* %putMeHere168, i32 0, i32 0
  %"stored_node'170" = load %node_struct*, %node_struct** %nodes169, align 8
  br label %if171

if171:                                            ; preds = %while_body167
  %"found?175" = icmp eq %node_struct* %"stored_node'170", %n160
  br i1 %"found?175", label %then172, label %else173

then172:                                          ; preds = %if171
  store i1 true, i1* %ret_true159, align 1
  br label %merge174

else173:                                          ; preds = %if171
  %toBeHere176 = load %node_node*, %node_node** @llNodes.10, align 8
  %llNodesPtr177 = getelementptr inbounds %node_node, %node_node* %toBeHere176, i32 0, i32 1
  %toBeHerenow178 = load %node_node*, %node_node** %llNodesPtr177, align 8
  store %node_node* %toBeHerenow178, %node_node** @llNodes.10, align 8
  br label %while164

merge174:                                         ; preds = %while164, %then172
  %returnVal179 = load i1, i1* %ret_true159, align 1
  store i1 %returnVal179, i1* @found_n, align 1
  %ret_true180 = alloca i1, align 1
  store i1 false, i1* %ret_true180, align 1
  %m181 = load %node_struct*, %node_struct** @m, align 8
  %graph_ptr182 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes183 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr182, i32 0, i32 0
  %head184 = load %node_node*, %node_node** %nodes183, align 8
  store %node_node* %head184, %node_node** @llNodes.11, align 8
  br label %while185

while185:                                         ; preds = %merge174, %else194
  %putMeHere186 = load %node_node*, %node_node** @llNodes.11, align 8
  %curr187 = icmp ne %node_node* %putMeHere186, null
  br i1 %curr187, label %while_body188, label %merge195

while_body188:                                    ; preds = %while185
  %putMeHere189 = load %node_node*, %node_node** @llNodes.11, align 8
  %nodes190 = getelementptr inbounds %node_node, %node_node* %putMeHere189, i32 0, i32 0
  %"stored_node'191" = load %node_struct*, %node_struct** %nodes190, align 8
  br label %if192

if192:                                            ; preds = %while_body188
  %"found?196" = icmp eq %node_struct* %"stored_node'191", %m181
  br i1 %"found?196", label %then193, label %else194

then193:                                          ; preds = %if192
  store i1 true, i1* %ret_true180, align 1
  br label %merge195

else194:                                          ; preds = %if192
  %toBeHere197 = load %node_node*, %node_node** @llNodes.11, align 8
  %llNodesPtr198 = getelementptr inbounds %node_node, %node_node* %toBeHere197, i32 0, i32 1
  %toBeHerenow199 = load %node_node*, %node_node** %llNodesPtr198, align 8
  store %node_node* %toBeHerenow199, %node_node** @llNodes.11, align 8
  br label %while185

merge195:                                         ; preds = %while185, %then193
  %returnVal200 = load i1, i1* %ret_true180, align 1
  store i1 %returnVal200, i1* @found_m, align 1
  %found_n201 = load i1, i1* @found_n, align 1
  %printf202 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.12, i32 0, i32 0), i1 %found_n201)
  %found_m203 = load i1, i1* @found_m, align 1
  %printf204 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.13, i32 0, i32 0), i1 %found_m203)
  ret i32 0
}

declare noalias i8* @malloc(i32)

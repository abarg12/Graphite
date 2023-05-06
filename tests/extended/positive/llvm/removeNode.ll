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
  %nodes_hd = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall13 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node = bitcast i8* %malloccall13 to %node_node*
  %"lst_rst'" = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 1
  %node_ptr = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 0
  store %node_node* %nodes_hd, %node_node** %"lst_rst'", align 8
  store %node_struct* %n, %node_struct** %node_ptr, align 8
  store %node_node* %new_node, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %m = load %node_struct*, %node_struct** @m, align 8
  %nodes_hd14 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall15 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node16 = bitcast i8* %malloccall15 to %node_node*
  %"lst_rst'17" = getelementptr inbounds %node_node, %node_node* %new_node16, i32 0, i32 1
  %node_ptr18 = getelementptr inbounds %node_node, %node_node* %new_node16, i32 0, i32 0
  store %node_node* %nodes_hd14, %node_node** %"lst_rst'17", align 8
  store %node_struct* %m, %node_struct** %node_ptr18, align 8
  store %node_node* %new_node16, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %ret_true = alloca i1, align 1
  store i1 false, i1* %ret_true, align 1
  %n19 = load %node_struct*, %node_struct** @n, align 8
  %head = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head, %node_node** @llNodes, align 8
  br label %while

while:                                            ; preds = %entry, %else
  %putMeHere = load %node_node*, %node_node** @llNodes, align 8
  %curr = icmp ne %node_node* %putMeHere, null
  br i1 %curr, label %while_body, label %merge

while_body:                                       ; preds = %while
  %putMeHere20 = load %node_node*, %node_node** @llNodes, align 8
  %nodes = getelementptr inbounds %node_node, %node_node* %putMeHere20, i32 0, i32 0
  %"stored_node'" = load %node_struct*, %node_struct** %nodes, align 8
  br label %if

if:                                               ; preds = %while_body
  %"found?" = icmp eq %node_struct* %"stored_node'", %n19
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
  %ret_true21 = alloca i1, align 1
  store i1 false, i1* %ret_true21, align 1
  %m22 = load %node_struct*, %node_struct** @m, align 8
  %head23 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head23, %node_node** @llNodes.1, align 8
  br label %while24

while24:                                          ; preds = %merge, %else33
  %putMeHere25 = load %node_node*, %node_node** @llNodes.1, align 8
  %curr26 = icmp ne %node_node* %putMeHere25, null
  br i1 %curr26, label %while_body27, label %merge34

while_body27:                                     ; preds = %while24
  %putMeHere28 = load %node_node*, %node_node** @llNodes.1, align 8
  %nodes29 = getelementptr inbounds %node_node, %node_node* %putMeHere28, i32 0, i32 0
  %"stored_node'30" = load %node_struct*, %node_struct** %nodes29, align 8
  br label %if31

if31:                                             ; preds = %while_body27
  %"found?35" = icmp eq %node_struct* %"stored_node'30", %m22
  br i1 %"found?35", label %then32, label %else33

then32:                                           ; preds = %if31
  store i1 true, i1* %ret_true21, align 1
  br label %merge34

else33:                                           ; preds = %if31
  %toBeHere36 = load %node_node*, %node_node** @llNodes.1, align 8
  %llNodesPtr37 = getelementptr inbounds %node_node, %node_node* %toBeHere36, i32 0, i32 1
  %toBeHerenow38 = load %node_node*, %node_node** %llNodesPtr37, align 8
  store %node_node* %toBeHerenow38, %node_node** @llNodes.1, align 8
  br label %while24

merge34:                                          ; preds = %while24, %then32
  %returnVal39 = load i1, i1* %ret_true21, align 1
  store i1 %returnVal39, i1* @found_m, align 1
  %found_n = load i1, i1* @found_n, align 1
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i1 %found_n)
  %found_m = load i1, i1* @found_m, align 1
  %printf40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.2, i32 0, i32 0), i1 %found_m)
  %ret_true41 = alloca i1, align 1
  store i1 false, i1* %ret_true41, align 1
  %n42 = load %node_struct*, %node_struct** @n, align 8
  %head43 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head43, %node_node** @prevNode, align 8
  store %node_node* %head43, %node_node** @llNodes.3, align 8
  br label %while44

while44:                                          ; preds = %merge34, %else55
  %putMeHere45 = load %node_node*, %node_node** @llNodes.3, align 8
  %curr46 = icmp ne %node_node* %putMeHere45, null
  br i1 %curr46, label %while_body47, label %merge56

while_body47:                                     ; preds = %while44
  %putMeHere48 = load %node_node*, %node_node** @llNodes.3, align 8
  %nodes49 = getelementptr inbounds %node_node, %node_node* %putMeHere48, i32 0, i32 0
  %"stored_node'50" = load %node_struct*, %node_struct** %nodes49, align 8
  br label %if51

if51:                                             ; preds = %while_body47
  %"found?57" = icmp eq %node_struct* %"stored_node'50", %n42
  br i1 %"found?57", label %then52, label %else55

then52:                                           ; preds = %if51
  %toBeHere58 = load %node_node*, %node_node** @llNodes.3, align 8
  %toBeHere59 = load %node_node*, %node_node** @prevNode, align 8
  %"found?60" = icmp eq %node_node* %toBeHere58, %toBeHere59
  br i1 %"found?60", label %then54, label %then53

then53:                                           ; preds = %then52
  %loadHere = load %node_node*, %node_node** @prevNode, align 8
  %nxtNode = getelementptr inbounds %node_node, %node_node* %loadHere, i32 0, i32 1
  %nodesmore = getelementptr inbounds %node_node, %node_node* %toBeHere58, i32 0, i32 1
  %"stored_nodemore'" = load %node_node*, %node_node** %nodesmore, align 8
  store %node_node* %"stored_nodemore'", %node_node** %nxtNode, align 8
  store i1 true, i1* %ret_true41, align 1
  br label %merge56

then54:                                           ; preds = %then52
  %nodesmore61 = getelementptr inbounds %node_node, %node_node* %toBeHere58, i32 0, i32 1
  %"stored_nodemore'62" = load %node_node*, %node_node** %nodesmore61, align 8
  store %node_node* %"stored_nodemore'62", %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store i1 true, i1* %ret_true41, align 1
  br label %merge56

else55:                                           ; preds = %if51
  %toBeHere63 = load %node_node*, %node_node** @llNodes.3, align 8
  %llNodesPtr64 = getelementptr inbounds %node_node, %node_node* %toBeHere63, i32 0, i32 1
  %toBeHerenow65 = load %node_node*, %node_node** %llNodesPtr64, align 8
  store %node_node* %toBeHerenow65, %node_node** @llNodes.3, align 8
  br label %while44

merge56:                                          ; preds = %while44, %then54, %then53
  %returnVal66 = load i1, i1* %ret_true41, align 1
  %ret_true67 = alloca i1, align 1
  store i1 false, i1* %ret_true67, align 1
  %n68 = load %node_struct*, %node_struct** @n, align 8
  %head69 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head69, %node_node** @llNodes.4, align 8
  br label %while70

while70:                                          ; preds = %merge56, %else79
  %putMeHere71 = load %node_node*, %node_node** @llNodes.4, align 8
  %curr72 = icmp ne %node_node* %putMeHere71, null
  br i1 %curr72, label %while_body73, label %merge80

while_body73:                                     ; preds = %while70
  %putMeHere74 = load %node_node*, %node_node** @llNodes.4, align 8
  %nodes75 = getelementptr inbounds %node_node, %node_node* %putMeHere74, i32 0, i32 0
  %"stored_node'76" = load %node_struct*, %node_struct** %nodes75, align 8
  br label %if77

if77:                                             ; preds = %while_body73
  %"found?81" = icmp eq %node_struct* %"stored_node'76", %n68
  br i1 %"found?81", label %then78, label %else79

then78:                                           ; preds = %if77
  store i1 true, i1* %ret_true67, align 1
  br label %merge80

else79:                                           ; preds = %if77
  %toBeHere82 = load %node_node*, %node_node** @llNodes.4, align 8
  %llNodesPtr83 = getelementptr inbounds %node_node, %node_node* %toBeHere82, i32 0, i32 1
  %toBeHerenow84 = load %node_node*, %node_node** %llNodesPtr83, align 8
  store %node_node* %toBeHerenow84, %node_node** @llNodes.4, align 8
  br label %while70

merge80:                                          ; preds = %while70, %then78
  %returnVal85 = load i1, i1* %ret_true67, align 1
  store i1 %returnVal85, i1* @found_n, align 1
  %ret_true86 = alloca i1, align 1
  store i1 false, i1* %ret_true86, align 1
  %m87 = load %node_struct*, %node_struct** @m, align 8
  %head88 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head88, %node_node** @llNodes.5, align 8
  br label %while89

while89:                                          ; preds = %merge80, %else98
  %putMeHere90 = load %node_node*, %node_node** @llNodes.5, align 8
  %curr91 = icmp ne %node_node* %putMeHere90, null
  br i1 %curr91, label %while_body92, label %merge99

while_body92:                                     ; preds = %while89
  %putMeHere93 = load %node_node*, %node_node** @llNodes.5, align 8
  %nodes94 = getelementptr inbounds %node_node, %node_node* %putMeHere93, i32 0, i32 0
  %"stored_node'95" = load %node_struct*, %node_struct** %nodes94, align 8
  br label %if96

if96:                                             ; preds = %while_body92
  %"found?100" = icmp eq %node_struct* %"stored_node'95", %m87
  br i1 %"found?100", label %then97, label %else98

then97:                                           ; preds = %if96
  store i1 true, i1* %ret_true86, align 1
  br label %merge99

else98:                                           ; preds = %if96
  %toBeHere101 = load %node_node*, %node_node** @llNodes.5, align 8
  %llNodesPtr102 = getelementptr inbounds %node_node, %node_node* %toBeHere101, i32 0, i32 1
  %toBeHerenow103 = load %node_node*, %node_node** %llNodesPtr102, align 8
  store %node_node* %toBeHerenow103, %node_node** @llNodes.5, align 8
  br label %while89

merge99:                                          ; preds = %while89, %then97
  %returnVal104 = load i1, i1* %ret_true86, align 1
  store i1 %returnVal104, i1* @found_m, align 1
  %found_n105 = load i1, i1* @found_n, align 1
  %printf106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.6, i32 0, i32 0), i1 %found_n105)
  %found_m107 = load i1, i1* @found_m, align 1
  %printf108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.7, i32 0, i32 0), i1 %found_m107)
  %ret_true109 = alloca i1, align 1
  store i1 false, i1* %ret_true109, align 1
  %m110 = load %node_struct*, %node_struct** @m, align 8
  %head111 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head111, %node_node** @prevNode.9, align 8
  store %node_node* %head111, %node_node** @llNodes.8, align 8
  br label %while112

while112:                                         ; preds = %merge99, %else123
  %putMeHere113 = load %node_node*, %node_node** @llNodes.8, align 8
  %curr114 = icmp ne %node_node* %putMeHere113, null
  br i1 %curr114, label %while_body115, label %merge124

while_body115:                                    ; preds = %while112
  %putMeHere116 = load %node_node*, %node_node** @llNodes.8, align 8
  %nodes117 = getelementptr inbounds %node_node, %node_node* %putMeHere116, i32 0, i32 0
  %"stored_node'118" = load %node_struct*, %node_struct** %nodes117, align 8
  br label %if119

if119:                                            ; preds = %while_body115
  %"found?125" = icmp eq %node_struct* %"stored_node'118", %m110
  br i1 %"found?125", label %then120, label %else123

then120:                                          ; preds = %if119
  %toBeHere126 = load %node_node*, %node_node** @llNodes.8, align 8
  %toBeHere127 = load %node_node*, %node_node** @prevNode.9, align 8
  %"found?128" = icmp eq %node_node* %toBeHere126, %toBeHere127
  br i1 %"found?128", label %then122, label %then121

then121:                                          ; preds = %then120
  %loadHere129 = load %node_node*, %node_node** @prevNode.9, align 8
  %nxtNode130 = getelementptr inbounds %node_node, %node_node* %loadHere129, i32 0, i32 1
  %nodesmore131 = getelementptr inbounds %node_node, %node_node* %toBeHere126, i32 0, i32 1
  %"stored_nodemore'132" = load %node_node*, %node_node** %nodesmore131, align 8
  store %node_node* %"stored_nodemore'132", %node_node** %nxtNode130, align 8
  store i1 true, i1* %ret_true109, align 1
  br label %merge124

then122:                                          ; preds = %then120
  %nodesmore133 = getelementptr inbounds %node_node, %node_node* %toBeHere126, i32 0, i32 1
  %"stored_nodemore'134" = load %node_node*, %node_node** %nodesmore133, align 8
  store %node_node* %"stored_nodemore'134", %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store i1 true, i1* %ret_true109, align 1
  br label %merge124

else123:                                          ; preds = %if119
  %toBeHere135 = load %node_node*, %node_node** @llNodes.8, align 8
  %llNodesPtr136 = getelementptr inbounds %node_node, %node_node* %toBeHere135, i32 0, i32 1
  %toBeHerenow137 = load %node_node*, %node_node** %llNodesPtr136, align 8
  store %node_node* %toBeHerenow137, %node_node** @llNodes.8, align 8
  br label %while112

merge124:                                         ; preds = %while112, %then122, %then121
  %returnVal138 = load i1, i1* %ret_true109, align 1
  %ret_true139 = alloca i1, align 1
  store i1 false, i1* %ret_true139, align 1
  %n140 = load %node_struct*, %node_struct** @n, align 8
  %head141 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head141, %node_node** @llNodes.10, align 8
  br label %while142

while142:                                         ; preds = %merge124, %else151
  %putMeHere143 = load %node_node*, %node_node** @llNodes.10, align 8
  %curr144 = icmp ne %node_node* %putMeHere143, null
  br i1 %curr144, label %while_body145, label %merge152

while_body145:                                    ; preds = %while142
  %putMeHere146 = load %node_node*, %node_node** @llNodes.10, align 8
  %nodes147 = getelementptr inbounds %node_node, %node_node* %putMeHere146, i32 0, i32 0
  %"stored_node'148" = load %node_struct*, %node_struct** %nodes147, align 8
  br label %if149

if149:                                            ; preds = %while_body145
  %"found?153" = icmp eq %node_struct* %"stored_node'148", %n140
  br i1 %"found?153", label %then150, label %else151

then150:                                          ; preds = %if149
  store i1 true, i1* %ret_true139, align 1
  br label %merge152

else151:                                          ; preds = %if149
  %toBeHere154 = load %node_node*, %node_node** @llNodes.10, align 8
  %llNodesPtr155 = getelementptr inbounds %node_node, %node_node* %toBeHere154, i32 0, i32 1
  %toBeHerenow156 = load %node_node*, %node_node** %llNodesPtr155, align 8
  store %node_node* %toBeHerenow156, %node_node** @llNodes.10, align 8
  br label %while142

merge152:                                         ; preds = %while142, %then150
  %returnVal157 = load i1, i1* %ret_true139, align 1
  store i1 %returnVal157, i1* @found_n, align 1
  %ret_true158 = alloca i1, align 1
  store i1 false, i1* %ret_true158, align 1
  %m159 = load %node_struct*, %node_struct** @m, align 8
  %head160 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head160, %node_node** @llNodes.11, align 8
  br label %while161

while161:                                         ; preds = %merge152, %else170
  %putMeHere162 = load %node_node*, %node_node** @llNodes.11, align 8
  %curr163 = icmp ne %node_node* %putMeHere162, null
  br i1 %curr163, label %while_body164, label %merge171

while_body164:                                    ; preds = %while161
  %putMeHere165 = load %node_node*, %node_node** @llNodes.11, align 8
  %nodes166 = getelementptr inbounds %node_node, %node_node* %putMeHere165, i32 0, i32 0
  %"stored_node'167" = load %node_struct*, %node_struct** %nodes166, align 8
  br label %if168

if168:                                            ; preds = %while_body164
  %"found?172" = icmp eq %node_struct* %"stored_node'167", %m159
  br i1 %"found?172", label %then169, label %else170

then169:                                          ; preds = %if168
  store i1 true, i1* %ret_true158, align 1
  br label %merge171

else170:                                          ; preds = %if168
  %toBeHere173 = load %node_node*, %node_node** @llNodes.11, align 8
  %llNodesPtr174 = getelementptr inbounds %node_node, %node_node* %toBeHere173, i32 0, i32 1
  %toBeHerenow175 = load %node_node*, %node_node** %llNodesPtr174, align 8
  store %node_node* %toBeHerenow175, %node_node** @llNodes.11, align 8
  br label %while161

merge171:                                         ; preds = %while161, %then169
  %returnVal176 = load i1, i1* %ret_true158, align 1
  store i1 %returnVal176, i1* @found_m, align 1
  %found_n177 = load i1, i1* @found_n, align 1
  %printf178 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.12, i32 0, i32 0), i1 %found_n177)
  %found_m179 = load i1, i1* @found_m, align 1
  %printf180 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.13, i32 0, i32 0), i1 %found_m179)
  ret i32 0
}

declare noalias i8* @malloc(i32)

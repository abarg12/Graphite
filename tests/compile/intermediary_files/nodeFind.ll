; ModuleID = 'Graphite'
source_filename = "Graphite"

%node_struct = type { i8*, i1, i8* }
%edge_t = type { %node_struct*, %node_struct*, i32 }
%graph_t = type { %node_node*, %edge_node* }
%node_node = type { %node_struct*, %node_node* }
%edge_node = type { %edge_t*, %edge_node* }

@n = global %node_struct* null
@n2 = global %node_struct* null
@n4 = global %node_struct* null
@n3 = global %node_struct* null
@e3 = global %edge_t* null
@e4 = global %edge_t* null
@e5 = global %edge_t* null
@g = global %graph_t zeroinitializer
@llNodes = global %node_node* null
@found = global i1 false
@llNodes.1 = global %node_node* null
@found2 = global i1 false
@llEdges = global %edge_node* null
@found3 = global i1 false
@llEdges.2 = global %edge_node* null
@found4 = global i1 false
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.5 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

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
  store %node_struct* %node14, %node_struct** @n4, align 8
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
  store %node_struct* %node24, %node_struct** @n3, align 8
  %malloccall33 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge = bitcast i8* %malloccall33 to %edge_t*
  %"src''" = getelementptr inbounds %edge_t, %edge_t* %edge, i32 0, i32 0
  %"dst''" = getelementptr inbounds %edge_t, %edge_t* %edge, i32 0, i32 1
  store %node_struct* null, %node_struct** %"src''", align 8
  store %node_struct* null, %node_struct** %"dst''", align 8
  store %edge_t* %edge, %edge_t** @e3, align 8
  %malloccall34 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge35 = bitcast i8* %malloccall34 to %edge_t*
  %"src''36" = getelementptr inbounds %edge_t, %edge_t* %edge35, i32 0, i32 0
  %"dst''37" = getelementptr inbounds %edge_t, %edge_t* %edge35, i32 0, i32 1
  store %node_struct* null, %node_struct** %"src''36", align 8
  store %node_struct* null, %node_struct** %"dst''37", align 8
  store %edge_t* %edge35, %edge_t** @e4, align 8
  %malloccall38 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge39 = bitcast i8* %malloccall38 to %edge_t*
  %"src''40" = getelementptr inbounds %edge_t, %edge_t* %edge39, i32 0, i32 0
  %"dst''41" = getelementptr inbounds %edge_t, %edge_t* %edge39, i32 0, i32 1
  store %node_struct* null, %node_struct** %"src''40", align 8
  store %node_struct* null, %node_struct** %"dst''41", align 8
  store %edge_t* %edge39, %edge_t** @e5, align 8
  %n = load %node_struct*, %node_struct** @n, align 8
  %nodes_hd = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall42 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node = bitcast i8* %malloccall42 to %node_node*
  %"lst_rst'" = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 1
  %node_ptr = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 0
  store %node_node* %nodes_hd, %node_node** %"lst_rst'", align 8
  store %node_struct* %n, %node_struct** %node_ptr, align 8
  store %node_node* %new_node, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %n2 = load %node_struct*, %node_struct** @n2, align 8
  %nodes_hd43 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall44 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node45 = bitcast i8* %malloccall44 to %node_node*
  %"lst_rst'46" = getelementptr inbounds %node_node, %node_node* %new_node45, i32 0, i32 1
  %node_ptr47 = getelementptr inbounds %node_node, %node_node* %new_node45, i32 0, i32 0
  store %node_node* %nodes_hd43, %node_node** %"lst_rst'46", align 8
  store %node_struct* %n2, %node_struct** %node_ptr47, align 8
  store %node_node* %new_node45, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %n3 = load %node_struct*, %node_struct** @n3, align 8
  %nodes_hd48 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall49 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node50 = bitcast i8* %malloccall49 to %node_node*
  %"lst_rst'51" = getelementptr inbounds %node_node, %node_node* %new_node50, i32 0, i32 1
  %node_ptr52 = getelementptr inbounds %node_node, %node_node* %new_node50, i32 0, i32 0
  store %node_node* %nodes_hd48, %node_node** %"lst_rst'51", align 8
  store %node_struct* %n3, %node_struct** %node_ptr52, align 8
  store %node_node* %new_node50, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %e3 = load %edge_t*, %edge_t** @e3, align 8
  %edges_hd = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %malloccall53 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge = bitcast i8* %malloccall53 to %edge_node*
  %"lst_rst'54" = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 1
  %edge_ptr = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 0
  store %edge_node* %edges_hd, %edge_node** %"lst_rst'54", align 8
  store %edge_t* %e3, %edge_t** %edge_ptr, align 8
  store %edge_node* %new_edge, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %e4 = load %edge_t*, %edge_t** @e4, align 8
  %edges_hd55 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %malloccall56 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge57 = bitcast i8* %malloccall56 to %edge_node*
  %"lst_rst'58" = getelementptr inbounds %edge_node, %edge_node* %new_edge57, i32 0, i32 1
  %edge_ptr59 = getelementptr inbounds %edge_node, %edge_node* %new_edge57, i32 0, i32 0
  store %edge_node* %edges_hd55, %edge_node** %"lst_rst'58", align 8
  store %edge_t* %e4, %edge_t** %edge_ptr59, align 8
  store %edge_node* %new_edge57, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %ret_true = alloca i1, align 1
  store i1 false, i1* %ret_true, align 1
  %n4 = load %node_struct*, %node_struct** @n4, align 8
  %head = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head, %node_node** @llNodes, align 8
  br label %while

while:                                            ; preds = %entry, %else
  %putMeHere = load %node_node*, %node_node** @llNodes, align 8
  %curr = icmp ne %node_node* %putMeHere, null
  br i1 %curr, label %while_body, label %merge

while_body:                                       ; preds = %while
  %putMeHere60 = load %node_node*, %node_node** @llNodes, align 8
  %nodes = getelementptr inbounds %node_node, %node_node* %putMeHere60, i32 0, i32 0
  %"stored_node'" = load %node_struct*, %node_struct** %nodes, align 8
  br label %if

if:                                               ; preds = %while_body
  %"found?" = icmp eq %node_struct* %"stored_node'", %n4
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
  store i1 %returnVal, i1* @found, align 1
  %ret_true61 = alloca i1, align 1
  store i1 false, i1* %ret_true61, align 1
  %n362 = load %node_struct*, %node_struct** @n3, align 8
  %head63 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head63, %node_node** @llNodes.1, align 8
  br label %while64

while64:                                          ; preds = %merge, %else73
  %putMeHere65 = load %node_node*, %node_node** @llNodes.1, align 8
  %curr66 = icmp ne %node_node* %putMeHere65, null
  br i1 %curr66, label %while_body67, label %merge74

while_body67:                                     ; preds = %while64
  %putMeHere68 = load %node_node*, %node_node** @llNodes.1, align 8
  %nodes69 = getelementptr inbounds %node_node, %node_node* %putMeHere68, i32 0, i32 0
  %"stored_node'70" = load %node_struct*, %node_struct** %nodes69, align 8
  br label %if71

if71:                                             ; preds = %while_body67
  %"found?75" = icmp eq %node_struct* %"stored_node'70", %n362
  br i1 %"found?75", label %then72, label %else73

then72:                                           ; preds = %if71
  store i1 true, i1* %ret_true61, align 1
  br label %merge74

else73:                                           ; preds = %if71
  %toBeHere76 = load %node_node*, %node_node** @llNodes.1, align 8
  %llNodesPtr77 = getelementptr inbounds %node_node, %node_node* %toBeHere76, i32 0, i32 1
  %toBeHerenow78 = load %node_node*, %node_node** %llNodesPtr77, align 8
  store %node_node* %toBeHerenow78, %node_node** @llNodes.1, align 8
  br label %while64

merge74:                                          ; preds = %while64, %then72
  %returnVal79 = load i1, i1* %ret_true61, align 1
  store i1 %returnVal79, i1* @found2, align 1
  %ret_true80 = alloca i1, align 1
  store i1 false, i1* %ret_true80, align 1
  %e381 = load %edge_t*, %edge_t** @e3, align 8
  %head82 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  store %edge_node* %head82, %edge_node** @llEdges, align 8
  br label %while83

while83:                                          ; preds = %merge74, %else92
  %putMeHere84 = load %edge_node*, %edge_node** @llEdges, align 8
  %curr85 = icmp ne %edge_node* %putMeHere84, null
  br i1 %curr85, label %while_body86, label %merge93

while_body86:                                     ; preds = %while83
  %putMeHere87 = load %edge_node*, %edge_node** @llEdges, align 8
  %nodes88 = getelementptr inbounds %edge_node, %edge_node* %putMeHere87, i32 0, i32 0
  %"stored_node'89" = load %edge_t*, %edge_t** %nodes88, align 8
  br label %if90

if90:                                             ; preds = %while_body86
  %"found?94" = icmp eq %edge_t* %"stored_node'89", %e381
  br i1 %"found?94", label %then91, label %else92

then91:                                           ; preds = %if90
  store i1 true, i1* %ret_true80, align 1
  br label %merge93

else92:                                           ; preds = %if90
  %toBeHere95 = load %edge_node*, %edge_node** @llEdges, align 8
  %llNodesPtr96 = getelementptr inbounds %edge_node, %edge_node* %toBeHere95, i32 0, i32 1
  %toBeHerenow97 = load %edge_node*, %edge_node** %llNodesPtr96, align 8
  store %edge_node* %toBeHerenow97, %edge_node** @llEdges, align 8
  br label %while83

merge93:                                          ; preds = %while83, %then91
  %e398 = load %edge_t*, %edge_t** @e3, align 8
  %returnVal99 = load i1, i1* %ret_true80, align 1
  store i1 %returnVal99, i1* @found3, align 1
  %ret_true100 = alloca i1, align 1
  store i1 false, i1* %ret_true100, align 1
  %e5 = load %edge_t*, %edge_t** @e5, align 8
  %head101 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  store %edge_node* %head101, %edge_node** @llEdges.2, align 8
  br label %while102

while102:                                         ; preds = %merge93, %else111
  %putMeHere103 = load %edge_node*, %edge_node** @llEdges.2, align 8
  %curr104 = icmp ne %edge_node* %putMeHere103, null
  br i1 %curr104, label %while_body105, label %merge112

while_body105:                                    ; preds = %while102
  %putMeHere106 = load %edge_node*, %edge_node** @llEdges.2, align 8
  %nodes107 = getelementptr inbounds %edge_node, %edge_node* %putMeHere106, i32 0, i32 0
  %"stored_node'108" = load %edge_t*, %edge_t** %nodes107, align 8
  br label %if109

if109:                                            ; preds = %while_body105
  %"found?113" = icmp eq %edge_t* %"stored_node'108", %e5
  br i1 %"found?113", label %then110, label %else111

then110:                                          ; preds = %if109
  store i1 true, i1* %ret_true100, align 1
  br label %merge112

else111:                                          ; preds = %if109
  %toBeHere114 = load %edge_node*, %edge_node** @llEdges.2, align 8
  %llNodesPtr115 = getelementptr inbounds %edge_node, %edge_node* %toBeHere114, i32 0, i32 1
  %toBeHerenow116 = load %edge_node*, %edge_node** %llNodesPtr115, align 8
  store %edge_node* %toBeHerenow116, %edge_node** @llEdges.2, align 8
  br label %while102

merge112:                                         ; preds = %while102, %then110
  %e5117 = load %edge_t*, %edge_t** @e5, align 8
  %returnVal118 = load i1, i1* %ret_true100, align 1
  store i1 %returnVal118, i1* @found4, align 1
  %found = load i1, i1* @found, align 1
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i1 %found)
  %found2 = load i1, i1* @found2, align 1
  %printf119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.3, i32 0, i32 0), i1 %found2)
  %found3 = load i1, i1* @found3, align 1
  %printf120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.4, i32 0, i32 0), i1 %found3)
  %found4 = load i1, i1* @found4, align 1
  %printf121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.5, i32 0, i32 0), i1 %found4)
  ret i32 0
}

declare noalias i8* @malloc(i32)

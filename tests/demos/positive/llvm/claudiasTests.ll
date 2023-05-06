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
@llNodes = global %node_node* null
@llNodes.1 = global %node_node* null
@llNodes.2 = global %node_node* null
@llNodes.3 = global %node_node* null
@edgesList = global %list_node* null
@llEdges = global %edge_node* null
@edges_of_n = global %list_node* null
@list_length = global i32 0
@0 = private unnamed_addr constant [27 x i8] c"lenght of list of edges: \0A\00", align 1
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@total_weight = global i32 0
@1 = private unnamed_addr constant [34 x i8] c"total weight of edges of n in g \0A\00", align 1
@fmt.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

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
  %"lvar'" = load %edge_t*, %edge_t** @e1, align 8
  %temp = getelementptr inbounds %edge_t, %edge_t* %"lvar'", i32 0, i32 2
  store i32 5, i32* %temp, align 4
  %"lvar'44" = load %edge_t*, %edge_t** @e2, align 8
  %temp45 = getelementptr inbounds %edge_t, %edge_t* %"lvar'44", i32 0, i32 2
  store i32 10, i32* %temp45, align 4
  %n46 = load %node_struct*, %node_struct** @n, align 8
  %graph_ptr = load %graph_tt*, %graph_tt** @g, align 8
  %nodes = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr, i32 0, i32 0
  %nodes_hd = load %node_node*, %node_node** %nodes, align 8
  %malloccall47 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node = bitcast i8* %malloccall47 to %node_node*
  %"lst_rst'" = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 1
  %node_ptr = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 0
  store %node_node* %nodes_hd, %node_node** %"lst_rst'", align 8
  store %node_struct* %n46, %node_struct** %node_ptr, align 8
  store %node_node* %new_node, %node_node** %nodes, align 8
  %m48 = load %node_struct*, %node_struct** @m, align 8
  %graph_ptr49 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes50 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr49, i32 0, i32 0
  %nodes_hd51 = load %node_node*, %node_node** %nodes50, align 8
  %malloccall52 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node53 = bitcast i8* %malloccall52 to %node_node*
  %"lst_rst'54" = getelementptr inbounds %node_node, %node_node* %new_node53, i32 0, i32 1
  %node_ptr55 = getelementptr inbounds %node_node, %node_node* %new_node53, i32 0, i32 0
  store %node_node* %nodes_hd51, %node_node** %"lst_rst'54", align 8
  store %node_struct* %m48, %node_struct** %node_ptr55, align 8
  store %node_node* %new_node53, %node_node** %nodes50, align 8
  %e1 = load %edge_t*, %edge_t** @e1, align 8
  %graph_ptr56 = load %graph_tt*, %graph_tt** @g, align 8
  %edges = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr56, i32 0, i32 1
  %edges_hd = load %edge_node*, %edge_node** %edges, align 8
  %malloccall57 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge = bitcast i8* %malloccall57 to %edge_node*
  %"lst_rst'58" = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 1
  %edge_ptr = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 0
  store %edge_node* %edges_hd, %edge_node** %"lst_rst'58", align 8
  store %edge_t* %e1, %edge_t** %edge_ptr, align 8
  %src_ptr = getelementptr inbounds %edge_t, %edge_t* %e1, i32 0, i32 0
  %dst_ptr = getelementptr inbounds %edge_t, %edge_t* %e1, i32 0, i32 1
  %"src'" = load %node_struct*, %node_struct** %src_ptr, align 8
  %"dst'" = load %node_struct*, %node_struct** %dst_ptr, align 8
  %ret_true = alloca i1, align 1
  store i1 false, i1* %ret_true, align 1
  %graph_ptr59 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes60 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr59, i32 0, i32 0
  %head = load %node_node*, %node_node** %nodes60, align 8
  store %node_node* %head, %node_node** @llNodes, align 8
  br label %while

while:                                            ; preds = %entry, %else
  %putMeHere = load %node_node*, %node_node** @llNodes, align 8
  %curr = icmp ne %node_node* %putMeHere, null
  br i1 %curr, label %while_body, label %merge

while_body:                                       ; preds = %while
  %putMeHere61 = load %node_node*, %node_node** @llNodes, align 8
  %nodes62 = getelementptr inbounds %node_node, %node_node* %putMeHere61, i32 0, i32 0
  %"stored_node'" = load %node_struct*, %node_struct** %nodes62, align 8
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
  %ret_true63 = alloca i1, align 1
  store i1 false, i1* %ret_true63, align 1
  %graph_ptr64 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes65 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr64, i32 0, i32 0
  %head66 = load %node_node*, %node_node** %nodes65, align 8
  store %node_node* %head66, %node_node** @llNodes.1, align 8
  br label %while67

while67:                                          ; preds = %merge, %else76
  %putMeHere68 = load %node_node*, %node_node** @llNodes.1, align 8
  %curr69 = icmp ne %node_node* %putMeHere68, null
  br i1 %curr69, label %while_body70, label %merge77

while_body70:                                     ; preds = %while67
  %putMeHere71 = load %node_node*, %node_node** @llNodes.1, align 8
  %nodes72 = getelementptr inbounds %node_node, %node_node* %putMeHere71, i32 0, i32 0
  %"stored_node'73" = load %node_struct*, %node_struct** %nodes72, align 8
  br label %if74

if74:                                             ; preds = %while_body70
  %"found?78" = icmp eq %node_struct* %"stored_node'73", %"dst'"
  br i1 %"found?78", label %then75, label %else76

then75:                                           ; preds = %if74
  store i1 true, i1* %ret_true63, align 1
  br label %merge77

else76:                                           ; preds = %if74
  %toBeHere79 = load %node_node*, %node_node** @llNodes.1, align 8
  %llNodesPtr80 = getelementptr inbounds %node_node, %node_node* %toBeHere79, i32 0, i32 1
  %toBeHerenow81 = load %node_node*, %node_node** %llNodesPtr80, align 8
  store %node_node* %toBeHerenow81, %node_node** @llNodes.1, align 8
  br label %while67

merge77:                                          ; preds = %while67, %then75
  %returnVal82 = load i1, i1* %ret_true63, align 1
  br label %if83

if83:                                             ; preds = %merge77
  br i1 %returnVal, label %merge85, label %else84

else84:                                           ; preds = %if83
  %graph_ptr86 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes87 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr86, i32 0, i32 0
  %nodes_hd88 = load %node_node*, %node_node** %nodes87, align 8
  %malloccall89 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node90 = bitcast i8* %malloccall89 to %node_node*
  %"lst_rst'91" = getelementptr inbounds %node_node, %node_node* %new_node90, i32 0, i32 1
  %node_ptr92 = getelementptr inbounds %node_node, %node_node* %new_node90, i32 0, i32 0
  store %node_node* %nodes_hd88, %node_node** %"lst_rst'91", align 8
  store %node_struct* %"src'", %node_struct** %node_ptr92, align 8
  store %node_node* %new_node90, %node_node** %nodes87, align 8
  br label %merge85

merge85:                                          ; preds = %else84, %if83
  br label %if93

if93:                                             ; preds = %merge85
  br i1 %returnVal82, label %merge95, label %else94

else94:                                           ; preds = %if93
  %graph_ptr96 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes97 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr96, i32 0, i32 0
  %nodes_hd98 = load %node_node*, %node_node** %nodes97, align 8
  %malloccall99 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node100 = bitcast i8* %malloccall99 to %node_node*
  %"lst_rst'101" = getelementptr inbounds %node_node, %node_node* %new_node100, i32 0, i32 1
  %node_ptr102 = getelementptr inbounds %node_node, %node_node* %new_node100, i32 0, i32 0
  store %node_node* %nodes_hd98, %node_node** %"lst_rst'101", align 8
  store %node_struct* %"dst'", %node_struct** %node_ptr102, align 8
  store %node_node* %new_node100, %node_node** %nodes97, align 8
  br label %merge95

merge95:                                          ; preds = %else94, %if93
  store %edge_node* %new_edge, %edge_node** %edges, align 8
  %e2 = load %edge_t*, %edge_t** @e2, align 8
  %graph_ptr103 = load %graph_tt*, %graph_tt** @g, align 8
  %edges104 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr103, i32 0, i32 1
  %edges_hd105 = load %edge_node*, %edge_node** %edges104, align 8
  %malloccall106 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge107 = bitcast i8* %malloccall106 to %edge_node*
  %"lst_rst'108" = getelementptr inbounds %edge_node, %edge_node* %new_edge107, i32 0, i32 1
  %edge_ptr109 = getelementptr inbounds %edge_node, %edge_node* %new_edge107, i32 0, i32 0
  store %edge_node* %edges_hd105, %edge_node** %"lst_rst'108", align 8
  store %edge_t* %e2, %edge_t** %edge_ptr109, align 8
  %src_ptr110 = getelementptr inbounds %edge_t, %edge_t* %e2, i32 0, i32 0
  %dst_ptr111 = getelementptr inbounds %edge_t, %edge_t* %e2, i32 0, i32 1
  %"src'112" = load %node_struct*, %node_struct** %src_ptr110, align 8
  %"dst'113" = load %node_struct*, %node_struct** %dst_ptr111, align 8
  %ret_true114 = alloca i1, align 1
  store i1 false, i1* %ret_true114, align 1
  %graph_ptr115 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes116 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr115, i32 0, i32 0
  %head117 = load %node_node*, %node_node** %nodes116, align 8
  store %node_node* %head117, %node_node** @llNodes.2, align 8
  br label %while118

while118:                                         ; preds = %merge95, %else127
  %putMeHere119 = load %node_node*, %node_node** @llNodes.2, align 8
  %curr120 = icmp ne %node_node* %putMeHere119, null
  br i1 %curr120, label %while_body121, label %merge128

while_body121:                                    ; preds = %while118
  %putMeHere122 = load %node_node*, %node_node** @llNodes.2, align 8
  %nodes123 = getelementptr inbounds %node_node, %node_node* %putMeHere122, i32 0, i32 0
  %"stored_node'124" = load %node_struct*, %node_struct** %nodes123, align 8
  br label %if125

if125:                                            ; preds = %while_body121
  %"found?129" = icmp eq %node_struct* %"stored_node'124", %"src'112"
  br i1 %"found?129", label %then126, label %else127

then126:                                          ; preds = %if125
  store i1 true, i1* %ret_true114, align 1
  br label %merge128

else127:                                          ; preds = %if125
  %toBeHere130 = load %node_node*, %node_node** @llNodes.2, align 8
  %llNodesPtr131 = getelementptr inbounds %node_node, %node_node* %toBeHere130, i32 0, i32 1
  %toBeHerenow132 = load %node_node*, %node_node** %llNodesPtr131, align 8
  store %node_node* %toBeHerenow132, %node_node** @llNodes.2, align 8
  br label %while118

merge128:                                         ; preds = %while118, %then126
  %returnVal133 = load i1, i1* %ret_true114, align 1
  %ret_true134 = alloca i1, align 1
  store i1 false, i1* %ret_true134, align 1
  %graph_ptr135 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes136 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr135, i32 0, i32 0
  %head137 = load %node_node*, %node_node** %nodes136, align 8
  store %node_node* %head137, %node_node** @llNodes.3, align 8
  br label %while138

while138:                                         ; preds = %merge128, %else147
  %putMeHere139 = load %node_node*, %node_node** @llNodes.3, align 8
  %curr140 = icmp ne %node_node* %putMeHere139, null
  br i1 %curr140, label %while_body141, label %merge148

while_body141:                                    ; preds = %while138
  %putMeHere142 = load %node_node*, %node_node** @llNodes.3, align 8
  %nodes143 = getelementptr inbounds %node_node, %node_node* %putMeHere142, i32 0, i32 0
  %"stored_node'144" = load %node_struct*, %node_struct** %nodes143, align 8
  br label %if145

if145:                                            ; preds = %while_body141
  %"found?149" = icmp eq %node_struct* %"stored_node'144", %"dst'113"
  br i1 %"found?149", label %then146, label %else147

then146:                                          ; preds = %if145
  store i1 true, i1* %ret_true134, align 1
  br label %merge148

else147:                                          ; preds = %if145
  %toBeHere150 = load %node_node*, %node_node** @llNodes.3, align 8
  %llNodesPtr151 = getelementptr inbounds %node_node, %node_node* %toBeHere150, i32 0, i32 1
  %toBeHerenow152 = load %node_node*, %node_node** %llNodesPtr151, align 8
  store %node_node* %toBeHerenow152, %node_node** @llNodes.3, align 8
  br label %while138

merge148:                                         ; preds = %while138, %then146
  %returnVal153 = load i1, i1* %ret_true134, align 1
  br label %if154

if154:                                            ; preds = %merge148
  br i1 %returnVal133, label %merge156, label %else155

else155:                                          ; preds = %if154
  %graph_ptr157 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes158 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr157, i32 0, i32 0
  %nodes_hd159 = load %node_node*, %node_node** %nodes158, align 8
  %malloccall160 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node161 = bitcast i8* %malloccall160 to %node_node*
  %"lst_rst'162" = getelementptr inbounds %node_node, %node_node* %new_node161, i32 0, i32 1
  %node_ptr163 = getelementptr inbounds %node_node, %node_node* %new_node161, i32 0, i32 0
  store %node_node* %nodes_hd159, %node_node** %"lst_rst'162", align 8
  store %node_struct* %"src'112", %node_struct** %node_ptr163, align 8
  store %node_node* %new_node161, %node_node** %nodes158, align 8
  br label %merge156

merge156:                                         ; preds = %else155, %if154
  br label %if164

if164:                                            ; preds = %merge156
  br i1 %returnVal153, label %merge166, label %else165

else165:                                          ; preds = %if164
  %graph_ptr167 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes168 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr167, i32 0, i32 0
  %nodes_hd169 = load %node_node*, %node_node** %nodes168, align 8
  %malloccall170 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node171 = bitcast i8* %malloccall170 to %node_node*
  %"lst_rst'172" = getelementptr inbounds %node_node, %node_node* %new_node171, i32 0, i32 1
  %node_ptr173 = getelementptr inbounds %node_node, %node_node* %new_node171, i32 0, i32 0
  store %node_node* %nodes_hd169, %node_node** %"lst_rst'172", align 8
  store %node_struct* %"dst'113", %node_struct** %node_ptr173, align 8
  store %node_node* %new_node171, %node_node** %nodes168, align 8
  br label %merge166

merge166:                                         ; preds = %else165, %if164
  store %edge_node* %new_edge107, %edge_node** %edges104, align 8
  %n174 = load %node_struct*, %node_struct** @n, align 8
  %graph_ptr175 = load %graph_tt*, %graph_tt** @g, align 8
  %edges176 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr175, i32 0, i32 1
  %head177 = load %edge_node*, %edge_node** %edges176, align 8
  store %edge_node* %head177, %edge_node** @llEdges, align 8
  br label %while178

while178:                                         ; preds = %merge166, %else186
  %putMeHere179 = load %edge_node*, %edge_node** @llEdges, align 8
  %curr180 = icmp ne %edge_node* %putMeHere179, null
  br i1 %curr180, label %while_body181, label %merge187

while_body181:                                    ; preds = %while178
  %putMeHere182 = load %edge_node*, %edge_node** @llEdges, align 8
  %nodes183 = getelementptr inbounds %edge_node, %edge_node* %putMeHere182, i32 0, i32 0
  %"stored_nodeA'" = load %edge_t*, %edge_t** %nodes183, align 8
  br label %if184

if184:                                            ; preds = %while_body181
  %nodes188 = getelementptr inbounds %edge_t, %edge_t* %"stored_nodeA'", i32 0, i32 0
  %nodes189 = getelementptr inbounds %edge_t, %edge_t* %"stored_nodeA'", i32 0, i32 1
  %"currEdgeSrc'" = load %node_struct*, %node_struct** %nodes188, align 8
  %"currEdgeDst'" = load %node_struct*, %node_struct** %nodes189, align 8
  %"foundSrc?" = icmp eq %node_struct* %"currEdgeSrc'", %n174
  %"foundDst?" = icmp eq %node_struct* %"currEdgeDst'", %n174
  %if_found = or i1 %"foundSrc?", %"foundDst?"
  br i1 %if_found, label %then185, label %else186

then185:                                          ; preds = %if184
  %malloccall190 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node191 = bitcast i8* %malloccall190 to %list_node*
  %nodes192 = getelementptr inbounds %list_node, %list_node* %node191, i32 0, i32 0
  %nodes193 = getelementptr inbounds %list_node, %list_node* %node191, i32 0, i32 1
  %malloccall194 = tail call i8* @malloc(i32 ptrtoint (%edge_t** getelementptr (%edge_t*, %edge_t** null, i32 1) to i32))
  %please_work = bitcast i8* %malloccall194 to %edge_t**
  store %edge_t* %"stored_nodeA'", %edge_t** %please_work, align 8
  %currEdgeVoidPtr = bitcast %edge_t** %please_work to i8*
  store i8* %currEdgeVoidPtr, i8** %nodes192, align 8
  %nextEdges = load %list_node*, %list_node** @edgesList, align 8
  store %list_node* %nextEdges, %list_node** %nodes193, align 8
  store %list_node* %node191, %list_node** @edgesList, align 8
  br label %else186

else186:                                          ; preds = %then185, %if184
  %toBeHere195 = load %edge_node*, %edge_node** @llEdges, align 8
  %llNodesPtr196 = getelementptr inbounds %edge_node, %edge_node* %toBeHere195, i32 0, i32 1
  %toBeHerenow197 = load %edge_node*, %edge_node** %llNodesPtr196, align 8
  store %edge_node* %toBeHerenow197, %edge_node** @llEdges, align 8
  br label %while178

merge187:                                         ; preds = %while178
  %return = load %list_node*, %list_node** @edgesList, align 8
  store %list_node* %return, %list_node** @edges_of_n, align 8
  %list = load %list_node*, %list_node** @edges_of_n, align 8
  %malloccall198 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %0 = bitcast i8* %malloccall198 to %list_node**
  %malloccall199 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %malloccall199 to i32*
  store i32 0, i32* %1, align 4
  store %list_node* %list, %list_node** %0, align 8
  %2 = icmp eq %list_node* %list, null
  br i1 %2, label %then201, label %else202

merge200:                                         ; preds = %merge206, %then201
  %3 = load i32, i32* %1, align 4
  store i32 %3, i32* @list_length, align 4
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0))
  %list_length = load i32, i32* @list_length, align 4
  %printf207 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %list_length)
  %edges_of_n = load %list_node*, %list_node** @edges_of_n, align 8
  %edge_weight_sum_result = call i32 @edge_weight_sum(%list_node* %edges_of_n)
  store i32 %edge_weight_sum_result, i32* @total_weight, align 4
  %printf208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @1, i32 0, i32 0))
  %total_weight = load i32, i32* @total_weight, align 4
  %printf209 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.4, i32 0, i32 0), i32 %total_weight)
  ret i32 0

then201:                                          ; preds = %merge187
  store i32 0, i32* %1, align 4
  br label %merge200

else202:                                          ; preds = %merge187
  br label %traverse_loop

traverse_loop:                                    ; preds = %while_body203, %else202
  %4 = load %list_node*, %list_node** %0, align 8
  %5 = icmp ne %list_node* %4, null
  br i1 %5, label %while_body203, label %merge206

while_body203:                                    ; preds = %traverse_loop
  %6 = load %list_node*, %list_node** %0, align 8
  %temp204 = getelementptr inbounds %list_node, %list_node* %6, i32 0, i32 1
  %temp205 = load %list_node*, %list_node** %temp204, align 8
  %7 = load i32, i32* %1, align 4
  %add = add i32 %7, 1
  store i32 %add, i32* %1, align 4
  store %list_node* %temp205, %list_node** %0, align 8
  br label %traverse_loop

merge206:                                         ; preds = %traverse_loop
  br label %merge200
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

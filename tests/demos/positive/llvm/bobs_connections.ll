; ModuleID = 'Graphite'
source_filename = "Graphite"

%graph_tt = type { %node_node*, %edge_node* }
%node_node = type { %node_struct*, %node_node* }
%node_struct = type { i8*, i1, i8* }
%edge_node = type { %edge_t*, %edge_node* }
%edge_t = type { %node_struct*, %node_struct*, i32 }
%list_node = type { i8*, %list_node* }

@social_network = global %graph_tt* null
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

declare i8* @array_del(i8*, i32, ...)

define i32 @main() {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%graph_tt* getelementptr (%graph_tt, %graph_tt* null, i32 1) to i32))
  %node = bitcast i8* %malloccall to %graph_tt*
  %"name'" = getelementptr inbounds %graph_tt, %graph_tt* %node, i32 0, i32 0
  %"data'" = getelementptr inbounds %graph_tt, %graph_tt* %node, i32 0, i32 1
  store %node_node* null, %node_node** %"name'", align 8
  store %edge_node* null, %edge_node** %"data'", align 8
  store %graph_tt* %node, %graph_tt** @social_network, align 8
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node2 = bitcast i8* %malloccall1 to %node_struct*
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32))
  %data = bitcast i8* %malloccall3 to i1*
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name = bitcast i8* %malloccall4 to i8**
  %data_ptr = bitcast i1* %data to i8*
  %name_ptr = bitcast i8** %name to i8*
  %"name'5" = getelementptr inbounds %node_struct, %node_struct* %node2, i32 0, i32 0
  %"data'6" = getelementptr inbounds %node_struct, %node_struct* %node2, i32 0, i32 2
  store i8* %name_ptr, i8** %"name'5", align 8
  store i8* %data_ptr, i8** %"data'6", align 8
  store %node_struct* %node2, %node_struct** @user, align 8
  %"lvar'" = load %node_struct*, %node_struct** @user, align 8
  %temp = getelementptr inbounds %node_struct, %node_struct* %"lvar'", i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @0, i32 0, i32 0), i8** %temp, align 8
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node8 = bitcast i8* %malloccall7 to %node_struct*
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32))
  %data10 = bitcast i8* %malloccall9 to i1*
  %malloccall11 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name12 = bitcast i8* %malloccall11 to i8**
  %data_ptr13 = bitcast i1* %data10 to i8*
  %name_ptr14 = bitcast i8** %name12 to i8*
  %"name'15" = getelementptr inbounds %node_struct, %node_struct* %node8, i32 0, i32 0
  %"data'16" = getelementptr inbounds %node_struct, %node_struct* %node8, i32 0, i32 2
  store i8* %name_ptr14, i8** %"name'15", align 8
  store i8* %data_ptr13, i8** %"data'16", align 8
  store %node_struct* %node8, %node_struct** @p1, align 8
  %"lvar'17" = load %node_struct*, %node_struct** @p1, align 8
  %temp18 = getelementptr inbounds %node_struct, %node_struct* %"lvar'17", i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1, i32 0, i32 0), i8** %temp18, align 8
  %"lvar'19" = load %node_struct*, %node_struct** @p1, align 8
  %temp20 = getelementptr inbounds %node_struct, %node_struct* %"lvar'19", i32 0, i32 1
  %p1.flag = load i1, i1* %temp20, align 1
  %p1.flag21 = load i1, i1* %temp20, align 1
  %malloccall22 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node23 = bitcast i8* %malloccall22 to %node_struct*
  %malloccall24 = tail call i8* @malloc(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32))
  %data25 = bitcast i8* %malloccall24 to i1*
  %malloccall26 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name27 = bitcast i8* %malloccall26 to i8**
  %data_ptr28 = bitcast i1* %data25 to i8*
  %name_ptr29 = bitcast i8** %name27 to i8*
  %"name'30" = getelementptr inbounds %node_struct, %node_struct* %node23, i32 0, i32 0
  %"data'31" = getelementptr inbounds %node_struct, %node_struct* %node23, i32 0, i32 2
  store i8* %name_ptr29, i8** %"name'30", align 8
  store i8* %data_ptr28, i8** %"data'31", align 8
  store %node_struct* %node23, %node_struct** @alice, align 8
  %"lvar'32" = load %node_struct*, %node_struct** @alice, align 8
  %temp33 = getelementptr inbounds %node_struct, %node_struct* %"lvar'32", i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2, i32 0, i32 0), i8** %temp33, align 8
  %"lvar'34" = load %node_struct*, %node_struct** @alice, align 8
  %temp35 = getelementptr inbounds %node_struct, %node_struct* %"lvar'34", i32 0, i32 1
  store i1 false, i1* %temp35, align 1
  %malloccall36 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node37 = bitcast i8* %malloccall36 to %node_struct*
  %malloccall38 = tail call i8* @malloc(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32))
  %data39 = bitcast i8* %malloccall38 to i1*
  %malloccall40 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name41 = bitcast i8* %malloccall40 to i8**
  %data_ptr42 = bitcast i1* %data39 to i8*
  %name_ptr43 = bitcast i8** %name41 to i8*
  %"name'44" = getelementptr inbounds %node_struct, %node_struct* %node37, i32 0, i32 0
  %"data'45" = getelementptr inbounds %node_struct, %node_struct* %node37, i32 0, i32 2
  store i8* %name_ptr43, i8** %"name'44", align 8
  store i8* %data_ptr42, i8** %"data'45", align 8
  store %node_struct* %node37, %node_struct** @bob, align 8
  %"lvar'46" = load %node_struct*, %node_struct** @bob, align 8
  %temp47 = getelementptr inbounds %node_struct, %node_struct* %"lvar'46", i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3, i32 0, i32 0), i8** %temp47, align 8
  %"lvar'48" = load %node_struct*, %node_struct** @bob, align 8
  %temp49 = getelementptr inbounds %node_struct, %node_struct* %"lvar'48", i32 0, i32 1
  store i1 true, i1* %temp49, align 1
  %malloccall50 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node51 = bitcast i8* %malloccall50 to %node_struct*
  %malloccall52 = tail call i8* @malloc(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32))
  %data53 = bitcast i8* %malloccall52 to i1*
  %malloccall54 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name55 = bitcast i8* %malloccall54 to i8**
  %data_ptr56 = bitcast i1* %data53 to i8*
  %name_ptr57 = bitcast i8** %name55 to i8*
  %"name'58" = getelementptr inbounds %node_struct, %node_struct* %node51, i32 0, i32 0
  %"data'59" = getelementptr inbounds %node_struct, %node_struct* %node51, i32 0, i32 2
  store i8* %name_ptr57, i8** %"name'58", align 8
  store i8* %data_ptr56, i8** %"data'59", align 8
  store %node_struct* %node51, %node_struct** @charlie, align 8
  %"lvar'60" = load %node_struct*, %node_struct** @charlie, align 8
  %temp61 = getelementptr inbounds %node_struct, %node_struct* %"lvar'60", i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @4, i32 0, i32 0), i8** %temp61, align 8
  %"lvar'62" = load %node_struct*, %node_struct** @charlie, align 8
  %temp63 = getelementptr inbounds %node_struct, %node_struct* %"lvar'62", i32 0, i32 1
  store i1 true, i1* %temp63, align 1
  %user = load %node_struct*, %node_struct** @user, align 8
  %bob = load %node_struct*, %node_struct** @bob, align 8
  %malloccall64 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct = bitcast i8* %malloccall64 to %edge_t*
  %"name'65" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 0
  %"name'66" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 1
  %"name'67" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 2
  store %node_struct* %user, %node_struct** %"name'65", align 8
  store %node_struct* %bob, %node_struct** %"name'66", align 8
  store i32 0, i32* %"name'67", align 4
  %malloccall68 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge = bitcast i8* %malloccall68 to %edge_t*
  %"name'69" = getelementptr inbounds %edge_t, %edge_t* %edge, i32 0, i32 0
  %"data'70" = getelementptr inbounds %edge_t, %edge_t* %edge, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'69", align 8
  store %node_struct* null, %node_struct** %"data'70", align 8
  store %edge_t* %edge, %edge_t** @e1, align 8
  store %edge_t* %myEdgeStruct, %edge_t** @e1, align 8
  %e1 = load %edge_t*, %edge_t** @e1, align 8
  %graph_ptr = load %graph_tt*, %graph_tt** @social_network, align 8
  %edges = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr, i32 0, i32 1
  %edges_hd = load %edge_node*, %edge_node** %edges, align 8
  %malloccall71 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge = bitcast i8* %malloccall71 to %edge_node*
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
  %graph_ptr72 = load %graph_tt*, %graph_tt** @social_network, align 8
  %nodes = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr72, i32 0, i32 0
  %head = load %node_node*, %node_node** %nodes, align 8
  store %node_node* %head, %node_node** @llNodes, align 8
  br label %while

while:                                            ; preds = %entry, %else
  %putMeHere = load %node_node*, %node_node** @llNodes, align 8
  %curr = icmp ne %node_node* %putMeHere, null
  br i1 %curr, label %while_body, label %merge

while_body:                                       ; preds = %while
  %putMeHere73 = load %node_node*, %node_node** @llNodes, align 8
  %nodes74 = getelementptr inbounds %node_node, %node_node* %putMeHere73, i32 0, i32 0
  %"stored_node'" = load %node_struct*, %node_struct** %nodes74, align 8
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
  %ret_true75 = alloca i1, align 1
  store i1 false, i1* %ret_true75, align 1
  %graph_ptr76 = load %graph_tt*, %graph_tt** @social_network, align 8
  %nodes77 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr76, i32 0, i32 0
  %head78 = load %node_node*, %node_node** %nodes77, align 8
  store %node_node* %head78, %node_node** @llNodes.1, align 8
  br label %while79

while79:                                          ; preds = %merge, %else88
  %putMeHere80 = load %node_node*, %node_node** @llNodes.1, align 8
  %curr81 = icmp ne %node_node* %putMeHere80, null
  br i1 %curr81, label %while_body82, label %merge89

while_body82:                                     ; preds = %while79
  %putMeHere83 = load %node_node*, %node_node** @llNodes.1, align 8
  %nodes84 = getelementptr inbounds %node_node, %node_node* %putMeHere83, i32 0, i32 0
  %"stored_node'85" = load %node_struct*, %node_struct** %nodes84, align 8
  br label %if86

if86:                                             ; preds = %while_body82
  %"found?90" = icmp eq %node_struct* %"stored_node'85", %"dst'"
  br i1 %"found?90", label %then87, label %else88

then87:                                           ; preds = %if86
  store i1 true, i1* %ret_true75, align 1
  br label %merge89

else88:                                           ; preds = %if86
  %toBeHere91 = load %node_node*, %node_node** @llNodes.1, align 8
  %llNodesPtr92 = getelementptr inbounds %node_node, %node_node* %toBeHere91, i32 0, i32 1
  %toBeHerenow93 = load %node_node*, %node_node** %llNodesPtr92, align 8
  store %node_node* %toBeHerenow93, %node_node** @llNodes.1, align 8
  br label %while79

merge89:                                          ; preds = %while79, %then87
  %returnVal94 = load i1, i1* %ret_true75, align 1
  br label %if95

if95:                                             ; preds = %merge89
  br i1 %returnVal, label %merge97, label %else96

else96:                                           ; preds = %if95
  %graph_ptr98 = load %graph_tt*, %graph_tt** @social_network, align 8
  %nodes99 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr98, i32 0, i32 0
  %nodes_hd = load %node_node*, %node_node** %nodes99, align 8
  %malloccall100 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node = bitcast i8* %malloccall100 to %node_node*
  %"lst_rst'101" = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 1
  %node_ptr = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 0
  store %node_node* %nodes_hd, %node_node** %"lst_rst'101", align 8
  store %node_struct* %"src'", %node_struct** %node_ptr, align 8
  store %node_node* %new_node, %node_node** %nodes99, align 8
  br label %merge97

merge97:                                          ; preds = %else96, %if95
  br label %if102

if102:                                            ; preds = %merge97
  br i1 %returnVal94, label %merge104, label %else103

else103:                                          ; preds = %if102
  %graph_ptr105 = load %graph_tt*, %graph_tt** @social_network, align 8
  %nodes106 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr105, i32 0, i32 0
  %nodes_hd107 = load %node_node*, %node_node** %nodes106, align 8
  %malloccall108 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node109 = bitcast i8* %malloccall108 to %node_node*
  %"lst_rst'110" = getelementptr inbounds %node_node, %node_node* %new_node109, i32 0, i32 1
  %node_ptr111 = getelementptr inbounds %node_node, %node_node* %new_node109, i32 0, i32 0
  store %node_node* %nodes_hd107, %node_node** %"lst_rst'110", align 8
  store %node_struct* %"dst'", %node_struct** %node_ptr111, align 8
  store %node_node* %new_node109, %node_node** %nodes106, align 8
  br label %merge104

merge104:                                         ; preds = %else103, %if102
  store %edge_node* %new_edge, %edge_node** %edges, align 8
  %bob112 = load %node_struct*, %node_struct** @bob, align 8
  %alice = load %node_struct*, %node_struct** @alice, align 8
  %malloccall113 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct114 = bitcast i8* %malloccall113 to %edge_t*
  %"name'115" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct114, i32 0, i32 0
  %"name'116" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct114, i32 0, i32 1
  %"name'117" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct114, i32 0, i32 2
  store %node_struct* %bob112, %node_struct** %"name'115", align 8
  store %node_struct* %alice, %node_struct** %"name'116", align 8
  store i32 0, i32* %"name'117", align 4
  %malloccall118 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge119 = bitcast i8* %malloccall118 to %edge_t*
  %"name'120" = getelementptr inbounds %edge_t, %edge_t* %edge119, i32 0, i32 0
  %"data'121" = getelementptr inbounds %edge_t, %edge_t* %edge119, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'120", align 8
  store %node_struct* null, %node_struct** %"data'121", align 8
  store %edge_t* %edge119, %edge_t** @e2, align 8
  store %edge_t* %myEdgeStruct114, %edge_t** @e2, align 8
  %bob122 = load %node_struct*, %node_struct** @bob, align 8
  %charlie = load %node_struct*, %node_struct** @charlie, align 8
  %malloccall123 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct124 = bitcast i8* %malloccall123 to %edge_t*
  %"name'125" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct124, i32 0, i32 0
  %"name'126" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct124, i32 0, i32 1
  %"name'127" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct124, i32 0, i32 2
  store %node_struct* %bob122, %node_struct** %"name'125", align 8
  store %node_struct* %charlie, %node_struct** %"name'126", align 8
  store i32 0, i32* %"name'127", align 4
  %malloccall128 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge129 = bitcast i8* %malloccall128 to %edge_t*
  %"name'130" = getelementptr inbounds %edge_t, %edge_t* %edge129, i32 0, i32 0
  %"data'131" = getelementptr inbounds %edge_t, %edge_t* %edge129, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'130", align 8
  store %node_struct* null, %node_struct** %"data'131", align 8
  store %edge_t* %edge129, %edge_t** @e3, align 8
  store %edge_t* %myEdgeStruct124, %edge_t** @e3, align 8
  %charlie132 = load %node_struct*, %node_struct** @charlie, align 8
  %alice133 = load %node_struct*, %node_struct** @alice, align 8
  %malloccall134 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct135 = bitcast i8* %malloccall134 to %edge_t*
  %"name'136" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct135, i32 0, i32 0
  %"name'137" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct135, i32 0, i32 1
  %"name'138" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct135, i32 0, i32 2
  store %node_struct* %charlie132, %node_struct** %"name'136", align 8
  store %node_struct* %alice133, %node_struct** %"name'137", align 8
  store i32 0, i32* %"name'138", align 4
  %malloccall139 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge140 = bitcast i8* %malloccall139 to %edge_t*
  %"name'141" = getelementptr inbounds %edge_t, %edge_t* %edge140, i32 0, i32 0
  %"data'142" = getelementptr inbounds %edge_t, %edge_t* %edge140, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'141", align 8
  store %node_struct* null, %node_struct** %"data'142", align 8
  store %edge_t* %edge140, %edge_t** @e4, align 8
  store %edge_t* %myEdgeStruct135, %edge_t** @e4, align 8
  %e2 = load %edge_t*, %edge_t** @e2, align 8
  %graph_ptr143 = load %graph_tt*, %graph_tt** @social_network, align 8
  %edges144 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr143, i32 0, i32 1
  %edges_hd145 = load %edge_node*, %edge_node** %edges144, align 8
  %malloccall146 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge147 = bitcast i8* %malloccall146 to %edge_node*
  %"lst_rst'148" = getelementptr inbounds %edge_node, %edge_node* %new_edge147, i32 0, i32 1
  %edge_ptr149 = getelementptr inbounds %edge_node, %edge_node* %new_edge147, i32 0, i32 0
  store %edge_node* %edges_hd145, %edge_node** %"lst_rst'148", align 8
  store %edge_t* %e2, %edge_t** %edge_ptr149, align 8
  %src_ptr150 = getelementptr inbounds %edge_t, %edge_t* %e2, i32 0, i32 0
  %dst_ptr151 = getelementptr inbounds %edge_t, %edge_t* %e2, i32 0, i32 1
  %"src'152" = load %node_struct*, %node_struct** %src_ptr150, align 8
  %"dst'153" = load %node_struct*, %node_struct** %dst_ptr151, align 8
  %ret_true154 = alloca i1, align 1
  store i1 false, i1* %ret_true154, align 1
  %graph_ptr155 = load %graph_tt*, %graph_tt** @social_network, align 8
  %nodes156 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr155, i32 0, i32 0
  %head157 = load %node_node*, %node_node** %nodes156, align 8
  store %node_node* %head157, %node_node** @llNodes.2, align 8
  br label %while158

while158:                                         ; preds = %merge104, %else167
  %putMeHere159 = load %node_node*, %node_node** @llNodes.2, align 8
  %curr160 = icmp ne %node_node* %putMeHere159, null
  br i1 %curr160, label %while_body161, label %merge168

while_body161:                                    ; preds = %while158
  %putMeHere162 = load %node_node*, %node_node** @llNodes.2, align 8
  %nodes163 = getelementptr inbounds %node_node, %node_node* %putMeHere162, i32 0, i32 0
  %"stored_node'164" = load %node_struct*, %node_struct** %nodes163, align 8
  br label %if165

if165:                                            ; preds = %while_body161
  %"found?169" = icmp eq %node_struct* %"stored_node'164", %"src'152"
  br i1 %"found?169", label %then166, label %else167

then166:                                          ; preds = %if165
  store i1 true, i1* %ret_true154, align 1
  br label %merge168

else167:                                          ; preds = %if165
  %toBeHere170 = load %node_node*, %node_node** @llNodes.2, align 8
  %llNodesPtr171 = getelementptr inbounds %node_node, %node_node* %toBeHere170, i32 0, i32 1
  %toBeHerenow172 = load %node_node*, %node_node** %llNodesPtr171, align 8
  store %node_node* %toBeHerenow172, %node_node** @llNodes.2, align 8
  br label %while158

merge168:                                         ; preds = %while158, %then166
  %returnVal173 = load i1, i1* %ret_true154, align 1
  %ret_true174 = alloca i1, align 1
  store i1 false, i1* %ret_true174, align 1
  %graph_ptr175 = load %graph_tt*, %graph_tt** @social_network, align 8
  %nodes176 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr175, i32 0, i32 0
  %head177 = load %node_node*, %node_node** %nodes176, align 8
  store %node_node* %head177, %node_node** @llNodes.3, align 8
  br label %while178

while178:                                         ; preds = %merge168, %else187
  %putMeHere179 = load %node_node*, %node_node** @llNodes.3, align 8
  %curr180 = icmp ne %node_node* %putMeHere179, null
  br i1 %curr180, label %while_body181, label %merge188

while_body181:                                    ; preds = %while178
  %putMeHere182 = load %node_node*, %node_node** @llNodes.3, align 8
  %nodes183 = getelementptr inbounds %node_node, %node_node* %putMeHere182, i32 0, i32 0
  %"stored_node'184" = load %node_struct*, %node_struct** %nodes183, align 8
  br label %if185

if185:                                            ; preds = %while_body181
  %"found?189" = icmp eq %node_struct* %"stored_node'184", %"dst'153"
  br i1 %"found?189", label %then186, label %else187

then186:                                          ; preds = %if185
  store i1 true, i1* %ret_true174, align 1
  br label %merge188

else187:                                          ; preds = %if185
  %toBeHere190 = load %node_node*, %node_node** @llNodes.3, align 8
  %llNodesPtr191 = getelementptr inbounds %node_node, %node_node* %toBeHere190, i32 0, i32 1
  %toBeHerenow192 = load %node_node*, %node_node** %llNodesPtr191, align 8
  store %node_node* %toBeHerenow192, %node_node** @llNodes.3, align 8
  br label %while178

merge188:                                         ; preds = %while178, %then186
  %returnVal193 = load i1, i1* %ret_true174, align 1
  br label %if194

if194:                                            ; preds = %merge188
  br i1 %returnVal173, label %merge196, label %else195

else195:                                          ; preds = %if194
  %graph_ptr197 = load %graph_tt*, %graph_tt** @social_network, align 8
  %nodes198 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr197, i32 0, i32 0
  %nodes_hd199 = load %node_node*, %node_node** %nodes198, align 8
  %malloccall200 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node201 = bitcast i8* %malloccall200 to %node_node*
  %"lst_rst'202" = getelementptr inbounds %node_node, %node_node* %new_node201, i32 0, i32 1
  %node_ptr203 = getelementptr inbounds %node_node, %node_node* %new_node201, i32 0, i32 0
  store %node_node* %nodes_hd199, %node_node** %"lst_rst'202", align 8
  store %node_struct* %"src'152", %node_struct** %node_ptr203, align 8
  store %node_node* %new_node201, %node_node** %nodes198, align 8
  br label %merge196

merge196:                                         ; preds = %else195, %if194
  br label %if204

if204:                                            ; preds = %merge196
  br i1 %returnVal193, label %merge206, label %else205

else205:                                          ; preds = %if204
  %graph_ptr207 = load %graph_tt*, %graph_tt** @social_network, align 8
  %nodes208 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr207, i32 0, i32 0
  %nodes_hd209 = load %node_node*, %node_node** %nodes208, align 8
  %malloccall210 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node211 = bitcast i8* %malloccall210 to %node_node*
  %"lst_rst'212" = getelementptr inbounds %node_node, %node_node* %new_node211, i32 0, i32 1
  %node_ptr213 = getelementptr inbounds %node_node, %node_node* %new_node211, i32 0, i32 0
  store %node_node* %nodes_hd209, %node_node** %"lst_rst'212", align 8
  store %node_struct* %"dst'153", %node_struct** %node_ptr213, align 8
  store %node_node* %new_node211, %node_node** %nodes208, align 8
  br label %merge206

merge206:                                         ; preds = %else205, %if204
  store %edge_node* %new_edge147, %edge_node** %edges144, align 8
  %e3 = load %edge_t*, %edge_t** @e3, align 8
  %graph_ptr214 = load %graph_tt*, %graph_tt** @social_network, align 8
  %edges215 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr214, i32 0, i32 1
  %edges_hd216 = load %edge_node*, %edge_node** %edges215, align 8
  %malloccall217 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge218 = bitcast i8* %malloccall217 to %edge_node*
  %"lst_rst'219" = getelementptr inbounds %edge_node, %edge_node* %new_edge218, i32 0, i32 1
  %edge_ptr220 = getelementptr inbounds %edge_node, %edge_node* %new_edge218, i32 0, i32 0
  store %edge_node* %edges_hd216, %edge_node** %"lst_rst'219", align 8
  store %edge_t* %e3, %edge_t** %edge_ptr220, align 8
  %src_ptr221 = getelementptr inbounds %edge_t, %edge_t* %e3, i32 0, i32 0
  %dst_ptr222 = getelementptr inbounds %edge_t, %edge_t* %e3, i32 0, i32 1
  %"src'223" = load %node_struct*, %node_struct** %src_ptr221, align 8
  %"dst'224" = load %node_struct*, %node_struct** %dst_ptr222, align 8
  %ret_true225 = alloca i1, align 1
  store i1 false, i1* %ret_true225, align 1
  %graph_ptr226 = load %graph_tt*, %graph_tt** @social_network, align 8
  %nodes227 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr226, i32 0, i32 0
  %head228 = load %node_node*, %node_node** %nodes227, align 8
  store %node_node* %head228, %node_node** @llNodes.4, align 8
  br label %while229

while229:                                         ; preds = %merge206, %else238
  %putMeHere230 = load %node_node*, %node_node** @llNodes.4, align 8
  %curr231 = icmp ne %node_node* %putMeHere230, null
  br i1 %curr231, label %while_body232, label %merge239

while_body232:                                    ; preds = %while229
  %putMeHere233 = load %node_node*, %node_node** @llNodes.4, align 8
  %nodes234 = getelementptr inbounds %node_node, %node_node* %putMeHere233, i32 0, i32 0
  %"stored_node'235" = load %node_struct*, %node_struct** %nodes234, align 8
  br label %if236

if236:                                            ; preds = %while_body232
  %"found?240" = icmp eq %node_struct* %"stored_node'235", %"src'223"
  br i1 %"found?240", label %then237, label %else238

then237:                                          ; preds = %if236
  store i1 true, i1* %ret_true225, align 1
  br label %merge239

else238:                                          ; preds = %if236
  %toBeHere241 = load %node_node*, %node_node** @llNodes.4, align 8
  %llNodesPtr242 = getelementptr inbounds %node_node, %node_node* %toBeHere241, i32 0, i32 1
  %toBeHerenow243 = load %node_node*, %node_node** %llNodesPtr242, align 8
  store %node_node* %toBeHerenow243, %node_node** @llNodes.4, align 8
  br label %while229

merge239:                                         ; preds = %while229, %then237
  %returnVal244 = load i1, i1* %ret_true225, align 1
  %ret_true245 = alloca i1, align 1
  store i1 false, i1* %ret_true245, align 1
  %graph_ptr246 = load %graph_tt*, %graph_tt** @social_network, align 8
  %nodes247 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr246, i32 0, i32 0
  %head248 = load %node_node*, %node_node** %nodes247, align 8
  store %node_node* %head248, %node_node** @llNodes.5, align 8
  br label %while249

while249:                                         ; preds = %merge239, %else258
  %putMeHere250 = load %node_node*, %node_node** @llNodes.5, align 8
  %curr251 = icmp ne %node_node* %putMeHere250, null
  br i1 %curr251, label %while_body252, label %merge259

while_body252:                                    ; preds = %while249
  %putMeHere253 = load %node_node*, %node_node** @llNodes.5, align 8
  %nodes254 = getelementptr inbounds %node_node, %node_node* %putMeHere253, i32 0, i32 0
  %"stored_node'255" = load %node_struct*, %node_struct** %nodes254, align 8
  br label %if256

if256:                                            ; preds = %while_body252
  %"found?260" = icmp eq %node_struct* %"stored_node'255", %"dst'224"
  br i1 %"found?260", label %then257, label %else258

then257:                                          ; preds = %if256
  store i1 true, i1* %ret_true245, align 1
  br label %merge259

else258:                                          ; preds = %if256
  %toBeHere261 = load %node_node*, %node_node** @llNodes.5, align 8
  %llNodesPtr262 = getelementptr inbounds %node_node, %node_node* %toBeHere261, i32 0, i32 1
  %toBeHerenow263 = load %node_node*, %node_node** %llNodesPtr262, align 8
  store %node_node* %toBeHerenow263, %node_node** @llNodes.5, align 8
  br label %while249

merge259:                                         ; preds = %while249, %then257
  %returnVal264 = load i1, i1* %ret_true245, align 1
  br label %if265

if265:                                            ; preds = %merge259
  br i1 %returnVal244, label %merge267, label %else266

else266:                                          ; preds = %if265
  %graph_ptr268 = load %graph_tt*, %graph_tt** @social_network, align 8
  %nodes269 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr268, i32 0, i32 0
  %nodes_hd270 = load %node_node*, %node_node** %nodes269, align 8
  %malloccall271 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node272 = bitcast i8* %malloccall271 to %node_node*
  %"lst_rst'273" = getelementptr inbounds %node_node, %node_node* %new_node272, i32 0, i32 1
  %node_ptr274 = getelementptr inbounds %node_node, %node_node* %new_node272, i32 0, i32 0
  store %node_node* %nodes_hd270, %node_node** %"lst_rst'273", align 8
  store %node_struct* %"src'223", %node_struct** %node_ptr274, align 8
  store %node_node* %new_node272, %node_node** %nodes269, align 8
  br label %merge267

merge267:                                         ; preds = %else266, %if265
  br label %if275

if275:                                            ; preds = %merge267
  br i1 %returnVal264, label %merge277, label %else276

else276:                                          ; preds = %if275
  %graph_ptr278 = load %graph_tt*, %graph_tt** @social_network, align 8
  %nodes279 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr278, i32 0, i32 0
  %nodes_hd280 = load %node_node*, %node_node** %nodes279, align 8
  %malloccall281 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node282 = bitcast i8* %malloccall281 to %node_node*
  %"lst_rst'283" = getelementptr inbounds %node_node, %node_node* %new_node282, i32 0, i32 1
  %node_ptr284 = getelementptr inbounds %node_node, %node_node* %new_node282, i32 0, i32 0
  store %node_node* %nodes_hd280, %node_node** %"lst_rst'283", align 8
  store %node_struct* %"dst'224", %node_struct** %node_ptr284, align 8
  store %node_node* %new_node282, %node_node** %nodes279, align 8
  br label %merge277

merge277:                                         ; preds = %else276, %if275
  store %edge_node* %new_edge218, %edge_node** %edges215, align 8
  %e4 = load %edge_t*, %edge_t** @e4, align 8
  %graph_ptr285 = load %graph_tt*, %graph_tt** @social_network, align 8
  %edges286 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr285, i32 0, i32 1
  %edges_hd287 = load %edge_node*, %edge_node** %edges286, align 8
  %malloccall288 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge289 = bitcast i8* %malloccall288 to %edge_node*
  %"lst_rst'290" = getelementptr inbounds %edge_node, %edge_node* %new_edge289, i32 0, i32 1
  %edge_ptr291 = getelementptr inbounds %edge_node, %edge_node* %new_edge289, i32 0, i32 0
  store %edge_node* %edges_hd287, %edge_node** %"lst_rst'290", align 8
  store %edge_t* %e4, %edge_t** %edge_ptr291, align 8
  %src_ptr292 = getelementptr inbounds %edge_t, %edge_t* %e4, i32 0, i32 0
  %dst_ptr293 = getelementptr inbounds %edge_t, %edge_t* %e4, i32 0, i32 1
  %"src'294" = load %node_struct*, %node_struct** %src_ptr292, align 8
  %"dst'295" = load %node_struct*, %node_struct** %dst_ptr293, align 8
  %ret_true296 = alloca i1, align 1
  store i1 false, i1* %ret_true296, align 1
  %graph_ptr297 = load %graph_tt*, %graph_tt** @social_network, align 8
  %nodes298 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr297, i32 0, i32 0
  %head299 = load %node_node*, %node_node** %nodes298, align 8
  store %node_node* %head299, %node_node** @llNodes.6, align 8
  br label %while300

while300:                                         ; preds = %merge277, %else309
  %putMeHere301 = load %node_node*, %node_node** @llNodes.6, align 8
  %curr302 = icmp ne %node_node* %putMeHere301, null
  br i1 %curr302, label %while_body303, label %merge310

while_body303:                                    ; preds = %while300
  %putMeHere304 = load %node_node*, %node_node** @llNodes.6, align 8
  %nodes305 = getelementptr inbounds %node_node, %node_node* %putMeHere304, i32 0, i32 0
  %"stored_node'306" = load %node_struct*, %node_struct** %nodes305, align 8
  br label %if307

if307:                                            ; preds = %while_body303
  %"found?311" = icmp eq %node_struct* %"stored_node'306", %"src'294"
  br i1 %"found?311", label %then308, label %else309

then308:                                          ; preds = %if307
  store i1 true, i1* %ret_true296, align 1
  br label %merge310

else309:                                          ; preds = %if307
  %toBeHere312 = load %node_node*, %node_node** @llNodes.6, align 8
  %llNodesPtr313 = getelementptr inbounds %node_node, %node_node* %toBeHere312, i32 0, i32 1
  %toBeHerenow314 = load %node_node*, %node_node** %llNodesPtr313, align 8
  store %node_node* %toBeHerenow314, %node_node** @llNodes.6, align 8
  br label %while300

merge310:                                         ; preds = %while300, %then308
  %returnVal315 = load i1, i1* %ret_true296, align 1
  %ret_true316 = alloca i1, align 1
  store i1 false, i1* %ret_true316, align 1
  %graph_ptr317 = load %graph_tt*, %graph_tt** @social_network, align 8
  %nodes318 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr317, i32 0, i32 0
  %head319 = load %node_node*, %node_node** %nodes318, align 8
  store %node_node* %head319, %node_node** @llNodes.7, align 8
  br label %while320

while320:                                         ; preds = %merge310, %else329
  %putMeHere321 = load %node_node*, %node_node** @llNodes.7, align 8
  %curr322 = icmp ne %node_node* %putMeHere321, null
  br i1 %curr322, label %while_body323, label %merge330

while_body323:                                    ; preds = %while320
  %putMeHere324 = load %node_node*, %node_node** @llNodes.7, align 8
  %nodes325 = getelementptr inbounds %node_node, %node_node* %putMeHere324, i32 0, i32 0
  %"stored_node'326" = load %node_struct*, %node_struct** %nodes325, align 8
  br label %if327

if327:                                            ; preds = %while_body323
  %"found?331" = icmp eq %node_struct* %"stored_node'326", %"dst'295"
  br i1 %"found?331", label %then328, label %else329

then328:                                          ; preds = %if327
  store i1 true, i1* %ret_true316, align 1
  br label %merge330

else329:                                          ; preds = %if327
  %toBeHere332 = load %node_node*, %node_node** @llNodes.7, align 8
  %llNodesPtr333 = getelementptr inbounds %node_node, %node_node* %toBeHere332, i32 0, i32 1
  %toBeHerenow334 = load %node_node*, %node_node** %llNodesPtr333, align 8
  store %node_node* %toBeHerenow334, %node_node** @llNodes.7, align 8
  br label %while320

merge330:                                         ; preds = %while320, %then328
  %returnVal335 = load i1, i1* %ret_true316, align 1
  br label %if336

if336:                                            ; preds = %merge330
  br i1 %returnVal315, label %merge338, label %else337

else337:                                          ; preds = %if336
  %graph_ptr339 = load %graph_tt*, %graph_tt** @social_network, align 8
  %nodes340 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr339, i32 0, i32 0
  %nodes_hd341 = load %node_node*, %node_node** %nodes340, align 8
  %malloccall342 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node343 = bitcast i8* %malloccall342 to %node_node*
  %"lst_rst'344" = getelementptr inbounds %node_node, %node_node* %new_node343, i32 0, i32 1
  %node_ptr345 = getelementptr inbounds %node_node, %node_node* %new_node343, i32 0, i32 0
  store %node_node* %nodes_hd341, %node_node** %"lst_rst'344", align 8
  store %node_struct* %"src'294", %node_struct** %node_ptr345, align 8
  store %node_node* %new_node343, %node_node** %nodes340, align 8
  br label %merge338

merge338:                                         ; preds = %else337, %if336
  br label %if346

if346:                                            ; preds = %merge338
  br i1 %returnVal335, label %merge348, label %else347

else347:                                          ; preds = %if346
  %graph_ptr349 = load %graph_tt*, %graph_tt** @social_network, align 8
  %nodes350 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr349, i32 0, i32 0
  %nodes_hd351 = load %node_node*, %node_node** %nodes350, align 8
  %malloccall352 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node353 = bitcast i8* %malloccall352 to %node_node*
  %"lst_rst'354" = getelementptr inbounds %node_node, %node_node* %new_node353, i32 0, i32 1
  %node_ptr355 = getelementptr inbounds %node_node, %node_node* %new_node353, i32 0, i32 0
  store %node_node* %nodes_hd351, %node_node** %"lst_rst'354", align 8
  store %node_struct* %"dst'295", %node_struct** %node_ptr355, align 8
  store %node_node* %new_node353, %node_node** %nodes350, align 8
  br label %merge348

merge348:                                         ; preds = %else347, %if346
  store %edge_node* %new_edge289, %edge_node** %edges286, align 8
  %bob356 = load %node_struct*, %node_struct** @bob, align 8
  %graph_ptr357 = load %graph_tt*, %graph_tt** @social_network, align 8
  %edges358 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr357, i32 0, i32 1
  %head359 = load %edge_node*, %edge_node** %edges358, align 8
  store %edge_node* %head359, %edge_node** @llEdges, align 8
  br label %while360

while360:                                         ; preds = %merge348, %else368
  %putMeHere361 = load %edge_node*, %edge_node** @llEdges, align 8
  %curr362 = icmp ne %edge_node* %putMeHere361, null
  br i1 %curr362, label %while_body363, label %merge369

while_body363:                                    ; preds = %while360
  %putMeHere364 = load %edge_node*, %edge_node** @llEdges, align 8
  %nodes365 = getelementptr inbounds %edge_node, %edge_node* %putMeHere364, i32 0, i32 0
  %"stored_nodeA'" = load %edge_t*, %edge_t** %nodes365, align 8
  br label %if366

if366:                                            ; preds = %while_body363
  %nodes370 = getelementptr inbounds %edge_t, %edge_t* %"stored_nodeA'", i32 0, i32 0
  %nodes371 = getelementptr inbounds %edge_t, %edge_t* %"stored_nodeA'", i32 0, i32 1
  %"currEdgeSrc'" = load %node_struct*, %node_struct** %nodes370, align 8
  %"currEdgeDst'" = load %node_struct*, %node_struct** %nodes371, align 8
  %"foundSrc?" = icmp eq %node_struct* %"currEdgeSrc'", %bob356
  %"foundDst?" = icmp eq %node_struct* %"currEdgeDst'", %bob356
  %if_found = or i1 %"foundSrc?", %"foundDst?"
  br i1 %if_found, label %then367, label %else368

then367:                                          ; preds = %if366
  %malloccall372 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node373 = bitcast i8* %malloccall372 to %list_node*
  %nodes374 = getelementptr inbounds %list_node, %list_node* %node373, i32 0, i32 0
  %nodes375 = getelementptr inbounds %list_node, %list_node* %node373, i32 0, i32 1
  %malloccall376 = tail call i8* @malloc(i32 ptrtoint (%edge_t** getelementptr (%edge_t*, %edge_t** null, i32 1) to i32))
  %please_work = bitcast i8* %malloccall376 to %edge_t**
  store %edge_t* %"stored_nodeA'", %edge_t** %please_work, align 8
  %currEdgeVoidPtr = bitcast %edge_t** %please_work to i8*
  store i8* %currEdgeVoidPtr, i8** %nodes374, align 8
  %nextEdges = load %list_node*, %list_node** @edgesList, align 8
  store %list_node* %nextEdges, %list_node** %nodes375, align 8
  store %list_node* %node373, %list_node** @edgesList, align 8
  br label %else368

else368:                                          ; preds = %then367, %if366
  %toBeHere377 = load %edge_node*, %edge_node** @llEdges, align 8
  %llNodesPtr378 = getelementptr inbounds %edge_node, %edge_node* %toBeHere377, i32 0, i32 1
  %toBeHerenow379 = load %edge_node*, %edge_node** %llNodesPtr378, align 8
  store %edge_node* %toBeHerenow379, %edge_node** @llEdges, align 8
  br label %while360

merge369:                                         ; preds = %while360
  %return = load %list_node*, %list_node** @edgesList, align 8
  store %list_node* %return, %list_node** @bobs_connections, align 8
  %list = load %list_node*, %list_node** @bobs_connections, align 8
  %malloccall380 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %0 = bitcast i8* %malloccall380 to %list_node**
  %malloccall381 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %malloccall381 to i32*
  store i32 0, i32* %1, align 4
  store %list_node* %list, %list_node** %0, align 8
  %2 = icmp eq %list_node* %list, null
  br i1 %2, label %then383, label %else384

merge382:                                         ; preds = %merge388, %then383
  %3 = load i32, i32* %1, align 4
  store i32 %3, i32* @num_bobs_connections, align 4
  %num_bobs_connections = load i32, i32* @num_bobs_connections, align 4
  %tmp = sub i32 %num_bobs_connections, 1
  store i32 %tmp, i32* @num_bobs_connections, align 4
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0))
  %num_bobs_connections389 = load i32, i32* @num_bobs_connections, align 4
  %printf390 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %num_bobs_connections389)
  %printf391 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @6, i32 0, i32 0))
  ret i32 0

then383:                                          ; preds = %merge369
  store i32 0, i32* %1, align 4
  br label %merge382

else384:                                          ; preds = %merge369
  br label %traverse_loop

traverse_loop:                                    ; preds = %while_body385, %else384
  %4 = load %list_node*, %list_node** %0, align 8
  %5 = icmp ne %list_node* %4, null
  br i1 %5, label %while_body385, label %merge388

while_body385:                                    ; preds = %traverse_loop
  %6 = load %list_node*, %list_node** %0, align 8
  %temp386 = getelementptr inbounds %list_node, %list_node* %6, i32 0, i32 1
  %temp387 = load %list_node*, %list_node** %temp386, align 8
  %7 = load i32, i32* %1, align 4
  %add = add i32 %7, 1
  store i32 %add, i32* %1, align 4
  store %list_node* %temp387, %list_node** %0, align 8
  br label %traverse_loop

merge388:                                         ; preds = %traverse_loop
  br label %merge382
}

declare noalias i8* @malloc(i32)

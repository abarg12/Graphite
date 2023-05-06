; ModuleID = 'Graphite'
source_filename = "Graphite"

%node_struct = type { i8*, i1, i8* }
%edge_t = type { %node_struct*, %node_struct*, i32 }
%graph_tt = type { %node_node*, %edge_node* }
%node_node = type { %node_struct*, %node_node* }
%edge_node = type { %edge_t*, %edge_node* }
%list_node = type { i8*, %list_node* }

@node1 = global %node_struct* null
@node2 = global %node_struct* null
@node3 = global %node_struct* null
@node4 = global %node_struct* null
@node5 = global %node_struct* null
@node6 = global %node_struct* null
@edge1 = global %edge_t* null
@edge2 = global %edge_t* null
@edge3 = global %edge_t* null
@g = global %graph_tt* null
@llNodes = global %node_node* null
@llNodes.1 = global %node_node* null
@llNodes.2 = global %node_node* null
@llNodes.3 = global %node_node* null
@llNodes.4 = global %node_node* null
@llNodes.5 = global %node_node* null
@edgesList = global %list_node* null
@llEdges = global %edge_node* null
@l = global %list_node* null
@edge1_prime = global %edge_t* null
@edge2_prime = global %edge_t* null
@edge3_prime = global %edge_t* null
@toPrint1 = global i32 0
@toPrint2 = global i32 0
@toPrint3 = global i32 0
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.6 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.7 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

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
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data = bitcast i8* %malloccall1 to i8**
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name = bitcast i8* %malloccall2 to i8**
  %data_ptr = bitcast i8** %data to i8*
  %name_ptr = bitcast i8** %name to i8*
  %"name'" = getelementptr inbounds %node_struct, %node_struct* %node, i32 0, i32 0
  %"data'" = getelementptr inbounds %node_struct, %node_struct* %node, i32 0, i32 2
  store i8* %name_ptr, i8** %"name'", align 8
  store i8* %data_ptr, i8** %"data'", align 8
  store %node_struct* %node, %node_struct** @node1, align 8
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node4 = bitcast i8* %malloccall3 to %node_struct*
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data6 = bitcast i8* %malloccall5 to i8**
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name8 = bitcast i8* %malloccall7 to i8**
  %data_ptr9 = bitcast i8** %data6 to i8*
  %name_ptr10 = bitcast i8** %name8 to i8*
  %"name'11" = getelementptr inbounds %node_struct, %node_struct* %node4, i32 0, i32 0
  %"data'12" = getelementptr inbounds %node_struct, %node_struct* %node4, i32 0, i32 2
  store i8* %name_ptr10, i8** %"name'11", align 8
  store i8* %data_ptr9, i8** %"data'12", align 8
  store %node_struct* %node4, %node_struct** @node2, align 8
  %malloccall13 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node14 = bitcast i8* %malloccall13 to %node_struct*
  %malloccall15 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data16 = bitcast i8* %malloccall15 to i8**
  %malloccall17 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name18 = bitcast i8* %malloccall17 to i8**
  %data_ptr19 = bitcast i8** %data16 to i8*
  %name_ptr20 = bitcast i8** %name18 to i8*
  %"name'21" = getelementptr inbounds %node_struct, %node_struct* %node14, i32 0, i32 0
  %"data'22" = getelementptr inbounds %node_struct, %node_struct* %node14, i32 0, i32 2
  store i8* %name_ptr20, i8** %"name'21", align 8
  store i8* %data_ptr19, i8** %"data'22", align 8
  store %node_struct* %node14, %node_struct** @node3, align 8
  %malloccall23 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node24 = bitcast i8* %malloccall23 to %node_struct*
  %malloccall25 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data26 = bitcast i8* %malloccall25 to i8**
  %malloccall27 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name28 = bitcast i8* %malloccall27 to i8**
  %data_ptr29 = bitcast i8** %data26 to i8*
  %name_ptr30 = bitcast i8** %name28 to i8*
  %"name'31" = getelementptr inbounds %node_struct, %node_struct* %node24, i32 0, i32 0
  %"data'32" = getelementptr inbounds %node_struct, %node_struct* %node24, i32 0, i32 2
  store i8* %name_ptr30, i8** %"name'31", align 8
  store i8* %data_ptr29, i8** %"data'32", align 8
  store %node_struct* %node24, %node_struct** @node4, align 8
  %malloccall33 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node34 = bitcast i8* %malloccall33 to %node_struct*
  %malloccall35 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data36 = bitcast i8* %malloccall35 to i8**
  %malloccall37 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name38 = bitcast i8* %malloccall37 to i8**
  %data_ptr39 = bitcast i8** %data36 to i8*
  %name_ptr40 = bitcast i8** %name38 to i8*
  %"name'41" = getelementptr inbounds %node_struct, %node_struct* %node34, i32 0, i32 0
  %"data'42" = getelementptr inbounds %node_struct, %node_struct* %node34, i32 0, i32 2
  store i8* %name_ptr40, i8** %"name'41", align 8
  store i8* %data_ptr39, i8** %"data'42", align 8
  store %node_struct* %node34, %node_struct** @node5, align 8
  %malloccall43 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node44 = bitcast i8* %malloccall43 to %node_struct*
  %malloccall45 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data46 = bitcast i8* %malloccall45 to i8**
  %malloccall47 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name48 = bitcast i8* %malloccall47 to i8**
  %data_ptr49 = bitcast i8** %data46 to i8*
  %name_ptr50 = bitcast i8** %name48 to i8*
  %"name'51" = getelementptr inbounds %node_struct, %node_struct* %node44, i32 0, i32 0
  %"data'52" = getelementptr inbounds %node_struct, %node_struct* %node44, i32 0, i32 2
  store i8* %name_ptr50, i8** %"name'51", align 8
  store i8* %data_ptr49, i8** %"data'52", align 8
  store %node_struct* %node44, %node_struct** @node6, align 8
  %node1 = load %node_struct*, %node_struct** @node1, align 8
  %node2 = load %node_struct*, %node_struct** @node2, align 8
  %malloccall53 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct = bitcast i8* %malloccall53 to %edge_t*
  %"name'54" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 0
  %"name'55" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 1
  %"name'56" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 2
  store %node_struct* %node1, %node_struct** %"name'54", align 8
  store %node_struct* %node2, %node_struct** %"name'55", align 8
  store i32 0, i32* %"name'56", align 4
  %malloccall57 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge = bitcast i8* %malloccall57 to %edge_t*
  %"name'58" = getelementptr inbounds %edge_t, %edge_t* %edge, i32 0, i32 0
  %"data'59" = getelementptr inbounds %edge_t, %edge_t* %edge, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'58", align 8
  store %node_struct* null, %node_struct** %"data'59", align 8
  store %edge_t* %edge, %edge_t** @edge1, align 8
  store %edge_t* %myEdgeStruct, %edge_t** @edge1, align 8
  %"lvar'" = load %edge_t*, %edge_t** @edge1, align 8
  %temp = getelementptr inbounds %edge_t, %edge_t* %"lvar'", i32 0, i32 2
  store i32 7, i32* %temp, align 4
  %node3 = load %node_struct*, %node_struct** @node3, align 8
  %node5 = load %node_struct*, %node_struct** @node5, align 8
  %malloccall60 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct61 = bitcast i8* %malloccall60 to %edge_t*
  %"name'62" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct61, i32 0, i32 0
  %"name'63" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct61, i32 0, i32 1
  %"name'64" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct61, i32 0, i32 2
  store %node_struct* %node3, %node_struct** %"name'62", align 8
  store %node_struct* %node5, %node_struct** %"name'63", align 8
  store i32 0, i32* %"name'64", align 4
  %malloccall65 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge66 = bitcast i8* %malloccall65 to %edge_t*
  %"name'67" = getelementptr inbounds %edge_t, %edge_t* %edge66, i32 0, i32 0
  %"data'68" = getelementptr inbounds %edge_t, %edge_t* %edge66, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'67", align 8
  store %node_struct* null, %node_struct** %"data'68", align 8
  store %edge_t* %edge66, %edge_t** @edge2, align 8
  store %edge_t* %myEdgeStruct61, %edge_t** @edge2, align 8
  %"lvar'69" = load %edge_t*, %edge_t** @edge2, align 8
  %temp70 = getelementptr inbounds %edge_t, %edge_t* %"lvar'69", i32 0, i32 2
  store i32 8, i32* %temp70, align 4
  %node371 = load %node_struct*, %node_struct** @node3, align 8
  %node6 = load %node_struct*, %node_struct** @node6, align 8
  %malloccall72 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct73 = bitcast i8* %malloccall72 to %edge_t*
  %"name'74" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct73, i32 0, i32 0
  %"name'75" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct73, i32 0, i32 1
  %"name'76" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct73, i32 0, i32 2
  store %node_struct* %node371, %node_struct** %"name'74", align 8
  store %node_struct* %node6, %node_struct** %"name'75", align 8
  store i32 0, i32* %"name'76", align 4
  %malloccall77 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge78 = bitcast i8* %malloccall77 to %edge_t*
  %"name'79" = getelementptr inbounds %edge_t, %edge_t* %edge78, i32 0, i32 0
  %"data'80" = getelementptr inbounds %edge_t, %edge_t* %edge78, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'79", align 8
  store %node_struct* null, %node_struct** %"data'80", align 8
  store %edge_t* %edge78, %edge_t** @edge3, align 8
  store %edge_t* %myEdgeStruct73, %edge_t** @edge3, align 8
  %"lvar'81" = load %edge_t*, %edge_t** @edge3, align 8
  %temp82 = getelementptr inbounds %edge_t, %edge_t* %"lvar'81", i32 0, i32 2
  store i32 9, i32* %temp82, align 4
  %malloccall83 = tail call i8* @malloc(i32 ptrtoint (%graph_tt* getelementptr (%graph_tt, %graph_tt* null, i32 1) to i32))
  %node84 = bitcast i8* %malloccall83 to %graph_tt*
  %"name'85" = getelementptr inbounds %graph_tt, %graph_tt* %node84, i32 0, i32 0
  %"data'86" = getelementptr inbounds %graph_tt, %graph_tt* %node84, i32 0, i32 1
  store %node_node* null, %node_node** %"name'85", align 8
  store %edge_node* null, %edge_node** %"data'86", align 8
  store %graph_tt* %node84, %graph_tt** @g, align 8
  %node187 = load %node_struct*, %node_struct** @node1, align 8
  %graph_ptr = load %graph_tt*, %graph_tt** @g, align 8
  %nodes = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr, i32 0, i32 0
  %nodes_hd = load %node_node*, %node_node** %nodes, align 8
  %malloccall88 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node = bitcast i8* %malloccall88 to %node_node*
  %"lst_rst'" = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 1
  %node_ptr = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 0
  store %node_node* %nodes_hd, %node_node** %"lst_rst'", align 8
  store %node_struct* %node187, %node_struct** %node_ptr, align 8
  store %node_node* %new_node, %node_node** %nodes, align 8
  %node289 = load %node_struct*, %node_struct** @node2, align 8
  %graph_ptr90 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes91 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr90, i32 0, i32 0
  %nodes_hd92 = load %node_node*, %node_node** %nodes91, align 8
  %malloccall93 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node94 = bitcast i8* %malloccall93 to %node_node*
  %"lst_rst'95" = getelementptr inbounds %node_node, %node_node* %new_node94, i32 0, i32 1
  %node_ptr96 = getelementptr inbounds %node_node, %node_node* %new_node94, i32 0, i32 0
  store %node_node* %nodes_hd92, %node_node** %"lst_rst'95", align 8
  store %node_struct* %node289, %node_struct** %node_ptr96, align 8
  store %node_node* %new_node94, %node_node** %nodes91, align 8
  %node397 = load %node_struct*, %node_struct** @node3, align 8
  %graph_ptr98 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes99 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr98, i32 0, i32 0
  %nodes_hd100 = load %node_node*, %node_node** %nodes99, align 8
  %malloccall101 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node102 = bitcast i8* %malloccall101 to %node_node*
  %"lst_rst'103" = getelementptr inbounds %node_node, %node_node* %new_node102, i32 0, i32 1
  %node_ptr104 = getelementptr inbounds %node_node, %node_node* %new_node102, i32 0, i32 0
  store %node_node* %nodes_hd100, %node_node** %"lst_rst'103", align 8
  store %node_struct* %node397, %node_struct** %node_ptr104, align 8
  store %node_node* %new_node102, %node_node** %nodes99, align 8
  %node4105 = load %node_struct*, %node_struct** @node4, align 8
  %graph_ptr106 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes107 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr106, i32 0, i32 0
  %nodes_hd108 = load %node_node*, %node_node** %nodes107, align 8
  %malloccall109 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node110 = bitcast i8* %malloccall109 to %node_node*
  %"lst_rst'111" = getelementptr inbounds %node_node, %node_node* %new_node110, i32 0, i32 1
  %node_ptr112 = getelementptr inbounds %node_node, %node_node* %new_node110, i32 0, i32 0
  store %node_node* %nodes_hd108, %node_node** %"lst_rst'111", align 8
  store %node_struct* %node4105, %node_struct** %node_ptr112, align 8
  store %node_node* %new_node110, %node_node** %nodes107, align 8
  %node5113 = load %node_struct*, %node_struct** @node5, align 8
  %graph_ptr114 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes115 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr114, i32 0, i32 0
  %nodes_hd116 = load %node_node*, %node_node** %nodes115, align 8
  %malloccall117 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node118 = bitcast i8* %malloccall117 to %node_node*
  %"lst_rst'119" = getelementptr inbounds %node_node, %node_node* %new_node118, i32 0, i32 1
  %node_ptr120 = getelementptr inbounds %node_node, %node_node* %new_node118, i32 0, i32 0
  store %node_node* %nodes_hd116, %node_node** %"lst_rst'119", align 8
  store %node_struct* %node5113, %node_struct** %node_ptr120, align 8
  store %node_node* %new_node118, %node_node** %nodes115, align 8
  %node6121 = load %node_struct*, %node_struct** @node6, align 8
  %graph_ptr122 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes123 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr122, i32 0, i32 0
  %nodes_hd124 = load %node_node*, %node_node** %nodes123, align 8
  %malloccall125 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node126 = bitcast i8* %malloccall125 to %node_node*
  %"lst_rst'127" = getelementptr inbounds %node_node, %node_node* %new_node126, i32 0, i32 1
  %node_ptr128 = getelementptr inbounds %node_node, %node_node* %new_node126, i32 0, i32 0
  store %node_node* %nodes_hd124, %node_node** %"lst_rst'127", align 8
  store %node_struct* %node6121, %node_struct** %node_ptr128, align 8
  store %node_node* %new_node126, %node_node** %nodes123, align 8
  %edge1 = load %edge_t*, %edge_t** @edge1, align 8
  %graph_ptr129 = load %graph_tt*, %graph_tt** @g, align 8
  %edges = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr129, i32 0, i32 1
  %edges_hd = load %edge_node*, %edge_node** %edges, align 8
  %malloccall130 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge = bitcast i8* %malloccall130 to %edge_node*
  %"lst_rst'131" = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 1
  %edge_ptr = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 0
  store %edge_node* %edges_hd, %edge_node** %"lst_rst'131", align 8
  store %edge_t* %edge1, %edge_t** %edge_ptr, align 8
  %src_ptr = getelementptr inbounds %edge_t, %edge_t* %edge1, i32 0, i32 0
  %dst_ptr = getelementptr inbounds %edge_t, %edge_t* %edge1, i32 0, i32 1
  %"src'" = load %node_struct*, %node_struct** %src_ptr, align 8
  %"dst'" = load %node_struct*, %node_struct** %dst_ptr, align 8
  %ret_true = alloca i1, align 1
  store i1 false, i1* %ret_true, align 1
  %graph_ptr132 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes133 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr132, i32 0, i32 0
  %head = load %node_node*, %node_node** %nodes133, align 8
  store %node_node* %head, %node_node** @llNodes, align 8
  br label %while

while:                                            ; preds = %entry, %else
  %putMeHere = load %node_node*, %node_node** @llNodes, align 8
  %curr = icmp ne %node_node* %putMeHere, null
  br i1 %curr, label %while_body, label %merge

while_body:                                       ; preds = %while
  %putMeHere134 = load %node_node*, %node_node** @llNodes, align 8
  %nodes135 = getelementptr inbounds %node_node, %node_node* %putMeHere134, i32 0, i32 0
  %"stored_node'" = load %node_struct*, %node_struct** %nodes135, align 8
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
  %ret_true136 = alloca i1, align 1
  store i1 false, i1* %ret_true136, align 1
  %graph_ptr137 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes138 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr137, i32 0, i32 0
  %head139 = load %node_node*, %node_node** %nodes138, align 8
  store %node_node* %head139, %node_node** @llNodes.1, align 8
  br label %while140

while140:                                         ; preds = %merge, %else149
  %putMeHere141 = load %node_node*, %node_node** @llNodes.1, align 8
  %curr142 = icmp ne %node_node* %putMeHere141, null
  br i1 %curr142, label %while_body143, label %merge150

while_body143:                                    ; preds = %while140
  %putMeHere144 = load %node_node*, %node_node** @llNodes.1, align 8
  %nodes145 = getelementptr inbounds %node_node, %node_node* %putMeHere144, i32 0, i32 0
  %"stored_node'146" = load %node_struct*, %node_struct** %nodes145, align 8
  br label %if147

if147:                                            ; preds = %while_body143
  %"found?151" = icmp eq %node_struct* %"stored_node'146", %"dst'"
  br i1 %"found?151", label %then148, label %else149

then148:                                          ; preds = %if147
  store i1 true, i1* %ret_true136, align 1
  br label %merge150

else149:                                          ; preds = %if147
  %toBeHere152 = load %node_node*, %node_node** @llNodes.1, align 8
  %llNodesPtr153 = getelementptr inbounds %node_node, %node_node* %toBeHere152, i32 0, i32 1
  %toBeHerenow154 = load %node_node*, %node_node** %llNodesPtr153, align 8
  store %node_node* %toBeHerenow154, %node_node** @llNodes.1, align 8
  br label %while140

merge150:                                         ; preds = %while140, %then148
  %returnVal155 = load i1, i1* %ret_true136, align 1
  br label %if156

if156:                                            ; preds = %merge150
  br i1 %returnVal, label %merge158, label %else157

else157:                                          ; preds = %if156
  %graph_ptr159 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes160 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr159, i32 0, i32 0
  %nodes_hd161 = load %node_node*, %node_node** %nodes160, align 8
  %malloccall162 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node163 = bitcast i8* %malloccall162 to %node_node*
  %"lst_rst'164" = getelementptr inbounds %node_node, %node_node* %new_node163, i32 0, i32 1
  %node_ptr165 = getelementptr inbounds %node_node, %node_node* %new_node163, i32 0, i32 0
  store %node_node* %nodes_hd161, %node_node** %"lst_rst'164", align 8
  store %node_struct* %"src'", %node_struct** %node_ptr165, align 8
  store %node_node* %new_node163, %node_node** %nodes160, align 8
  br label %merge158

merge158:                                         ; preds = %else157, %if156
  br label %if166

if166:                                            ; preds = %merge158
  br i1 %returnVal155, label %merge168, label %else167

else167:                                          ; preds = %if166
  %graph_ptr169 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes170 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr169, i32 0, i32 0
  %nodes_hd171 = load %node_node*, %node_node** %nodes170, align 8
  %malloccall172 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node173 = bitcast i8* %malloccall172 to %node_node*
  %"lst_rst'174" = getelementptr inbounds %node_node, %node_node* %new_node173, i32 0, i32 1
  %node_ptr175 = getelementptr inbounds %node_node, %node_node* %new_node173, i32 0, i32 0
  store %node_node* %nodes_hd171, %node_node** %"lst_rst'174", align 8
  store %node_struct* %"dst'", %node_struct** %node_ptr175, align 8
  store %node_node* %new_node173, %node_node** %nodes170, align 8
  br label %merge168

merge168:                                         ; preds = %else167, %if166
  store %edge_node* %new_edge, %edge_node** %edges, align 8
  %edge2 = load %edge_t*, %edge_t** @edge2, align 8
  %graph_ptr176 = load %graph_tt*, %graph_tt** @g, align 8
  %edges177 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr176, i32 0, i32 1
  %edges_hd178 = load %edge_node*, %edge_node** %edges177, align 8
  %malloccall179 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge180 = bitcast i8* %malloccall179 to %edge_node*
  %"lst_rst'181" = getelementptr inbounds %edge_node, %edge_node* %new_edge180, i32 0, i32 1
  %edge_ptr182 = getelementptr inbounds %edge_node, %edge_node* %new_edge180, i32 0, i32 0
  store %edge_node* %edges_hd178, %edge_node** %"lst_rst'181", align 8
  store %edge_t* %edge2, %edge_t** %edge_ptr182, align 8
  %src_ptr183 = getelementptr inbounds %edge_t, %edge_t* %edge2, i32 0, i32 0
  %dst_ptr184 = getelementptr inbounds %edge_t, %edge_t* %edge2, i32 0, i32 1
  %"src'185" = load %node_struct*, %node_struct** %src_ptr183, align 8
  %"dst'186" = load %node_struct*, %node_struct** %dst_ptr184, align 8
  %ret_true187 = alloca i1, align 1
  store i1 false, i1* %ret_true187, align 1
  %graph_ptr188 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes189 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr188, i32 0, i32 0
  %head190 = load %node_node*, %node_node** %nodes189, align 8
  store %node_node* %head190, %node_node** @llNodes.2, align 8
  br label %while191

while191:                                         ; preds = %merge168, %else200
  %putMeHere192 = load %node_node*, %node_node** @llNodes.2, align 8
  %curr193 = icmp ne %node_node* %putMeHere192, null
  br i1 %curr193, label %while_body194, label %merge201

while_body194:                                    ; preds = %while191
  %putMeHere195 = load %node_node*, %node_node** @llNodes.2, align 8
  %nodes196 = getelementptr inbounds %node_node, %node_node* %putMeHere195, i32 0, i32 0
  %"stored_node'197" = load %node_struct*, %node_struct** %nodes196, align 8
  br label %if198

if198:                                            ; preds = %while_body194
  %"found?202" = icmp eq %node_struct* %"stored_node'197", %"src'185"
  br i1 %"found?202", label %then199, label %else200

then199:                                          ; preds = %if198
  store i1 true, i1* %ret_true187, align 1
  br label %merge201

else200:                                          ; preds = %if198
  %toBeHere203 = load %node_node*, %node_node** @llNodes.2, align 8
  %llNodesPtr204 = getelementptr inbounds %node_node, %node_node* %toBeHere203, i32 0, i32 1
  %toBeHerenow205 = load %node_node*, %node_node** %llNodesPtr204, align 8
  store %node_node* %toBeHerenow205, %node_node** @llNodes.2, align 8
  br label %while191

merge201:                                         ; preds = %while191, %then199
  %returnVal206 = load i1, i1* %ret_true187, align 1
  %ret_true207 = alloca i1, align 1
  store i1 false, i1* %ret_true207, align 1
  %graph_ptr208 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes209 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr208, i32 0, i32 0
  %head210 = load %node_node*, %node_node** %nodes209, align 8
  store %node_node* %head210, %node_node** @llNodes.3, align 8
  br label %while211

while211:                                         ; preds = %merge201, %else220
  %putMeHere212 = load %node_node*, %node_node** @llNodes.3, align 8
  %curr213 = icmp ne %node_node* %putMeHere212, null
  br i1 %curr213, label %while_body214, label %merge221

while_body214:                                    ; preds = %while211
  %putMeHere215 = load %node_node*, %node_node** @llNodes.3, align 8
  %nodes216 = getelementptr inbounds %node_node, %node_node* %putMeHere215, i32 0, i32 0
  %"stored_node'217" = load %node_struct*, %node_struct** %nodes216, align 8
  br label %if218

if218:                                            ; preds = %while_body214
  %"found?222" = icmp eq %node_struct* %"stored_node'217", %"dst'186"
  br i1 %"found?222", label %then219, label %else220

then219:                                          ; preds = %if218
  store i1 true, i1* %ret_true207, align 1
  br label %merge221

else220:                                          ; preds = %if218
  %toBeHere223 = load %node_node*, %node_node** @llNodes.3, align 8
  %llNodesPtr224 = getelementptr inbounds %node_node, %node_node* %toBeHere223, i32 0, i32 1
  %toBeHerenow225 = load %node_node*, %node_node** %llNodesPtr224, align 8
  store %node_node* %toBeHerenow225, %node_node** @llNodes.3, align 8
  br label %while211

merge221:                                         ; preds = %while211, %then219
  %returnVal226 = load i1, i1* %ret_true207, align 1
  br label %if227

if227:                                            ; preds = %merge221
  br i1 %returnVal206, label %merge229, label %else228

else228:                                          ; preds = %if227
  %graph_ptr230 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes231 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr230, i32 0, i32 0
  %nodes_hd232 = load %node_node*, %node_node** %nodes231, align 8
  %malloccall233 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node234 = bitcast i8* %malloccall233 to %node_node*
  %"lst_rst'235" = getelementptr inbounds %node_node, %node_node* %new_node234, i32 0, i32 1
  %node_ptr236 = getelementptr inbounds %node_node, %node_node* %new_node234, i32 0, i32 0
  store %node_node* %nodes_hd232, %node_node** %"lst_rst'235", align 8
  store %node_struct* %"src'185", %node_struct** %node_ptr236, align 8
  store %node_node* %new_node234, %node_node** %nodes231, align 8
  br label %merge229

merge229:                                         ; preds = %else228, %if227
  br label %if237

if237:                                            ; preds = %merge229
  br i1 %returnVal226, label %merge239, label %else238

else238:                                          ; preds = %if237
  %graph_ptr240 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes241 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr240, i32 0, i32 0
  %nodes_hd242 = load %node_node*, %node_node** %nodes241, align 8
  %malloccall243 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node244 = bitcast i8* %malloccall243 to %node_node*
  %"lst_rst'245" = getelementptr inbounds %node_node, %node_node* %new_node244, i32 0, i32 1
  %node_ptr246 = getelementptr inbounds %node_node, %node_node* %new_node244, i32 0, i32 0
  store %node_node* %nodes_hd242, %node_node** %"lst_rst'245", align 8
  store %node_struct* %"dst'186", %node_struct** %node_ptr246, align 8
  store %node_node* %new_node244, %node_node** %nodes241, align 8
  br label %merge239

merge239:                                         ; preds = %else238, %if237
  store %edge_node* %new_edge180, %edge_node** %edges177, align 8
  %edge3 = load %edge_t*, %edge_t** @edge3, align 8
  %graph_ptr247 = load %graph_tt*, %graph_tt** @g, align 8
  %edges248 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr247, i32 0, i32 1
  %edges_hd249 = load %edge_node*, %edge_node** %edges248, align 8
  %malloccall250 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge251 = bitcast i8* %malloccall250 to %edge_node*
  %"lst_rst'252" = getelementptr inbounds %edge_node, %edge_node* %new_edge251, i32 0, i32 1
  %edge_ptr253 = getelementptr inbounds %edge_node, %edge_node* %new_edge251, i32 0, i32 0
  store %edge_node* %edges_hd249, %edge_node** %"lst_rst'252", align 8
  store %edge_t* %edge3, %edge_t** %edge_ptr253, align 8
  %src_ptr254 = getelementptr inbounds %edge_t, %edge_t* %edge3, i32 0, i32 0
  %dst_ptr255 = getelementptr inbounds %edge_t, %edge_t* %edge3, i32 0, i32 1
  %"src'256" = load %node_struct*, %node_struct** %src_ptr254, align 8
  %"dst'257" = load %node_struct*, %node_struct** %dst_ptr255, align 8
  %ret_true258 = alloca i1, align 1
  store i1 false, i1* %ret_true258, align 1
  %graph_ptr259 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes260 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr259, i32 0, i32 0
  %head261 = load %node_node*, %node_node** %nodes260, align 8
  store %node_node* %head261, %node_node** @llNodes.4, align 8
  br label %while262

while262:                                         ; preds = %merge239, %else271
  %putMeHere263 = load %node_node*, %node_node** @llNodes.4, align 8
  %curr264 = icmp ne %node_node* %putMeHere263, null
  br i1 %curr264, label %while_body265, label %merge272

while_body265:                                    ; preds = %while262
  %putMeHere266 = load %node_node*, %node_node** @llNodes.4, align 8
  %nodes267 = getelementptr inbounds %node_node, %node_node* %putMeHere266, i32 0, i32 0
  %"stored_node'268" = load %node_struct*, %node_struct** %nodes267, align 8
  br label %if269

if269:                                            ; preds = %while_body265
  %"found?273" = icmp eq %node_struct* %"stored_node'268", %"src'256"
  br i1 %"found?273", label %then270, label %else271

then270:                                          ; preds = %if269
  store i1 true, i1* %ret_true258, align 1
  br label %merge272

else271:                                          ; preds = %if269
  %toBeHere274 = load %node_node*, %node_node** @llNodes.4, align 8
  %llNodesPtr275 = getelementptr inbounds %node_node, %node_node* %toBeHere274, i32 0, i32 1
  %toBeHerenow276 = load %node_node*, %node_node** %llNodesPtr275, align 8
  store %node_node* %toBeHerenow276, %node_node** @llNodes.4, align 8
  br label %while262

merge272:                                         ; preds = %while262, %then270
  %returnVal277 = load i1, i1* %ret_true258, align 1
  %ret_true278 = alloca i1, align 1
  store i1 false, i1* %ret_true278, align 1
  %graph_ptr279 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes280 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr279, i32 0, i32 0
  %head281 = load %node_node*, %node_node** %nodes280, align 8
  store %node_node* %head281, %node_node** @llNodes.5, align 8
  br label %while282

while282:                                         ; preds = %merge272, %else291
  %putMeHere283 = load %node_node*, %node_node** @llNodes.5, align 8
  %curr284 = icmp ne %node_node* %putMeHere283, null
  br i1 %curr284, label %while_body285, label %merge292

while_body285:                                    ; preds = %while282
  %putMeHere286 = load %node_node*, %node_node** @llNodes.5, align 8
  %nodes287 = getelementptr inbounds %node_node, %node_node* %putMeHere286, i32 0, i32 0
  %"stored_node'288" = load %node_struct*, %node_struct** %nodes287, align 8
  br label %if289

if289:                                            ; preds = %while_body285
  %"found?293" = icmp eq %node_struct* %"stored_node'288", %"dst'257"
  br i1 %"found?293", label %then290, label %else291

then290:                                          ; preds = %if289
  store i1 true, i1* %ret_true278, align 1
  br label %merge292

else291:                                          ; preds = %if289
  %toBeHere294 = load %node_node*, %node_node** @llNodes.5, align 8
  %llNodesPtr295 = getelementptr inbounds %node_node, %node_node* %toBeHere294, i32 0, i32 1
  %toBeHerenow296 = load %node_node*, %node_node** %llNodesPtr295, align 8
  store %node_node* %toBeHerenow296, %node_node** @llNodes.5, align 8
  br label %while282

merge292:                                         ; preds = %while282, %then290
  %returnVal297 = load i1, i1* %ret_true278, align 1
  br label %if298

if298:                                            ; preds = %merge292
  br i1 %returnVal277, label %merge300, label %else299

else299:                                          ; preds = %if298
  %graph_ptr301 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes302 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr301, i32 0, i32 0
  %nodes_hd303 = load %node_node*, %node_node** %nodes302, align 8
  %malloccall304 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node305 = bitcast i8* %malloccall304 to %node_node*
  %"lst_rst'306" = getelementptr inbounds %node_node, %node_node* %new_node305, i32 0, i32 1
  %node_ptr307 = getelementptr inbounds %node_node, %node_node* %new_node305, i32 0, i32 0
  store %node_node* %nodes_hd303, %node_node** %"lst_rst'306", align 8
  store %node_struct* %"src'256", %node_struct** %node_ptr307, align 8
  store %node_node* %new_node305, %node_node** %nodes302, align 8
  br label %merge300

merge300:                                         ; preds = %else299, %if298
  br label %if308

if308:                                            ; preds = %merge300
  br i1 %returnVal297, label %merge310, label %else309

else309:                                          ; preds = %if308
  %graph_ptr311 = load %graph_tt*, %graph_tt** @g, align 8
  %nodes312 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr311, i32 0, i32 0
  %nodes_hd313 = load %node_node*, %node_node** %nodes312, align 8
  %malloccall314 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node315 = bitcast i8* %malloccall314 to %node_node*
  %"lst_rst'316" = getelementptr inbounds %node_node, %node_node* %new_node315, i32 0, i32 1
  %node_ptr317 = getelementptr inbounds %node_node, %node_node* %new_node315, i32 0, i32 0
  store %node_node* %nodes_hd313, %node_node** %"lst_rst'316", align 8
  store %node_struct* %"dst'257", %node_struct** %node_ptr317, align 8
  store %node_node* %new_node315, %node_node** %nodes312, align 8
  br label %merge310

merge310:                                         ; preds = %else309, %if308
  store %edge_node* %new_edge251, %edge_node** %edges248, align 8
  %graph_ptr318 = load %graph_tt*, %graph_tt** @g, align 8
  %edges319 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr318, i32 0, i32 1
  %head320 = load %edge_node*, %edge_node** %edges319, align 8
  store %edge_node* %head320, %edge_node** @llEdges, align 8
  br label %while321

while321:                                         ; preds = %merge310, %else328
  %putMeHere322 = load %edge_node*, %edge_node** @llEdges, align 8
  %curr323 = icmp ne %edge_node* %putMeHere322, null
  br i1 %curr323, label %while_body324, label %merge329

while_body324:                                    ; preds = %while321
  %putMeHere325 = load %edge_node*, %edge_node** @llEdges, align 8
  %nodes326 = getelementptr inbounds %edge_node, %edge_node* %putMeHere325, i32 0, i32 0
  %"stored_nodeA'" = load %edge_t*, %edge_t** %nodes326, align 8
  br label %then327

then327:                                          ; preds = %while_body324
  %malloccall330 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node331 = bitcast i8* %malloccall330 to %list_node*
  %nodes332 = getelementptr inbounds %list_node, %list_node* %node331, i32 0, i32 0
  %nodes333 = getelementptr inbounds %list_node, %list_node* %node331, i32 0, i32 1
  %malloccall334 = tail call i8* @malloc(i32 ptrtoint (%edge_t** getelementptr (%edge_t*, %edge_t** null, i32 1) to i32))
  %please_work = bitcast i8* %malloccall334 to %edge_t**
  store %edge_t* %"stored_nodeA'", %edge_t** %please_work, align 8
  %currEdgeVoidPtr = bitcast %edge_t** %please_work to i8*
  store i8* %currEdgeVoidPtr, i8** %nodes332, align 8
  %nextEdges = load %list_node*, %list_node** @edgesList, align 8
  store %list_node* %nextEdges, %list_node** %nodes333, align 8
  store %list_node* %node331, %list_node** @edgesList, align 8
  br label %else328

else328:                                          ; preds = %then327
  %toBeHere335 = load %edge_node*, %edge_node** @llEdges, align 8
  %llNodesPtr336 = getelementptr inbounds %edge_node, %edge_node* %toBeHere335, i32 0, i32 1
  %toBeHerenow337 = load %edge_node*, %edge_node** %llNodesPtr336, align 8
  store %edge_node* %toBeHerenow337, %edge_node** @llEdges, align 8
  br label %while321

merge329:                                         ; preds = %while321
  %return = load %list_node*, %list_node** @edgesList, align 8
  store %list_node* %return, %list_node** @l, align 8
  %list = load %list_node*, %list_node** @l, align 8
  %malloccall338 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %0 = bitcast i8* %malloccall338 to %list_node**
  %malloccall339 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %malloccall339 to i32*
  store %list_node* %list, %list_node** %0, align 8
  store i32 0, i32* %1, align 4
  br label %traverse_loop

traverse_loop:                                    ; preds = %while_body340, %merge329
  %2 = load i32, i32* %1, align 4
  %temp343 = icmp ne i32 %2, 0
  br i1 %temp343, label %while_body340, label %merge344

while_body340:                                    ; preds = %traverse_loop
  %3 = load %list_node*, %list_node** %0, align 8
  %temp341 = getelementptr inbounds %list_node, %list_node* %3, i32 0, i32 1
  %temp342 = load %list_node*, %list_node** %temp341, align 8
  %4 = load i32, i32* %1, align 4
  %subtract = sub i32 %4, 1
  store i32 %subtract, i32* %1, align 4
  store %list_node* %temp342, %list_node** %0, align 8
  br label %traverse_loop

merge344:                                         ; preds = %traverse_loop
  %5 = load %list_node*, %list_node** %0, align 8
  %temp345 = getelementptr inbounds %list_node, %list_node* %5, i32 0, i32 0
  %retval = load i8*, i8** %temp345, align 8
  %li_conv = bitcast i8* %retval to %edge_t**
  %val_ptr = load %edge_t*, %edge_t** %li_conv, align 8
  %malloccall346 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge347 = bitcast i8* %malloccall346 to %edge_t*
  %"name'348" = getelementptr inbounds %edge_t, %edge_t* %edge347, i32 0, i32 0
  %"data'349" = getelementptr inbounds %edge_t, %edge_t* %edge347, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'348", align 8
  store %node_struct* null, %node_struct** %"data'349", align 8
  store %edge_t* %edge347, %edge_t** @edge1_prime, align 8
  store %edge_t* %val_ptr, %edge_t** @edge1_prime, align 8
  %list350 = load %list_node*, %list_node** @l, align 8
  %malloccall351 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %6 = bitcast i8* %malloccall351 to %list_node**
  %malloccall352 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %7 = bitcast i8* %malloccall352 to i32*
  store %list_node* %list350, %list_node** %6, align 8
  store i32 1, i32* %7, align 4
  br label %traverse_loop353

traverse_loop353:                                 ; preds = %while_body354, %merge344
  %8 = load i32, i32* %7, align 4
  %temp358 = icmp ne i32 %8, 0
  br i1 %temp358, label %while_body354, label %merge359

while_body354:                                    ; preds = %traverse_loop353
  %9 = load %list_node*, %list_node** %6, align 8
  %temp355 = getelementptr inbounds %list_node, %list_node* %9, i32 0, i32 1
  %temp356 = load %list_node*, %list_node** %temp355, align 8
  %10 = load i32, i32* %7, align 4
  %subtract357 = sub i32 %10, 1
  store i32 %subtract357, i32* %7, align 4
  store %list_node* %temp356, %list_node** %6, align 8
  br label %traverse_loop353

merge359:                                         ; preds = %traverse_loop353
  %11 = load %list_node*, %list_node** %6, align 8
  %temp360 = getelementptr inbounds %list_node, %list_node* %11, i32 0, i32 0
  %retval361 = load i8*, i8** %temp360, align 8
  %li_conv362 = bitcast i8* %retval361 to %edge_t**
  %val_ptr363 = load %edge_t*, %edge_t** %li_conv362, align 8
  %malloccall364 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge365 = bitcast i8* %malloccall364 to %edge_t*
  %"name'366" = getelementptr inbounds %edge_t, %edge_t* %edge365, i32 0, i32 0
  %"data'367" = getelementptr inbounds %edge_t, %edge_t* %edge365, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'366", align 8
  store %node_struct* null, %node_struct** %"data'367", align 8
  store %edge_t* %edge365, %edge_t** @edge2_prime, align 8
  store %edge_t* %val_ptr363, %edge_t** @edge2_prime, align 8
  %list368 = load %list_node*, %list_node** @l, align 8
  %malloccall369 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %12 = bitcast i8* %malloccall369 to %list_node**
  %malloccall370 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %13 = bitcast i8* %malloccall370 to i32*
  store %list_node* %list368, %list_node** %12, align 8
  store i32 2, i32* %13, align 4
  br label %traverse_loop371

traverse_loop371:                                 ; preds = %while_body372, %merge359
  %14 = load i32, i32* %13, align 4
  %temp376 = icmp ne i32 %14, 0
  br i1 %temp376, label %while_body372, label %merge377

while_body372:                                    ; preds = %traverse_loop371
  %15 = load %list_node*, %list_node** %12, align 8
  %temp373 = getelementptr inbounds %list_node, %list_node* %15, i32 0, i32 1
  %temp374 = load %list_node*, %list_node** %temp373, align 8
  %16 = load i32, i32* %13, align 4
  %subtract375 = sub i32 %16, 1
  store i32 %subtract375, i32* %13, align 4
  store %list_node* %temp374, %list_node** %12, align 8
  br label %traverse_loop371

merge377:                                         ; preds = %traverse_loop371
  %17 = load %list_node*, %list_node** %12, align 8
  %temp378 = getelementptr inbounds %list_node, %list_node* %17, i32 0, i32 0
  %retval379 = load i8*, i8** %temp378, align 8
  %li_conv380 = bitcast i8* %retval379 to %edge_t**
  %val_ptr381 = load %edge_t*, %edge_t** %li_conv380, align 8
  %malloccall382 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge383 = bitcast i8* %malloccall382 to %edge_t*
  %"name'384" = getelementptr inbounds %edge_t, %edge_t* %edge383, i32 0, i32 0
  %"data'385" = getelementptr inbounds %edge_t, %edge_t* %edge383, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'384", align 8
  store %node_struct* null, %node_struct** %"data'385", align 8
  store %edge_t* %edge383, %edge_t** @edge3_prime, align 8
  store %edge_t* %val_ptr381, %edge_t** @edge3_prime, align 8
  %"lvar'386" = load %edge_t*, %edge_t** @edge1_prime, align 8
  %temp387 = getelementptr inbounds %edge_t, %edge_t* %"lvar'386", i32 0, i32 2
  %edge1_prime.weight = load i32, i32* %temp387, align 4
  %edge1_prime.weight388 = load i32, i32* %temp387, align 4
  store i32 %edge1_prime.weight388, i32* @toPrint1, align 4
  %"lvar'389" = load %edge_t*, %edge_t** @edge2_prime, align 8
  %temp390 = getelementptr inbounds %edge_t, %edge_t* %"lvar'389", i32 0, i32 2
  %edge2_prime.weight = load i32, i32* %temp390, align 4
  %edge2_prime.weight391 = load i32, i32* %temp390, align 4
  store i32 %edge2_prime.weight391, i32* @toPrint2, align 4
  %"lvar'392" = load %edge_t*, %edge_t** @edge3_prime, align 8
  %temp393 = getelementptr inbounds %edge_t, %edge_t* %"lvar'392", i32 0, i32 2
  %edge3_prime.weight = load i32, i32* %temp393, align 4
  %edge3_prime.weight394 = load i32, i32* %temp393, align 4
  store i32 %edge3_prime.weight394, i32* @toPrint3, align 4
  %toPrint1 = load i32, i32* @toPrint1, align 4
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %toPrint1)
  %toPrint2 = load i32, i32* @toPrint2, align 4
  %printf395 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.6, i32 0, i32 0), i32 %toPrint2)
  %toPrint3 = load i32, i32* @toPrint3, align 4
  %printf396 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.7, i32 0, i32 0), i32 %toPrint3)
  ret i32 0
}

declare noalias i8* @malloc(i32)

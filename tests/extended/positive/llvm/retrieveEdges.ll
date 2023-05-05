; ModuleID = 'Graphite'
source_filename = "Graphite"

%node_struct = type { i8*, i1, i8* }
%edge_t = type { %node_struct*, %node_struct*, i32 }
%graph_t = type { %node_node*, %edge_node* }
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
@g = global %graph_t zeroinitializer
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
@fmt.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

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
  %node183 = load %node_struct*, %node_struct** @node1, align 8
  %nodes_hd = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall84 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node = bitcast i8* %malloccall84 to %node_node*
  %"lst_rst'" = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 1
  %node_ptr = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 0
  store %node_node* %nodes_hd, %node_node** %"lst_rst'", align 8
  store %node_struct* %node183, %node_struct** %node_ptr, align 8
  store %node_node* %new_node, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %node285 = load %node_struct*, %node_struct** @node2, align 8
  %nodes_hd86 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall87 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node88 = bitcast i8* %malloccall87 to %node_node*
  %"lst_rst'89" = getelementptr inbounds %node_node, %node_node* %new_node88, i32 0, i32 1
  %node_ptr90 = getelementptr inbounds %node_node, %node_node* %new_node88, i32 0, i32 0
  store %node_node* %nodes_hd86, %node_node** %"lst_rst'89", align 8
  store %node_struct* %node285, %node_struct** %node_ptr90, align 8
  store %node_node* %new_node88, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %node391 = load %node_struct*, %node_struct** @node3, align 8
  %nodes_hd92 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall93 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node94 = bitcast i8* %malloccall93 to %node_node*
  %"lst_rst'95" = getelementptr inbounds %node_node, %node_node* %new_node94, i32 0, i32 1
  %node_ptr96 = getelementptr inbounds %node_node, %node_node* %new_node94, i32 0, i32 0
  store %node_node* %nodes_hd92, %node_node** %"lst_rst'95", align 8
  store %node_struct* %node391, %node_struct** %node_ptr96, align 8
  store %node_node* %new_node94, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %node497 = load %node_struct*, %node_struct** @node4, align 8
  %nodes_hd98 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall99 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node100 = bitcast i8* %malloccall99 to %node_node*
  %"lst_rst'101" = getelementptr inbounds %node_node, %node_node* %new_node100, i32 0, i32 1
  %node_ptr102 = getelementptr inbounds %node_node, %node_node* %new_node100, i32 0, i32 0
  store %node_node* %nodes_hd98, %node_node** %"lst_rst'101", align 8
  store %node_struct* %node497, %node_struct** %node_ptr102, align 8
  store %node_node* %new_node100, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %node5103 = load %node_struct*, %node_struct** @node5, align 8
  %nodes_hd104 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall105 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node106 = bitcast i8* %malloccall105 to %node_node*
  %"lst_rst'107" = getelementptr inbounds %node_node, %node_node* %new_node106, i32 0, i32 1
  %node_ptr108 = getelementptr inbounds %node_node, %node_node* %new_node106, i32 0, i32 0
  store %node_node* %nodes_hd104, %node_node** %"lst_rst'107", align 8
  store %node_struct* %node5103, %node_struct** %node_ptr108, align 8
  store %node_node* %new_node106, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %node6109 = load %node_struct*, %node_struct** @node6, align 8
  %nodes_hd110 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall111 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node112 = bitcast i8* %malloccall111 to %node_node*
  %"lst_rst'113" = getelementptr inbounds %node_node, %node_node* %new_node112, i32 0, i32 1
  %node_ptr114 = getelementptr inbounds %node_node, %node_node* %new_node112, i32 0, i32 0
  store %node_node* %nodes_hd110, %node_node** %"lst_rst'113", align 8
  store %node_struct* %node6109, %node_struct** %node_ptr114, align 8
  store %node_node* %new_node112, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %edge1 = load %edge_t*, %edge_t** @edge1, align 8
  %edges_hd = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %malloccall115 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge = bitcast i8* %malloccall115 to %edge_node*
  %"lst_rst'116" = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 1
  %edge_ptr = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 0
  store %edge_node* %edges_hd, %edge_node** %"lst_rst'116", align 8
  store %edge_t* %edge1, %edge_t** %edge_ptr, align 8
  store %edge_node* %new_edge, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %edge2 = load %edge_t*, %edge_t** @edge2, align 8
  %edges_hd117 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %malloccall118 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge119 = bitcast i8* %malloccall118 to %edge_node*
  %"lst_rst'120" = getelementptr inbounds %edge_node, %edge_node* %new_edge119, i32 0, i32 1
  %edge_ptr121 = getelementptr inbounds %edge_node, %edge_node* %new_edge119, i32 0, i32 0
  store %edge_node* %edges_hd117, %edge_node** %"lst_rst'120", align 8
  store %edge_t* %edge2, %edge_t** %edge_ptr121, align 8
  store %edge_node* %new_edge119, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %edge3 = load %edge_t*, %edge_t** @edge3, align 8
  %edges_hd122 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %malloccall123 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge124 = bitcast i8* %malloccall123 to %edge_node*
  %"lst_rst'125" = getelementptr inbounds %edge_node, %edge_node* %new_edge124, i32 0, i32 1
  %edge_ptr126 = getelementptr inbounds %edge_node, %edge_node* %new_edge124, i32 0, i32 0
  store %edge_node* %edges_hd122, %edge_node** %"lst_rst'125", align 8
  store %edge_t* %edge3, %edge_t** %edge_ptr126, align 8
  store %edge_node* %new_edge124, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %head = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  store %edge_node* %head, %edge_node** @llEdges, align 8
  br label %while

while:                                            ; preds = %entry, %else
  %putMeHere = load %edge_node*, %edge_node** @llEdges, align 8
  %curr = icmp ne %edge_node* %putMeHere, null
  br i1 %curr, label %while_body, label %merge

while_body:                                       ; preds = %while
  %putMeHere127 = load %edge_node*, %edge_node** @llEdges, align 8
  %nodes = getelementptr inbounds %edge_node, %edge_node* %putMeHere127, i32 0, i32 0
  %"stored_nodeA'" = load %edge_t*, %edge_t** %nodes, align 8
  br label %then

then:                                             ; preds = %while_body
  %malloccall128 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node129 = bitcast i8* %malloccall128 to %list_node*
  %nodes130 = getelementptr inbounds %list_node, %list_node* %node129, i32 0, i32 0
  %nodes131 = getelementptr inbounds %list_node, %list_node* %node129, i32 0, i32 1
  %malloccall132 = tail call i8* @malloc(i32 ptrtoint (%edge_t** getelementptr (%edge_t*, %edge_t** null, i32 1) to i32))
  %please_work = bitcast i8* %malloccall132 to %edge_t**
  store %edge_t* %"stored_nodeA'", %edge_t** %please_work, align 8
  %currEdgeVoidPtr = bitcast %edge_t** %please_work to i8*
  store i8* %currEdgeVoidPtr, i8** %nodes130, align 8
  %nextEdges = load %list_node*, %list_node** @edgesList, align 8
  store %list_node* %nextEdges, %list_node** %nodes131, align 8
  store %list_node* %node129, %list_node** @edgesList, align 8
  br label %else

else:                                             ; preds = %then
  %toBeHere = load %edge_node*, %edge_node** @llEdges, align 8
  %llNodesPtr = getelementptr inbounds %edge_node, %edge_node* %toBeHere, i32 0, i32 1
  %toBeHerenow = load %edge_node*, %edge_node** %llNodesPtr, align 8
  store %edge_node* %toBeHerenow, %edge_node** @llEdges, align 8
  br label %while

merge:                                            ; preds = %while
  %return = load %list_node*, %list_node** @edgesList, align 8
  store %list_node* %return, %list_node** @l, align 8
  %list = load %list_node*, %list_node** @l, align 8
  %malloccall133 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %0 = bitcast i8* %malloccall133 to %list_node**
  %malloccall134 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %malloccall134 to i32*
  store %list_node* %list, %list_node** %0, align 8
  store i32 0, i32* %1, align 4
  br label %traverse_loop

traverse_loop:                                    ; preds = %while_body135, %merge
  %2 = load i32, i32* %1, align 4
  %temp138 = icmp ne i32 %2, 0
  br i1 %temp138, label %while_body135, label %merge139

while_body135:                                    ; preds = %traverse_loop
  %3 = load %list_node*, %list_node** %0, align 8
  %temp136 = getelementptr inbounds %list_node, %list_node* %3, i32 0, i32 1
  %temp137 = load %list_node*, %list_node** %temp136, align 8
  %4 = load i32, i32* %1, align 4
  %subtract = sub i32 %4, 1
  store i32 %subtract, i32* %1, align 4
  store %list_node* %temp137, %list_node** %0, align 8
  br label %traverse_loop

merge139:                                         ; preds = %traverse_loop
  %5 = load %list_node*, %list_node** %0, align 8
  %temp140 = getelementptr inbounds %list_node, %list_node* %5, i32 0, i32 0
  %retval = load i8*, i8** %temp140, align 8
  %li_conv = bitcast i8* %retval to %edge_t**
  %val_ptr = load %edge_t*, %edge_t** %li_conv, align 8
  %malloccall141 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge142 = bitcast i8* %malloccall141 to %edge_t*
  %"name'143" = getelementptr inbounds %edge_t, %edge_t* %edge142, i32 0, i32 0
  %"data'144" = getelementptr inbounds %edge_t, %edge_t* %edge142, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'143", align 8
  store %node_struct* null, %node_struct** %"data'144", align 8
  store %edge_t* %edge142, %edge_t** @edge1_prime, align 8
  store %edge_t* %val_ptr, %edge_t** @edge1_prime, align 8
  %list145 = load %list_node*, %list_node** @l, align 8
  %malloccall146 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %6 = bitcast i8* %malloccall146 to %list_node**
  %malloccall147 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %7 = bitcast i8* %malloccall147 to i32*
  store %list_node* %list145, %list_node** %6, align 8
  store i32 1, i32* %7, align 4
  br label %traverse_loop148

traverse_loop148:                                 ; preds = %while_body149, %merge139
  %8 = load i32, i32* %7, align 4
  %temp153 = icmp ne i32 %8, 0
  br i1 %temp153, label %while_body149, label %merge154

while_body149:                                    ; preds = %traverse_loop148
  %9 = load %list_node*, %list_node** %6, align 8
  %temp150 = getelementptr inbounds %list_node, %list_node* %9, i32 0, i32 1
  %temp151 = load %list_node*, %list_node** %temp150, align 8
  %10 = load i32, i32* %7, align 4
  %subtract152 = sub i32 %10, 1
  store i32 %subtract152, i32* %7, align 4
  store %list_node* %temp151, %list_node** %6, align 8
  br label %traverse_loop148

merge154:                                         ; preds = %traverse_loop148
  %11 = load %list_node*, %list_node** %6, align 8
  %temp155 = getelementptr inbounds %list_node, %list_node* %11, i32 0, i32 0
  %retval156 = load i8*, i8** %temp155, align 8
  %li_conv157 = bitcast i8* %retval156 to %edge_t**
  %val_ptr158 = load %edge_t*, %edge_t** %li_conv157, align 8
  %malloccall159 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge160 = bitcast i8* %malloccall159 to %edge_t*
  %"name'161" = getelementptr inbounds %edge_t, %edge_t* %edge160, i32 0, i32 0
  %"data'162" = getelementptr inbounds %edge_t, %edge_t* %edge160, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'161", align 8
  store %node_struct* null, %node_struct** %"data'162", align 8
  store %edge_t* %edge160, %edge_t** @edge2_prime, align 8
  store %edge_t* %val_ptr158, %edge_t** @edge2_prime, align 8
  %list163 = load %list_node*, %list_node** @l, align 8
  %malloccall164 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %12 = bitcast i8* %malloccall164 to %list_node**
  %malloccall165 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %13 = bitcast i8* %malloccall165 to i32*
  store %list_node* %list163, %list_node** %12, align 8
  store i32 2, i32* %13, align 4
  br label %traverse_loop166

traverse_loop166:                                 ; preds = %while_body167, %merge154
  %14 = load i32, i32* %13, align 4
  %temp171 = icmp ne i32 %14, 0
  br i1 %temp171, label %while_body167, label %merge172

while_body167:                                    ; preds = %traverse_loop166
  %15 = load %list_node*, %list_node** %12, align 8
  %temp168 = getelementptr inbounds %list_node, %list_node* %15, i32 0, i32 1
  %temp169 = load %list_node*, %list_node** %temp168, align 8
  %16 = load i32, i32* %13, align 4
  %subtract170 = sub i32 %16, 1
  store i32 %subtract170, i32* %13, align 4
  store %list_node* %temp169, %list_node** %12, align 8
  br label %traverse_loop166

merge172:                                         ; preds = %traverse_loop166
  %17 = load %list_node*, %list_node** %12, align 8
  %temp173 = getelementptr inbounds %list_node, %list_node* %17, i32 0, i32 0
  %retval174 = load i8*, i8** %temp173, align 8
  %li_conv175 = bitcast i8* %retval174 to %edge_t**
  %val_ptr176 = load %edge_t*, %edge_t** %li_conv175, align 8
  %malloccall177 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge178 = bitcast i8* %malloccall177 to %edge_t*
  %"name'179" = getelementptr inbounds %edge_t, %edge_t* %edge178, i32 0, i32 0
  %"data'180" = getelementptr inbounds %edge_t, %edge_t* %edge178, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'179", align 8
  store %node_struct* null, %node_struct** %"data'180", align 8
  store %edge_t* %edge178, %edge_t** @edge3_prime, align 8
  store %edge_t* %val_ptr176, %edge_t** @edge3_prime, align 8
  %"lvar'181" = load %edge_t*, %edge_t** @edge1_prime, align 8
  %temp182 = getelementptr inbounds %edge_t, %edge_t* %"lvar'181", i32 0, i32 2
  %edge1_prime.weight = load i32, i32* %temp182, align 4
  %edge1_prime.weight183 = load i32, i32* %temp182, align 4
  store i32 %edge1_prime.weight183, i32* @toPrint1, align 4
  %"lvar'184" = load %edge_t*, %edge_t** @edge2_prime, align 8
  %temp185 = getelementptr inbounds %edge_t, %edge_t* %"lvar'184", i32 0, i32 2
  %edge2_prime.weight = load i32, i32* %temp185, align 4
  %edge2_prime.weight186 = load i32, i32* %temp185, align 4
  store i32 %edge2_prime.weight186, i32* @toPrint2, align 4
  %"lvar'187" = load %edge_t*, %edge_t** @edge3_prime, align 8
  %temp188 = getelementptr inbounds %edge_t, %edge_t* %"lvar'187", i32 0, i32 2
  %edge3_prime.weight = load i32, i32* %temp188, align 4
  %edge3_prime.weight189 = load i32, i32* %temp188, align 4
  store i32 %edge3_prime.weight189, i32* @toPrint3, align 4
  %toPrint1 = load i32, i32* @toPrint1, align 4
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %toPrint1)
  %toPrint2 = load i32, i32* @toPrint2, align 4
  %printf190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.1, i32 0, i32 0), i32 %toPrint2)
  %toPrint3 = load i32, i32* @toPrint3, align 4
  %printf191 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.2, i32 0, i32 0), i32 %toPrint3)
  ret i32 0
}

declare noalias i8* @malloc(i32)

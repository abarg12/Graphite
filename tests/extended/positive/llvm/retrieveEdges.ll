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
  %src_ptr = getelementptr inbounds %edge_t, %edge_t* %edge1, i32 0, i32 0
  %dst_ptr = getelementptr inbounds %edge_t, %edge_t* %edge1, i32 0, i32 1
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
  %putMeHere117 = load %node_node*, %node_node** @llNodes, align 8
  %nodes = getelementptr inbounds %node_node, %node_node* %putMeHere117, i32 0, i32 0
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
  %ret_true118 = alloca i1, align 1
  store i1 false, i1* %ret_true118, align 1
  %head119 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head119, %node_node** @llNodes.1, align 8
  br label %while120

while120:                                         ; preds = %merge, %else129
  %putMeHere121 = load %node_node*, %node_node** @llNodes.1, align 8
  %curr122 = icmp ne %node_node* %putMeHere121, null
  br i1 %curr122, label %while_body123, label %merge130

while_body123:                                    ; preds = %while120
  %putMeHere124 = load %node_node*, %node_node** @llNodes.1, align 8
  %nodes125 = getelementptr inbounds %node_node, %node_node* %putMeHere124, i32 0, i32 0
  %"stored_node'126" = load %node_struct*, %node_struct** %nodes125, align 8
  br label %if127

if127:                                            ; preds = %while_body123
  %"found?131" = icmp eq %node_struct* %"stored_node'126", %"dst'"
  br i1 %"found?131", label %then128, label %else129

then128:                                          ; preds = %if127
  store i1 true, i1* %ret_true118, align 1
  br label %merge130

else129:                                          ; preds = %if127
  %toBeHere132 = load %node_node*, %node_node** @llNodes.1, align 8
  %llNodesPtr133 = getelementptr inbounds %node_node, %node_node* %toBeHere132, i32 0, i32 1
  %toBeHerenow134 = load %node_node*, %node_node** %llNodesPtr133, align 8
  store %node_node* %toBeHerenow134, %node_node** @llNodes.1, align 8
  br label %while120

merge130:                                         ; preds = %while120, %then128
  %returnVal135 = load i1, i1* %ret_true118, align 1
  br label %if136

if136:                                            ; preds = %merge130
  br i1 %returnVal, label %merge138, label %else137

else137:                                          ; preds = %if136
  %nodes_hd139 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall140 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node141 = bitcast i8* %malloccall140 to %node_node*
  %"lst_rst'142" = getelementptr inbounds %node_node, %node_node* %new_node141, i32 0, i32 1
  %node_ptr143 = getelementptr inbounds %node_node, %node_node* %new_node141, i32 0, i32 0
  store %node_node* %nodes_hd139, %node_node** %"lst_rst'142", align 8
  store %node_struct* %"src'", %node_struct** %node_ptr143, align 8
  store %node_node* %new_node141, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  br label %merge138

merge138:                                         ; preds = %else137, %if136
  br label %if144

if144:                                            ; preds = %merge138
  br i1 %returnVal135, label %merge146, label %else145

else145:                                          ; preds = %if144
  %nodes_hd147 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall148 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node149 = bitcast i8* %malloccall148 to %node_node*
  %"lst_rst'150" = getelementptr inbounds %node_node, %node_node* %new_node149, i32 0, i32 1
  %node_ptr151 = getelementptr inbounds %node_node, %node_node* %new_node149, i32 0, i32 0
  store %node_node* %nodes_hd147, %node_node** %"lst_rst'150", align 8
  store %node_struct* %"dst'", %node_struct** %node_ptr151, align 8
  store %node_node* %new_node149, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  br label %merge146

merge146:                                         ; preds = %else145, %if144
  store %edge_node* %new_edge, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %edge2 = load %edge_t*, %edge_t** @edge2, align 8
  %edges_hd152 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %malloccall153 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge154 = bitcast i8* %malloccall153 to %edge_node*
  %"lst_rst'155" = getelementptr inbounds %edge_node, %edge_node* %new_edge154, i32 0, i32 1
  %edge_ptr156 = getelementptr inbounds %edge_node, %edge_node* %new_edge154, i32 0, i32 0
  store %edge_node* %edges_hd152, %edge_node** %"lst_rst'155", align 8
  store %edge_t* %edge2, %edge_t** %edge_ptr156, align 8
  %src_ptr157 = getelementptr inbounds %edge_t, %edge_t* %edge2, i32 0, i32 0
  %dst_ptr158 = getelementptr inbounds %edge_t, %edge_t* %edge2, i32 0, i32 1
  %"src'159" = load %node_struct*, %node_struct** %src_ptr157, align 8
  %"dst'160" = load %node_struct*, %node_struct** %dst_ptr158, align 8
  %ret_true161 = alloca i1, align 1
  store i1 false, i1* %ret_true161, align 1
  %head162 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head162, %node_node** @llNodes.2, align 8
  br label %while163

while163:                                         ; preds = %merge146, %else172
  %putMeHere164 = load %node_node*, %node_node** @llNodes.2, align 8
  %curr165 = icmp ne %node_node* %putMeHere164, null
  br i1 %curr165, label %while_body166, label %merge173

while_body166:                                    ; preds = %while163
  %putMeHere167 = load %node_node*, %node_node** @llNodes.2, align 8
  %nodes168 = getelementptr inbounds %node_node, %node_node* %putMeHere167, i32 0, i32 0
  %"stored_node'169" = load %node_struct*, %node_struct** %nodes168, align 8
  br label %if170

if170:                                            ; preds = %while_body166
  %"found?174" = icmp eq %node_struct* %"stored_node'169", %"src'159"
  br i1 %"found?174", label %then171, label %else172

then171:                                          ; preds = %if170
  store i1 true, i1* %ret_true161, align 1
  br label %merge173

else172:                                          ; preds = %if170
  %toBeHere175 = load %node_node*, %node_node** @llNodes.2, align 8
  %llNodesPtr176 = getelementptr inbounds %node_node, %node_node* %toBeHere175, i32 0, i32 1
  %toBeHerenow177 = load %node_node*, %node_node** %llNodesPtr176, align 8
  store %node_node* %toBeHerenow177, %node_node** @llNodes.2, align 8
  br label %while163

merge173:                                         ; preds = %while163, %then171
  %returnVal178 = load i1, i1* %ret_true161, align 1
  %ret_true179 = alloca i1, align 1
  store i1 false, i1* %ret_true179, align 1
  %head180 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head180, %node_node** @llNodes.3, align 8
  br label %while181

while181:                                         ; preds = %merge173, %else190
  %putMeHere182 = load %node_node*, %node_node** @llNodes.3, align 8
  %curr183 = icmp ne %node_node* %putMeHere182, null
  br i1 %curr183, label %while_body184, label %merge191

while_body184:                                    ; preds = %while181
  %putMeHere185 = load %node_node*, %node_node** @llNodes.3, align 8
  %nodes186 = getelementptr inbounds %node_node, %node_node* %putMeHere185, i32 0, i32 0
  %"stored_node'187" = load %node_struct*, %node_struct** %nodes186, align 8
  br label %if188

if188:                                            ; preds = %while_body184
  %"found?192" = icmp eq %node_struct* %"stored_node'187", %"dst'160"
  br i1 %"found?192", label %then189, label %else190

then189:                                          ; preds = %if188
  store i1 true, i1* %ret_true179, align 1
  br label %merge191

else190:                                          ; preds = %if188
  %toBeHere193 = load %node_node*, %node_node** @llNodes.3, align 8
  %llNodesPtr194 = getelementptr inbounds %node_node, %node_node* %toBeHere193, i32 0, i32 1
  %toBeHerenow195 = load %node_node*, %node_node** %llNodesPtr194, align 8
  store %node_node* %toBeHerenow195, %node_node** @llNodes.3, align 8
  br label %while181

merge191:                                         ; preds = %while181, %then189
  %returnVal196 = load i1, i1* %ret_true179, align 1
  br label %if197

if197:                                            ; preds = %merge191
  br i1 %returnVal178, label %merge199, label %else198

else198:                                          ; preds = %if197
  %nodes_hd200 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall201 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node202 = bitcast i8* %malloccall201 to %node_node*
  %"lst_rst'203" = getelementptr inbounds %node_node, %node_node* %new_node202, i32 0, i32 1
  %node_ptr204 = getelementptr inbounds %node_node, %node_node* %new_node202, i32 0, i32 0
  store %node_node* %nodes_hd200, %node_node** %"lst_rst'203", align 8
  store %node_struct* %"src'159", %node_struct** %node_ptr204, align 8
  store %node_node* %new_node202, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  br label %merge199

merge199:                                         ; preds = %else198, %if197
  br label %if205

if205:                                            ; preds = %merge199
  br i1 %returnVal196, label %merge207, label %else206

else206:                                          ; preds = %if205
  %nodes_hd208 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall209 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node210 = bitcast i8* %malloccall209 to %node_node*
  %"lst_rst'211" = getelementptr inbounds %node_node, %node_node* %new_node210, i32 0, i32 1
  %node_ptr212 = getelementptr inbounds %node_node, %node_node* %new_node210, i32 0, i32 0
  store %node_node* %nodes_hd208, %node_node** %"lst_rst'211", align 8
  store %node_struct* %"dst'160", %node_struct** %node_ptr212, align 8
  store %node_node* %new_node210, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  br label %merge207

merge207:                                         ; preds = %else206, %if205
  store %edge_node* %new_edge154, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %edge3 = load %edge_t*, %edge_t** @edge3, align 8
  %edges_hd213 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %malloccall214 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge215 = bitcast i8* %malloccall214 to %edge_node*
  %"lst_rst'216" = getelementptr inbounds %edge_node, %edge_node* %new_edge215, i32 0, i32 1
  %edge_ptr217 = getelementptr inbounds %edge_node, %edge_node* %new_edge215, i32 0, i32 0
  store %edge_node* %edges_hd213, %edge_node** %"lst_rst'216", align 8
  store %edge_t* %edge3, %edge_t** %edge_ptr217, align 8
  %src_ptr218 = getelementptr inbounds %edge_t, %edge_t* %edge3, i32 0, i32 0
  %dst_ptr219 = getelementptr inbounds %edge_t, %edge_t* %edge3, i32 0, i32 1
  %"src'220" = load %node_struct*, %node_struct** %src_ptr218, align 8
  %"dst'221" = load %node_struct*, %node_struct** %dst_ptr219, align 8
  %ret_true222 = alloca i1, align 1
  store i1 false, i1* %ret_true222, align 1
  %head223 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head223, %node_node** @llNodes.4, align 8
  br label %while224

while224:                                         ; preds = %merge207, %else233
  %putMeHere225 = load %node_node*, %node_node** @llNodes.4, align 8
  %curr226 = icmp ne %node_node* %putMeHere225, null
  br i1 %curr226, label %while_body227, label %merge234

while_body227:                                    ; preds = %while224
  %putMeHere228 = load %node_node*, %node_node** @llNodes.4, align 8
  %nodes229 = getelementptr inbounds %node_node, %node_node* %putMeHere228, i32 0, i32 0
  %"stored_node'230" = load %node_struct*, %node_struct** %nodes229, align 8
  br label %if231

if231:                                            ; preds = %while_body227
  %"found?235" = icmp eq %node_struct* %"stored_node'230", %"src'220"
  br i1 %"found?235", label %then232, label %else233

then232:                                          ; preds = %if231
  store i1 true, i1* %ret_true222, align 1
  br label %merge234

else233:                                          ; preds = %if231
  %toBeHere236 = load %node_node*, %node_node** @llNodes.4, align 8
  %llNodesPtr237 = getelementptr inbounds %node_node, %node_node* %toBeHere236, i32 0, i32 1
  %toBeHerenow238 = load %node_node*, %node_node** %llNodesPtr237, align 8
  store %node_node* %toBeHerenow238, %node_node** @llNodes.4, align 8
  br label %while224

merge234:                                         ; preds = %while224, %then232
  %returnVal239 = load i1, i1* %ret_true222, align 1
  %ret_true240 = alloca i1, align 1
  store i1 false, i1* %ret_true240, align 1
  %head241 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  store %node_node* %head241, %node_node** @llNodes.5, align 8
  br label %while242

while242:                                         ; preds = %merge234, %else251
  %putMeHere243 = load %node_node*, %node_node** @llNodes.5, align 8
  %curr244 = icmp ne %node_node* %putMeHere243, null
  br i1 %curr244, label %while_body245, label %merge252

while_body245:                                    ; preds = %while242
  %putMeHere246 = load %node_node*, %node_node** @llNodes.5, align 8
  %nodes247 = getelementptr inbounds %node_node, %node_node* %putMeHere246, i32 0, i32 0
  %"stored_node'248" = load %node_struct*, %node_struct** %nodes247, align 8
  br label %if249

if249:                                            ; preds = %while_body245
  %"found?253" = icmp eq %node_struct* %"stored_node'248", %"dst'221"
  br i1 %"found?253", label %then250, label %else251

then250:                                          ; preds = %if249
  store i1 true, i1* %ret_true240, align 1
  br label %merge252

else251:                                          ; preds = %if249
  %toBeHere254 = load %node_node*, %node_node** @llNodes.5, align 8
  %llNodesPtr255 = getelementptr inbounds %node_node, %node_node* %toBeHere254, i32 0, i32 1
  %toBeHerenow256 = load %node_node*, %node_node** %llNodesPtr255, align 8
  store %node_node* %toBeHerenow256, %node_node** @llNodes.5, align 8
  br label %while242

merge252:                                         ; preds = %while242, %then250
  %returnVal257 = load i1, i1* %ret_true240, align 1
  br label %if258

if258:                                            ; preds = %merge252
  br i1 %returnVal239, label %merge260, label %else259

else259:                                          ; preds = %if258
  %nodes_hd261 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall262 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node263 = bitcast i8* %malloccall262 to %node_node*
  %"lst_rst'264" = getelementptr inbounds %node_node, %node_node* %new_node263, i32 0, i32 1
  %node_ptr265 = getelementptr inbounds %node_node, %node_node* %new_node263, i32 0, i32 0
  store %node_node* %nodes_hd261, %node_node** %"lst_rst'264", align 8
  store %node_struct* %"src'220", %node_struct** %node_ptr265, align 8
  store %node_node* %new_node263, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  br label %merge260

merge260:                                         ; preds = %else259, %if258
  br label %if266

if266:                                            ; preds = %merge260
  br i1 %returnVal257, label %merge268, label %else267

else267:                                          ; preds = %if266
  %nodes_hd269 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall270 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node271 = bitcast i8* %malloccall270 to %node_node*
  %"lst_rst'272" = getelementptr inbounds %node_node, %node_node* %new_node271, i32 0, i32 1
  %node_ptr273 = getelementptr inbounds %node_node, %node_node* %new_node271, i32 0, i32 0
  store %node_node* %nodes_hd269, %node_node** %"lst_rst'272", align 8
  store %node_struct* %"dst'221", %node_struct** %node_ptr273, align 8
  store %node_node* %new_node271, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  br label %merge268

merge268:                                         ; preds = %else267, %if266
  store %edge_node* %new_edge215, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %head274 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  store %edge_node* %head274, %edge_node** @llEdges, align 8
  br label %while275

while275:                                         ; preds = %merge268, %else282
  %putMeHere276 = load %edge_node*, %edge_node** @llEdges, align 8
  %curr277 = icmp ne %edge_node* %putMeHere276, null
  br i1 %curr277, label %while_body278, label %merge283

while_body278:                                    ; preds = %while275
  %putMeHere279 = load %edge_node*, %edge_node** @llEdges, align 8
  %nodes280 = getelementptr inbounds %edge_node, %edge_node* %putMeHere279, i32 0, i32 0
  %"stored_nodeA'" = load %edge_t*, %edge_t** %nodes280, align 8
  br label %then281

then281:                                          ; preds = %while_body278
  %malloccall284 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node286 = bitcast i8* %malloccall284 to %list_node*
  %nodes287 = getelementptr inbounds %list_node, %list_node* %node286, i32 0, i32 0
  %nodes288 = getelementptr inbounds %list_node, %list_node* %node286, i32 0, i32 1
  %malloccall289 = tail call i8* @malloc(i32 ptrtoint (%edge_t** getelementptr (%edge_t*, %edge_t** null, i32 1) to i32))
  %please_work = bitcast i8* %malloccall289 to %edge_t**
  store %edge_t* %"stored_nodeA'", %edge_t** %please_work, align 8
  %currEdgeVoidPtr = bitcast %edge_t** %please_work to i8*
  store i8* %currEdgeVoidPtr, i8** %nodes287, align 8
  %nextEdges = load %list_node*, %list_node** @edgesList, align 8
  store %list_node* %nextEdges, %list_node** %nodes288, align 8
  store %list_node* %node286, %list_node** @edgesList, align 8
  br label %else282

else282:                                          ; preds = %then281
  %toBeHere290 = load %edge_node*, %edge_node** @llEdges, align 8
  %llNodesPtr291 = getelementptr inbounds %edge_node, %edge_node* %toBeHere290, i32 0, i32 1
  %toBeHerenow292 = load %edge_node*, %edge_node** %llNodesPtr291, align 8
  store %edge_node* %toBeHerenow292, %edge_node** @llEdges, align 8
  br label %while275

merge283:                                         ; preds = %while275
  %return = load %list_node*, %list_node** @edgesList, align 8
  store %list_node* %return, %list_node** @l, align 8
  %list = load %list_node*, %list_node** @l, align 8
  %malloccall293 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %0 = bitcast i8* %malloccall293 to %list_node**
  %malloccall294 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %malloccall294 to i32*
  store %list_node* %list, %list_node** %0, align 8
  store i32 0, i32* %1, align 4
  br label %traverse_loop

traverse_loop:                                    ; preds = %while_body295, %merge283
  %2 = load i32, i32* %1, align 4
  %temp298 = icmp ne i32 %2, 0
  br i1 %temp298, label %while_body295, label %merge299

while_body295:                                    ; preds = %traverse_loop
  %3 = load %list_node*, %list_node** %0, align 8
  %temp296 = getelementptr inbounds %list_node, %list_node* %3, i32 0, i32 1
  %temp297 = load %list_node*, %list_node** %temp296, align 8
  %4 = load i32, i32* %1, align 4
  %subtract = sub i32 %4, 1
  store i32 %subtract, i32* %1, align 4
  store %list_node* %temp297, %list_node** %0, align 8
  br label %traverse_loop

merge299:                                         ; preds = %traverse_loop
  %5 = load %list_node*, %list_node** %0, align 8
  %temp300 = getelementptr inbounds %list_node, %list_node* %5, i32 0, i32 0
  %retval = load i8*, i8** %temp300, align 8
  %li_conv = bitcast i8* %retval to %edge_t**
  %val_ptr = load %edge_t*, %edge_t** %li_conv, align 8
  %malloccall301 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge302 = bitcast i8* %malloccall301 to %edge_t*
  %"name'303" = getelementptr inbounds %edge_t, %edge_t* %edge302, i32 0, i32 0
  %"data'304" = getelementptr inbounds %edge_t, %edge_t* %edge302, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'303", align 8
  store %node_struct* null, %node_struct** %"data'304", align 8
  store %edge_t* %edge302, %edge_t** @edge1_prime, align 8
  store %edge_t* %val_ptr, %edge_t** @edge1_prime, align 8
  %list305 = load %list_node*, %list_node** @l, align 8
  %malloccall306 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %6 = bitcast i8* %malloccall306 to %list_node**
  %malloccall307 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %7 = bitcast i8* %malloccall307 to i32*
  store %list_node* %list305, %list_node** %6, align 8
  store i32 1, i32* %7, align 4
  br label %traverse_loop308

traverse_loop308:                                 ; preds = %while_body309, %merge299
  %8 = load i32, i32* %7, align 4
  %temp313 = icmp ne i32 %8, 0
  br i1 %temp313, label %while_body309, label %merge314

while_body309:                                    ; preds = %traverse_loop308
  %9 = load %list_node*, %list_node** %6, align 8
  %temp310 = getelementptr inbounds %list_node, %list_node* %9, i32 0, i32 1
  %temp311 = load %list_node*, %list_node** %temp310, align 8
  %10 = load i32, i32* %7, align 4
  %subtract312 = sub i32 %10, 1
  store i32 %subtract312, i32* %7, align 4
  store %list_node* %temp311, %list_node** %6, align 8
  br label %traverse_loop308

merge314:                                         ; preds = %traverse_loop308
  %11 = load %list_node*, %list_node** %6, align 8
  %temp315 = getelementptr inbounds %list_node, %list_node* %11, i32 0, i32 0
  %retval316 = load i8*, i8** %temp315, align 8
  %li_conv317 = bitcast i8* %retval316 to %edge_t**
  %val_ptr318 = load %edge_t*, %edge_t** %li_conv317, align 8
  %malloccall319 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge320 = bitcast i8* %malloccall319 to %edge_t*
  %"name'321" = getelementptr inbounds %edge_t, %edge_t* %edge320, i32 0, i32 0
  %"data'322" = getelementptr inbounds %edge_t, %edge_t* %edge320, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'321", align 8
  store %node_struct* null, %node_struct** %"data'322", align 8
  store %edge_t* %edge320, %edge_t** @edge2_prime, align 8
  store %edge_t* %val_ptr318, %edge_t** @edge2_prime, align 8
  %list323 = load %list_node*, %list_node** @l, align 8
  %malloccall324 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %12 = bitcast i8* %malloccall324 to %list_node**
  %malloccall325 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %13 = bitcast i8* %malloccall325 to i32*
  store %list_node* %list323, %list_node** %12, align 8
  store i32 2, i32* %13, align 4
  br label %traverse_loop326

traverse_loop326:                                 ; preds = %while_body327, %merge314
  %14 = load i32, i32* %13, align 4
  %temp331 = icmp ne i32 %14, 0
  br i1 %temp331, label %while_body327, label %merge332

while_body327:                                    ; preds = %traverse_loop326
  %15 = load %list_node*, %list_node** %12, align 8
  %temp328 = getelementptr inbounds %list_node, %list_node* %15, i32 0, i32 1
  %temp329 = load %list_node*, %list_node** %temp328, align 8
  %16 = load i32, i32* %13, align 4
  %subtract330 = sub i32 %16, 1
  store i32 %subtract330, i32* %13, align 4
  store %list_node* %temp329, %list_node** %12, align 8
  br label %traverse_loop326

merge332:                                         ; preds = %traverse_loop326
  %17 = load %list_node*, %list_node** %12, align 8
  %temp333 = getelementptr inbounds %list_node, %list_node* %17, i32 0, i32 0
  %retval334 = load i8*, i8** %temp333, align 8
  %li_conv335 = bitcast i8* %retval334 to %edge_t**
  %val_ptr336 = load %edge_t*, %edge_t** %li_conv335, align 8
  %malloccall337 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge338 = bitcast i8* %malloccall337 to %edge_t*
  %"name'339" = getelementptr inbounds %edge_t, %edge_t* %edge338, i32 0, i32 0
  %"data'340" = getelementptr inbounds %edge_t, %edge_t* %edge338, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'339", align 8
  store %node_struct* null, %node_struct** %"data'340", align 8
  store %edge_t* %edge338, %edge_t** @edge3_prime, align 8
  store %edge_t* %val_ptr336, %edge_t** @edge3_prime, align 8
  %"lvar'341" = load %edge_t*, %edge_t** @edge1_prime, align 8
  %temp342 = getelementptr inbounds %edge_t, %edge_t* %"lvar'341", i32 0, i32 2
  %edge1_prime.weight = load i32, i32* %temp342, align 4
  %edge1_prime.weight343 = load i32, i32* %temp342, align 4
  store i32 %edge1_prime.weight343, i32* @toPrint1, align 4
  %"lvar'344" = load %edge_t*, %edge_t** @edge2_prime, align 8
  %temp345 = getelementptr inbounds %edge_t, %edge_t* %"lvar'344", i32 0, i32 2
  %edge2_prime.weight = load i32, i32* %temp345, align 4
  %edge2_prime.weight346 = load i32, i32* %temp345, align 4
  store i32 %edge2_prime.weight346, i32* @toPrint2, align 4
  %"lvar'347" = load %edge_t*, %edge_t** @edge3_prime, align 8
  %temp348 = getelementptr inbounds %edge_t, %edge_t* %"lvar'347", i32 0, i32 2
  %edge3_prime.weight = load i32, i32* %temp348, align 4
  %edge3_prime.weight349 = load i32, i32* %temp348, align 4
  store i32 %edge3_prime.weight349, i32* @toPrint3, align 4
  %toPrint1 = load i32, i32* @toPrint1, align 4
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %toPrint1)
  %toPrint2 = load i32, i32* @toPrint2, align 4
  %printf350 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.6, i32 0, i32 0), i32 %toPrint2)
  %toPrint3 = load i32, i32* @toPrint3, align 4
  %printf351 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.7, i32 0, i32 0), i32 %toPrint3)
  ret i32 0
}

declare noalias i8* @malloc(i32)

; ModuleID = 'Graphite'
source_filename = "Graphite"

%node_struct = type { i8*, i1, i8* }
%edge_t = type { %node_struct*, %node_struct*, i32 }
%graph_t = type { %node_node*, %edge_node* }
%node_node = type { %node_struct*, %node_node* }
%edge_node = type { %edge_t*, %edge_node* }
%list_node = type { i8*, %list_node* }

@n1 = global %node_struct* null
@n2 = global %node_struct* null
@n3 = global %node_struct* null
@n4 = global %node_struct* null
@e1 = global %edge_t* null
@e2 = global %edge_t* null
@e3 = global %edge_t* null
@e4 = global %edge_t* null
@e5 = global %edge_t* null
@g = global %graph_t zeroinitializer
@llEdges = global %edge_node* null
@e = global i1 false
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@edgesList = global %list_node* null
@llEdges.1 = global %edge_node* null
@l = global %list_node* null
@n10 = global %node_struct* null
@i3 = global i32 0
@fmt.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@w = global i32 0
@fmt.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

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
  %"lvar'" = load %node_struct*, %node_struct** @n1, align 8
  %temp = getelementptr inbounds %node_struct, %node_struct* %"lvar'", i32 0, i32 2
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %bruh = bitcast i8* %malloccall3 to i32*
  store i32 22, i32* %bruh, align 4
  %name4 = bitcast i32* %bruh to i8*
  store i8* %name4, i8** %temp, align 8
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node6 = bitcast i8* %malloccall5 to %node_struct*
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %data8 = bitcast i8* %malloccall7 to i32*
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name10 = bitcast i8* %malloccall9 to i8**
  %data_ptr11 = bitcast i32* %data8 to i8*
  %name_ptr12 = bitcast i8** %name10 to i8*
  %"name'13" = getelementptr inbounds %node_struct, %node_struct* %node6, i32 0, i32 0
  %"data'14" = getelementptr inbounds %node_struct, %node_struct* %node6, i32 0, i32 2
  store i8* %name_ptr12, i8** %"name'13", align 8
  store i8* %data_ptr11, i8** %"data'14", align 8
  store %node_struct* %node6, %node_struct** @n2, align 8
  %"lvar'15" = load %node_struct*, %node_struct** @n2, align 8
  %temp16 = getelementptr inbounds %node_struct, %node_struct* %"lvar'15", i32 0, i32 2
  %malloccall17 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %bruh18 = bitcast i8* %malloccall17 to i32*
  store i32 22, i32* %bruh18, align 4
  %name19 = bitcast i32* %bruh18 to i8*
  store i8* %name19, i8** %temp16, align 8
  %malloccall20 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node21 = bitcast i8* %malloccall20 to %node_struct*
  %malloccall22 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %data23 = bitcast i8* %malloccall22 to i32*
  %malloccall24 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name25 = bitcast i8* %malloccall24 to i8**
  %data_ptr26 = bitcast i32* %data23 to i8*
  %name_ptr27 = bitcast i8** %name25 to i8*
  %"name'28" = getelementptr inbounds %node_struct, %node_struct* %node21, i32 0, i32 0
  %"data'29" = getelementptr inbounds %node_struct, %node_struct* %node21, i32 0, i32 2
  store i8* %name_ptr27, i8** %"name'28", align 8
  store i8* %data_ptr26, i8** %"data'29", align 8
  store %node_struct* %node21, %node_struct** @n3, align 8
  %"lvar'30" = load %node_struct*, %node_struct** @n3, align 8
  %temp31 = getelementptr inbounds %node_struct, %node_struct* %"lvar'30", i32 0, i32 2
  %malloccall32 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %bruh33 = bitcast i8* %malloccall32 to i32*
  store i32 22, i32* %bruh33, align 4
  %name34 = bitcast i32* %bruh33 to i8*
  store i8* %name34, i8** %temp31, align 8
  %malloccall35 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node36 = bitcast i8* %malloccall35 to %node_struct*
  %malloccall37 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %data38 = bitcast i8* %malloccall37 to i32*
  %malloccall39 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name40 = bitcast i8* %malloccall39 to i8**
  %data_ptr41 = bitcast i32* %data38 to i8*
  %name_ptr42 = bitcast i8** %name40 to i8*
  %"name'43" = getelementptr inbounds %node_struct, %node_struct* %node36, i32 0, i32 0
  %"data'44" = getelementptr inbounds %node_struct, %node_struct* %node36, i32 0, i32 2
  store i8* %name_ptr42, i8** %"name'43", align 8
  store i8* %data_ptr41, i8** %"data'44", align 8
  store %node_struct* %node36, %node_struct** @n4, align 8
  %n1 = load %node_struct*, %node_struct** @n1, align 8
  %n2 = load %node_struct*, %node_struct** @n2, align 8
  %malloccall45 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct = bitcast i8* %malloccall45 to %edge_t*
  %"name'46" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 0
  %"name'47" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 1
  %"name'48" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 2
  store %node_struct* %n1, %node_struct** %"name'46", align 8
  store %node_struct* %n2, %node_struct** %"name'47", align 8
  store i32 0, i32* %"name'48", align 4
  %malloccall49 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge = bitcast i8* %malloccall49 to %edge_t*
  %"name'50" = getelementptr inbounds %edge_t, %edge_t* %edge, i32 0, i32 0
  %"data'51" = getelementptr inbounds %edge_t, %edge_t* %edge, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'50", align 8
  store %node_struct* null, %node_struct** %"data'51", align 8
  store %edge_t* %edge, %edge_t** @e1, align 8
  store %edge_t* %myEdgeStruct, %edge_t** @e1, align 8
  %"lvar'52" = load %edge_t*, %edge_t** @e1, align 8
  %temp53 = getelementptr inbounds %edge_t, %edge_t* %"lvar'52", i32 0, i32 2
  store i32 1, i32* %temp53, align 4
  %n3 = load %node_struct*, %node_struct** @n3, align 8
  %n154 = load %node_struct*, %node_struct** @n1, align 8
  %malloccall55 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct56 = bitcast i8* %malloccall55 to %edge_t*
  %"name'57" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct56, i32 0, i32 0
  %"name'58" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct56, i32 0, i32 1
  %"name'59" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct56, i32 0, i32 2
  store %node_struct* %n3, %node_struct** %"name'57", align 8
  store %node_struct* %n154, %node_struct** %"name'58", align 8
  store i32 0, i32* %"name'59", align 4
  %malloccall60 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge61 = bitcast i8* %malloccall60 to %edge_t*
  %"name'62" = getelementptr inbounds %edge_t, %edge_t* %edge61, i32 0, i32 0
  %"data'63" = getelementptr inbounds %edge_t, %edge_t* %edge61, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'62", align 8
  store %node_struct* null, %node_struct** %"data'63", align 8
  store %edge_t* %edge61, %edge_t** @e2, align 8
  store %edge_t* %myEdgeStruct56, %edge_t** @e2, align 8
  %"lvar'64" = load %edge_t*, %edge_t** @e2, align 8
  %temp65 = getelementptr inbounds %edge_t, %edge_t* %"lvar'64", i32 0, i32 2
  store i32 2, i32* %temp65, align 4
  %n266 = load %node_struct*, %node_struct** @n2, align 8
  %n4 = load %node_struct*, %node_struct** @n4, align 8
  %malloccall67 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct68 = bitcast i8* %malloccall67 to %edge_t*
  %"name'69" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct68, i32 0, i32 0
  %"name'70" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct68, i32 0, i32 1
  %"name'71" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct68, i32 0, i32 2
  store %node_struct* %n266, %node_struct** %"name'69", align 8
  store %node_struct* %n4, %node_struct** %"name'70", align 8
  store i32 0, i32* %"name'71", align 4
  %malloccall72 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge73 = bitcast i8* %malloccall72 to %edge_t*
  %"name'74" = getelementptr inbounds %edge_t, %edge_t* %edge73, i32 0, i32 0
  %"data'75" = getelementptr inbounds %edge_t, %edge_t* %edge73, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'74", align 8
  store %node_struct* null, %node_struct** %"data'75", align 8
  store %edge_t* %edge73, %edge_t** @e3, align 8
  store %edge_t* %myEdgeStruct68, %edge_t** @e3, align 8
  %"lvar'76" = load %edge_t*, %edge_t** @e3, align 8
  %temp77 = getelementptr inbounds %edge_t, %edge_t* %"lvar'76", i32 0, i32 2
  store i32 3, i32* %temp77, align 4
  %malloccall78 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge79 = bitcast i8* %malloccall78 to %edge_t*
  %"src''" = getelementptr inbounds %edge_t, %edge_t* %edge79, i32 0, i32 0
  %"dst''" = getelementptr inbounds %edge_t, %edge_t* %edge79, i32 0, i32 1
  store %node_struct* null, %node_struct** %"src''", align 8
  store %node_struct* null, %node_struct** %"dst''", align 8
  store %edge_t* %edge79, %edge_t** @e4, align 8
  %malloccall80 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge81 = bitcast i8* %malloccall80 to %edge_t*
  %"src''82" = getelementptr inbounds %edge_t, %edge_t* %edge81, i32 0, i32 0
  %"dst''83" = getelementptr inbounds %edge_t, %edge_t* %edge81, i32 0, i32 1
  store %node_struct* null, %node_struct** %"src''82", align 8
  store %node_struct* null, %node_struct** %"dst''83", align 8
  store %edge_t* %edge81, %edge_t** @e5, align 8
  %n184 = load %node_struct*, %node_struct** @n1, align 8
  %nodes_hd = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall85 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node = bitcast i8* %malloccall85 to %node_node*
  %"lst_rst'" = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 1
  %node_ptr = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 0
  store %node_node* %nodes_hd, %node_node** %"lst_rst'", align 8
  store %node_struct* %n184, %node_struct** %node_ptr, align 8
  store %node_node* %new_node, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %n286 = load %node_struct*, %node_struct** @n2, align 8
  %nodes_hd87 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall88 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node89 = bitcast i8* %malloccall88 to %node_node*
  %"lst_rst'90" = getelementptr inbounds %node_node, %node_node* %new_node89, i32 0, i32 1
  %node_ptr91 = getelementptr inbounds %node_node, %node_node* %new_node89, i32 0, i32 0
  store %node_node* %nodes_hd87, %node_node** %"lst_rst'90", align 8
  store %node_struct* %n286, %node_struct** %node_ptr91, align 8
  store %node_node* %new_node89, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %n392 = load %node_struct*, %node_struct** @n3, align 8
  %nodes_hd93 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall94 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node95 = bitcast i8* %malloccall94 to %node_node*
  %"lst_rst'96" = getelementptr inbounds %node_node, %node_node* %new_node95, i32 0, i32 1
  %node_ptr97 = getelementptr inbounds %node_node, %node_node* %new_node95, i32 0, i32 0
  store %node_node* %nodes_hd93, %node_node** %"lst_rst'96", align 8
  store %node_struct* %n392, %node_struct** %node_ptr97, align 8
  store %node_node* %new_node95, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %n498 = load %node_struct*, %node_struct** @n4, align 8
  %nodes_hd99 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %malloccall100 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node101 = bitcast i8* %malloccall100 to %node_node*
  %"lst_rst'102" = getelementptr inbounds %node_node, %node_node* %new_node101, i32 0, i32 1
  %node_ptr103 = getelementptr inbounds %node_node, %node_node* %new_node101, i32 0, i32 0
  store %node_node* %nodes_hd99, %node_node** %"lst_rst'102", align 8
  store %node_struct* %n498, %node_struct** %node_ptr103, align 8
  store %node_node* %new_node101, %node_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 0), align 8
  %e1 = load %edge_t*, %edge_t** @e1, align 8
  %edges_hd = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %malloccall104 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge = bitcast i8* %malloccall104 to %edge_node*
  %"lst_rst'105" = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 1
  %edge_ptr = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 0
  store %edge_node* %edges_hd, %edge_node** %"lst_rst'105", align 8
  store %edge_t* %e1, %edge_t** %edge_ptr, align 8
  store %edge_node* %new_edge, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %e2 = load %edge_t*, %edge_t** @e2, align 8
  %edges_hd106 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %malloccall107 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge108 = bitcast i8* %malloccall107 to %edge_node*
  %"lst_rst'109" = getelementptr inbounds %edge_node, %edge_node* %new_edge108, i32 0, i32 1
  %edge_ptr110 = getelementptr inbounds %edge_node, %edge_node* %new_edge108, i32 0, i32 0
  store %edge_node* %edges_hd106, %edge_node** %"lst_rst'109", align 8
  store %edge_t* %e2, %edge_t** %edge_ptr110, align 8
  store %edge_node* %new_edge108, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %e3 = load %edge_t*, %edge_t** @e3, align 8
  %edges_hd111 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %malloccall112 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge113 = bitcast i8* %malloccall112 to %edge_node*
  %"lst_rst'114" = getelementptr inbounds %edge_node, %edge_node* %new_edge113, i32 0, i32 1
  %edge_ptr115 = getelementptr inbounds %edge_node, %edge_node* %new_edge113, i32 0, i32 0
  store %edge_node* %edges_hd111, %edge_node** %"lst_rst'114", align 8
  store %edge_t* %e3, %edge_t** %edge_ptr115, align 8
  store %edge_node* %new_edge113, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  %ret_true = alloca i1, align 1
  store i1 false, i1* %ret_true, align 1
  %e1116 = load %edge_t*, %edge_t** @e1, align 8
  %head = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  store %edge_node* %head, %edge_node** @llEdges, align 8
  br label %while

while:                                            ; preds = %entry, %else
  %putMeHere = load %edge_node*, %edge_node** @llEdges, align 8
  %curr = icmp ne %edge_node* %putMeHere, null
  br i1 %curr, label %while_body, label %merge

while_body:                                       ; preds = %while
  %putMeHere117 = load %edge_node*, %edge_node** @llEdges, align 8
  %nodes = getelementptr inbounds %edge_node, %edge_node* %putMeHere117, i32 0, i32 0
  %"stored_node'" = load %edge_t*, %edge_t** %nodes, align 8
  br label %if

if:                                               ; preds = %while_body
  %"found?" = icmp eq %edge_t* %"stored_node'", %e1116
  br i1 %"found?", label %then, label %else

then:                                             ; preds = %if
  store i1 true, i1* %ret_true, align 1
  br label %merge

else:                                             ; preds = %if
  %toBeHere = load %edge_node*, %edge_node** @llEdges, align 8
  %llNodesPtr = getelementptr inbounds %edge_node, %edge_node* %toBeHere, i32 0, i32 1
  %toBeHerenow = load %edge_node*, %edge_node** %llNodesPtr, align 8
  store %edge_node* %toBeHerenow, %edge_node** @llEdges, align 8
  br label %while

merge:                                            ; preds = %while, %then
  %e1118 = load %edge_t*, %edge_t** @e1, align 8
  %returnVal = load i1, i1* %ret_true, align 1
  store i1 %returnVal, i1* @e, align 1
  %e = load i1, i1* @e, align 1
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i1 %e)
  %n1119 = load %node_struct*, %node_struct** @n1, align 8
  %head120 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @g, i32 0, i32 1), align 8
  store %edge_node* %head120, %edge_node** @llEdges.1, align 8
  br label %while121

while121:                                         ; preds = %merge, %else129
  %putMeHere122 = load %edge_node*, %edge_node** @llEdges.1, align 8
  %curr123 = icmp ne %edge_node* %putMeHere122, null
  br i1 %curr123, label %while_body124, label %merge130

while_body124:                                    ; preds = %while121
  %putMeHere125 = load %edge_node*, %edge_node** @llEdges.1, align 8
  %nodes126 = getelementptr inbounds %edge_node, %edge_node* %putMeHere125, i32 0, i32 0
  %"stored_nodeA'" = load %edge_t*, %edge_t** %nodes126, align 8
  br label %if127

if127:                                            ; preds = %while_body124
  %nodes131 = getelementptr inbounds %edge_t, %edge_t* %"stored_nodeA'", i32 0, i32 0
  %nodes132 = getelementptr inbounds %edge_t, %edge_t* %"stored_nodeA'", i32 0, i32 1
  %"currEdgeSrc'" = load %node_struct*, %node_struct** %nodes131, align 8
  %"currEdgeDst'" = load %node_struct*, %node_struct** %nodes132, align 8
  %"foundSrc?" = icmp eq %node_struct* %"currEdgeSrc'", %n1119
  %"foundDst?" = icmp eq %node_struct* %"currEdgeDst'", %n1119
  %if_found = or i1 %"foundSrc?", %"foundDst?"
  br i1 %if_found, label %then128, label %else129

then128:                                          ; preds = %if127
  %malloccall133 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node134 = bitcast i8* %malloccall133 to %list_node*
  %nodes135 = getelementptr inbounds %list_node, %list_node* %node134, i32 0, i32 0
  %nodes136 = getelementptr inbounds %list_node, %list_node* %node134, i32 0, i32 1
  %malloccall137 = tail call i8* @malloc(i32 ptrtoint (%edge_t** getelementptr (%edge_t*, %edge_t** null, i32 1) to i32))
  %please_work = bitcast i8* %malloccall137 to %edge_t**
  store %edge_t* %"stored_nodeA'", %edge_t** %please_work, align 8
  %currEdgeVoidPtr = bitcast %edge_t** %please_work to i8*
  store i8* %currEdgeVoidPtr, i8** %nodes135, align 8
  %nextEdges = load %list_node*, %list_node** @edgesList, align 8
  store %list_node* %nextEdges, %list_node** %nodes136, align 8
  store %list_node* %node134, %list_node** @edgesList, align 8
  br label %else129

else129:                                          ; preds = %then128, %if127
  %toBeHere138 = load %edge_node*, %edge_node** @llEdges.1, align 8
  %llNodesPtr139 = getelementptr inbounds %edge_node, %edge_node* %toBeHere138, i32 0, i32 1
  %toBeHerenow140 = load %edge_node*, %edge_node** %llNodesPtr139, align 8
  store %edge_node* %toBeHerenow140, %edge_node** @llEdges.1, align 8
  br label %while121

merge130:                                         ; preds = %while121
  %n1141 = load %node_struct*, %node_struct** @n1, align 8
  %return = load %list_node*, %list_node** @edgesList, align 8
  store %list_node* %return, %list_node** @l, align 8
  %list = load %list_node*, %list_node** @l, align 8
  %malloccall142 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %0 = bitcast i8* %malloccall142 to %list_node**
  %malloccall143 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %malloccall143 to i32*
  store %list_node* %list, %list_node** %0, align 8
  store i32 0, i32* %1, align 4
  br label %traverse_loop

traverse_loop:                                    ; preds = %while_body144, %merge130
  %2 = load i32, i32* %1, align 4
  %temp147 = icmp ne i32 %2, 0
  br i1 %temp147, label %while_body144, label %merge148

while_body144:                                    ; preds = %traverse_loop
  %3 = load %list_node*, %list_node** %0, align 8
  %temp145 = getelementptr inbounds %list_node, %list_node* %3, i32 0, i32 1
  %temp146 = load %list_node*, %list_node** %temp145, align 8
  %4 = load i32, i32* %1, align 4
  %subtract = sub i32 %4, 1
  store i32 %subtract, i32* %1, align 4
  store %list_node* %temp146, %list_node** %0, align 8
  br label %traverse_loop

merge148:                                         ; preds = %traverse_loop
  %5 = load %list_node*, %list_node** %0, align 8
  %temp149 = getelementptr inbounds %list_node, %list_node* %5, i32 0, i32 0
  %retval = load i8*, i8** %temp149, align 8
  %li_conv = bitcast i8* %retval to %edge_t**
  %val_ptr = load %edge_t*, %edge_t** %li_conv, align 8
  store %edge_t* %val_ptr, %edge_t** @e5, align 8
  %e5 = load %edge_t*, %edge_t** @e5, align 8
  store %edge_t* %e5, %edge_t** @e4, align 8
  %"lvar'150" = load %edge_t*, %edge_t** @e4, align 8
  %temp151 = getelementptr inbounds %edge_t, %edge_t* %"lvar'150", i32 0, i32 0
  %e4.src = load %node_struct*, %node_struct** %temp151, align 8
  %srcNode = load %node_struct*, %node_struct** %temp151, align 8
  %malloccall152 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node153 = bitcast i8* %malloccall152 to %node_struct*
  %malloccall154 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %data155 = bitcast i8* %malloccall154 to i32*
  %malloccall156 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name157 = bitcast i8* %malloccall156 to i8**
  %data_ptr158 = bitcast i32* %data155 to i8*
  %name_ptr159 = bitcast i8** %name157 to i8*
  %"name'160" = getelementptr inbounds %node_struct, %node_struct* %node153, i32 0, i32 0
  %"data'161" = getelementptr inbounds %node_struct, %node_struct* %node153, i32 0, i32 2
  store i8* %name_ptr159, i8** %"name'160", align 8
  store i8* %data_ptr158, i8** %"data'161", align 8
  store %node_struct* %node153, %node_struct** @n10, align 8
  store %node_struct* %srcNode, %node_struct** @n10, align 8
  %"lvar'162" = load %node_struct*, %node_struct** @n10, align 8
  %temp163 = getelementptr inbounds %node_struct, %node_struct* %"lvar'162", i32 0, i32 2
  %n10.data = load i8*, i8** %temp163, align 8
  %new_ptr = bitcast i8* %n10.data to i32*
  %n10.data164 = load i32, i32* %new_ptr, align 4
  store i32 %n10.data164, i32* @i3, align 4
  %i3 = load i32, i32* @i3, align 4
  %printf165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.2, i32 0, i32 0), i32 %i3)
  %"lvar'166" = load %edge_t*, %edge_t** @e4, align 8
  %temp167 = getelementptr inbounds %edge_t, %edge_t* %"lvar'166", i32 0, i32 2
  %e4.weight = load i32, i32* %temp167, align 4
  %e4.weight168 = load i32, i32* %temp167, align 4
  store i32 %e4.weight168, i32* @w, align 4
  %w = load i32, i32* @w, align 4
  %printf169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.3, i32 0, i32 0), i32 %w)
  ret i32 0
}

declare noalias i8* @malloc(i32)

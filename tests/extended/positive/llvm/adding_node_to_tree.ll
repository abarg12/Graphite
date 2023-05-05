; ModuleID = 'Graphite'
source_filename = "Graphite"

%graph_tt = type { %node_node*, %edge_node* }
%node_node = type { %node_struct*, %node_node* }
%node_struct = type { i8*, i1, i8* }
%edge_node = type { %edge_t*, %edge_node* }
%edge_t = type { %node_struct*, %node_struct*, i32 }

@g = global %graph_tt* null
@n = global %node_struct* null
@0 = private unnamed_addr constant [9 x i8] c"success\0A\00", align 1

declare i32 @printf(i8*, ...)

declare i32 @strcmp(i8*, i8*)

declare i8* @array_get(i8*, i32, ...)

declare i8* @array_set(i8*, i32, i8*, ...)

declare i8* @array_len(i8*, ...)

declare i8 @nodeExists(%node_struct*, ...)

declare i8* @array_add(i8*, i32, i8*, ...)

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
  %n = load %node_struct*, %node_struct** @n, align 8
  %graph_ptr = load %graph_tt*, %graph_tt** @g, align 8
  %nodes = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr, i32 0, i32 0
  %nodes_hd = load %node_node*, %node_node** %nodes, align 8
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node = bitcast i8* %malloccall7 to %node_node*
  %"lst_rst'" = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 1
  %node_ptr = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 0
  store %node_node* %nodes_hd, %node_node** %"lst_rst'", align 8
  store %node_struct* %n, %node_struct** %node_ptr, align 8
  store %node_node* %new_node, %node_node** %nodes, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @0, i32 0, i32 0))
  ret i32 0
}

declare noalias i8* @malloc(i32)

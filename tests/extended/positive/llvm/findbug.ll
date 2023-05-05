; ModuleID = 'Graphite'
source_filename = "Graphite"

%graph_tt = type { %node_node*, %edge_node* }
%node_node = type { %node_struct*, %node_node* }
%node_struct = type { i8*, i1, i8* }
%edge_node = type { %edge_t*, %edge_node* }
%edge_t = type { %node_struct*, %node_struct*, i32 }

@g = global %graph_tt* null

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
  ret i32 0
}

declare noalias i8* @malloc(i32)

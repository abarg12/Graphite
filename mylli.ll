; ModuleID = 'Graphite'
source_filename = "Graphite"

%list_node = type { i8*, %list_node* }

@l = global %list_node* null
@0 = private unnamed_addr constant [6 x i8] c"three\00", align 1
@l2 = global %list_node* null
@j = global i32 0
@1 = private unnamed_addr constant [12 x i8] c"sillystring\00", align 1
@s = global i8* null
@fmt = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

declare i32 @printf(i8*, ...)

declare i8* @array_get(i8*, i32, ...)

declare i8* @array_set(i8*, i32, i8*, ...)

declare i8* @array_add(i8*, i32, i8*, ...)

define i32 @main() {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  %new_list = bitcast i8* %malloccall to %list_node**
  %temp = load %list_node*, %list_node** %new_list
  store %list_node* %temp, %list_node** @l
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  %new_list2 = bitcast i8* %malloccall1 to %list_node**
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32))
  %arr_val = bitcast i8* %malloccall3 to i1*
  store i1 false, i1* %arr_val
  %i8ptr = bitcast i1* %arr_val to i8*
  %malloccall4 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p = bitcast i8* %malloccall4 to %list_node*
  %valloc = getelementptr inbounds %list_node, %list_node* %node_p, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p
  store i8* %i8ptr, i8** %valloc
  store %list_node* %node_p, %list_node** %new_list2
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val6 = bitcast i8* %malloccall5 to i32*
  store i32 1, i32* %arr_val6
  %i8ptr7 = bitcast i32* %arr_val6 to i8*
  %malloccall8 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p9 = bitcast i8* %malloccall8 to %list_node*
  %valloc10 = getelementptr inbounds %list_node, %list_node* %node_p9, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p9
  store i8* %i8ptr7, i8** %valloc10
  %temp11 = getelementptr inbounds %list_node, %list_node* %node_p, i32 0, i32 1
  store %list_node* %node_p9, %list_node** %temp11
  %malloccall12 = tail call i8* @malloc(i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32))
  %arr_val13 = bitcast i8* %malloccall12 to double*
  store double 2.200000e+00, double* %arr_val13
  %i8ptr14 = bitcast double* %arr_val13 to i8*
  %malloccall15 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p16 = bitcast i8* %malloccall15 to %list_node*
  %valloc17 = getelementptr inbounds %list_node, %list_node* %node_p16, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p16
  store i8* %i8ptr14, i8** %valloc17
  %temp18 = getelementptr inbounds %list_node, %list_node* %node_p9, i32 0, i32 1
  store %list_node* %node_p16, %list_node** %temp18
  %malloccall19 = tail call i8* @malloc(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  %arr_val20 = bitcast i8* %malloccall19 to i8**
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @0, i32 0, i32 0), i8** %arr_val20
  %i8ptr21 = bitcast i8** %arr_val20 to i8*
  %malloccall22 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p23 = bitcast i8* %malloccall22 to %list_node*
  %valloc24 = getelementptr inbounds %list_node, %list_node* %node_p23, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p23
  store i8* %i8ptr21, i8** %valloc24
  %temp25 = getelementptr inbounds %list_node, %list_node* %node_p16, i32 0, i32 1
  store %list_node* %node_p23, %list_node** %temp25
  %temp26 = load %list_node*, %list_node** %new_list2
  store %list_node* %temp26, %list_node** @l2
  store i32 3, i32* @j
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i8** @s
  %s = load i8*, i8** @s
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i8* %s)
  ret i32 0
}

declare noalias i8* @malloc(i32)

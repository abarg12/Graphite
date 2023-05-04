; ModuleID = 'Graphite'
source_filename = "Graphite"

%list_node = type { i8*, %list_node* }

@l = global %list_node* null
@0 = private unnamed_addr constant [6 x i8] c"three\00", align 1
@l2 = global %list_node* null
@j = global i32 0
@1 = private unnamed_addr constant [12 x i8] c"sillystring\00", align 1
@s = global i8* null
@2 = global %list_node* null
@3 = global i32 0
@4 = global %list_node* null
@5 = global %list_node* null
@6 = global i32 0
@7 = global %list_node* null
@f = global double 0.000000e+00
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
  store i32 2, i32* @j
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i8** @s
  %list = load %list_node*, %list_node** @l2
  %intvar = alloca i32
  store i32 3, i32* %intvar
  store %list_node* %list, %list_node** @2
  %0 = load i32, i32* %intvar
  store i32 %0, i32* @3
  br label %traverse_loop

traverse_loop:                                    ; preds = %while_body, %entry
  br i1 true, label %while_body, label %merge

while_body:                                       ; preds = %traverse_loop
  %1 = load %list_node*, %list_node** @2
  %temp27 = getelementptr inbounds %list_node, %list_node* %1, i32 0, i32 1
  %temp28 = load %list_node*, %list_node** %temp27
  store %list_node* %temp28, %list_node** @4
  %2 = load i32, i32* @3
  %subtract = sub i32 %2, 1
  store i32 %subtract, i32* @3
  store %list_node* %temp28, %list_node** @2
  br label %traverse_loop

merge:                                            ; preds = %traverse_loop
  %3 = load %list_node*, %list_node** @4
  %temp29 = getelementptr inbounds %list_node, %list_node* %3, i32 0, i32 0
  %retval = load i8*, i8** %temp29
  %li_conv = bitcast i8* %retval to i8**
  %val_ptr = load i8*, i8** %li_conv
  store i8* %val_ptr, i8** @s
  %list30 = load %list_node*, %list_node** @l2
  %intvar31 = alloca i32
  store i32 2, i32* %intvar31
  store %list_node* %list30, %list_node** @5
  %4 = load i32, i32* %intvar31
  store i32 %4, i32* @6
  br label %traverse_loop32

traverse_loop32:                                  ; preds = %while_body33, %merge
  br i1 true, label %while_body33, label %merge37

while_body33:                                     ; preds = %traverse_loop32
  %5 = load %list_node*, %list_node** @5
  %temp34 = getelementptr inbounds %list_node, %list_node* %5, i32 0, i32 1
  %temp35 = load %list_node*, %list_node** %temp34
  store %list_node* %temp35, %list_node** @7
  %6 = load i32, i32* @6
  %subtract36 = sub i32 %6, 1
  store i32 %subtract36, i32* @6
  store %list_node* %temp35, %list_node** @5
  br label %traverse_loop32

merge37:                                          ; preds = %traverse_loop32
  %7 = load %list_node*, %list_node** @7
  %temp38 = getelementptr inbounds %list_node, %list_node* %7, i32 0, i32 0
  %retval39 = load i8*, i8** %temp38
  %li_conv40 = bitcast i8* %retval39 to double*
  %val_ptr41 = load double, double* %li_conv40
  store double %val_ptr41, double* @f
  %s = load i8*, i8** @s
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i8* %s)
  ret i32 0
}

declare noalias i8* @malloc(i32)

; ModuleID = 'Graphite'
source_filename = "Graphite"

%list_node = type { i8*, %list_node* }

@0 = private unnamed_addr constant [5 x i8] c"five\00", align 1
@l = global %list_node* null
@1 = global %list_node* null
@2 = global i32 0
@3 = global %list_node* null
@f = global double 0.000000e+00
@fmt = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@4 = global %list_node* null
@5 = global i32 0
@6 = global %list_node* null
@7 = global %list_node* null
@8 = global i32 0
@9 = global %list_node* null
@fmt.1 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1

declare i32 @printf(i8*, ...)

declare i8* @array_get(i8*, i32, ...)

declare i8* @array_set(i8*, i32, i8*, ...)

declare i8* @array_add(i8*, i32, i8*, ...)

define i32 @main() {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  %new_list = bitcast i8* %malloccall to %list_node**
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val = bitcast i8* %malloccall1 to i32*
  store i32 1, i32* %arr_val
  %i8ptr = bitcast i32* %arr_val to i8*
  %malloccall2 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p = bitcast i8* %malloccall2 to %list_node*
  %valloc = getelementptr inbounds %list_node, %list_node* %node_p, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p
  store i8* %i8ptr, i8** %valloc
  store %list_node* %node_p, %list_node** %new_list
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val4 = bitcast i8* %malloccall3 to i32*
  store i32 2, i32* %arr_val4
  %i8ptr5 = bitcast i32* %arr_val4 to i8*
  %malloccall6 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p7 = bitcast i8* %malloccall6 to %list_node*
  %valloc8 = getelementptr inbounds %list_node, %list_node* %node_p7, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p7
  store i8* %i8ptr5, i8** %valloc8
  %temp = getelementptr inbounds %list_node, %list_node* %node_p, i32 0, i32 1
  store %list_node* %node_p7, %list_node** %temp
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32))
  %arr_val10 = bitcast i8* %malloccall9 to double*
  store double 3.300000e+00, double* %arr_val10
  %i8ptr11 = bitcast double* %arr_val10 to i8*
  %malloccall12 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p13 = bitcast i8* %malloccall12 to %list_node*
  %valloc14 = getelementptr inbounds %list_node, %list_node* %node_p13, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p13
  store i8* %i8ptr11, i8** %valloc14
  %temp15 = getelementptr inbounds %list_node, %list_node* %node_p7, i32 0, i32 1
  store %list_node* %node_p13, %list_node** %temp15
  %malloccall16 = tail call i8* @malloc(i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32))
  %arr_val17 = bitcast i8* %malloccall16 to double*
  store double 4.400000e+00, double* %arr_val17
  %i8ptr18 = bitcast double* %arr_val17 to i8*
  %malloccall19 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p20 = bitcast i8* %malloccall19 to %list_node*
  %valloc21 = getelementptr inbounds %list_node, %list_node* %node_p20, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p20
  store i8* %i8ptr18, i8** %valloc21
  %temp22 = getelementptr inbounds %list_node, %list_node* %node_p13, i32 0, i32 1
  store %list_node* %node_p20, %list_node** %temp22
  %malloccall23 = tail call i8* @malloc(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  %arr_val24 = bitcast i8* %malloccall23 to i8**
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @0, i32 0, i32 0), i8** %arr_val24
  %i8ptr25 = bitcast i8** %arr_val24 to i8*
  %malloccall26 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p27 = bitcast i8* %malloccall26 to %list_node*
  %valloc28 = getelementptr inbounds %list_node, %list_node* %node_p27, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p27
  store i8* %i8ptr25, i8** %valloc28
  %temp29 = getelementptr inbounds %list_node, %list_node* %node_p20, i32 0, i32 1
  store %list_node* %node_p27, %list_node** %temp29
  %malloccall30 = tail call i8* @malloc(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32))
  %arr_val31 = bitcast i8* %malloccall30 to i1*
  store i1 false, i1* %arr_val31
  %i8ptr32 = bitcast i1* %arr_val31 to i8*
  %malloccall33 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p34 = bitcast i8* %malloccall33 to %list_node*
  %valloc35 = getelementptr inbounds %list_node, %list_node* %node_p34, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p34
  store i8* %i8ptr32, i8** %valloc35
  %temp36 = getelementptr inbounds %list_node, %list_node* %node_p27, i32 0, i32 1
  store %list_node* %node_p34, %list_node** %temp36
  %temp37 = load %list_node*, %list_node** %new_list
  store %list_node* %temp37, %list_node** @l
  %list = load %list_node*, %list_node** @l
  %intvar = alloca i32
  store i32 3, i32* %intvar
  store %list_node* %list, %list_node** @1
  %0 = load i32, i32* %intvar
  store i32 %0, i32* @2
  br label %traverse_loop

traverse_loop:                                    ; preds = %while_body, %entry
  br i1 true, label %while_body, label %merge

while_body:                                       ; preds = %traverse_loop
  %1 = load %list_node*, %list_node** @1
  %temp38 = getelementptr inbounds %list_node, %list_node* %1, i32 0, i32 1
  %temp39 = load %list_node*, %list_node** %temp38
  store %list_node* %temp39, %list_node** @3
  %2 = load i32, i32* @2
  %subtract = sub i32 %2, 1
  store i32 %subtract, i32* @2
  store %list_node* %temp39, %list_node** @1
  br label %traverse_loop

merge:                                            ; preds = %traverse_loop
  %3 = load %list_node*, %list_node** @3
  %temp40 = getelementptr inbounds %list_node, %list_node* %3, i32 0, i32 0
  %retval = load i8*, i8** %temp40
  %li_conv = bitcast i8* %retval to double*
  %val_ptr = load double, double* %li_conv
  store double %val_ptr, double* @f
  %f = load double, double* @f
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), double %f)
  %malloccall41 = tail call i8* @malloc(i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32))
  %arr_val42 = bitcast i8* %malloccall41 to double*
  store double 5.500000e+00, double* %arr_val42
  %i8ptr43 = bitcast double* %arr_val42 to i8*
  %list44 = load %list_node*, %list_node** @l
  %intvar45 = alloca i32
  store i32 3, i32* %intvar45
  store %list_node* %list44, %list_node** @4
  %4 = load i32, i32* %intvar45
  store i32 %4, i32* @5
  br label %traverse_loop46

traverse_loop46:                                  ; preds = %while_body47, %merge
  br i1 true, label %while_body47, label %merge51

while_body47:                                     ; preds = %traverse_loop46
  %5 = load %list_node*, %list_node** @4
  %temp48 = getelementptr inbounds %list_node, %list_node* %5, i32 0, i32 1
  %temp49 = load %list_node*, %list_node** %temp48
  store %list_node* %temp49, %list_node** @6
  %6 = load i32, i32* @5
  %subtract50 = sub i32 %6, 1
  store i32 %subtract50, i32* @5
  store %list_node* %temp49, %list_node** @4
  br label %traverse_loop46

merge51:                                          ; preds = %traverse_loop46
  %7 = load %list_node*, %list_node** @6
  %temp52 = getelementptr inbounds %list_node, %list_node* %7, i32 0, i32 0
  store i8* %i8ptr43, i8** %temp52
  %list53 = load %list_node*, %list_node** @l
  %intvar54 = alloca i32
  store i32 3, i32* %intvar54
  store %list_node* %list53, %list_node** @7
  %8 = load i32, i32* %intvar54
  store i32 %8, i32* @8
  br label %traverse_loop55

traverse_loop55:                                  ; preds = %while_body56, %merge51
  br i1 true, label %while_body56, label %merge60

while_body56:                                     ; preds = %traverse_loop55
  %9 = load %list_node*, %list_node** @7
  %temp57 = getelementptr inbounds %list_node, %list_node* %9, i32 0, i32 1
  %temp58 = load %list_node*, %list_node** %temp57
  store %list_node* %temp58, %list_node** @9
  %10 = load i32, i32* @8
  %subtract59 = sub i32 %10, 1
  store i32 %subtract59, i32* @8
  store %list_node* %temp58, %list_node** @7
  br label %traverse_loop55

merge60:                                          ; preds = %traverse_loop55
  %11 = load %list_node*, %list_node** @9
  %temp61 = getelementptr inbounds %list_node, %list_node* %11, i32 0, i32 0
  %retval62 = load i8*, i8** %temp61
  %li_conv63 = bitcast i8* %retval62 to double*
  %val_ptr64 = load double, double* %li_conv63
  store double %val_ptr64, double* @f
  %f65 = load double, double* @f
  %printf66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.1, i32 0, i32 0), double %f65)
  ret i32 0
}

declare noalias i8* @malloc(i32)

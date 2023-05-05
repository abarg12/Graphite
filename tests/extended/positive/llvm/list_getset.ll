; ModuleID = 'Graphite'
source_filename = "Graphite"

%list_node = type { i8*, %list_node* }
%node_struct = type { i8*, i1, i8* }

@0 = private unnamed_addr constant [5 x i8] c"five\00", align 1
@l = global %list_node* null
@f = global double 0.000000e+00
@fmt = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.1 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1

declare i32 @printf(i8*, ...)

declare i32 @strcmp(i8*, i8*)

declare i8* @array_get(i8*, i32, ...)

declare i8* @array_set(i8*, i32, i8*, ...)

declare i8* @array_len(i8*, ...)

declare i8 @nodeExists(%node_struct*, ...)

declare i8* @array_add(i8*, i32, i8*, ...)

define i32 @main() {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %new_list = bitcast i8* %malloccall to %list_node**
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val = bitcast i8* %malloccall1 to i32*
  store i32 1, i32* %arr_val, align 4
  %i8ptr = bitcast i32* %arr_val to i8*
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p = bitcast i8* %malloccall2 to %list_node*
  %valloc = getelementptr inbounds %list_node, %list_node* %node_p, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p, align 8
  store i8* %i8ptr, i8** %valloc, align 8
  store %list_node* %node_p, %list_node** %new_list, align 8
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val4 = bitcast i8* %malloccall3 to i32*
  store i32 2, i32* %arr_val4, align 4
  %i8ptr5 = bitcast i32* %arr_val4 to i8*
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p7 = bitcast i8* %malloccall6 to %list_node*
  %valloc8 = getelementptr inbounds %list_node, %list_node* %node_p7, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p7, align 8
  store i8* %i8ptr5, i8** %valloc8, align 8
  %temp = getelementptr inbounds %list_node, %list_node* %node_p, i32 0, i32 1
  store %list_node* %node_p7, %list_node** %temp, align 8
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32))
  %arr_val10 = bitcast i8* %malloccall9 to double*
  store double 3.300000e+00, double* %arr_val10, align 8
  %i8ptr11 = bitcast double* %arr_val10 to i8*
  %malloccall12 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p13 = bitcast i8* %malloccall12 to %list_node*
  %valloc14 = getelementptr inbounds %list_node, %list_node* %node_p13, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p13, align 8
  store i8* %i8ptr11, i8** %valloc14, align 8
  %temp15 = getelementptr inbounds %list_node, %list_node* %node_p7, i32 0, i32 1
  store %list_node* %node_p13, %list_node** %temp15, align 8
  %malloccall16 = tail call i8* @malloc(i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32))
  %arr_val17 = bitcast i8* %malloccall16 to double*
  store double 4.400000e+00, double* %arr_val17, align 8
  %i8ptr18 = bitcast double* %arr_val17 to i8*
  %malloccall19 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p20 = bitcast i8* %malloccall19 to %list_node*
  %valloc21 = getelementptr inbounds %list_node, %list_node* %node_p20, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p20, align 8
  store i8* %i8ptr18, i8** %valloc21, align 8
  %temp22 = getelementptr inbounds %list_node, %list_node* %node_p13, i32 0, i32 1
  store %list_node* %node_p20, %list_node** %temp22, align 8
  %malloccall23 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %arr_val24 = bitcast i8* %malloccall23 to i8**
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @0, i32 0, i32 0), i8** %arr_val24, align 8
  %i8ptr25 = bitcast i8** %arr_val24 to i8*
  %malloccall26 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p27 = bitcast i8* %malloccall26 to %list_node*
  %valloc28 = getelementptr inbounds %list_node, %list_node* %node_p27, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p27, align 8
  store i8* %i8ptr25, i8** %valloc28, align 8
  %temp29 = getelementptr inbounds %list_node, %list_node* %node_p20, i32 0, i32 1
  store %list_node* %node_p27, %list_node** %temp29, align 8
  %malloccall30 = tail call i8* @malloc(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32))
  %arr_val31 = bitcast i8* %malloccall30 to i1*
  store i1 false, i1* %arr_val31, align 1
  %i8ptr32 = bitcast i1* %arr_val31 to i8*
  %malloccall33 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p34 = bitcast i8* %malloccall33 to %list_node*
  %valloc35 = getelementptr inbounds %list_node, %list_node* %node_p34, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p34, align 8
  store i8* %i8ptr32, i8** %valloc35, align 8
  %temp36 = getelementptr inbounds %list_node, %list_node* %node_p27, i32 0, i32 1
  store %list_node* %node_p34, %list_node** %temp36, align 8
  %temp37 = load %list_node*, %list_node** %new_list, align 8
  store %list_node* %temp37, %list_node** @l, align 8
  %list = load %list_node*, %list_node** @l, align 8
  %malloccall38 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %0 = bitcast i8* %malloccall38 to %list_node**
  %malloccall39 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %malloccall39 to i32*
  store %list_node* %list, %list_node** %0, align 8
  store i32 3, i32* %1, align 4
  br label %traverse_loop

traverse_loop:                                    ; preds = %while_body, %entry
  %2 = load i32, i32* %1, align 4
  %temp42 = icmp ne i32 %2, 0
  br i1 %temp42, label %while_body, label %merge

while_body:                                       ; preds = %traverse_loop
  %3 = load %list_node*, %list_node** %0, align 8
  %temp40 = getelementptr inbounds %list_node, %list_node* %3, i32 0, i32 1
  %temp41 = load %list_node*, %list_node** %temp40, align 8
  %4 = load i32, i32* %1, align 4
  %subtract = sub i32 %4, 1
  store i32 %subtract, i32* %1, align 4
  store %list_node* %temp41, %list_node** %0, align 8
  br label %traverse_loop

merge:                                            ; preds = %traverse_loop
  %5 = load %list_node*, %list_node** %0, align 8
  %temp43 = getelementptr inbounds %list_node, %list_node* %5, i32 0, i32 0
  %retval = load i8*, i8** %temp43, align 8
  %li_conv = bitcast i8* %retval to double*
  %val_ptr = load double, double* %li_conv, align 8
  store double %val_ptr, double* @f, align 8
  %f = load double, double* @f, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), double %f)
  %malloccall44 = tail call i8* @malloc(i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32))
  %arr_val45 = bitcast i8* %malloccall44 to double*
  store double 5.500000e+00, double* %arr_val45, align 8
  %i8ptr46 = bitcast double* %arr_val45 to i8*
  %list47 = load %list_node*, %list_node** @l, align 8
  %malloccall48 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %6 = bitcast i8* %malloccall48 to %list_node**
  %malloccall49 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %7 = bitcast i8* %malloccall49 to i32*
  store %list_node* %list47, %list_node** %6, align 8
  store i32 3, i32* %7, align 4
  br label %traverse_loop50

traverse_loop50:                                  ; preds = %while_body51, %merge
  %8 = load i32, i32* %7, align 4
  %temp55 = icmp ne i32 %8, 0
  br i1 %temp55, label %while_body51, label %merge56

while_body51:                                     ; preds = %traverse_loop50
  %9 = load %list_node*, %list_node** %6, align 8
  %temp52 = getelementptr inbounds %list_node, %list_node* %9, i32 0, i32 1
  %temp53 = load %list_node*, %list_node** %temp52, align 8
  %10 = load i32, i32* %7, align 4
  %subtract54 = sub i32 %10, 1
  store i32 %subtract54, i32* %7, align 4
  store %list_node* %temp53, %list_node** %6, align 8
  br label %traverse_loop50

merge56:                                          ; preds = %traverse_loop50
  %11 = load %list_node*, %list_node** %6, align 8
  %temp57 = getelementptr inbounds %list_node, %list_node* %11, i32 0, i32 0
  store i8* %i8ptr46, i8** %temp57, align 8
  %list58 = load %list_node*, %list_node** @l, align 8
  %malloccall59 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %12 = bitcast i8* %malloccall59 to %list_node**
  %malloccall60 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %13 = bitcast i8* %malloccall60 to i32*
  store %list_node* %list58, %list_node** %12, align 8
  store i32 3, i32* %13, align 4
  br label %traverse_loop61

traverse_loop61:                                  ; preds = %while_body62, %merge56
  %14 = load i32, i32* %13, align 4
  %temp66 = icmp ne i32 %14, 0
  br i1 %temp66, label %while_body62, label %merge67

while_body62:                                     ; preds = %traverse_loop61
  %15 = load %list_node*, %list_node** %12, align 8
  %temp63 = getelementptr inbounds %list_node, %list_node* %15, i32 0, i32 1
  %temp64 = load %list_node*, %list_node** %temp63, align 8
  %16 = load i32, i32* %13, align 4
  %subtract65 = sub i32 %16, 1
  store i32 %subtract65, i32* %13, align 4
  store %list_node* %temp64, %list_node** %12, align 8
  br label %traverse_loop61

merge67:                                          ; preds = %traverse_loop61
  %17 = load %list_node*, %list_node** %12, align 8
  %temp68 = getelementptr inbounds %list_node, %list_node* %17, i32 0, i32 0
  %retval69 = load i8*, i8** %temp68, align 8
  %li_conv70 = bitcast i8* %retval69 to double*
  %val_ptr71 = load double, double* %li_conv70, align 8
  store double %val_ptr71, double* @f, align 8
  %f72 = load double, double* @f, align 8
  %printf73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.1, i32 0, i32 0), double %f72)
  ret i32 0
}

declare noalias i8* @malloc(i32)

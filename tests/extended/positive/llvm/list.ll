; ModuleID = 'Graphite'
source_filename = "Graphite"

%list_node = type { i8*, %list_node* }
%node_struct = type { i8*, i1, i8* }

@l = global %list_node* null
@a = global double 0.000000e+00
@fmt = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@l2 = global %list_node* null
@b = global i32 0
@fmt.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@l3 = global %list_node* null
@0 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@1 = private unnamed_addr constant [6 x i8] c"three\00", align 1
@l4 = global %list_node* null
@abc = global i1 false
@fmt.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@bcd = global i8* null
@fmt.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@2 = private unnamed_addr constant [9 x i8] c"badbunny\00", align 1
@fmt.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.6 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@3 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@fmt.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.8 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @printf(i8*, ...)

declare i32 @strcmp(i8*, i8*)

declare i8* @array_get(i8*, i32, ...)

declare i8* @array_set(i8*, i32, i8*, ...)

declare i8 @nodeExists(%node_struct*, ...)

declare i8* @array_add(i8*, i32, i8*, ...)

define i32 @main() {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %new_list = bitcast i8* %malloccall to %list_node**
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32))
  %arr_val = bitcast i8* %malloccall1 to double*
  store double 1.600000e+00, double* %arr_val, align 8
  %i8ptr = bitcast double* %arr_val to i8*
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p = bitcast i8* %malloccall2 to %list_node*
  %valloc = getelementptr inbounds %list_node, %list_node* %node_p, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p, align 8
  store i8* %i8ptr, i8** %valloc, align 8
  store %list_node* %node_p, %list_node** %new_list, align 8
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32))
  %arr_val4 = bitcast i8* %malloccall3 to double*
  store double 2.300000e+00, double* %arr_val4, align 8
  %i8ptr5 = bitcast double* %arr_val4 to i8*
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p7 = bitcast i8* %malloccall6 to %list_node*
  %valloc8 = getelementptr inbounds %list_node, %list_node* %node_p7, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p7, align 8
  store i8* %i8ptr5, i8** %valloc8, align 8
  %temp = getelementptr inbounds %list_node, %list_node* %node_p, i32 0, i32 1
  store %list_node* %node_p7, %list_node** %temp, align 8
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32))
  %arr_val10 = bitcast i8* %malloccall9 to double*
  store double 3.500000e+00, double* %arr_val10, align 8
  %i8ptr11 = bitcast double* %arr_val10 to i8*
  %malloccall12 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p13 = bitcast i8* %malloccall12 to %list_node*
  %valloc14 = getelementptr inbounds %list_node, %list_node* %node_p13, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p13, align 8
  store i8* %i8ptr11, i8** %valloc14, align 8
  %temp15 = getelementptr inbounds %list_node, %list_node* %node_p7, i32 0, i32 1
  store %list_node* %node_p13, %list_node** %temp15, align 8
  %temp16 = load %list_node*, %list_node** %new_list, align 8
  store %list_node* %temp16, %list_node** @l, align 8
  %list = load %list_node*, %list_node** @l, align 8
  %malloccall17 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %0 = bitcast i8* %malloccall17 to %list_node**
  %malloccall18 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %malloccall18 to i32*
  store %list_node* %list, %list_node** %0, align 8
  store i32 1, i32* %1, align 4
  br label %traverse_loop

traverse_loop:                                    ; preds = %while_body, %entry
  %2 = load i32, i32* %1, align 4
  %temp21 = icmp ne i32 %2, 0
  br i1 %temp21, label %while_body, label %merge

while_body:                                       ; preds = %traverse_loop
  %3 = load %list_node*, %list_node** %0, align 8
  %temp19 = getelementptr inbounds %list_node, %list_node* %3, i32 0, i32 1
  %temp20 = load %list_node*, %list_node** %temp19, align 8
  %4 = load i32, i32* %1, align 4
  %subtract = sub i32 %4, 1
  store i32 %subtract, i32* %1, align 4
  store %list_node* %temp20, %list_node** %0, align 8
  br label %traverse_loop

merge:                                            ; preds = %traverse_loop
  %5 = load %list_node*, %list_node** %0, align 8
  %temp22 = getelementptr inbounds %list_node, %list_node* %5, i32 0, i32 0
  %retval = load i8*, i8** %temp22, align 8
  %li_conv = bitcast i8* %retval to double*
  %val_ptr = load double, double* %li_conv, align 8
  store double %val_ptr, double* @a, align 8
  %a = load double, double* @a, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), double %a)
  %malloccall23 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %new_list24 = bitcast i8* %malloccall23 to %list_node**
  %malloccall25 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val26 = bitcast i8* %malloccall25 to i32*
  store i32 5, i32* %arr_val26, align 4
  %i8ptr27 = bitcast i32* %arr_val26 to i8*
  %malloccall28 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p29 = bitcast i8* %malloccall28 to %list_node*
  %valloc30 = getelementptr inbounds %list_node, %list_node* %node_p29, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p29, align 8
  store i8* %i8ptr27, i8** %valloc30, align 8
  store %list_node* %node_p29, %list_node** %new_list24, align 8
  %malloccall31 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val32 = bitcast i8* %malloccall31 to i32*
  store i32 6, i32* %arr_val32, align 4
  %i8ptr33 = bitcast i32* %arr_val32 to i8*
  %malloccall34 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p35 = bitcast i8* %malloccall34 to %list_node*
  %valloc36 = getelementptr inbounds %list_node, %list_node* %node_p35, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p35, align 8
  store i8* %i8ptr33, i8** %valloc36, align 8
  %temp37 = getelementptr inbounds %list_node, %list_node* %node_p29, i32 0, i32 1
  store %list_node* %node_p35, %list_node** %temp37, align 8
  %malloccall38 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val39 = bitcast i8* %malloccall38 to i32*
  store i32 7, i32* %arr_val39, align 4
  %i8ptr40 = bitcast i32* %arr_val39 to i8*
  %malloccall41 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p42 = bitcast i8* %malloccall41 to %list_node*
  %valloc43 = getelementptr inbounds %list_node, %list_node* %node_p42, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p42, align 8
  store i8* %i8ptr40, i8** %valloc43, align 8
  %temp44 = getelementptr inbounds %list_node, %list_node* %node_p35, i32 0, i32 1
  store %list_node* %node_p42, %list_node** %temp44, align 8
  %temp45 = load %list_node*, %list_node** %new_list24, align 8
  store %list_node* %temp45, %list_node** @l2, align 8
  %list46 = load %list_node*, %list_node** @l2, align 8
  %malloccall47 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %6 = bitcast i8* %malloccall47 to %list_node**
  %malloccall48 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %7 = bitcast i8* %malloccall48 to i32*
  store %list_node* %list46, %list_node** %6, align 8
  store i32 2, i32* %7, align 4
  br label %traverse_loop49

traverse_loop49:                                  ; preds = %while_body50, %merge
  %8 = load i32, i32* %7, align 4
  %temp54 = icmp ne i32 %8, 0
  br i1 %temp54, label %while_body50, label %merge55

while_body50:                                     ; preds = %traverse_loop49
  %9 = load %list_node*, %list_node** %6, align 8
  %temp51 = getelementptr inbounds %list_node, %list_node* %9, i32 0, i32 1
  %temp52 = load %list_node*, %list_node** %temp51, align 8
  %10 = load i32, i32* %7, align 4
  %subtract53 = sub i32 %10, 1
  store i32 %subtract53, i32* %7, align 4
  store %list_node* %temp52, %list_node** %6, align 8
  br label %traverse_loop49

merge55:                                          ; preds = %traverse_loop49
  %11 = load %list_node*, %list_node** %6, align 8
  %temp56 = getelementptr inbounds %list_node, %list_node* %11, i32 0, i32 0
  %retval57 = load i8*, i8** %temp56, align 8
  %li_conv58 = bitcast i8* %retval57 to i32*
  %val_ptr59 = load i32, i32* %li_conv58, align 4
  store i32 %val_ptr59, i32* @b, align 4
  %b = load i32, i32* @b, align 4
  %printf60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.1, i32 0, i32 0), i32 %b)
  %malloccall61 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %new_list62 = bitcast i8* %malloccall61 to %list_node**
  %malloccall63 = tail call i8* @malloc(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32))
  %arr_val64 = bitcast i8* %malloccall63 to i1*
  store i1 true, i1* %arr_val64, align 1
  %i8ptr65 = bitcast i1* %arr_val64 to i8*
  %malloccall66 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p67 = bitcast i8* %malloccall66 to %list_node*
  %valloc68 = getelementptr inbounds %list_node, %list_node* %node_p67, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p67, align 8
  store i8* %i8ptr65, i8** %valloc68, align 8
  store %list_node* %node_p67, %list_node** %new_list62, align 8
  %malloccall69 = tail call i8* @malloc(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32))
  %arr_val70 = bitcast i8* %malloccall69 to i1*
  store i1 false, i1* %arr_val70, align 1
  %i8ptr71 = bitcast i1* %arr_val70 to i8*
  %malloccall72 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p73 = bitcast i8* %malloccall72 to %list_node*
  %valloc74 = getelementptr inbounds %list_node, %list_node* %node_p73, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p73, align 8
  store i8* %i8ptr71, i8** %valloc74, align 8
  %temp75 = getelementptr inbounds %list_node, %list_node* %node_p67, i32 0, i32 1
  store %list_node* %node_p73, %list_node** %temp75, align 8
  %malloccall76 = tail call i8* @malloc(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32))
  %arr_val77 = bitcast i8* %malloccall76 to i1*
  store i1 true, i1* %arr_val77, align 1
  %i8ptr78 = bitcast i1* %arr_val77 to i8*
  %malloccall79 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p80 = bitcast i8* %malloccall79 to %list_node*
  %valloc81 = getelementptr inbounds %list_node, %list_node* %node_p80, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p80, align 8
  store i8* %i8ptr78, i8** %valloc81, align 8
  %temp82 = getelementptr inbounds %list_node, %list_node* %node_p73, i32 0, i32 1
  store %list_node* %node_p80, %list_node** %temp82, align 8
  %malloccall83 = tail call i8* @malloc(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32))
  %arr_val84 = bitcast i8* %malloccall83 to i1*
  store i1 false, i1* %arr_val84, align 1
  %i8ptr85 = bitcast i1* %arr_val84 to i8*
  %malloccall86 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p87 = bitcast i8* %malloccall86 to %list_node*
  %valloc88 = getelementptr inbounds %list_node, %list_node* %node_p87, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p87, align 8
  store i8* %i8ptr85, i8** %valloc88, align 8
  %temp89 = getelementptr inbounds %list_node, %list_node* %node_p80, i32 0, i32 1
  store %list_node* %node_p87, %list_node** %temp89, align 8
  %malloccall90 = tail call i8* @malloc(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32))
  %arr_val91 = bitcast i8* %malloccall90 to i1*
  store i1 true, i1* %arr_val91, align 1
  %i8ptr92 = bitcast i1* %arr_val91 to i8*
  %malloccall93 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p94 = bitcast i8* %malloccall93 to %list_node*
  %valloc95 = getelementptr inbounds %list_node, %list_node* %node_p94, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p94, align 8
  store i8* %i8ptr92, i8** %valloc95, align 8
  %temp96 = getelementptr inbounds %list_node, %list_node* %node_p87, i32 0, i32 1
  store %list_node* %node_p94, %list_node** %temp96, align 8
  %malloccall97 = tail call i8* @malloc(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32))
  %arr_val98 = bitcast i8* %malloccall97 to i1*
  store i1 false, i1* %arr_val98, align 1
  %i8ptr99 = bitcast i1* %arr_val98 to i8*
  %malloccall100 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p101 = bitcast i8* %malloccall100 to %list_node*
  %valloc102 = getelementptr inbounds %list_node, %list_node* %node_p101, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p101, align 8
  store i8* %i8ptr99, i8** %valloc102, align 8
  %temp103 = getelementptr inbounds %list_node, %list_node* %node_p94, i32 0, i32 1
  store %list_node* %node_p101, %list_node** %temp103, align 8
  %temp104 = load %list_node*, %list_node** %new_list62, align 8
  store %list_node* %temp104, %list_node** @l3, align 8
  %malloccall105 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %new_list106 = bitcast i8* %malloccall105 to %list_node**
  %malloccall107 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %arr_val108 = bitcast i8* %malloccall107 to i8**
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @0, i32 0, i32 0), i8** %arr_val108, align 8
  %i8ptr109 = bitcast i8** %arr_val108 to i8*
  %malloccall110 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p111 = bitcast i8* %malloccall110 to %list_node*
  %valloc112 = getelementptr inbounds %list_node, %list_node* %node_p111, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p111, align 8
  store i8* %i8ptr109, i8** %valloc112, align 8
  store %list_node* %node_p111, %list_node** %new_list106, align 8
  %malloccall113 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val114 = bitcast i8* %malloccall113 to i32*
  store i32 2, i32* %arr_val114, align 4
  %i8ptr115 = bitcast i32* %arr_val114 to i8*
  %malloccall116 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p117 = bitcast i8* %malloccall116 to %list_node*
  %valloc118 = getelementptr inbounds %list_node, %list_node* %node_p117, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p117, align 8
  store i8* %i8ptr115, i8** %valloc118, align 8
  %temp119 = getelementptr inbounds %list_node, %list_node* %node_p111, i32 0, i32 1
  store %list_node* %node_p117, %list_node** %temp119, align 8
  %malloccall120 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %arr_val121 = bitcast i8* %malloccall120 to i8**
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1, i32 0, i32 0), i8** %arr_val121, align 8
  %i8ptr122 = bitcast i8** %arr_val121 to i8*
  %malloccall123 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p124 = bitcast i8* %malloccall123 to %list_node*
  %valloc125 = getelementptr inbounds %list_node, %list_node* %node_p124, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p124, align 8
  store i8* %i8ptr122, i8** %valloc125, align 8
  %temp126 = getelementptr inbounds %list_node, %list_node* %node_p117, i32 0, i32 1
  store %list_node* %node_p124, %list_node** %temp126, align 8
  %malloccall127 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val128 = bitcast i8* %malloccall127 to i32*
  store i32 4, i32* %arr_val128, align 4
  %i8ptr129 = bitcast i32* %arr_val128 to i8*
  %malloccall130 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p131 = bitcast i8* %malloccall130 to %list_node*
  %valloc132 = getelementptr inbounds %list_node, %list_node* %node_p131, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p131, align 8
  store i8* %i8ptr129, i8** %valloc132, align 8
  %temp133 = getelementptr inbounds %list_node, %list_node* %node_p124, i32 0, i32 1
  store %list_node* %node_p131, %list_node** %temp133, align 8
  %temp134 = load %list_node*, %list_node** %new_list106, align 8
  store %list_node* %temp134, %list_node** @l4, align 8
  %list135 = load %list_node*, %list_node** @l3, align 8
  %malloccall136 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %12 = bitcast i8* %malloccall136 to %list_node**
  %malloccall137 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %13 = bitcast i8* %malloccall137 to i32*
  store %list_node* %list135, %list_node** %12, align 8
  store i32 0, i32* %13, align 4
  br label %traverse_loop138

traverse_loop138:                                 ; preds = %while_body139, %merge55
  %14 = load i32, i32* %13, align 4
  %temp143 = icmp ne i32 %14, 0
  br i1 %temp143, label %while_body139, label %merge144

while_body139:                                    ; preds = %traverse_loop138
  %15 = load %list_node*, %list_node** %12, align 8
  %temp140 = getelementptr inbounds %list_node, %list_node* %15, i32 0, i32 1
  %temp141 = load %list_node*, %list_node** %temp140, align 8
  %16 = load i32, i32* %13, align 4
  %subtract142 = sub i32 %16, 1
  store i32 %subtract142, i32* %13, align 4
  store %list_node* %temp141, %list_node** %12, align 8
  br label %traverse_loop138

merge144:                                         ; preds = %traverse_loop138
  %17 = load %list_node*, %list_node** %12, align 8
  %temp145 = getelementptr inbounds %list_node, %list_node* %17, i32 0, i32 0
  %retval146 = load i8*, i8** %temp145, align 8
  %li_conv147 = bitcast i8* %retval146 to i1*
  %val_ptr148 = load i1, i1* %li_conv147, align 1
  store i1 %val_ptr148, i1* @abc, align 1
  %abc = load i1, i1* @abc, align 1
  %printf149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.2, i32 0, i32 0), i1 %abc)
  %list150 = load %list_node*, %list_node** @l4, align 8
  %malloccall151 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %18 = bitcast i8* %malloccall151 to %list_node**
  %malloccall152 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %19 = bitcast i8* %malloccall152 to i32*
  store %list_node* %list150, %list_node** %18, align 8
  store i32 0, i32* %19, align 4
  br label %traverse_loop153

traverse_loop153:                                 ; preds = %while_body154, %merge144
  %20 = load i32, i32* %19, align 4
  %temp158 = icmp ne i32 %20, 0
  br i1 %temp158, label %while_body154, label %merge159

while_body154:                                    ; preds = %traverse_loop153
  %21 = load %list_node*, %list_node** %18, align 8
  %temp155 = getelementptr inbounds %list_node, %list_node* %21, i32 0, i32 1
  %temp156 = load %list_node*, %list_node** %temp155, align 8
  %22 = load i32, i32* %19, align 4
  %subtract157 = sub i32 %22, 1
  store i32 %subtract157, i32* %19, align 4
  store %list_node* %temp156, %list_node** %18, align 8
  br label %traverse_loop153

merge159:                                         ; preds = %traverse_loop153
  %23 = load %list_node*, %list_node** %18, align 8
  %temp160 = getelementptr inbounds %list_node, %list_node* %23, i32 0, i32 0
  %retval161 = load i8*, i8** %temp160, align 8
  %li_conv162 = bitcast i8* %retval161 to i8**
  %val_ptr163 = load i8*, i8** %li_conv162, align 8
  store i8* %val_ptr163, i8** @bcd, align 8
  %bcd = load i8*, i8** @bcd, align 8
  %printf164 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.3, i32 0, i32 0), i8* %bcd)
  %malloccall165 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %new_list166 = bitcast i8* %malloccall165 to %list_node**
  %malloccall167 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val168 = bitcast i8* %malloccall167 to i32*
  store i32 101044, i32* %arr_val168, align 4
  %i8ptr169 = bitcast i32* %arr_val168 to i8*
  %malloccall170 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p171 = bitcast i8* %malloccall170 to %list_node*
  %valloc172 = getelementptr inbounds %list_node, %list_node* %node_p171, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p171, align 8
  store i8* %i8ptr169, i8** %valloc172, align 8
  store %list_node* %node_p171, %list_node** %new_list166, align 8
  %malloccall173 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val174 = bitcast i8* %malloccall173 to i32*
  store i32 34, i32* %arr_val174, align 4
  %i8ptr175 = bitcast i32* %arr_val174 to i8*
  %malloccall176 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p177 = bitcast i8* %malloccall176 to %list_node*
  %valloc178 = getelementptr inbounds %list_node, %list_node* %node_p177, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p177, align 8
  store i8* %i8ptr175, i8** %valloc178, align 8
  %temp179 = getelementptr inbounds %list_node, %list_node* %node_p171, i32 0, i32 1
  store %list_node* %node_p177, %list_node** %temp179, align 8
  %malloccall180 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val181 = bitcast i8* %malloccall180 to i32*
  store i32 34134, i32* %arr_val181, align 4
  %i8ptr182 = bitcast i32* %arr_val181 to i8*
  %malloccall183 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p184 = bitcast i8* %malloccall183 to %list_node*
  %valloc185 = getelementptr inbounds %list_node, %list_node* %node_p184, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p184, align 8
  store i8* %i8ptr182, i8** %valloc185, align 8
  %temp186 = getelementptr inbounds %list_node, %list_node* %node_p177, i32 0, i32 1
  store %list_node* %node_p184, %list_node** %temp186, align 8
  %malloccall187 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val188 = bitcast i8* %malloccall187 to i32*
  store i32 39, i32* %arr_val188, align 4
  %i8ptr189 = bitcast i32* %arr_val188 to i8*
  %malloccall190 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p191 = bitcast i8* %malloccall190 to %list_node*
  %valloc192 = getelementptr inbounds %list_node, %list_node* %node_p191, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p191, align 8
  store i8* %i8ptr189, i8** %valloc192, align 8
  %temp193 = getelementptr inbounds %list_node, %list_node* %node_p184, i32 0, i32 1
  store %list_node* %node_p191, %list_node** %temp193, align 8
  %temp194 = load %list_node*, %list_node** %new_list166, align 8
  %inner_list = alloca %list_node*, align 8
  store %list_node* %temp194, %list_node** %inner_list, align 8
  %malloccall195 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %new_list196 = bitcast i8* %malloccall195 to %list_node**
  %malloccall197 = tail call i8* @malloc(i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32))
  %arr_val198 = bitcast i8* %malloccall197 to double*
  store double -1.100000e+00, double* %arr_val198, align 8
  %i8ptr199 = bitcast double* %arr_val198 to i8*
  %malloccall200 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p201 = bitcast i8* %malloccall200 to %list_node*
  %valloc202 = getelementptr inbounds %list_node, %list_node* %node_p201, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p201, align 8
  store i8* %i8ptr199, i8** %valloc202, align 8
  store %list_node* %node_p201, %list_node** %new_list196, align 8
  %malloccall203 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val204 = bitcast i8* %malloccall203 to i32*
  store i32 -2, i32* %arr_val204, align 4
  %i8ptr205 = bitcast i32* %arr_val204 to i8*
  %malloccall206 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p207 = bitcast i8* %malloccall206 to %list_node*
  %valloc208 = getelementptr inbounds %list_node, %list_node* %node_p207, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p207, align 8
  store i8* %i8ptr205, i8** %valloc208, align 8
  %temp209 = getelementptr inbounds %list_node, %list_node* %node_p201, i32 0, i32 1
  store %list_node* %node_p207, %list_node** %temp209, align 8
  %malloccall210 = tail call i8* @malloc(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32))
  %arr_val211 = bitcast i8* %malloccall210 to i1*
  store i1 true, i1* %arr_val211, align 1
  %i8ptr212 = bitcast i1* %arr_val211 to i8*
  %malloccall213 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p214 = bitcast i8* %malloccall213 to %list_node*
  %valloc215 = getelementptr inbounds %list_node, %list_node* %node_p214, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p214, align 8
  store i8* %i8ptr212, i8** %valloc215, align 8
  %temp216 = getelementptr inbounds %list_node, %list_node* %node_p207, i32 0, i32 1
  store %list_node* %node_p214, %list_node** %temp216, align 8
  %malloccall217 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val218 = bitcast i8* %malloccall217 to i32*
  store i32 -4, i32* %arr_val218, align 4
  %i8ptr219 = bitcast i32* %arr_val218 to i8*
  %malloccall220 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p221 = bitcast i8* %malloccall220 to %list_node*
  %valloc222 = getelementptr inbounds %list_node, %list_node* %node_p221, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p221, align 8
  store i8* %i8ptr219, i8** %valloc222, align 8
  %temp223 = getelementptr inbounds %list_node, %list_node* %node_p214, i32 0, i32 1
  store %list_node* %node_p221, %list_node** %temp223, align 8
  %malloccall224 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %arr_val225 = bitcast i8* %malloccall224 to i8**
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2, i32 0, i32 0), i8** %arr_val225, align 8
  %i8ptr226 = bitcast i8** %arr_val225 to i8*
  %malloccall227 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p228 = bitcast i8* %malloccall227 to %list_node*
  %valloc229 = getelementptr inbounds %list_node, %list_node* %node_p228, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p228, align 8
  store i8* %i8ptr226, i8** %valloc229, align 8
  %temp230 = getelementptr inbounds %list_node, %list_node* %node_p221, i32 0, i32 1
  store %list_node* %node_p228, %list_node** %temp230, align 8
  %malloccall231 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val232 = bitcast i8* %malloccall231 to i32*
  store i32 2, i32* %arr_val232, align 4
  %i8ptr233 = bitcast i32* %arr_val232 to i8*
  %malloccall234 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p235 = bitcast i8* %malloccall234 to %list_node*
  %valloc236 = getelementptr inbounds %list_node, %list_node* %node_p235, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p235, align 8
  store i8* %i8ptr233, i8** %valloc236, align 8
  %temp237 = getelementptr inbounds %list_node, %list_node* %node_p228, i32 0, i32 1
  store %list_node* %node_p235, %list_node** %temp237, align 8
  %malloccall238 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val239 = bitcast i8* %malloccall238 to i32*
  store i32 3, i32* %arr_val239, align 4
  %i8ptr240 = bitcast i32* %arr_val239 to i8*
  %malloccall241 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p242 = bitcast i8* %malloccall241 to %list_node*
  %valloc243 = getelementptr inbounds %list_node, %list_node* %node_p242, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p242, align 8
  store i8* %i8ptr240, i8** %valloc243, align 8
  %temp244 = getelementptr inbounds %list_node, %list_node* %node_p235, i32 0, i32 1
  store %list_node* %node_p242, %list_node** %temp244, align 8
  %malloccall245 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val246 = bitcast i8* %malloccall245 to i32*
  store i32 4, i32* %arr_val246, align 4
  %i8ptr247 = bitcast i32* %arr_val246 to i8*
  %malloccall248 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p249 = bitcast i8* %malloccall248 to %list_node*
  %valloc250 = getelementptr inbounds %list_node, %list_node* %node_p249, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p249, align 8
  store i8* %i8ptr247, i8** %valloc250, align 8
  %temp251 = getelementptr inbounds %list_node, %list_node* %node_p242, i32 0, i32 1
  store %list_node* %node_p249, %list_node** %temp251, align 8
  %temp252 = load %list_node*, %list_node** %new_list196, align 8
  %inner_list2 = alloca %list_node*, align 8
  store %list_node* %temp252, %list_node** %inner_list2, align 8
  %list253 = load %list_node*, %list_node** %inner_list, align 8
  %malloccall254 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %24 = bitcast i8* %malloccall254 to %list_node**
  %malloccall255 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %25 = bitcast i8* %malloccall255 to i32*
  store %list_node* %list253, %list_node** %24, align 8
  store i32 1, i32* %25, align 4
  br label %traverse_loop256

traverse_loop256:                                 ; preds = %while_body257, %merge159
  %26 = load i32, i32* %25, align 4
  %temp261 = icmp ne i32 %26, 0
  br i1 %temp261, label %while_body257, label %merge262

while_body257:                                    ; preds = %traverse_loop256
  %27 = load %list_node*, %list_node** %24, align 8
  %temp258 = getelementptr inbounds %list_node, %list_node* %27, i32 0, i32 1
  %temp259 = load %list_node*, %list_node** %temp258, align 8
  %28 = load i32, i32* %25, align 4
  %subtract260 = sub i32 %28, 1
  store i32 %subtract260, i32* %25, align 4
  store %list_node* %temp259, %list_node** %24, align 8
  br label %traverse_loop256

merge262:                                         ; preds = %traverse_loop256
  %29 = load %list_node*, %list_node** %24, align 8
  %temp263 = getelementptr inbounds %list_node, %list_node* %29, i32 0, i32 0
  %retval264 = load i8*, i8** %temp263, align 8
  %li_conv265 = bitcast i8* %retval264 to i32*
  %val_ptr266 = load i32, i32* %li_conv265, align 4
  %val1 = alloca i32, align 4
  store i32 %val_ptr266, i32* %val1, align 4
  %val2 = alloca i8*, align 8
  %list267 = load %list_node*, %list_node** %inner_list2, align 8
  %malloccall268 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %30 = bitcast i8* %malloccall268 to %list_node**
  %malloccall269 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %31 = bitcast i8* %malloccall269 to i32*
  store %list_node* %list267, %list_node** %30, align 8
  store i32 4, i32* %31, align 4
  br label %traverse_loop270

traverse_loop270:                                 ; preds = %while_body271, %merge262
  %32 = load i32, i32* %31, align 4
  %temp275 = icmp ne i32 %32, 0
  br i1 %temp275, label %while_body271, label %merge276

while_body271:                                    ; preds = %traverse_loop270
  %33 = load %list_node*, %list_node** %30, align 8
  %temp272 = getelementptr inbounds %list_node, %list_node* %33, i32 0, i32 1
  %temp273 = load %list_node*, %list_node** %temp272, align 8
  %34 = load i32, i32* %31, align 4
  %subtract274 = sub i32 %34, 1
  store i32 %subtract274, i32* %31, align 4
  store %list_node* %temp273, %list_node** %30, align 8
  br label %traverse_loop270

merge276:                                         ; preds = %traverse_loop270
  %35 = load %list_node*, %list_node** %30, align 8
  %temp277 = getelementptr inbounds %list_node, %list_node* %35, i32 0, i32 0
  %retval278 = load i8*, i8** %temp277, align 8
  %li_conv279 = bitcast i8* %retval278 to i8**
  %val_ptr280 = load i8*, i8** %li_conv279, align 8
  store i8* %val_ptr280, i8** %val2, align 8
  %val1281 = load i32, i32* %val1, align 4
  %printf282 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.4, i32 0, i32 0), i32 %val1281)
  %val2283 = load i8*, i8** %val2, align 8
  %printf284 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.5, i32 0, i32 0), i8* %val2283)
  %malloccall285 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %new_list286 = bitcast i8* %malloccall285 to %list_node**
  %malloccall287 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val288 = bitcast i8* %malloccall287 to i32*
  store i32 1, i32* %arr_val288, align 4
  %i8ptr289 = bitcast i32* %arr_val288 to i8*
  %malloccall290 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p291 = bitcast i8* %malloccall290 to %list_node*
  %valloc292 = getelementptr inbounds %list_node, %list_node* %node_p291, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p291, align 8
  store i8* %i8ptr289, i8** %valloc292, align 8
  store %list_node* %node_p291, %list_node** %new_list286, align 8
  %malloccall293 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val294 = bitcast i8* %malloccall293 to i32*
  store i32 2, i32* %arr_val294, align 4
  %i8ptr295 = bitcast i32* %arr_val294 to i8*
  %malloccall296 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p297 = bitcast i8* %malloccall296 to %list_node*
  %valloc298 = getelementptr inbounds %list_node, %list_node* %node_p297, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p297, align 8
  store i8* %i8ptr295, i8** %valloc298, align 8
  %temp299 = getelementptr inbounds %list_node, %list_node* %node_p291, i32 0, i32 1
  store %list_node* %node_p297, %list_node** %temp299, align 8
  %malloccall300 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val301 = bitcast i8* %malloccall300 to i32*
  store i32 3, i32* %arr_val301, align 4
  %i8ptr302 = bitcast i32* %arr_val301 to i8*
  %malloccall303 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p304 = bitcast i8* %malloccall303 to %list_node*
  %valloc305 = getelementptr inbounds %list_node, %list_node* %node_p304, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p304, align 8
  store i8* %i8ptr302, i8** %valloc305, align 8
  %temp306 = getelementptr inbounds %list_node, %list_node* %node_p297, i32 0, i32 1
  store %list_node* %node_p304, %list_node** %temp306, align 8
  %temp307 = load %list_node*, %list_node** %new_list286, align 8
  call void @funcy(%list_node* %temp307)
  ret i32 0
}

declare noalias i8* @malloc(i32)

define void @funcy(%list_node* %l1) {
entry:
  %l = alloca %list_node*, align 8
  store %list_node* %l1, %list_node** %l, align 8
  %a = alloca i32, align 4
  %list = load %list_node*, %list_node** %l, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %0 = bitcast i8* %malloccall to %list_node**
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %malloccall2 to i32*
  store %list_node* %list, %list_node** %0, align 8
  store i32 0, i32* %1, align 4
  br label %traverse_loop

traverse_loop:                                    ; preds = %while_body, %entry
  %2 = load i32, i32* %1, align 4
  %temp4 = icmp ne i32 %2, 0
  br i1 %temp4, label %while_body, label %merge

while_body:                                       ; preds = %traverse_loop
  %3 = load %list_node*, %list_node** %0, align 8
  %temp = getelementptr inbounds %list_node, %list_node* %3, i32 0, i32 1
  %temp3 = load %list_node*, %list_node** %temp, align 8
  %4 = load i32, i32* %1, align 4
  %subtract = sub i32 %4, 1
  store i32 %subtract, i32* %1, align 4
  store %list_node* %temp3, %list_node** %0, align 8
  br label %traverse_loop

merge:                                            ; preds = %traverse_loop
  %5 = load %list_node*, %list_node** %0, align 8
  %temp5 = getelementptr inbounds %list_node, %list_node* %5, i32 0, i32 0
  %retval = load i8*, i8** %temp5, align 8
  %li_conv = bitcast i8* %retval to i32*
  %val_ptr = load i32, i32* %li_conv, align 4
  store i32 %val_ptr, i32* %a, align 4
  %a6 = load i32, i32* %a, align 4
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.6, i32 0, i32 0), i32 %a6)
  %s = alloca i8*, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3, i32 0, i32 0), i8** %s, align 8
  %list7 = load %list_node*, %list_node** @l4, align 8
  %malloccall8 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %6 = bitcast i8* %malloccall8 to %list_node**
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %7 = bitcast i8* %malloccall9 to i32*
  store %list_node* %list7, %list_node** %6, align 8
  store i32 0, i32* %7, align 4
  br label %traverse_loop10

traverse_loop10:                                  ; preds = %while_body11, %merge
  %8 = load i32, i32* %7, align 4
  %temp15 = icmp ne i32 %8, 0
  br i1 %temp15, label %while_body11, label %merge16

while_body11:                                     ; preds = %traverse_loop10
  %9 = load %list_node*, %list_node** %6, align 8
  %temp12 = getelementptr inbounds %list_node, %list_node* %9, i32 0, i32 1
  %temp13 = load %list_node*, %list_node** %temp12, align 8
  %10 = load i32, i32* %7, align 4
  %subtract14 = sub i32 %10, 1
  store i32 %subtract14, i32* %7, align 4
  store %list_node* %temp13, %list_node** %6, align 8
  br label %traverse_loop10

merge16:                                          ; preds = %traverse_loop10
  %11 = load %list_node*, %list_node** %6, align 8
  %temp17 = getelementptr inbounds %list_node, %list_node* %11, i32 0, i32 0
  %retval18 = load i8*, i8** %temp17, align 8
  %li_conv19 = bitcast i8* %retval18 to i8**
  %val_ptr20 = load i8*, i8** %li_conv19, align 8
  store i8* %val_ptr20, i8** %s, align 8
  %s21 = load i8*, i8** %s, align 8
  %printf22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.7, i32 0, i32 0), i8* %s21)
  %list23 = load %list_node*, %list_node** @l3, align 8
  %malloccall24 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %12 = bitcast i8* %malloccall24 to %list_node**
  %malloccall25 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %13 = bitcast i8* %malloccall25 to i32*
  store %list_node* %list23, %list_node** %12, align 8
  store i32 5, i32* %13, align 4
  br label %traverse_loop26

traverse_loop26:                                  ; preds = %while_body27, %merge16
  %14 = load i32, i32* %13, align 4
  %temp31 = icmp ne i32 %14, 0
  br i1 %temp31, label %while_body27, label %merge32

while_body27:                                     ; preds = %traverse_loop26
  %15 = load %list_node*, %list_node** %12, align 8
  %temp28 = getelementptr inbounds %list_node, %list_node* %15, i32 0, i32 1
  %temp29 = load %list_node*, %list_node** %temp28, align 8
  %16 = load i32, i32* %13, align 4
  %subtract30 = sub i32 %16, 1
  store i32 %subtract30, i32* %13, align 4
  store %list_node* %temp29, %list_node** %12, align 8
  br label %traverse_loop26

merge32:                                          ; preds = %traverse_loop26
  %17 = load %list_node*, %list_node** %12, align 8
  %temp33 = getelementptr inbounds %list_node, %list_node* %17, i32 0, i32 0
  %retval34 = load i8*, i8** %temp33, align 8
  %li_conv35 = bitcast i8* %retval34 to i1*
  %val_ptr36 = load i1, i1* %li_conv35, align 1
  %b = alloca i1, align 1
  store i1 %val_ptr36, i1* %b, align 1
  %b37 = load i1, i1* %b, align 1
  %printf38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.8, i32 0, i32 0), i1 %b37)
  ret void
}

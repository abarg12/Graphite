; ModuleID = 'Graphite'
source_filename = "Graphite"

%list_node = type { i8*, %list_node* }
%node_struct = type { i8*, i1, i8* }

@0 = private unnamed_addr constant [5 x i8] c"four\00", align 1
@l = global %list_node* null
@s = global i8* null
@fmt = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@i = global i32 0
@fmt.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@1 = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@s2 = global i8* null
@fmt.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

declare i32 @printf(i8*, ...)

declare i32 @strcmp(i8*, i8*)

declare i8* @array_get(i8*, i32, ...)

declare i8* @array_set(i8*, i32, i8*, ...)

declare i8* @array_len(i8*, ...)

declare i8 @nodeExists(%node_struct*, ...)

declare i8* @array_add(i8*, i32, i8*, ...)

declare i8* @array_del(i8*, i32, ...)

define i32 @main() {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %new_list = bitcast i8* %malloccall to %list_node**
  store %list_node* null, %list_node** %new_list, align 8
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
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32))
  %arr_val4 = bitcast i8* %malloccall3 to double*
  store double 2.200000e+00, double* %arr_val4, align 8
  %i8ptr5 = bitcast double* %arr_val4 to i8*
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p7 = bitcast i8* %malloccall6 to %list_node*
  %valloc8 = getelementptr inbounds %list_node, %list_node* %node_p7, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p7, align 8
  store i8* %i8ptr5, i8** %valloc8, align 8
  %temp = getelementptr inbounds %list_node, %list_node* %node_p, i32 0, i32 1
  store %list_node* %node_p7, %list_node** %temp, align 8
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32))
  %arr_val10 = bitcast i8* %malloccall9 to i1*
  store i1 true, i1* %arr_val10, align 1
  %i8ptr11 = bitcast i1* %arr_val10 to i8*
  %malloccall12 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p13 = bitcast i8* %malloccall12 to %list_node*
  %valloc14 = getelementptr inbounds %list_node, %list_node* %node_p13, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p13, align 8
  store i8* %i8ptr11, i8** %valloc14, align 8
  %temp15 = getelementptr inbounds %list_node, %list_node* %node_p7, i32 0, i32 1
  store %list_node* %node_p13, %list_node** %temp15, align 8
  %malloccall16 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %arr_val17 = bitcast i8* %malloccall16 to i8**
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @0, i32 0, i32 0), i8** %arr_val17, align 8
  %i8ptr18 = bitcast i8** %arr_val17 to i8*
  %malloccall19 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p20 = bitcast i8* %malloccall19 to %list_node*
  %valloc21 = getelementptr inbounds %list_node, %list_node* %node_p20, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p20, align 8
  store i8* %i8ptr18, i8** %valloc21, align 8
  %temp22 = getelementptr inbounds %list_node, %list_node* %node_p13, i32 0, i32 1
  store %list_node* %node_p20, %list_node** %temp22, align 8
  %temp23 = load %list_node*, %list_node** %new_list, align 8
  store %list_node* %temp23, %list_node** @l, align 8
  %list = load %list_node*, %list_node** @l, align 8
  %malloccall24 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %0 = bitcast i8* %malloccall24 to %list_node**
  %malloccall25 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %malloccall25 to i32*
  store %list_node* %list, %list_node** %0, align 8
  store i32 3, i32* %1, align 4
  br label %traverse_loop

traverse_loop:                                    ; preds = %while_body, %entry
  %2 = load i32, i32* %1, align 4
  %temp28 = icmp ne i32 %2, 0
  br i1 %temp28, label %while_body, label %merge

while_body:                                       ; preds = %traverse_loop
  %3 = load %list_node*, %list_node** %0, align 8
  %temp26 = getelementptr inbounds %list_node, %list_node* %3, i32 0, i32 1
  %temp27 = load %list_node*, %list_node** %temp26, align 8
  %4 = load i32, i32* %1, align 4
  %subtract = sub i32 %4, 1
  store i32 %subtract, i32* %1, align 4
  store %list_node* %temp27, %list_node** %0, align 8
  br label %traverse_loop

merge:                                            ; preds = %traverse_loop
  %5 = load %list_node*, %list_node** %0, align 8
  %temp29 = getelementptr inbounds %list_node, %list_node* %5, i32 0, i32 0
  %retval = load i8*, i8** %temp29, align 8
  %li_conv = bitcast i8* %retval to i8**
  %val_ptr = load i8*, i8** %li_conv, align 8
  store i8* %val_ptr, i8** @s, align 8
  %s = load i8*, i8** @s, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i8* %s)
  %list30 = load %list_node*, %list_node** @l, align 8
  %malloccall31 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %6 = bitcast i8* %malloccall31 to %list_node**
  %malloccall32 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %7 = bitcast i8* %malloccall32 to i32*
  store i32 0, i32* %7, align 4
  store %list_node* %list30, %list_node** %6, align 8
  br i1 false, label %then, label %else

merge33:                                          ; preds = %merge55, %then
  %list57 = load %list_node*, %list_node** @l, align 8
  %malloccall58 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %8 = bitcast i8* %malloccall58 to %list_node**
  %malloccall59 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %9 = bitcast i8* %malloccall59 to i32*
  store i32 0, i32* %9, align 4
  store %list_node* %list57, %list_node** %8, align 8
  %10 = icmp eq %list_node* %list57, null
  br i1 %10, label %then61, label %else62

then:                                             ; preds = %merge
  %11 = load %list_node*, %list_node** %6, align 8
  %temp34 = getelementptr inbounds %list_node, %list_node* %11, i32 0, i32 1
  %12 = load %list_node*, %list_node** %temp34, align 8
  store %list_node* %12, %list_node** @l, align 8
  br label %merge33

else:                                             ; preds = %merge
  %malloccall35 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %13 = bitcast i8* %malloccall35 to i32*
  store i32 1, i32* %13, align 4
  %malloccall36 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %14 = bitcast i8* %malloccall36 to i32*
  store i32 3, i32* %14, align 4
  %15 = load i32, i32* %13, align 4
  %malloccall37 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %16 = bitcast i8* %malloccall37 to %list_node**
  %malloccall38 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %17 = bitcast i8* %malloccall38 to i32*
  store %list_node* %list30, %list_node** %16, align 8
  store i32 %15, i32* %17, align 4
  br label %traverse_loop39

traverse_loop39:                                  ; preds = %while_body40, %else
  %18 = load i32, i32* %17, align 4
  %temp44 = icmp ne i32 %18, 0
  br i1 %temp44, label %while_body40, label %merge45

while_body40:                                     ; preds = %traverse_loop39
  %19 = load %list_node*, %list_node** %16, align 8
  %temp41 = getelementptr inbounds %list_node, %list_node* %19, i32 0, i32 1
  %temp42 = load %list_node*, %list_node** %temp41, align 8
  %20 = load i32, i32* %17, align 4
  %subtract43 = sub i32 %20, 1
  store i32 %subtract43, i32* %17, align 4
  store %list_node* %temp42, %list_node** %16, align 8
  br label %traverse_loop39

merge45:                                          ; preds = %traverse_loop39
  %21 = load %list_node*, %list_node** %16, align 8
  %temp46 = getelementptr inbounds %list_node, %list_node* %21, i32 0, i32 1
  %22 = load i32, i32* %14, align 4
  %malloccall47 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %23 = bitcast i8* %malloccall47 to %list_node**
  %malloccall48 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %24 = bitcast i8* %malloccall48 to i32*
  store %list_node* %list30, %list_node** %23, align 8
  store i32 %22, i32* %24, align 4
  br label %traverse_loop49

traverse_loop49:                                  ; preds = %while_body50, %merge45
  %25 = load i32, i32* %24, align 4
  %temp54 = icmp ne i32 %25, 0
  br i1 %temp54, label %while_body50, label %merge55

while_body50:                                     ; preds = %traverse_loop49
  %26 = load %list_node*, %list_node** %23, align 8
  %temp51 = getelementptr inbounds %list_node, %list_node* %26, i32 0, i32 1
  %temp52 = load %list_node*, %list_node** %temp51, align 8
  %27 = load i32, i32* %24, align 4
  %subtract53 = sub i32 %27, 1
  store i32 %subtract53, i32* %24, align 4
  store %list_node* %temp52, %list_node** %23, align 8
  br label %traverse_loop49

merge55:                                          ; preds = %traverse_loop49
  %28 = load %list_node*, %list_node** %23, align 8
  %temp56 = getelementptr inbounds %list_node, %list_node* %28, i32 0, i32 1
  %29 = load %list_node*, %list_node** %temp56, align 8
  store %list_node* %29, %list_node** %temp46, align 8
  br label %merge33

merge60:                                          ; preds = %merge67, %then61
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* @i, align 4
  %i = load i32, i32* @i, align 4
  %printf68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.1, i32 0, i32 0), i32 %i)
  %list69 = load %list_node*, %list_node** @l, align 8
  %malloccall70 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %31 = bitcast i8* %malloccall70 to %list_node**
  %malloccall71 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %32 = bitcast i8* %malloccall71 to i32*
  store i32 0, i32* %32, align 4
  store %list_node* %list69, %list_node** %31, align 8
  br i1 true, label %then73, label %else75

then61:                                           ; preds = %merge33
  store i32 0, i32* %9, align 4
  br label %merge60

else62:                                           ; preds = %merge33
  br label %traverse_loop63

traverse_loop63:                                  ; preds = %while_body64, %else62
  %33 = load %list_node*, %list_node** %8, align 8
  %34 = icmp ne %list_node* %33, null
  br i1 %34, label %while_body64, label %merge67

while_body64:                                     ; preds = %traverse_loop63
  %35 = load %list_node*, %list_node** %8, align 8
  %temp65 = getelementptr inbounds %list_node, %list_node* %35, i32 0, i32 1
  %temp66 = load %list_node*, %list_node** %temp65, align 8
  %36 = load i32, i32* %9, align 4
  %add = add i32 %36, 1
  store i32 %add, i32* %9, align 4
  store %list_node* %temp66, %list_node** %8, align 8
  br label %traverse_loop63

merge67:                                          ; preds = %traverse_loop63
  br label %merge60

merge72:                                          ; preds = %merge96, %then73
  %list98 = load %list_node*, %list_node** @l, align 8
  %malloccall99 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %37 = bitcast i8* %malloccall99 to %list_node**
  %malloccall100 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %38 = bitcast i8* %malloccall100 to i32*
  store i32 0, i32* %38, align 4
  store %list_node* %list98, %list_node** %37, align 8
  %39 = icmp eq %list_node* %list98, null
  br i1 %39, label %then102, label %else103

then73:                                           ; preds = %merge60
  %40 = load %list_node*, %list_node** %31, align 8
  %temp74 = getelementptr inbounds %list_node, %list_node* %40, i32 0, i32 1
  %41 = load %list_node*, %list_node** %temp74, align 8
  store %list_node* %41, %list_node** @l, align 8
  br label %merge72

else75:                                           ; preds = %merge60
  %malloccall76 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %42 = bitcast i8* %malloccall76 to i32*
  store i32 -1, i32* %42, align 4
  %malloccall77 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %43 = bitcast i8* %malloccall77 to i32*
  store i32 1, i32* %43, align 4
  %44 = load i32, i32* %42, align 4
  %malloccall78 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %45 = bitcast i8* %malloccall78 to %list_node**
  %malloccall79 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %46 = bitcast i8* %malloccall79 to i32*
  store %list_node* %list69, %list_node** %45, align 8
  store i32 %44, i32* %46, align 4
  br label %traverse_loop80

traverse_loop80:                                  ; preds = %while_body81, %else75
  %47 = load i32, i32* %46, align 4
  %temp85 = icmp ne i32 %47, 0
  br i1 %temp85, label %while_body81, label %merge86

while_body81:                                     ; preds = %traverse_loop80
  %48 = load %list_node*, %list_node** %45, align 8
  %temp82 = getelementptr inbounds %list_node, %list_node* %48, i32 0, i32 1
  %temp83 = load %list_node*, %list_node** %temp82, align 8
  %49 = load i32, i32* %46, align 4
  %subtract84 = sub i32 %49, 1
  store i32 %subtract84, i32* %46, align 4
  store %list_node* %temp83, %list_node** %45, align 8
  br label %traverse_loop80

merge86:                                          ; preds = %traverse_loop80
  %50 = load %list_node*, %list_node** %45, align 8
  %temp87 = getelementptr inbounds %list_node, %list_node* %50, i32 0, i32 1
  %51 = load i32, i32* %43, align 4
  %malloccall88 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %52 = bitcast i8* %malloccall88 to %list_node**
  %malloccall89 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %53 = bitcast i8* %malloccall89 to i32*
  store %list_node* %list69, %list_node** %52, align 8
  store i32 %51, i32* %53, align 4
  br label %traverse_loop90

traverse_loop90:                                  ; preds = %while_body91, %merge86
  %54 = load i32, i32* %53, align 4
  %temp95 = icmp ne i32 %54, 0
  br i1 %temp95, label %while_body91, label %merge96

while_body91:                                     ; preds = %traverse_loop90
  %55 = load %list_node*, %list_node** %52, align 8
  %temp92 = getelementptr inbounds %list_node, %list_node* %55, i32 0, i32 1
  %temp93 = load %list_node*, %list_node** %temp92, align 8
  %56 = load i32, i32* %53, align 4
  %subtract94 = sub i32 %56, 1
  store i32 %subtract94, i32* %53, align 4
  store %list_node* %temp93, %list_node** %52, align 8
  br label %traverse_loop90

merge96:                                          ; preds = %traverse_loop90
  %57 = load %list_node*, %list_node** %52, align 8
  %temp97 = getelementptr inbounds %list_node, %list_node* %57, i32 0, i32 1
  %58 = load %list_node*, %list_node** %temp97, align 8
  store %list_node* %58, %list_node** %temp87, align 8
  br label %merge72

merge101:                                         ; preds = %merge109, %then102
  %59 = load i32, i32* %38, align 4
  store i32 %59, i32* @i, align 4
  %i110 = load i32, i32* @i, align 4
  %printf111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.2, i32 0, i32 0), i32 %i110)
  %malloccall112 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %arr_val113 = bitcast i8* %malloccall112 to i8**
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1, i32 0, i32 0), i8** %arr_val113, align 8
  %i8ptr114 = bitcast i8** %arr_val113 to i8*
  %malloccall115 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p116 = bitcast i8* %malloccall115 to %list_node*
  %valloc117 = getelementptr inbounds %list_node, %list_node* %node_p116, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p116, align 8
  store i8* %i8ptr114, i8** %valloc117, align 8
  %list118 = load %list_node*, %list_node** @l, align 8
  %malloccall119 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %60 = bitcast i8* %malloccall119 to i32*
  store i32 0, i32* %60, align 4
  br i1 false, label %then121, label %else122

then102:                                          ; preds = %merge72
  store i32 0, i32* %38, align 4
  br label %merge101

else103:                                          ; preds = %merge72
  br label %traverse_loop104

traverse_loop104:                                 ; preds = %while_body105, %else103
  %61 = load %list_node*, %list_node** %37, align 8
  %62 = icmp ne %list_node* %61, null
  br i1 %62, label %while_body105, label %merge109

while_body105:                                    ; preds = %traverse_loop104
  %63 = load %list_node*, %list_node** %37, align 8
  %temp106 = getelementptr inbounds %list_node, %list_node* %63, i32 0, i32 1
  %temp107 = load %list_node*, %list_node** %temp106, align 8
  %64 = load i32, i32* %38, align 4
  %add108 = add i32 %64, 1
  store i32 %add108, i32* %38, align 4
  store %list_node* %temp107, %list_node** %37, align 8
  br label %traverse_loop104

merge109:                                         ; preds = %traverse_loop104
  br label %merge101

merge120:                                         ; preds = %merge141, %then121
  %list143 = load %list_node*, %list_node** @l, align 8
  %malloccall144 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %65 = bitcast i8* %malloccall144 to %list_node**
  %malloccall145 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %66 = bitcast i8* %malloccall145 to i32*
  store %list_node* %list143, %list_node** %65, align 8
  store i32 1, i32* %66, align 4
  br label %traverse_loop146

then121:                                          ; preds = %merge101
  %67 = getelementptr inbounds %list_node, %list_node* %node_p116, i32 0, i32 1
  store %list_node* %list118, %list_node** %67, align 8
  store %list_node* %node_p116, %list_node** @l, align 8
  br label %merge120

else122:                                          ; preds = %merge101
  %68 = load i32, i32* %60, align 4
  %malloccall123 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %69 = bitcast i8* %malloccall123 to %list_node**
  %malloccall124 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %70 = bitcast i8* %malloccall124 to i32*
  store %list_node* %list118, %list_node** %69, align 8
  store i32 %68, i32* %70, align 4
  br label %traverse_loop125

traverse_loop125:                                 ; preds = %while_body126, %else122
  %71 = load i32, i32* %70, align 4
  %temp130 = icmp ne i32 %71, 0
  br i1 %temp130, label %while_body126, label %merge131

while_body126:                                    ; preds = %traverse_loop125
  %72 = load %list_node*, %list_node** %69, align 8
  %temp127 = getelementptr inbounds %list_node, %list_node* %72, i32 0, i32 1
  %temp128 = load %list_node*, %list_node** %temp127, align 8
  %73 = load i32, i32* %70, align 4
  %subtract129 = sub i32 %73, 1
  store i32 %subtract129, i32* %70, align 4
  store %list_node* %temp128, %list_node** %69, align 8
  br label %traverse_loop125

merge131:                                         ; preds = %traverse_loop125
  %74 = load %list_node*, %list_node** %69, align 8
  %temp132 = getelementptr inbounds %list_node, %list_node* %74, i32 0, i32 1
  store %list_node* %node_p116, %list_node** %temp132, align 8
  %malloccall133 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %75 = bitcast i8* %malloccall133 to %list_node**
  %malloccall134 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %76 = bitcast i8* %malloccall134 to i32*
  store %list_node* %list118, %list_node** %75, align 8
  store i32 1, i32* %76, align 4
  br label %traverse_loop135

traverse_loop135:                                 ; preds = %while_body136, %merge131
  %77 = load i32, i32* %76, align 4
  %temp140 = icmp ne i32 %77, 0
  br i1 %temp140, label %while_body136, label %merge141

while_body136:                                    ; preds = %traverse_loop135
  %78 = load %list_node*, %list_node** %75, align 8
  %temp137 = getelementptr inbounds %list_node, %list_node* %78, i32 0, i32 1
  %temp138 = load %list_node*, %list_node** %temp137, align 8
  %79 = load i32, i32* %76, align 4
  %subtract139 = sub i32 %79, 1
  store i32 %subtract139, i32* %76, align 4
  store %list_node* %temp138, %list_node** %75, align 8
  br label %traverse_loop135

merge141:                                         ; preds = %traverse_loop135
  %80 = load %list_node*, %list_node** %75, align 8
  %temp142 = getelementptr inbounds %list_node, %list_node* %node_p116, i32 0, i32 1
  store %list_node* %80, %list_node** %temp142, align 8
  br label %merge120

traverse_loop146:                                 ; preds = %while_body147, %merge120
  %81 = load i32, i32* %66, align 4
  %temp151 = icmp ne i32 %81, 0
  br i1 %temp151, label %while_body147, label %merge152

while_body147:                                    ; preds = %traverse_loop146
  %82 = load %list_node*, %list_node** %65, align 8
  %temp148 = getelementptr inbounds %list_node, %list_node* %82, i32 0, i32 1
  %temp149 = load %list_node*, %list_node** %temp148, align 8
  %83 = load i32, i32* %66, align 4
  %subtract150 = sub i32 %83, 1
  store i32 %subtract150, i32* %66, align 4
  store %list_node* %temp149, %list_node** %65, align 8
  br label %traverse_loop146

merge152:                                         ; preds = %traverse_loop146
  %84 = load %list_node*, %list_node** %65, align 8
  %temp153 = getelementptr inbounds %list_node, %list_node* %84, i32 0, i32 0
  %retval154 = load i8*, i8** %temp153, align 8
  %li_conv155 = bitcast i8* %retval154 to i8**
  %val_ptr156 = load i8*, i8** %li_conv155, align 8
  store i8* %val_ptr156, i8** @s2, align 8
  %s2 = load i8*, i8** @s2, align 8
  %printf157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.3, i32 0, i32 0), i8* %s2)
  ret i32 0
}

declare noalias i8* @malloc(i32)

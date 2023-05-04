; ModuleID = 'Graphite'
source_filename = "Graphite"

%list_node = type { i8*, %list_node* }

@l = global %list_node* null
@0 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@1 = private unnamed_addr constant [6 x i8] c"three\00", align 1
@l2 = global %list_node* null
@j = global i32 0
@2 = private unnamed_addr constant [12 x i8] c"sillystring\00", align 1
@s = global i8* null
@fmt = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@f = global double 0.000000e+00
@fmt.1 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@3 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@s2 = global i1 false
@fmt.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @printf(i8*, ...)

declare i8* @array_get(i8*, i32, ...)

declare i8* @array_set(i8*, i32, i8*, ...)

declare i8* @array_add(i8*, i32, i8*, ...)

define i32 @main() {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %new_list = bitcast i8* %malloccall to %list_node**
  %temp = load %list_node*, %list_node** %new_list, align 8
  store %list_node* %temp, %list_node** @l, align 8
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %new_list2 = bitcast i8* %malloccall1 to %list_node**
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %arr_val = bitcast i8* %malloccall3 to i8**
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @0, i32 0, i32 0), i8** %arr_val, align 8
  %i8ptr = bitcast i8** %arr_val to i8*
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p = bitcast i8* %malloccall4 to %list_node*
  %valloc = getelementptr inbounds %list_node, %list_node* %node_p, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p, align 8
  store i8* %i8ptr, i8** %valloc, align 8
  store %list_node* %node_p, %list_node** %new_list2, align 8
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val6 = bitcast i8* %malloccall5 to i32*
  store i32 1, i32* %arr_val6, align 4
  %i8ptr7 = bitcast i32* %arr_val6 to i8*
  %malloccall8 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p9 = bitcast i8* %malloccall8 to %list_node*
  %valloc10 = getelementptr inbounds %list_node, %list_node* %node_p9, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p9, align 8
  store i8* %i8ptr7, i8** %valloc10, align 8
  %temp11 = getelementptr inbounds %list_node, %list_node* %node_p, i32 0, i32 1
  store %list_node* %node_p9, %list_node** %temp11, align 8
  %malloccall12 = tail call i8* @malloc(i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32))
  %arr_val13 = bitcast i8* %malloccall12 to double*
  store double 2.200000e+00, double* %arr_val13, align 8
  %i8ptr14 = bitcast double* %arr_val13 to i8*
  %malloccall15 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p16 = bitcast i8* %malloccall15 to %list_node*
  %valloc17 = getelementptr inbounds %list_node, %list_node* %node_p16, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p16, align 8
  store i8* %i8ptr14, i8** %valloc17, align 8
  %temp18 = getelementptr inbounds %list_node, %list_node* %node_p9, i32 0, i32 1
  store %list_node* %node_p16, %list_node** %temp18, align 8
  %malloccall19 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %arr_val20 = bitcast i8* %malloccall19 to i8**
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1, i32 0, i32 0), i8** %arr_val20, align 8
  %i8ptr21 = bitcast i8** %arr_val20 to i8*
  %malloccall22 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p23 = bitcast i8* %malloccall22 to %list_node*
  %valloc24 = getelementptr inbounds %list_node, %list_node* %node_p23, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p23, align 8
  store i8* %i8ptr21, i8** %valloc24, align 8
  %temp25 = getelementptr inbounds %list_node, %list_node* %node_p16, i32 0, i32 1
  store %list_node* %node_p23, %list_node** %temp25, align 8
  %malloccall26 = tail call i8* @malloc(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32))
  %arr_val27 = bitcast i8* %malloccall26 to i1*
  store i1 false, i1* %arr_val27, align 1
  %i8ptr28 = bitcast i1* %arr_val27 to i8*
  %malloccall29 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p30 = bitcast i8* %malloccall29 to %list_node*
  %valloc31 = getelementptr inbounds %list_node, %list_node* %node_p30, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p30, align 8
  store i8* %i8ptr28, i8** %valloc31, align 8
  %temp32 = getelementptr inbounds %list_node, %list_node* %node_p23, i32 0, i32 1
  store %list_node* %node_p30, %list_node** %temp32, align 8
  %temp33 = load %list_node*, %list_node** %new_list2, align 8
  store %list_node* %temp33, %list_node** @l2, align 8
  store i32 3, i32* @j, align 4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8** @s, align 8
  %list = load %list_node*, %list_node** @l2, align 8
  %j = load i32, i32* @j, align 4
  %malloccall34 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %0 = bitcast i8* %malloccall34 to %list_node**
  %malloccall35 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %malloccall35 to i32*
  store %list_node* %list, %list_node** %0, align 8
  store i32 %j, i32* %1, align 4
  br label %traverse_loop

traverse_loop:                                    ; preds = %while_body, %entry
  %2 = load i32, i32* %1, align 4
  %temp38 = icmp ne i32 %2, 0
  br i1 %temp38, label %while_body, label %merge

while_body:                                       ; preds = %traverse_loop
  %3 = load %list_node*, %list_node** %0, align 8
  %temp36 = getelementptr inbounds %list_node, %list_node* %3, i32 0, i32 1
  %temp37 = load %list_node*, %list_node** %temp36, align 8
  %4 = load i32, i32* %1, align 4
  %subtract = sub i32 %4, 1
  store i32 %subtract, i32* %1, align 4
  store %list_node* %temp37, %list_node** %0, align 8
  br label %traverse_loop

merge:                                            ; preds = %traverse_loop
  %5 = load %list_node*, %list_node** %0, align 8
  %temp39 = getelementptr inbounds %list_node, %list_node* %5, i32 0, i32 0
  %retval = load i8*, i8** %temp39, align 8
  %li_conv = bitcast i8* %retval to i8**
  %val_ptr = load i8*, i8** %li_conv, align 8
  store i8* %val_ptr, i8** @s, align 8
  %s = load i8*, i8** @s, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i8* %s)
  %list40 = load %list_node*, %list_node** @l2, align 8
  %malloccall41 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %6 = bitcast i8* %malloccall41 to %list_node**
  %malloccall42 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %7 = bitcast i8* %malloccall42 to i32*
  store %list_node* %list40, %list_node** %6, align 8
  store i32 2, i32* %7, align 4
  br label %traverse_loop43

traverse_loop43:                                  ; preds = %while_body44, %merge
  %8 = load i32, i32* %7, align 4
  %temp48 = icmp ne i32 %8, 0
  br i1 %temp48, label %while_body44, label %merge49

while_body44:                                     ; preds = %traverse_loop43
  %9 = load %list_node*, %list_node** %6, align 8
  %temp45 = getelementptr inbounds %list_node, %list_node* %9, i32 0, i32 1
  %temp46 = load %list_node*, %list_node** %temp45, align 8
  %10 = load i32, i32* %7, align 4
  %subtract47 = sub i32 %10, 1
  store i32 %subtract47, i32* %7, align 4
  store %list_node* %temp46, %list_node** %6, align 8
  br label %traverse_loop43

merge49:                                          ; preds = %traverse_loop43
  %11 = load %list_node*, %list_node** %6, align 8
  %temp50 = getelementptr inbounds %list_node, %list_node* %11, i32 0, i32 0
  %retval51 = load i8*, i8** %temp50, align 8
  %li_conv52 = bitcast i8* %retval51 to double*
  %val_ptr53 = load double, double* %li_conv52, align 8
  store double %val_ptr53, double* @f, align 8
  %f = load double, double* @f, align 8
  %printf54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.1, i32 0, i32 0), double %f)
  %malloccall55 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %arr_val56 = bitcast i8* %malloccall55 to i8**
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3, i32 0, i32 0), i8** %arr_val56, align 8
  %i8ptr57 = bitcast i8** %arr_val56 to i8*
  %list58 = load %list_node*, %list_node** @l2, align 8
  %malloccall59 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %12 = bitcast i8* %malloccall59 to %list_node**
  %malloccall60 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %13 = bitcast i8* %malloccall60 to i32*
  store %list_node* %list58, %list_node** %12, align 8
  store i32 2, i32* %13, align 4
  br label %traverse_loop61

traverse_loop61:                                  ; preds = %while_body62, %merge49
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
  store i8* %i8ptr57, i8** %temp68, align 8
  %list69 = load %list_node*, %list_node** @l2, align 8
  %malloccall70 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %18 = bitcast i8* %malloccall70 to %list_node**
  %malloccall71 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %19 = bitcast i8* %malloccall71 to i32*
  store %list_node* %list69, %list_node** %18, align 8
  store i32 4, i32* %19, align 4
  br label %traverse_loop72

traverse_loop72:                                  ; preds = %while_body73, %merge67
  %20 = load i32, i32* %19, align 4
  %temp77 = icmp ne i32 %20, 0
  br i1 %temp77, label %while_body73, label %merge78

while_body73:                                     ; preds = %traverse_loop72
  %21 = load %list_node*, %list_node** %18, align 8
  %temp74 = getelementptr inbounds %list_node, %list_node* %21, i32 0, i32 1
  %temp75 = load %list_node*, %list_node** %temp74, align 8
  %22 = load i32, i32* %19, align 4
  %subtract76 = sub i32 %22, 1
  store i32 %subtract76, i32* %19, align 4
  store %list_node* %temp75, %list_node** %18, align 8
  br label %traverse_loop72

merge78:                                          ; preds = %traverse_loop72
  %23 = load %list_node*, %list_node** %18, align 8
  %temp79 = getelementptr inbounds %list_node, %list_node* %23, i32 0, i32 0
  %retval80 = load i8*, i8** %temp79, align 8
  %li_conv81 = bitcast i8* %retval80 to i1*
  %val_ptr82 = load i1, i1* %li_conv81, align 1
  store i1 %val_ptr82, i1* @s2, align 1
  %s2 = load i1, i1* @s2, align 1
  %printf83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.2, i32 0, i32 0), i1 %s2)
  ret i32 0
}

declare noalias i8* @malloc(i32)

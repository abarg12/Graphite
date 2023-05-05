; ModuleID = 'Graphite'
source_filename = "Graphite"

%list_node = type { i8*, %list_node* }
%node_struct = type { i8*, i1, i8* }

@l = global %list_node* null
@0 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@1 = private unnamed_addr constant [6 x i8] c"three\00", align 1
@l2 = global %list_node* null
@i = global i32 0
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@2 = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@s = global i8* null
@fmt.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@3 = private unnamed_addr constant [5 x i8] c"0ind\00", align 1
@s2 = global i8* null
@fmt.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@4 = private unnamed_addr constant [19 x i8] c"newnodejustdropped\00", align 1
@fmt.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

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
  %list = load %list_node*, %list_node** @l2, align 8
  %malloccall34 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %0 = bitcast i8* %malloccall34 to %list_node**
  %malloccall35 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %malloccall35 to i32*
  store %list_node* %list, %list_node** %0, align 8
  store i32 1, i32* %1, align 4
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
  %li_conv = bitcast i8* %retval to i32*
  %val_ptr = load i32, i32* %li_conv, align 4
  store i32 %val_ptr, i32* @i, align 4
  %i = load i32, i32* @i, align 4
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %i)
  %malloccall40 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %arr_val41 = bitcast i8* %malloccall40 to i8**
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @2, i32 0, i32 0), i8** %arr_val41, align 8
  %i8ptr42 = bitcast i8** %arr_val41 to i8*
  %malloccall43 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p44 = bitcast i8* %malloccall43 to %list_node*
  %valloc45 = getelementptr inbounds %list_node, %list_node* %node_p44, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p44, align 8
  store i8* %i8ptr42, i8** %valloc45, align 8
  %list46 = load %list_node*, %list_node** @l2, align 8
  %malloccall47 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %6 = bitcast i8* %malloccall47 to i32*
  store i32 0, i32* %6, align 4
  br i1 false, label %then, label %else

merge48:                                          ; preds = %merge67, %then
  %list69 = load %list_node*, %list_node** @l2, align 8
  %malloccall70 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %7 = bitcast i8* %malloccall70 to %list_node**
  %malloccall71 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %8 = bitcast i8* %malloccall71 to i32*
  store %list_node* %list69, %list_node** %7, align 8
  store i32 1, i32* %8, align 4
  br label %traverse_loop72

then:                                             ; preds = %merge
  %9 = getelementptr inbounds %list_node, %list_node* %node_p44, i32 0, i32 1
  store %list_node* %list46, %list_node** %9, align 8
  store %list_node* %node_p44, %list_node** @l2, align 8
  br label %merge48

else:                                             ; preds = %merge
  %10 = load i32, i32* %6, align 4
  %malloccall49 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %11 = bitcast i8* %malloccall49 to %list_node**
  %malloccall50 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %12 = bitcast i8* %malloccall50 to i32*
  store %list_node* %list46, %list_node** %11, align 8
  store i32 %10, i32* %12, align 4
  br label %traverse_loop51

traverse_loop51:                                  ; preds = %while_body52, %else
  %13 = load i32, i32* %12, align 4
  %temp56 = icmp ne i32 %13, 0
  br i1 %temp56, label %while_body52, label %merge57

while_body52:                                     ; preds = %traverse_loop51
  %14 = load %list_node*, %list_node** %11, align 8
  %temp53 = getelementptr inbounds %list_node, %list_node* %14, i32 0, i32 1
  %temp54 = load %list_node*, %list_node** %temp53, align 8
  %15 = load i32, i32* %12, align 4
  %subtract55 = sub i32 %15, 1
  store i32 %subtract55, i32* %12, align 4
  store %list_node* %temp54, %list_node** %11, align 8
  br label %traverse_loop51

merge57:                                          ; preds = %traverse_loop51
  %16 = load %list_node*, %list_node** %11, align 8
  %temp58 = getelementptr inbounds %list_node, %list_node* %16, i32 0, i32 1
  store %list_node* %node_p44, %list_node** %temp58, align 8
  %malloccall59 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %17 = bitcast i8* %malloccall59 to %list_node**
  %malloccall60 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %18 = bitcast i8* %malloccall60 to i32*
  store %list_node* %list46, %list_node** %17, align 8
  store i32 1, i32* %18, align 4
  br label %traverse_loop61

traverse_loop61:                                  ; preds = %while_body62, %merge57
  %19 = load i32, i32* %18, align 4
  %temp66 = icmp ne i32 %19, 0
  br i1 %temp66, label %while_body62, label %merge67

while_body62:                                     ; preds = %traverse_loop61
  %20 = load %list_node*, %list_node** %17, align 8
  %temp63 = getelementptr inbounds %list_node, %list_node* %20, i32 0, i32 1
  %temp64 = load %list_node*, %list_node** %temp63, align 8
  %21 = load i32, i32* %18, align 4
  %subtract65 = sub i32 %21, 1
  store i32 %subtract65, i32* %18, align 4
  store %list_node* %temp64, %list_node** %17, align 8
  br label %traverse_loop61

merge67:                                          ; preds = %traverse_loop61
  %22 = load %list_node*, %list_node** %17, align 8
  %temp68 = getelementptr inbounds %list_node, %list_node* %node_p44, i32 0, i32 1
  store %list_node* %22, %list_node** %temp68, align 8
  br label %merge48

traverse_loop72:                                  ; preds = %while_body73, %merge48
  %23 = load i32, i32* %8, align 4
  %temp77 = icmp ne i32 %23, 0
  br i1 %temp77, label %while_body73, label %merge78

while_body73:                                     ; preds = %traverse_loop72
  %24 = load %list_node*, %list_node** %7, align 8
  %temp74 = getelementptr inbounds %list_node, %list_node* %24, i32 0, i32 1
  %temp75 = load %list_node*, %list_node** %temp74, align 8
  %25 = load i32, i32* %8, align 4
  %subtract76 = sub i32 %25, 1
  store i32 %subtract76, i32* %8, align 4
  store %list_node* %temp75, %list_node** %7, align 8
  br label %traverse_loop72

merge78:                                          ; preds = %traverse_loop72
  %26 = load %list_node*, %list_node** %7, align 8
  %temp79 = getelementptr inbounds %list_node, %list_node* %26, i32 0, i32 0
  %retval80 = load i8*, i8** %temp79, align 8
  %li_conv81 = bitcast i8* %retval80 to i8**
  %val_ptr82 = load i8*, i8** %li_conv81, align 8
  store i8* %val_ptr82, i8** @s, align 8
  %s = load i8*, i8** @s, align 8
  %printf83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.1, i32 0, i32 0), i8* %s)
  %malloccall84 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %arr_val85 = bitcast i8* %malloccall84 to i8**
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3, i32 0, i32 0), i8** %arr_val85, align 8
  %i8ptr86 = bitcast i8** %arr_val85 to i8*
  %malloccall87 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p88 = bitcast i8* %malloccall87 to %list_node*
  %valloc89 = getelementptr inbounds %list_node, %list_node* %node_p88, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p88, align 8
  store i8* %i8ptr86, i8** %valloc89, align 8
  %list90 = load %list_node*, %list_node** @l, align 8
  %malloccall91 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %27 = bitcast i8* %malloccall91 to i32*
  store i32 -1, i32* %27, align 4
  br i1 true, label %then93, label %else94

merge92:                                          ; preds = %merge113, %then93
  %list115 = load %list_node*, %list_node** @l, align 8
  %malloccall116 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %28 = bitcast i8* %malloccall116 to %list_node**
  %malloccall117 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %29 = bitcast i8* %malloccall117 to i32*
  store %list_node* %list115, %list_node** %28, align 8
  store i32 0, i32* %29, align 4
  br label %traverse_loop118

then93:                                           ; preds = %merge78
  %30 = getelementptr inbounds %list_node, %list_node* %node_p88, i32 0, i32 1
  store %list_node* %list90, %list_node** %30, align 8
  store %list_node* %node_p88, %list_node** @l, align 8
  br label %merge92

else94:                                           ; preds = %merge78
  %31 = load i32, i32* %27, align 4
  %malloccall95 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %32 = bitcast i8* %malloccall95 to %list_node**
  %malloccall96 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %33 = bitcast i8* %malloccall96 to i32*
  store %list_node* %list90, %list_node** %32, align 8
  store i32 %31, i32* %33, align 4
  br label %traverse_loop97

traverse_loop97:                                  ; preds = %while_body98, %else94
  %34 = load i32, i32* %33, align 4
  %temp102 = icmp ne i32 %34, 0
  br i1 %temp102, label %while_body98, label %merge103

while_body98:                                     ; preds = %traverse_loop97
  %35 = load %list_node*, %list_node** %32, align 8
  %temp99 = getelementptr inbounds %list_node, %list_node* %35, i32 0, i32 1
  %temp100 = load %list_node*, %list_node** %temp99, align 8
  %36 = load i32, i32* %33, align 4
  %subtract101 = sub i32 %36, 1
  store i32 %subtract101, i32* %33, align 4
  store %list_node* %temp100, %list_node** %32, align 8
  br label %traverse_loop97

merge103:                                         ; preds = %traverse_loop97
  %37 = load %list_node*, %list_node** %32, align 8
  %temp104 = getelementptr inbounds %list_node, %list_node* %37, i32 0, i32 1
  store %list_node* %node_p88, %list_node** %temp104, align 8
  %malloccall105 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %38 = bitcast i8* %malloccall105 to %list_node**
  %malloccall106 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %39 = bitcast i8* %malloccall106 to i32*
  store %list_node* %list90, %list_node** %38, align 8
  store i32 0, i32* %39, align 4
  br label %traverse_loop107

traverse_loop107:                                 ; preds = %while_body108, %merge103
  %40 = load i32, i32* %39, align 4
  %temp112 = icmp ne i32 %40, 0
  br i1 %temp112, label %while_body108, label %merge113

while_body108:                                    ; preds = %traverse_loop107
  %41 = load %list_node*, %list_node** %38, align 8
  %temp109 = getelementptr inbounds %list_node, %list_node* %41, i32 0, i32 1
  %temp110 = load %list_node*, %list_node** %temp109, align 8
  %42 = load i32, i32* %39, align 4
  %subtract111 = sub i32 %42, 1
  store i32 %subtract111, i32* %39, align 4
  store %list_node* %temp110, %list_node** %38, align 8
  br label %traverse_loop107

merge113:                                         ; preds = %traverse_loop107
  %43 = load %list_node*, %list_node** %38, align 8
  %temp114 = getelementptr inbounds %list_node, %list_node* %node_p88, i32 0, i32 1
  store %list_node* %43, %list_node** %temp114, align 8
  br label %merge92

traverse_loop118:                                 ; preds = %while_body119, %merge92
  %44 = load i32, i32* %29, align 4
  %temp123 = icmp ne i32 %44, 0
  br i1 %temp123, label %while_body119, label %merge124

while_body119:                                    ; preds = %traverse_loop118
  %45 = load %list_node*, %list_node** %28, align 8
  %temp120 = getelementptr inbounds %list_node, %list_node* %45, i32 0, i32 1
  %temp121 = load %list_node*, %list_node** %temp120, align 8
  %46 = load i32, i32* %29, align 4
  %subtract122 = sub i32 %46, 1
  store i32 %subtract122, i32* %29, align 4
  store %list_node* %temp121, %list_node** %28, align 8
  br label %traverse_loop118

merge124:                                         ; preds = %traverse_loop118
  %47 = load %list_node*, %list_node** %28, align 8
  %temp125 = getelementptr inbounds %list_node, %list_node* %47, i32 0, i32 0
  %retval126 = load i8*, i8** %temp125, align 8
  %li_conv127 = bitcast i8* %retval126 to i8**
  %val_ptr128 = load i8*, i8** %li_conv127, align 8
  store i8* %val_ptr128, i8** @s2, align 8
  %s2 = load i8*, i8** @s2, align 8
  %printf129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.2, i32 0, i32 0), i8* %s2)
  %l = load %list_node*, %list_node** @l, align 8
  call void @add_to_empty(%list_node* %l)
  ret i32 0
}

declare noalias i8* @malloc(i32)

define void @add_to_empty(%list_node* %l11) {
entry:
  %l1 = alloca %list_node*, align 8
  store %list_node* %l11, %list_node** %l1, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %arr_val = bitcast i8* %malloccall to i8**
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8** %arr_val, align 8
  %i8ptr = bitcast i8** %arr_val to i8*
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p = bitcast i8* %malloccall2 to %list_node*
  %valloc = getelementptr inbounds %list_node, %list_node* %node_p, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p, align 8
  store i8* %i8ptr, i8** %valloc, align 8
  %list = load %list_node*, %list_node** %l1, align 8
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %0 = bitcast i8* %malloccall3 to i32*
  store i32 -1, i32* %0, align 4
  br i1 true, label %then, label %else

merge:                                            ; preds = %merge18, %then
  %list20 = load %list_node*, %list_node** %l1, align 8
  %malloccall21 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %1 = bitcast i8* %malloccall21 to %list_node**
  %malloccall22 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %2 = bitcast i8* %malloccall22 to i32*
  store %list_node* %list20, %list_node** %1, align 8
  store i32 0, i32* %2, align 4
  br label %traverse_loop23

then:                                             ; preds = %entry
  %3 = getelementptr inbounds %list_node, %list_node* %node_p, i32 0, i32 1
  store %list_node* %list, %list_node** %3, align 8
  store %list_node* %node_p, %list_node** %l1, align 8
  br label %merge

else:                                             ; preds = %entry
  %4 = load i32, i32* %0, align 4
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %5 = bitcast i8* %malloccall4 to %list_node**
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %6 = bitcast i8* %malloccall5 to i32*
  store %list_node* %list, %list_node** %5, align 8
  store i32 %4, i32* %6, align 4
  br label %traverse_loop

traverse_loop:                                    ; preds = %while_body, %else
  %7 = load i32, i32* %6, align 4
  %temp7 = icmp ne i32 %7, 0
  br i1 %temp7, label %while_body, label %merge8

while_body:                                       ; preds = %traverse_loop
  %8 = load %list_node*, %list_node** %5, align 8
  %temp = getelementptr inbounds %list_node, %list_node* %8, i32 0, i32 1
  %temp6 = load %list_node*, %list_node** %temp, align 8
  %9 = load i32, i32* %6, align 4
  %subtract = sub i32 %9, 1
  store i32 %subtract, i32* %6, align 4
  store %list_node* %temp6, %list_node** %5, align 8
  br label %traverse_loop

merge8:                                           ; preds = %traverse_loop
  %10 = load %list_node*, %list_node** %5, align 8
  %temp9 = getelementptr inbounds %list_node, %list_node* %10, i32 0, i32 1
  store %list_node* %node_p, %list_node** %temp9, align 8
  %malloccall10 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %11 = bitcast i8* %malloccall10 to %list_node**
  %malloccall11 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %12 = bitcast i8* %malloccall11 to i32*
  store %list_node* %list, %list_node** %11, align 8
  store i32 0, i32* %12, align 4
  br label %traverse_loop12

traverse_loop12:                                  ; preds = %while_body13, %merge8
  %13 = load i32, i32* %12, align 4
  %temp17 = icmp ne i32 %13, 0
  br i1 %temp17, label %while_body13, label %merge18

while_body13:                                     ; preds = %traverse_loop12
  %14 = load %list_node*, %list_node** %11, align 8
  %temp14 = getelementptr inbounds %list_node, %list_node* %14, i32 0, i32 1
  %temp15 = load %list_node*, %list_node** %temp14, align 8
  %15 = load i32, i32* %12, align 4
  %subtract16 = sub i32 %15, 1
  store i32 %subtract16, i32* %12, align 4
  store %list_node* %temp15, %list_node** %11, align 8
  br label %traverse_loop12

merge18:                                          ; preds = %traverse_loop12
  %16 = load %list_node*, %list_node** %11, align 8
  %temp19 = getelementptr inbounds %list_node, %list_node* %node_p, i32 0, i32 1
  store %list_node* %16, %list_node** %temp19, align 8
  br label %merge

traverse_loop23:                                  ; preds = %while_body24, %merge
  %17 = load i32, i32* %2, align 4
  %temp28 = icmp ne i32 %17, 0
  br i1 %temp28, label %while_body24, label %merge29

while_body24:                                     ; preds = %traverse_loop23
  %18 = load %list_node*, %list_node** %1, align 8
  %temp25 = getelementptr inbounds %list_node, %list_node* %18, i32 0, i32 1
  %temp26 = load %list_node*, %list_node** %temp25, align 8
  %19 = load i32, i32* %2, align 4
  %subtract27 = sub i32 %19, 1
  store i32 %subtract27, i32* %2, align 4
  store %list_node* %temp26, %list_node** %1, align 8
  br label %traverse_loop23

merge29:                                          ; preds = %traverse_loop23
  %20 = load %list_node*, %list_node** %1, align 8
  %temp30 = getelementptr inbounds %list_node, %list_node* %20, i32 0, i32 0
  %retval = load i8*, i8** %temp30, align 8
  %li_conv = bitcast i8* %retval to i8**
  %val_ptr = load i8*, i8** %li_conv, align 8
  %s = alloca i8*, align 8
  store i8* %val_ptr, i8** %s, align 8
  %s31 = load i8*, i8** %s, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.3, i32 0, i32 0), i8* %s31)
  ret void
}

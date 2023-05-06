; ModuleID = 'Graphite'
source_filename = "Graphite"

%node_struct = type { i8*, i1, i8* }
%list_node = type { i8*, %list_node* }

@n1 = global %node_struct* null
@0 = private unnamed_addr constant [17 x i8] c"should print 1st\00", align 1
@n2 = global %node_struct* null
@1 = private unnamed_addr constant [17 x i8] c"should print 2nd\00", align 1
@n3 = global %node_struct* null
@2 = private unnamed_addr constant [17 x i8] c"should print 3rd\00", align 1
@n4 = global %node_struct* null
@3 = private unnamed_addr constant [17 x i8] c"should print 4th\00", align 1
@q = global %list_node* null
@tmp_list = global %list_node* null
@tmp_node = global %node_struct* null
@s = global i8* null
@fmt = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

declare i32 @printf(i8*, ...)

declare i32 @strcmp(i8*, i8*)

declare i8* @array_get(i8*, i32, ...)

declare i8* @array_set(i8*, i32, i8*, ...)

declare i8* @array_len(i8*, ...)

declare i8 @nodeExists(%node_struct*, ...)

declare i8* @array_add(i8*, i32, i8*, ...)

define i32 @main() {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node = bitcast i8* %malloccall to %node_struct*
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %data = bitcast i8* %malloccall1 to %list_node**
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name = bitcast i8* %malloccall2 to i8**
  %data_ptr = bitcast %list_node** %data to i8*
  %name_ptr = bitcast i8** %name to i8*
  %"name'" = getelementptr inbounds %node_struct, %node_struct* %node, i32 0, i32 0
  %"data'" = getelementptr inbounds %node_struct, %node_struct* %node, i32 0, i32 2
  store i8* %name_ptr, i8** %"name'", align 8
  store i8* %data_ptr, i8** %"data'", align 8
  store %node_struct* %node, %node_struct** @n1, align 8
  %"lvar'" = load %node_struct*, %node_struct** @n1, align 8
  %temp = getelementptr inbounds %node_struct, %node_struct* %"lvar'", i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8** %temp, align 8
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node4 = bitcast i8* %malloccall3 to %node_struct*
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %data6 = bitcast i8* %malloccall5 to %list_node**
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name8 = bitcast i8* %malloccall7 to i8**
  %data_ptr9 = bitcast %list_node** %data6 to i8*
  %name_ptr10 = bitcast i8** %name8 to i8*
  %"name'11" = getelementptr inbounds %node_struct, %node_struct* %node4, i32 0, i32 0
  %"data'12" = getelementptr inbounds %node_struct, %node_struct* %node4, i32 0, i32 2
  store i8* %name_ptr10, i8** %"name'11", align 8
  store i8* %data_ptr9, i8** %"data'12", align 8
  store %node_struct* %node4, %node_struct** @n2, align 8
  %"lvar'13" = load %node_struct*, %node_struct** @n2, align 8
  %temp14 = getelementptr inbounds %node_struct, %node_struct* %"lvar'13", i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0), i8** %temp14, align 8
  %malloccall15 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node16 = bitcast i8* %malloccall15 to %node_struct*
  %malloccall17 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %data18 = bitcast i8* %malloccall17 to %list_node**
  %malloccall19 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name20 = bitcast i8* %malloccall19 to i8**
  %data_ptr21 = bitcast %list_node** %data18 to i8*
  %name_ptr22 = bitcast i8** %name20 to i8*
  %"name'23" = getelementptr inbounds %node_struct, %node_struct* %node16, i32 0, i32 0
  %"data'24" = getelementptr inbounds %node_struct, %node_struct* %node16, i32 0, i32 2
  store i8* %name_ptr22, i8** %"name'23", align 8
  store i8* %data_ptr21, i8** %"data'24", align 8
  store %node_struct* %node16, %node_struct** @n3, align 8
  %"lvar'25" = load %node_struct*, %node_struct** @n3, align 8
  %temp26 = getelementptr inbounds %node_struct, %node_struct* %"lvar'25", i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2, i32 0, i32 0), i8** %temp26, align 8
  %malloccall27 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node28 = bitcast i8* %malloccall27 to %node_struct*
  %malloccall29 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %data30 = bitcast i8* %malloccall29 to %list_node**
  %malloccall31 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name32 = bitcast i8* %malloccall31 to i8**
  %data_ptr33 = bitcast %list_node** %data30 to i8*
  %name_ptr34 = bitcast i8** %name32 to i8*
  %"name'35" = getelementptr inbounds %node_struct, %node_struct* %node28, i32 0, i32 0
  %"data'36" = getelementptr inbounds %node_struct, %node_struct* %node28, i32 0, i32 2
  store i8* %name_ptr34, i8** %"name'35", align 8
  store i8* %data_ptr33, i8** %"data'36", align 8
  store %node_struct* %node28, %node_struct** @n4, align 8
  %"lvar'37" = load %node_struct*, %node_struct** @n4, align 8
  %temp38 = getelementptr inbounds %node_struct, %node_struct* %"lvar'37", i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i8** %temp38, align 8
  %malloccall39 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %new_list = bitcast i8* %malloccall39 to %list_node**
  store %list_node* null, %list_node** %new_list, align 8
  %temp40 = load %list_node*, %list_node** %new_list, align 8
  store %list_node* %temp40, %list_node** @q, align 8
  %n1 = load %node_struct*, %node_struct** @n1, align 8
  %q = load %list_node*, %list_node** @q, align 8
  %Q_push_result = call %list_node* @Q_push(%list_node* %q, %node_struct* %n1)
  store %list_node* %Q_push_result, %list_node** @q, align 8
  %n2 = load %node_struct*, %node_struct** @n2, align 8
  %q41 = load %list_node*, %list_node** @q, align 8
  %Q_push_result42 = call %list_node* @Q_push(%list_node* %q41, %node_struct* %n2)
  store %list_node* %Q_push_result42, %list_node** @q, align 8
  %malloccall43 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %new_list44 = bitcast i8* %malloccall43 to %list_node**
  store %list_node* null, %list_node** %new_list44, align 8
  %temp45 = load %list_node*, %list_node** %new_list44, align 8
  store %list_node* %temp45, %list_node** @tmp_list, align 8
  %malloccall46 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node47 = bitcast i8* %malloccall46 to %node_struct*
  %malloccall48 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %data49 = bitcast i8* %malloccall48 to %list_node**
  %malloccall50 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name51 = bitcast i8* %malloccall50 to i8**
  %data_ptr52 = bitcast %list_node** %data49 to i8*
  %name_ptr53 = bitcast i8** %name51 to i8*
  %"name'54" = getelementptr inbounds %node_struct, %node_struct* %node47, i32 0, i32 0
  %"data'55" = getelementptr inbounds %node_struct, %node_struct* %node47, i32 0, i32 2
  store i8* %name_ptr53, i8** %"name'54", align 8
  store i8* %data_ptr52, i8** %"data'55", align 8
  store %node_struct* %node47, %node_struct** @tmp_node, align 8
  %q56 = load %list_node*, %list_node** @q, align 8
  %Q_pop_result = call %list_node* @Q_pop(%list_node* %q56)
  store %list_node* %Q_pop_result, %list_node** @tmp_list, align 8
  %list = load %list_node*, %list_node** @tmp_list, align 8
  %malloccall57 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %0 = bitcast i8* %malloccall57 to %list_node**
  %malloccall58 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %malloccall58 to i32*
  store %list_node* %list, %list_node** %0, align 8
  store i32 0, i32* %1, align 4
  br label %traverse_loop

traverse_loop:                                    ; preds = %while_body, %entry
  %2 = load i32, i32* %1, align 4
  %temp61 = icmp ne i32 %2, 0
  br i1 %temp61, label %while_body, label %merge

while_body:                                       ; preds = %traverse_loop
  %3 = load %list_node*, %list_node** %0, align 8
  %temp59 = getelementptr inbounds %list_node, %list_node* %3, i32 0, i32 1
  %temp60 = load %list_node*, %list_node** %temp59, align 8
  %4 = load i32, i32* %1, align 4
  %subtract = sub i32 %4, 1
  store i32 %subtract, i32* %1, align 4
  store %list_node* %temp60, %list_node** %0, align 8
  br label %traverse_loop

merge:                                            ; preds = %traverse_loop
  %5 = load %list_node*, %list_node** %0, align 8
  %temp62 = getelementptr inbounds %list_node, %list_node* %5, i32 0, i32 0
  %retval = load i8*, i8** %temp62, align 8
  %li_conv = bitcast i8* %retval to %list_node**
  %val_ptr = load %list_node*, %list_node** %li_conv, align 8
  store %list_node* %val_ptr, %list_node** @q, align 8
  %list63 = load %list_node*, %list_node** @tmp_list, align 8
  %malloccall64 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %6 = bitcast i8* %malloccall64 to %list_node**
  %malloccall65 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %7 = bitcast i8* %malloccall65 to i32*
  store %list_node* %list63, %list_node** %6, align 8
  store i32 1, i32* %7, align 4
  br label %traverse_loop66

traverse_loop66:                                  ; preds = %while_body67, %merge
  %8 = load i32, i32* %7, align 4
  %temp71 = icmp ne i32 %8, 0
  br i1 %temp71, label %while_body67, label %merge72

while_body67:                                     ; preds = %traverse_loop66
  %9 = load %list_node*, %list_node** %6, align 8
  %temp68 = getelementptr inbounds %list_node, %list_node* %9, i32 0, i32 1
  %temp69 = load %list_node*, %list_node** %temp68, align 8
  %10 = load i32, i32* %7, align 4
  %subtract70 = sub i32 %10, 1
  store i32 %subtract70, i32* %7, align 4
  store %list_node* %temp69, %list_node** %6, align 8
  br label %traverse_loop66

merge72:                                          ; preds = %traverse_loop66
  %11 = load %list_node*, %list_node** %6, align 8
  %temp73 = getelementptr inbounds %list_node, %list_node* %11, i32 0, i32 0
  %retval74 = load i8*, i8** %temp73, align 8
  %li_conv75 = bitcast i8* %retval74 to %node_struct**
  %val_ptr76 = load %node_struct*, %node_struct** %li_conv75, align 8
  store %node_struct* %val_ptr76, %node_struct** @tmp_node, align 8
  %"lvar'77" = load %node_struct*, %node_struct** @tmp_node, align 8
  %temp78 = getelementptr inbounds %node_struct, %node_struct* %"lvar'77", i32 0, i32 0
  %tmp_node.name = load i8*, i8** %temp78, align 8
  %srcNode = load i8*, i8** %temp78, align 8
  store i8* %srcNode, i8** @s, align 8
  %s = load i8*, i8** @s, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i8* %s)
  %q79 = load %list_node*, %list_node** @q, align 8
  %Q_pop_result80 = call %list_node* @Q_pop(%list_node* %q79)
  store %list_node* %Q_pop_result80, %list_node** @tmp_list, align 8
  %list81 = load %list_node*, %list_node** @tmp_list, align 8
  %malloccall82 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %12 = bitcast i8* %malloccall82 to %list_node**
  %malloccall83 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %13 = bitcast i8* %malloccall83 to i32*
  store %list_node* %list81, %list_node** %12, align 8
  store i32 0, i32* %13, align 4
  br label %traverse_loop84

traverse_loop84:                                  ; preds = %while_body85, %merge72
  %14 = load i32, i32* %13, align 4
  %temp89 = icmp ne i32 %14, 0
  br i1 %temp89, label %while_body85, label %merge90

while_body85:                                     ; preds = %traverse_loop84
  %15 = load %list_node*, %list_node** %12, align 8
  %temp86 = getelementptr inbounds %list_node, %list_node* %15, i32 0, i32 1
  %temp87 = load %list_node*, %list_node** %temp86, align 8
  %16 = load i32, i32* %13, align 4
  %subtract88 = sub i32 %16, 1
  store i32 %subtract88, i32* %13, align 4
  store %list_node* %temp87, %list_node** %12, align 8
  br label %traverse_loop84

merge90:                                          ; preds = %traverse_loop84
  %17 = load %list_node*, %list_node** %12, align 8
  %temp91 = getelementptr inbounds %list_node, %list_node* %17, i32 0, i32 0
  %retval92 = load i8*, i8** %temp91, align 8
  %li_conv93 = bitcast i8* %retval92 to %list_node**
  %val_ptr94 = load %list_node*, %list_node** %li_conv93, align 8
  store %list_node* %val_ptr94, %list_node** @q, align 8
  %list95 = load %list_node*, %list_node** @tmp_list, align 8
  %malloccall96 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %18 = bitcast i8* %malloccall96 to %list_node**
  %malloccall97 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %19 = bitcast i8* %malloccall97 to i32*
  store %list_node* %list95, %list_node** %18, align 8
  store i32 1, i32* %19, align 4
  br label %traverse_loop98

traverse_loop98:                                  ; preds = %while_body99, %merge90
  %20 = load i32, i32* %19, align 4
  %temp103 = icmp ne i32 %20, 0
  br i1 %temp103, label %while_body99, label %merge104

while_body99:                                     ; preds = %traverse_loop98
  %21 = load %list_node*, %list_node** %18, align 8
  %temp100 = getelementptr inbounds %list_node, %list_node* %21, i32 0, i32 1
  %temp101 = load %list_node*, %list_node** %temp100, align 8
  %22 = load i32, i32* %19, align 4
  %subtract102 = sub i32 %22, 1
  store i32 %subtract102, i32* %19, align 4
  store %list_node* %temp101, %list_node** %18, align 8
  br label %traverse_loop98

merge104:                                         ; preds = %traverse_loop98
  %23 = load %list_node*, %list_node** %18, align 8
  %temp105 = getelementptr inbounds %list_node, %list_node* %23, i32 0, i32 0
  %retval106 = load i8*, i8** %temp105, align 8
  %li_conv107 = bitcast i8* %retval106 to %node_struct**
  %val_ptr108 = load %node_struct*, %node_struct** %li_conv107, align 8
  store %node_struct* %val_ptr108, %node_struct** @tmp_node, align 8
  %"lvar'109" = load %node_struct*, %node_struct** @tmp_node, align 8
  %temp110 = getelementptr inbounds %node_struct, %node_struct* %"lvar'109", i32 0, i32 0
  %tmp_node.name111 = load i8*, i8** %temp110, align 8
  %srcNode112 = load i8*, i8** %temp110, align 8
  store i8* %srcNode112, i8** @s, align 8
  %s113 = load i8*, i8** @s, align 8
  %printf114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.1, i32 0, i32 0), i8* %s113)
  ret i32 0
}

define i1 @Q_is_empty(%list_node* %q1) {
entry:
  %q = alloca %list_node*, align 8
  store %list_node* %q1, %list_node** %q, align 8
  %list = load %list_node*, %list_node** %q, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %0 = bitcast i8* %malloccall to %list_node**
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %malloccall2 to i32*
  store i32 0, i32* %1, align 4
  store %list_node* %list, %list_node** %0, align 8
  %2 = icmp eq %list_node* %list, null
  br i1 %2, label %then, label %else

merge:                                            ; preds = %merge4, %then
  %3 = load i32, i32* %1, align 4
  %n = alloca i32, align 4
  store i32 %3, i32* %n, align 4
  %n5 = load i32, i32* %n, align 4
  %tmp = icmp eq i32 %n5, 0
  %b = alloca i1, align 1
  store i1 %tmp, i1* %b, align 1
  %b6 = load i1, i1* %b, align 1
  ret i1 %b6

then:                                             ; preds = %entry
  store i32 0, i32* %1, align 4
  br label %merge

else:                                             ; preds = %entry
  br label %traverse_loop

traverse_loop:                                    ; preds = %while_body, %else
  %4 = load %list_node*, %list_node** %0, align 8
  %5 = icmp ne %list_node* %4, null
  br i1 %5, label %while_body, label %merge4

while_body:                                       ; preds = %traverse_loop
  %6 = load %list_node*, %list_node** %0, align 8
  %temp = getelementptr inbounds %list_node, %list_node* %6, i32 0, i32 1
  %temp3 = load %list_node*, %list_node** %temp, align 8
  %7 = load i32, i32* %1, align 4
  %add = add i32 %7, 1
  store i32 %add, i32* %1, align 4
  store %list_node* %temp3, %list_node** %0, align 8
  br label %traverse_loop

merge4:                                           ; preds = %traverse_loop
  br label %merge
}

declare noalias i8* @malloc(i32)

define %list_node* @Q_push(%list_node* %q1, %node_struct* %e2) {
entry:
  %q = alloca %list_node*, align 8
  store %list_node* %q1, %list_node** %q, align 8
  %e = alloca %node_struct*, align 8
  store %node_struct* %e2, %node_struct** %e, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %new_list = bitcast i8* %malloccall to %list_node**
  store %list_node* null, %list_node** %new_list, align 8
  %temp = load %list_node*, %list_node** %new_list, align 8
  %q_prime = alloca %list_node*, align 8
  store %list_node* %temp, %list_node** %q_prime, align 8
  %list = load %list_node*, %list_node** %q, align 8
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %0 = bitcast i8* %malloccall3 to %list_node**
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %malloccall4 to i32*
  store i32 0, i32* %1, align 4
  store %list_node* %list, %list_node** %0, align 8
  %2 = icmp eq %list_node* %list, null
  br i1 %2, label %then, label %else

merge:                                            ; preds = %merge7, %then
  %3 = load i32, i32* %1, align 4
  %n = alloca i32, align 4
  store i32 %3, i32* %n, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %while

then:                                             ; preds = %entry
  store i32 0, i32* %1, align 4
  br label %merge

else:                                             ; preds = %entry
  br label %traverse_loop

traverse_loop:                                    ; preds = %while_body, %else
  %4 = load %list_node*, %list_node** %0, align 8
  %5 = icmp ne %list_node* %4, null
  br i1 %5, label %while_body, label %merge7

while_body:                                       ; preds = %traverse_loop
  %6 = load %list_node*, %list_node** %0, align 8
  %temp5 = getelementptr inbounds %list_node, %list_node* %6, i32 0, i32 1
  %temp6 = load %list_node*, %list_node** %temp5, align 8
  %7 = load i32, i32* %1, align 4
  %add = add i32 %7, 1
  store i32 %add, i32* %1, align 4
  store %list_node* %temp6, %list_node** %0, align 8
  br label %traverse_loop

merge7:                                           ; preds = %traverse_loop
  br label %merge

while:                                            ; preds = %merge25, %merge
  %i49 = load i32, i32* %i, align 4
  %n50 = load i32, i32* %n, align 4
  %tmp51 = icmp slt i32 %i49, %n50
  br i1 %tmp51, label %while_body8, label %merge52

while_body8:                                      ; preds = %while
  %list9 = load %list_node*, %list_node** %q, align 8
  %i10 = load i32, i32* %i, align 4
  %malloccall11 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %8 = bitcast i8* %malloccall11 to %list_node**
  %malloccall12 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %9 = bitcast i8* %malloccall12 to i32*
  store %list_node* %list9, %list_node** %8, align 8
  store i32 %i10, i32* %9, align 4
  br label %traverse_loop13

traverse_loop13:                                  ; preds = %while_body14, %while_body8
  %10 = load i32, i32* %9, align 4
  %temp17 = icmp ne i32 %10, 0
  br i1 %temp17, label %while_body14, label %merge18

while_body14:                                     ; preds = %traverse_loop13
  %11 = load %list_node*, %list_node** %8, align 8
  %temp15 = getelementptr inbounds %list_node, %list_node* %11, i32 0, i32 1
  %temp16 = load %list_node*, %list_node** %temp15, align 8
  %12 = load i32, i32* %9, align 4
  %subtract = sub i32 %12, 1
  store i32 %subtract, i32* %9, align 4
  store %list_node* %temp16, %list_node** %8, align 8
  br label %traverse_loop13

merge18:                                          ; preds = %traverse_loop13
  %13 = load %list_node*, %list_node** %8, align 8
  %temp19 = getelementptr inbounds %list_node, %list_node* %13, i32 0, i32 0
  %retval = load i8*, i8** %temp19, align 8
  %li_conv = bitcast i8* %retval to %node_struct**
  %val_ptr = load %node_struct*, %node_struct** %li_conv, align 8
  %item = alloca %node_struct*, align 8
  store %node_struct* %val_ptr, %node_struct** %item, align 8
  %item20 = load %node_struct*, %node_struct** %item, align 8
  %malloccall21 = tail call i8* @malloc(i32 ptrtoint (%node_struct** getelementptr (%node_struct*, %node_struct** null, i32 1) to i32))
  %arr_val = bitcast i8* %malloccall21 to %node_struct**
  store %node_struct* %item20, %node_struct** %arr_val, align 8
  %i8ptr = bitcast %node_struct** %arr_val to i8*
  %malloccall22 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p = bitcast i8* %malloccall22 to %list_node*
  %valloc = getelementptr inbounds %list_node, %list_node* %node_p, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p, align 8
  store i8* %i8ptr, i8** %valloc, align 8
  %list23 = load %list_node*, %list_node** %q_prime, align 8
  %malloccall24 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %14 = bitcast i8* %malloccall24 to i32*
  store i32 -1, i32* %14, align 4
  br i1 true, label %then26, label %else27

merge25:                                          ; preds = %merge46, %then26
  %i48 = load i32, i32* %i, align 4
  %tmp = add i32 %i48, 1
  store i32 %tmp, i32* %i, align 4
  br label %while

then26:                                           ; preds = %merge18
  %15 = getelementptr inbounds %list_node, %list_node* %node_p, i32 0, i32 1
  store %list_node* %list23, %list_node** %15, align 8
  store %list_node* %node_p, %list_node** %q_prime, align 8
  br label %merge25

else27:                                           ; preds = %merge18
  %16 = load i32, i32* %14, align 4
  %malloccall28 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %17 = bitcast i8* %malloccall28 to %list_node**
  %malloccall29 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %18 = bitcast i8* %malloccall29 to i32*
  store %list_node* %list23, %list_node** %17, align 8
  store i32 %16, i32* %18, align 4
  br label %traverse_loop30

traverse_loop30:                                  ; preds = %while_body31, %else27
  %19 = load i32, i32* %18, align 4
  %temp35 = icmp ne i32 %19, 0
  br i1 %temp35, label %while_body31, label %merge36

while_body31:                                     ; preds = %traverse_loop30
  %20 = load %list_node*, %list_node** %17, align 8
  %temp32 = getelementptr inbounds %list_node, %list_node* %20, i32 0, i32 1
  %temp33 = load %list_node*, %list_node** %temp32, align 8
  %21 = load i32, i32* %18, align 4
  %subtract34 = sub i32 %21, 1
  store i32 %subtract34, i32* %18, align 4
  store %list_node* %temp33, %list_node** %17, align 8
  br label %traverse_loop30

merge36:                                          ; preds = %traverse_loop30
  %22 = load %list_node*, %list_node** %17, align 8
  %temp37 = getelementptr inbounds %list_node, %list_node* %22, i32 0, i32 1
  store %list_node* %node_p, %list_node** %temp37, align 8
  %malloccall38 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %23 = bitcast i8* %malloccall38 to %list_node**
  %malloccall39 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %24 = bitcast i8* %malloccall39 to i32*
  store %list_node* %list23, %list_node** %23, align 8
  store i32 0, i32* %24, align 4
  br label %traverse_loop40

traverse_loop40:                                  ; preds = %while_body41, %merge36
  %25 = load i32, i32* %24, align 4
  %temp45 = icmp ne i32 %25, 0
  br i1 %temp45, label %while_body41, label %merge46

while_body41:                                     ; preds = %traverse_loop40
  %26 = load %list_node*, %list_node** %23, align 8
  %temp42 = getelementptr inbounds %list_node, %list_node* %26, i32 0, i32 1
  %temp43 = load %list_node*, %list_node** %temp42, align 8
  %27 = load i32, i32* %24, align 4
  %subtract44 = sub i32 %27, 1
  store i32 %subtract44, i32* %24, align 4
  store %list_node* %temp43, %list_node** %23, align 8
  br label %traverse_loop40

merge46:                                          ; preds = %traverse_loop40
  %28 = load %list_node*, %list_node** %23, align 8
  %temp47 = getelementptr inbounds %list_node, %list_node* %node_p, i32 0, i32 1
  store %list_node* %28, %list_node** %temp47, align 8
  br label %merge25

merge52:                                          ; preds = %while
  %e53 = load %node_struct*, %node_struct** %e, align 8
  %malloccall54 = tail call i8* @malloc(i32 ptrtoint (%node_struct** getelementptr (%node_struct*, %node_struct** null, i32 1) to i32))
  %arr_val55 = bitcast i8* %malloccall54 to %node_struct**
  store %node_struct* %e53, %node_struct** %arr_val55, align 8
  %i8ptr56 = bitcast %node_struct** %arr_val55 to i8*
  %malloccall57 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p58 = bitcast i8* %malloccall57 to %list_node*
  %valloc59 = getelementptr inbounds %list_node, %list_node* %node_p58, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p58, align 8
  store i8* %i8ptr56, i8** %valloc59, align 8
  %list60 = load %list_node*, %list_node** %q_prime, align 8
  %malloccall61 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %29 = bitcast i8* %malloccall61 to i32*
  store i32 -1, i32* %29, align 4
  br i1 true, label %then63, label %else64

merge62:                                          ; preds = %merge83, %then63
  %q_prime85 = load %list_node*, %list_node** %q_prime, align 8
  ret %list_node* %q_prime85

then63:                                           ; preds = %merge52
  %30 = getelementptr inbounds %list_node, %list_node* %node_p58, i32 0, i32 1
  store %list_node* %list60, %list_node** %30, align 8
  store %list_node* %node_p58, %list_node** %q_prime, align 8
  br label %merge62

else64:                                           ; preds = %merge52
  %31 = load i32, i32* %29, align 4
  %malloccall65 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %32 = bitcast i8* %malloccall65 to %list_node**
  %malloccall66 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %33 = bitcast i8* %malloccall66 to i32*
  store %list_node* %list60, %list_node** %32, align 8
  store i32 %31, i32* %33, align 4
  br label %traverse_loop67

traverse_loop67:                                  ; preds = %while_body68, %else64
  %34 = load i32, i32* %33, align 4
  %temp72 = icmp ne i32 %34, 0
  br i1 %temp72, label %while_body68, label %merge73

while_body68:                                     ; preds = %traverse_loop67
  %35 = load %list_node*, %list_node** %32, align 8
  %temp69 = getelementptr inbounds %list_node, %list_node* %35, i32 0, i32 1
  %temp70 = load %list_node*, %list_node** %temp69, align 8
  %36 = load i32, i32* %33, align 4
  %subtract71 = sub i32 %36, 1
  store i32 %subtract71, i32* %33, align 4
  store %list_node* %temp70, %list_node** %32, align 8
  br label %traverse_loop67

merge73:                                          ; preds = %traverse_loop67
  %37 = load %list_node*, %list_node** %32, align 8
  %temp74 = getelementptr inbounds %list_node, %list_node* %37, i32 0, i32 1
  store %list_node* %node_p58, %list_node** %temp74, align 8
  %malloccall75 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %38 = bitcast i8* %malloccall75 to %list_node**
  %malloccall76 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %39 = bitcast i8* %malloccall76 to i32*
  store %list_node* %list60, %list_node** %38, align 8
  store i32 0, i32* %39, align 4
  br label %traverse_loop77

traverse_loop77:                                  ; preds = %while_body78, %merge73
  %40 = load i32, i32* %39, align 4
  %temp82 = icmp ne i32 %40, 0
  br i1 %temp82, label %while_body78, label %merge83

while_body78:                                     ; preds = %traverse_loop77
  %41 = load %list_node*, %list_node** %38, align 8
  %temp79 = getelementptr inbounds %list_node, %list_node* %41, i32 0, i32 1
  %temp80 = load %list_node*, %list_node** %temp79, align 8
  %42 = load i32, i32* %39, align 4
  %subtract81 = sub i32 %42, 1
  store i32 %subtract81, i32* %39, align 4
  store %list_node* %temp80, %list_node** %38, align 8
  br label %traverse_loop77

merge83:                                          ; preds = %traverse_loop77
  %43 = load %list_node*, %list_node** %38, align 8
  %temp84 = getelementptr inbounds %list_node, %list_node* %node_p58, i32 0, i32 1
  store %list_node* %43, %list_node** %temp84, align 8
  br label %merge62
}

define %list_node* @Q_pop(%list_node* %q1) {
entry:
  %q = alloca %list_node*, align 8
  store %list_node* %q1, %list_node** %q, align 8
  %list = load %list_node*, %list_node** %q, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %0 = bitcast i8* %malloccall to %list_node**
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %malloccall2 to i32*
  store i32 0, i32* %1, align 4
  store %list_node* %list, %list_node** %0, align 8
  %2 = icmp eq %list_node* %list, null
  br i1 %2, label %then, label %else

merge:                                            ; preds = %merge4, %then
  %3 = load i32, i32* %1, align 4
  %n = alloca i32, align 4
  store i32 %3, i32* %n, align 4
  %n5 = load i32, i32* %n, align 4
  %tmp = sub i32 %n5, 1
  %i = alloca i32, align 4
  store i32 %tmp, i32* %i, align 4
  %list6 = load %list_node*, %list_node** %q, align 8
  %i7 = load i32, i32* %i, align 4
  %malloccall8 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %4 = bitcast i8* %malloccall8 to %list_node**
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %5 = bitcast i8* %malloccall9 to i32*
  store %list_node* %list6, %list_node** %4, align 8
  store i32 %i7, i32* %5, align 4
  br label %traverse_loop10

then:                                             ; preds = %entry
  store i32 0, i32* %1, align 4
  br label %merge

else:                                             ; preds = %entry
  br label %traverse_loop

traverse_loop:                                    ; preds = %while_body, %else
  %6 = load %list_node*, %list_node** %0, align 8
  %7 = icmp ne %list_node* %6, null
  br i1 %7, label %while_body, label %merge4

while_body:                                       ; preds = %traverse_loop
  %8 = load %list_node*, %list_node** %0, align 8
  %temp = getelementptr inbounds %list_node, %list_node* %8, i32 0, i32 1
  %temp3 = load %list_node*, %list_node** %temp, align 8
  %9 = load i32, i32* %1, align 4
  %add = add i32 %9, 1
  store i32 %add, i32* %1, align 4
  store %list_node* %temp3, %list_node** %0, align 8
  br label %traverse_loop

merge4:                                           ; preds = %traverse_loop
  br label %merge

traverse_loop10:                                  ; preds = %while_body11, %merge
  %10 = load i32, i32* %5, align 4
  %temp14 = icmp ne i32 %10, 0
  br i1 %temp14, label %while_body11, label %merge15

while_body11:                                     ; preds = %traverse_loop10
  %11 = load %list_node*, %list_node** %4, align 8
  %temp12 = getelementptr inbounds %list_node, %list_node* %11, i32 0, i32 1
  %temp13 = load %list_node*, %list_node** %temp12, align 8
  %12 = load i32, i32* %5, align 4
  %subtract = sub i32 %12, 1
  store i32 %subtract, i32* %5, align 4
  store %list_node* %temp13, %list_node** %4, align 8
  br label %traverse_loop10

merge15:                                          ; preds = %traverse_loop10
  %13 = load %list_node*, %list_node** %4, align 8
  %temp16 = getelementptr inbounds %list_node, %list_node* %13, i32 0, i32 0
  %retval = load i8*, i8** %temp16, align 8
  %li_conv = bitcast i8* %retval to %node_struct**
  %val_ptr = load %node_struct*, %node_struct** %li_conv, align 8
  %item = alloca %node_struct*, align 8
  store %node_struct* %val_ptr, %node_struct** %item, align 8
  %malloccall17 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %new_list = bitcast i8* %malloccall17 to %list_node**
  store %list_node* null, %list_node** %new_list, align 8
  %temp18 = load %list_node*, %list_node** %new_list, align 8
  %q_prime = alloca %list_node*, align 8
  store %list_node* %temp18, %list_node** %q_prime, align 8
  %j = alloca i32, align 4
  store i32 1, i32* %j, align 4
  br label %while

while:                                            ; preds = %merge40, %merge15
  %j65 = load i32, i32* %j, align 4
  %n66 = load i32, i32* %n, align 4
  %tmp67 = icmp slt i32 %j65, %n66
  br i1 %tmp67, label %while_body19, label %merge68

while_body19:                                     ; preds = %while
  %list20 = load %list_node*, %list_node** %q, align 8
  %j21 = load i32, i32* %j, align 4
  %malloccall22 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %14 = bitcast i8* %malloccall22 to %list_node**
  %malloccall23 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %15 = bitcast i8* %malloccall23 to i32*
  store %list_node* %list20, %list_node** %14, align 8
  store i32 %j21, i32* %15, align 4
  br label %traverse_loop24

traverse_loop24:                                  ; preds = %while_body25, %while_body19
  %16 = load i32, i32* %15, align 4
  %temp29 = icmp ne i32 %16, 0
  br i1 %temp29, label %while_body25, label %merge30

while_body25:                                     ; preds = %traverse_loop24
  %17 = load %list_node*, %list_node** %14, align 8
  %temp26 = getelementptr inbounds %list_node, %list_node* %17, i32 0, i32 1
  %temp27 = load %list_node*, %list_node** %temp26, align 8
  %18 = load i32, i32* %15, align 4
  %subtract28 = sub i32 %18, 1
  store i32 %subtract28, i32* %15, align 4
  store %list_node* %temp27, %list_node** %14, align 8
  br label %traverse_loop24

merge30:                                          ; preds = %traverse_loop24
  %19 = load %list_node*, %list_node** %14, align 8
  %temp31 = getelementptr inbounds %list_node, %list_node* %19, i32 0, i32 0
  %retval32 = load i8*, i8** %temp31, align 8
  %li_conv33 = bitcast i8* %retval32 to %node_struct**
  %val_ptr34 = load %node_struct*, %node_struct** %li_conv33, align 8
  %e = alloca %node_struct*, align 8
  store %node_struct* %val_ptr34, %node_struct** %e, align 8
  %e35 = load %node_struct*, %node_struct** %e, align 8
  %malloccall36 = tail call i8* @malloc(i32 ptrtoint (%node_struct** getelementptr (%node_struct*, %node_struct** null, i32 1) to i32))
  %arr_val = bitcast i8* %malloccall36 to %node_struct**
  store %node_struct* %e35, %node_struct** %arr_val, align 8
  %i8ptr = bitcast %node_struct** %arr_val to i8*
  %malloccall37 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p = bitcast i8* %malloccall37 to %list_node*
  %valloc = getelementptr inbounds %list_node, %list_node* %node_p, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p, align 8
  store i8* %i8ptr, i8** %valloc, align 8
  %list38 = load %list_node*, %list_node** %q_prime, align 8
  %malloccall39 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %20 = bitcast i8* %malloccall39 to i32*
  store i32 -1, i32* %20, align 4
  br i1 true, label %then41, label %else42

merge40:                                          ; preds = %merge61, %then41
  %j63 = load i32, i32* %j, align 4
  %tmp64 = add i32 %j63, 1
  store i32 %tmp64, i32* %j, align 4
  br label %while

then41:                                           ; preds = %merge30
  %21 = getelementptr inbounds %list_node, %list_node* %node_p, i32 0, i32 1
  store %list_node* %list38, %list_node** %21, align 8
  store %list_node* %node_p, %list_node** %q_prime, align 8
  br label %merge40

else42:                                           ; preds = %merge30
  %22 = load i32, i32* %20, align 4
  %malloccall43 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %23 = bitcast i8* %malloccall43 to %list_node**
  %malloccall44 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %24 = bitcast i8* %malloccall44 to i32*
  store %list_node* %list38, %list_node** %23, align 8
  store i32 %22, i32* %24, align 4
  br label %traverse_loop45

traverse_loop45:                                  ; preds = %while_body46, %else42
  %25 = load i32, i32* %24, align 4
  %temp50 = icmp ne i32 %25, 0
  br i1 %temp50, label %while_body46, label %merge51

while_body46:                                     ; preds = %traverse_loop45
  %26 = load %list_node*, %list_node** %23, align 8
  %temp47 = getelementptr inbounds %list_node, %list_node* %26, i32 0, i32 1
  %temp48 = load %list_node*, %list_node** %temp47, align 8
  %27 = load i32, i32* %24, align 4
  %subtract49 = sub i32 %27, 1
  store i32 %subtract49, i32* %24, align 4
  store %list_node* %temp48, %list_node** %23, align 8
  br label %traverse_loop45

merge51:                                          ; preds = %traverse_loop45
  %28 = load %list_node*, %list_node** %23, align 8
  %temp52 = getelementptr inbounds %list_node, %list_node* %28, i32 0, i32 1
  store %list_node* %node_p, %list_node** %temp52, align 8
  %malloccall53 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %29 = bitcast i8* %malloccall53 to %list_node**
  %malloccall54 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %30 = bitcast i8* %malloccall54 to i32*
  store %list_node* %list38, %list_node** %29, align 8
  store i32 0, i32* %30, align 4
  br label %traverse_loop55

traverse_loop55:                                  ; preds = %while_body56, %merge51
  %31 = load i32, i32* %30, align 4
  %temp60 = icmp ne i32 %31, 0
  br i1 %temp60, label %while_body56, label %merge61

while_body56:                                     ; preds = %traverse_loop55
  %32 = load %list_node*, %list_node** %29, align 8
  %temp57 = getelementptr inbounds %list_node, %list_node* %32, i32 0, i32 1
  %temp58 = load %list_node*, %list_node** %temp57, align 8
  %33 = load i32, i32* %30, align 4
  %subtract59 = sub i32 %33, 1
  store i32 %subtract59, i32* %30, align 4
  store %list_node* %temp58, %list_node** %29, align 8
  br label %traverse_loop55

merge61:                                          ; preds = %traverse_loop55
  %34 = load %list_node*, %list_node** %29, align 8
  %temp62 = getelementptr inbounds %list_node, %list_node* %node_p, i32 0, i32 1
  store %list_node* %34, %list_node** %temp62, align 8
  br label %merge40

merge68:                                          ; preds = %while
  %malloccall69 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %new_list70 = bitcast i8* %malloccall69 to %list_node**
  store %list_node* null, %list_node** %new_list70, align 8
  %temp71 = load %list_node*, %list_node** %new_list70, align 8
  %res = alloca %list_node*, align 8
  store %list_node* %temp71, %list_node** %res, align 8
  %q_prime72 = load %list_node*, %list_node** %q_prime, align 8
  %malloccall73 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %arr_val74 = bitcast i8* %malloccall73 to %list_node**
  store %list_node* %q_prime72, %list_node** %arr_val74, align 8
  %i8ptr75 = bitcast %list_node** %arr_val74 to i8*
  %malloccall76 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p77 = bitcast i8* %malloccall76 to %list_node*
  %valloc78 = getelementptr inbounds %list_node, %list_node* %node_p77, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p77, align 8
  store i8* %i8ptr75, i8** %valloc78, align 8
  %list79 = load %list_node*, %list_node** %res, align 8
  %malloccall80 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %35 = bitcast i8* %malloccall80 to i32*
  store i32 -1, i32* %35, align 4
  br i1 true, label %then82, label %else83

merge81:                                          ; preds = %merge102, %then82
  %item104 = load %node_struct*, %node_struct** %item, align 8
  %malloccall105 = tail call i8* @malloc(i32 ptrtoint (%node_struct** getelementptr (%node_struct*, %node_struct** null, i32 1) to i32))
  %arr_val106 = bitcast i8* %malloccall105 to %node_struct**
  store %node_struct* %item104, %node_struct** %arr_val106, align 8
  %i8ptr107 = bitcast %node_struct** %arr_val106 to i8*
  %malloccall108 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p109 = bitcast i8* %malloccall108 to %list_node*
  %valloc110 = getelementptr inbounds %list_node, %list_node* %node_p109, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p109, align 8
  store i8* %i8ptr107, i8** %valloc110, align 8
  %list111 = load %list_node*, %list_node** %res, align 8
  %malloccall112 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %36 = bitcast i8* %malloccall112 to i32*
  store i32 0, i32* %36, align 4
  br i1 false, label %then114, label %else115

then82:                                           ; preds = %merge68
  %37 = getelementptr inbounds %list_node, %list_node* %node_p77, i32 0, i32 1
  store %list_node* %list79, %list_node** %37, align 8
  store %list_node* %node_p77, %list_node** %res, align 8
  br label %merge81

else83:                                           ; preds = %merge68
  %38 = load i32, i32* %35, align 4
  %malloccall84 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %39 = bitcast i8* %malloccall84 to %list_node**
  %malloccall85 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %40 = bitcast i8* %malloccall85 to i32*
  store %list_node* %list79, %list_node** %39, align 8
  store i32 %38, i32* %40, align 4
  br label %traverse_loop86

traverse_loop86:                                  ; preds = %while_body87, %else83
  %41 = load i32, i32* %40, align 4
  %temp91 = icmp ne i32 %41, 0
  br i1 %temp91, label %while_body87, label %merge92

while_body87:                                     ; preds = %traverse_loop86
  %42 = load %list_node*, %list_node** %39, align 8
  %temp88 = getelementptr inbounds %list_node, %list_node* %42, i32 0, i32 1
  %temp89 = load %list_node*, %list_node** %temp88, align 8
  %43 = load i32, i32* %40, align 4
  %subtract90 = sub i32 %43, 1
  store i32 %subtract90, i32* %40, align 4
  store %list_node* %temp89, %list_node** %39, align 8
  br label %traverse_loop86

merge92:                                          ; preds = %traverse_loop86
  %44 = load %list_node*, %list_node** %39, align 8
  %temp93 = getelementptr inbounds %list_node, %list_node* %44, i32 0, i32 1
  store %list_node* %node_p77, %list_node** %temp93, align 8
  %malloccall94 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %45 = bitcast i8* %malloccall94 to %list_node**
  %malloccall95 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %46 = bitcast i8* %malloccall95 to i32*
  store %list_node* %list79, %list_node** %45, align 8
  store i32 0, i32* %46, align 4
  br label %traverse_loop96

traverse_loop96:                                  ; preds = %while_body97, %merge92
  %47 = load i32, i32* %46, align 4
  %temp101 = icmp ne i32 %47, 0
  br i1 %temp101, label %while_body97, label %merge102

while_body97:                                     ; preds = %traverse_loop96
  %48 = load %list_node*, %list_node** %45, align 8
  %temp98 = getelementptr inbounds %list_node, %list_node* %48, i32 0, i32 1
  %temp99 = load %list_node*, %list_node** %temp98, align 8
  %49 = load i32, i32* %46, align 4
  %subtract100 = sub i32 %49, 1
  store i32 %subtract100, i32* %46, align 4
  store %list_node* %temp99, %list_node** %45, align 8
  br label %traverse_loop96

merge102:                                         ; preds = %traverse_loop96
  %50 = load %list_node*, %list_node** %45, align 8
  %temp103 = getelementptr inbounds %list_node, %list_node* %node_p77, i32 0, i32 1
  store %list_node* %50, %list_node** %temp103, align 8
  br label %merge81

merge113:                                         ; preds = %merge134, %then114
  %res136 = load %list_node*, %list_node** %res, align 8
  ret %list_node* %res136

then114:                                          ; preds = %merge81
  %51 = getelementptr inbounds %list_node, %list_node* %node_p109, i32 0, i32 1
  store %list_node* %list111, %list_node** %51, align 8
  store %list_node* %node_p109, %list_node** %res, align 8
  br label %merge113

else115:                                          ; preds = %merge81
  %52 = load i32, i32* %36, align 4
  %malloccall116 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %53 = bitcast i8* %malloccall116 to %list_node**
  %malloccall117 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %54 = bitcast i8* %malloccall117 to i32*
  store %list_node* %list111, %list_node** %53, align 8
  store i32 %52, i32* %54, align 4
  br label %traverse_loop118

traverse_loop118:                                 ; preds = %while_body119, %else115
  %55 = load i32, i32* %54, align 4
  %temp123 = icmp ne i32 %55, 0
  br i1 %temp123, label %while_body119, label %merge124

while_body119:                                    ; preds = %traverse_loop118
  %56 = load %list_node*, %list_node** %53, align 8
  %temp120 = getelementptr inbounds %list_node, %list_node* %56, i32 0, i32 1
  %temp121 = load %list_node*, %list_node** %temp120, align 8
  %57 = load i32, i32* %54, align 4
  %subtract122 = sub i32 %57, 1
  store i32 %subtract122, i32* %54, align 4
  store %list_node* %temp121, %list_node** %53, align 8
  br label %traverse_loop118

merge124:                                         ; preds = %traverse_loop118
  %58 = load %list_node*, %list_node** %53, align 8
  %temp125 = getelementptr inbounds %list_node, %list_node* %58, i32 0, i32 1
  store %list_node* %node_p109, %list_node** %temp125, align 8
  %malloccall126 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %59 = bitcast i8* %malloccall126 to %list_node**
  %malloccall127 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %60 = bitcast i8* %malloccall127 to i32*
  store %list_node* %list111, %list_node** %59, align 8
  store i32 1, i32* %60, align 4
  br label %traverse_loop128

traverse_loop128:                                 ; preds = %while_body129, %merge124
  %61 = load i32, i32* %60, align 4
  %temp133 = icmp ne i32 %61, 0
  br i1 %temp133, label %while_body129, label %merge134

while_body129:                                    ; preds = %traverse_loop128
  %62 = load %list_node*, %list_node** %59, align 8
  %temp130 = getelementptr inbounds %list_node, %list_node* %62, i32 0, i32 1
  %temp131 = load %list_node*, %list_node** %temp130, align 8
  %63 = load i32, i32* %60, align 4
  %subtract132 = sub i32 %63, 1
  store i32 %subtract132, i32* %60, align 4
  store %list_node* %temp131, %list_node** %59, align 8
  br label %traverse_loop128

merge134:                                         ; preds = %traverse_loop128
  %64 = load %list_node*, %list_node** %59, align 8
  %temp135 = getelementptr inbounds %list_node, %list_node* %node_p109, i32 0, i32 1
  store %list_node* %64, %list_node** %temp135, align 8
  br label %merge113
}

; ModuleID = 'Graphite'
source_filename = "Graphite"

%list_node = type { i8*, %list_node* }
%node_struct = type { i8*, i1, i8* }

@l = global %list_node* null
@0 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@1 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@2 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@3 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@l2 = global %list_node* null
@l3 = global %list_node* null
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@i = global i32 0
@fmt.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@i2 = global i32 0
@fmt.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@i3 = global i32 0

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
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val10 = bitcast i8* %malloccall9 to i32*
  store i32 3, i32* %arr_val10, align 4
  %i8ptr11 = bitcast i32* %arr_val10 to i8*
  %malloccall12 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p13 = bitcast i8* %malloccall12 to %list_node*
  %valloc14 = getelementptr inbounds %list_node, %list_node* %node_p13, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p13, align 8
  store i8* %i8ptr11, i8** %valloc14, align 8
  %temp15 = getelementptr inbounds %list_node, %list_node* %node_p7, i32 0, i32 1
  store %list_node* %node_p13, %list_node** %temp15, align 8
  %malloccall16 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val17 = bitcast i8* %malloccall16 to i32*
  store i32 4, i32* %arr_val17, align 4
  %i8ptr18 = bitcast i32* %arr_val17 to i8*
  %malloccall19 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p20 = bitcast i8* %malloccall19 to %list_node*
  %valloc21 = getelementptr inbounds %list_node, %list_node* %node_p20, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p20, align 8
  store i8* %i8ptr18, i8** %valloc21, align 8
  %temp22 = getelementptr inbounds %list_node, %list_node* %node_p13, i32 0, i32 1
  store %list_node* %node_p20, %list_node** %temp22, align 8
  %malloccall23 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val24 = bitcast i8* %malloccall23 to i32*
  store i32 5, i32* %arr_val24, align 4
  %i8ptr25 = bitcast i32* %arr_val24 to i8*
  %malloccall26 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p27 = bitcast i8* %malloccall26 to %list_node*
  %valloc28 = getelementptr inbounds %list_node, %list_node* %node_p27, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p27, align 8
  store i8* %i8ptr25, i8** %valloc28, align 8
  %temp29 = getelementptr inbounds %list_node, %list_node* %node_p20, i32 0, i32 1
  store %list_node* %node_p27, %list_node** %temp29, align 8
  %malloccall30 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val31 = bitcast i8* %malloccall30 to i32*
  store i32 6, i32* %arr_val31, align 4
  %i8ptr32 = bitcast i32* %arr_val31 to i8*
  %malloccall33 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p34 = bitcast i8* %malloccall33 to %list_node*
  %valloc35 = getelementptr inbounds %list_node, %list_node* %node_p34, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p34, align 8
  store i8* %i8ptr32, i8** %valloc35, align 8
  %temp36 = getelementptr inbounds %list_node, %list_node* %node_p27, i32 0, i32 1
  store %list_node* %node_p34, %list_node** %temp36, align 8
  %temp37 = load %list_node*, %list_node** %new_list, align 8
  store %list_node* %temp37, %list_node** @l, align 8
  %malloccall38 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %new_list39 = bitcast i8* %malloccall38 to %list_node**
  %malloccall40 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %arr_val41 = bitcast i8* %malloccall40 to i8**
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @0, i32 0, i32 0), i8** %arr_val41, align 8
  %i8ptr42 = bitcast i8** %arr_val41 to i8*
  %malloccall43 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p44 = bitcast i8* %malloccall43 to %list_node*
  %valloc45 = getelementptr inbounds %list_node, %list_node* %node_p44, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p44, align 8
  store i8* %i8ptr42, i8** %valloc45, align 8
  store %list_node* %node_p44, %list_node** %new_list39, align 8
  %malloccall46 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %arr_val47 = bitcast i8* %malloccall46 to i8**
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1, i32 0, i32 0), i8** %arr_val47, align 8
  %i8ptr48 = bitcast i8** %arr_val47 to i8*
  %malloccall49 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p50 = bitcast i8* %malloccall49 to %list_node*
  %valloc51 = getelementptr inbounds %list_node, %list_node* %node_p50, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p50, align 8
  store i8* %i8ptr48, i8** %valloc51, align 8
  %temp52 = getelementptr inbounds %list_node, %list_node* %node_p44, i32 0, i32 1
  store %list_node* %node_p50, %list_node** %temp52, align 8
  %malloccall53 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %arr_val54 = bitcast i8* %malloccall53 to i8**
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @2, i32 0, i32 0), i8** %arr_val54, align 8
  %i8ptr55 = bitcast i8** %arr_val54 to i8*
  %malloccall56 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p57 = bitcast i8* %malloccall56 to %list_node*
  %valloc58 = getelementptr inbounds %list_node, %list_node* %node_p57, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p57, align 8
  store i8* %i8ptr55, i8** %valloc58, align 8
  %temp59 = getelementptr inbounds %list_node, %list_node* %node_p50, i32 0, i32 1
  store %list_node* %node_p57, %list_node** %temp59, align 8
  %malloccall60 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %arr_val61 = bitcast i8* %malloccall60 to i8**
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @3, i32 0, i32 0), i8** %arr_val61, align 8
  %i8ptr62 = bitcast i8** %arr_val61 to i8*
  %malloccall63 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p64 = bitcast i8* %malloccall63 to %list_node*
  %valloc65 = getelementptr inbounds %list_node, %list_node* %node_p64, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p64, align 8
  store i8* %i8ptr62, i8** %valloc65, align 8
  %temp66 = getelementptr inbounds %list_node, %list_node* %node_p57, i32 0, i32 1
  store %list_node* %node_p64, %list_node** %temp66, align 8
  %temp67 = load %list_node*, %list_node** %new_list39, align 8
  store %list_node* %temp67, %list_node** @l2, align 8
  %malloccall68 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %new_list69 = bitcast i8* %malloccall68 to %list_node**
  %temp70 = load %list_node*, %list_node** %new_list69, align 8
  store %list_node* %temp70, %list_node** @l3, align 8
  %list = load %list_node*, %list_node** @l, align 8
  %malloccall71 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %0 = bitcast i8* %malloccall71 to %list_node**
  %malloccall72 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %malloccall72 to i32*
  store i32 0, i32* %1, align 4
  store %list_node* %list, %list_node** %0, align 8
  %2 = icmp eq %list_node* %list, null
  br i1 %2, label %then, label %else

merge:                                            ; preds = %merge75, %then
  %3 = load i32, i32* %1, align 4
  store i32 %3, i32* @i, align 4
  %i = load i32, i32* @i, align 4
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.1, i32 0, i32 0), i32 %i)
  %list76 = load %list_node*, %list_node** @l2, align 8
  %malloccall77 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %4 = bitcast i8* %malloccall77 to %list_node**
  %malloccall78 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %5 = bitcast i8* %malloccall78 to i32*
  store i32 0, i32* %5, align 4
  store %list_node* %list76, %list_node** %4, align 8
  %6 = icmp eq %list_node* %list76, null
  br i1 %6, label %then80, label %else81

then:                                             ; preds = %entry
  store i32 0, i32* %1, align 4
  br label %merge

else:                                             ; preds = %entry
  br label %traverse_loop

traverse_loop:                                    ; preds = %while_body, %else
  %7 = load %list_node*, %list_node** %0, align 8
  %8 = icmp ne %list_node* %7, null
  br i1 %8, label %while_body, label %merge75

while_body:                                       ; preds = %traverse_loop
  %9 = load %list_node*, %list_node** %0, align 8
  %temp73 = getelementptr inbounds %list_node, %list_node* %9, i32 0, i32 1
  %temp74 = load %list_node*, %list_node** %temp73, align 8
  %10 = load i32, i32* %1, align 4
  %add = add i32 %10, 1
  store i32 %add, i32* %1, align 4
  store %list_node* %temp74, %list_node** %0, align 8
  br label %traverse_loop

merge75:                                          ; preds = %traverse_loop
  br label %merge

merge79:                                          ; preds = %merge87, %then80
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* @i2, align 4
  %i2 = load i32, i32* @i2, align 4
  %printf88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.3, i32 0, i32 0), i32 %i2)
  %list89 = load %list_node*, %list_node** @l3, align 8
  %malloccall90 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %12 = bitcast i8* %malloccall90 to %list_node**
  %malloccall91 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %13 = bitcast i8* %malloccall91 to i32*
  store i32 0, i32* %13, align 4
  store %list_node* %list89, %list_node** %12, align 8
  %14 = icmp eq %list_node* %list89, null
  br i1 %14, label %then93, label %else94

then80:                                           ; preds = %merge
  store i32 0, i32* %5, align 4
  br label %merge79

else81:                                           ; preds = %merge
  br label %traverse_loop82

traverse_loop82:                                  ; preds = %while_body83, %else81
  %15 = load %list_node*, %list_node** %4, align 8
  %16 = icmp ne %list_node* %15, null
  br i1 %16, label %while_body83, label %merge87

while_body83:                                     ; preds = %traverse_loop82
  %17 = load %list_node*, %list_node** %4, align 8
  %temp84 = getelementptr inbounds %list_node, %list_node* %17, i32 0, i32 1
  %temp85 = load %list_node*, %list_node** %temp84, align 8
  %18 = load i32, i32* %5, align 4
  %add86 = add i32 %18, 1
  store i32 %add86, i32* %5, align 4
  store %list_node* %temp85, %list_node** %4, align 8
  br label %traverse_loop82

merge87:                                          ; preds = %traverse_loop82
  br label %merge79

merge92:                                          ; preds = %merge100, %then93
  %19 = load i32, i32* %13, align 4
  store i32 %19, i32* @i3, align 4
  ret i32 0

then93:                                           ; preds = %merge79
  store i32 0, i32* %13, align 4
  br label %merge92

else94:                                           ; preds = %merge79
  br label %traverse_loop95

traverse_loop95:                                  ; preds = %while_body96, %else94
  %20 = load %list_node*, %list_node** %12, align 8
  %21 = icmp ne %list_node* %20, null
  br i1 %21, label %while_body96, label %merge100

while_body96:                                     ; preds = %traverse_loop95
  %22 = load %list_node*, %list_node** %12, align 8
  %temp97 = getelementptr inbounds %list_node, %list_node* %22, i32 0, i32 1
  %temp98 = load %list_node*, %list_node** %temp97, align 8
  %23 = load i32, i32* %13, align 4
  %add99 = add i32 %23, 1
  store i32 %add99, i32* %13, align 4
  store %list_node* %temp98, %list_node** %12, align 8
  br label %traverse_loop95

merge100:                                         ; preds = %traverse_loop95
  br label %merge92
}

declare noalias i8* @malloc(i32)

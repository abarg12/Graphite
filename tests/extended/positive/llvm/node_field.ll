; ModuleID = 'Graphite'
source_filename = "Graphite"

%node_struct = type { i8*, i1, i8* }

@n = global %node_struct* null
@f = global i1 false
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@int_value = global i32 0
@fmt.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@n2 = global %node_struct* null
@f2 = global i32 0
@fmt.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@nData = global i32 0
@fmt.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.5 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@0 = private unnamed_addr constant [25 x i8] c"I really hope this works\00", align 1
@1 = private unnamed_addr constant [96 x i8] c"if only grammatical symbols were allowed in strings in our language lol this has no personality\00", align 1
@n5 = global %node_struct* null
@myData = global i8* null
@myName = global i8* null
@myFlag = global i1 false
@fmt.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.8 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

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
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %data = bitcast i8* %malloccall1 to i32*
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name = bitcast i8* %malloccall2 to i8**
  %data_ptr = bitcast i32* %data to i8*
  %name_ptr = bitcast i8** %name to i8*
  %"name'" = getelementptr inbounds %node_struct, %node_struct* %node, i32 0, i32 0
  %"data'" = getelementptr inbounds %node_struct, %node_struct* %node, i32 0, i32 2
  store i8* %name_ptr, i8** %"name'", align 8
  store i8* %data_ptr, i8** %"data'", align 8
  store %node_struct* %node, %node_struct** @n, align 8
  %"lvar'" = load %node_struct*, %node_struct** @n, align 8
  %temp = getelementptr inbounds %node_struct, %node_struct* %"lvar'", i32 0, i32 1
  store i1 true, i1* %temp, align 1
  %"lvar'3" = load %node_struct*, %node_struct** @n, align 8
  %temp4 = getelementptr inbounds %node_struct, %node_struct* %"lvar'3", i32 0, i32 1
  %n.flag = load i1, i1* %temp4, align 1
  %n.flag5 = load i1, i1* %temp4, align 1
  store i1 %n.flag5, i1* @f, align 1
  %f = load i1, i1* @f, align 1
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i1 %f)
  %"lvar'6" = load %node_struct*, %node_struct** @n, align 8
  %temp7 = getelementptr inbounds %node_struct, %node_struct* %"lvar'6", i32 0, i32 2
  %malloccall8 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %bruh = bitcast i8* %malloccall8 to i32*
  store i32 5, i32* %bruh, align 4
  %name9 = bitcast i32* %bruh to i8*
  store i8* %name9, i8** %temp7, align 8
  %"lvar'10" = load %node_struct*, %node_struct** @n, align 8
  %temp11 = getelementptr inbounds %node_struct, %node_struct* %"lvar'10", i32 0, i32 2
  %n.data = load i8*, i8** %temp11, align 8
  %new_ptr = bitcast i8* %n.data to i32*
  %n.data12 = load i32, i32* %new_ptr, align 4
  store i32 %n.data12, i32* @int_value, align 4
  %int_value = load i32, i32* @int_value, align 4
  %printf13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.1, i32 0, i32 0), i32 %int_value)
  %n = load %node_struct*, %node_struct** @n, align 8
  %malloccall14 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node15 = bitcast i8* %malloccall14 to %node_struct*
  %malloccall16 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %data17 = bitcast i8* %malloccall16 to i32*
  %malloccall18 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name19 = bitcast i8* %malloccall18 to i8**
  %data_ptr20 = bitcast i32* %data17 to i8*
  %name_ptr21 = bitcast i8** %name19 to i8*
  %"name'22" = getelementptr inbounds %node_struct, %node_struct* %node15, i32 0, i32 0
  %"data'23" = getelementptr inbounds %node_struct, %node_struct* %node15, i32 0, i32 2
  store i8* %name_ptr21, i8** %"name'22", align 8
  store i8* %data_ptr20, i8** %"data'23", align 8
  store %node_struct* %node15, %node_struct** @n2, align 8
  store %node_struct* %n, %node_struct** @n2, align 8
  %"lvar'24" = load %node_struct*, %node_struct** @n, align 8
  %temp25 = getelementptr inbounds %node_struct, %node_struct* %"lvar'24", i32 0, i32 2
  %n.data26 = load i8*, i8** %temp25, align 8
  %new_ptr27 = bitcast i8* %n.data26 to i32*
  %n.data28 = load i32, i32* %new_ptr27, align 4
  store i32 %n.data28, i32* @f2, align 4
  %f2 = load i32, i32* @f2, align 4
  %printf29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.2, i32 0, i32 0), i32 %f2)
  %"lvar'30" = load %node_struct*, %node_struct** @n2, align 8
  %temp31 = getelementptr inbounds %node_struct, %node_struct* %"lvar'30", i32 0, i32 2
  %malloccall32 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %bruh33 = bitcast i8* %malloccall32 to i32*
  store i32 7, i32* %bruh33, align 4
  %name34 = bitcast i32* %bruh33 to i8*
  store i8* %name34, i8** %temp31, align 8
  %"lvar'35" = load %node_struct*, %node_struct** @n, align 8
  %temp36 = getelementptr inbounds %node_struct, %node_struct* %"lvar'35", i32 0, i32 2
  %n.data37 = load i8*, i8** %temp36, align 8
  %new_ptr38 = bitcast i8* %n.data37 to i32*
  %n.data39 = load i32, i32* %new_ptr38, align 4
  store i32 %n.data39, i32* @nData, align 4
  %nData = load i32, i32* @nData, align 4
  %printf40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.3, i32 0, i32 0), i32 %nData)
  call void @node_in_func()
  %return_a_node_result = call %node_struct* @return_a_node()
  %malloccall41 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node42 = bitcast i8* %malloccall41 to %node_struct*
  %malloccall43 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data44 = bitcast i8* %malloccall43 to i8**
  %malloccall45 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name46 = bitcast i8* %malloccall45 to i8**
  %data_ptr47 = bitcast i8** %data44 to i8*
  %name_ptr48 = bitcast i8** %name46 to i8*
  %"name'49" = getelementptr inbounds %node_struct, %node_struct* %node42, i32 0, i32 0
  %"data'50" = getelementptr inbounds %node_struct, %node_struct* %node42, i32 0, i32 2
  store i8* %name_ptr48, i8** %"name'49", align 8
  store i8* %data_ptr47, i8** %"data'50", align 8
  store %node_struct* %node42, %node_struct** @n5, align 8
  store %node_struct* %return_a_node_result, %node_struct** @n5, align 8
  %"lvar'51" = load %node_struct*, %node_struct** @n5, align 8
  %temp52 = getelementptr inbounds %node_struct, %node_struct* %"lvar'51", i32 0, i32 2
  %n5.data = load i8*, i8** %temp52, align 8
  %new_ptr53 = bitcast i8* %n5.data to i8**
  %n5.data54 = load i8*, i8** %new_ptr53, align 8
  store i8* %n5.data54, i8** @myData, align 8
  %"lvar'55" = load %node_struct*, %node_struct** @n5, align 8
  %temp56 = getelementptr inbounds %node_struct, %node_struct* %"lvar'55", i32 0, i32 0
  %n5.name = load i8*, i8** %temp56, align 8
  %new_ptr57 = bitcast i8* %n5.name to i8**
  %n5.name58 = load i8*, i8** %new_ptr57, align 8
  store i8* %n5.name58, i8** @myName, align 8
  %"lvar'59" = load %node_struct*, %node_struct** @n5, align 8
  %temp60 = getelementptr inbounds %node_struct, %node_struct* %"lvar'59", i32 0, i32 1
  %n5.flag = load i1, i1* %temp60, align 1
  %n5.flag61 = load i1, i1* %temp60, align 1
  store i1 %n5.flag61, i1* @myFlag, align 1
  %myData = load i8*, i8** @myData, align 8
  %printf62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.6, i32 0, i32 0), i8* %myData)
  %myName = load i8*, i8** @myName, align 8
  %printf63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.7, i32 0, i32 0), i8* %myName)
  %myFlag = load i1, i1* @myFlag, align 1
  %printf64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.8, i32 0, i32 0), i1 %myFlag)
  ret i32 0
}

declare noalias i8* @malloc(i32)

define void @node_in_func() {
entry:
  %m = alloca %node_struct*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node = bitcast i8* %malloccall to %node_struct*
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data = bitcast i8* %malloccall1 to i8**
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name = bitcast i8* %malloccall2 to i8**
  %data_ptr = bitcast i8** %data to i8*
  %name_ptr = bitcast i8** %name to i8*
  %"name'" = getelementptr inbounds %node_struct, %node_struct* %node, i32 0, i32 0
  %"data'" = getelementptr inbounds %node_struct, %node_struct* %node, i32 0, i32 2
  store i8* %name_ptr, i8** %"name'", align 8
  store i8* %data_ptr, i8** %"data'", align 8
  store %node_struct* %node, %node_struct** %m, align 8
  %"lvar'" = load %node_struct*, %node_struct** %m, align 8
  %temp = getelementptr inbounds %node_struct, %node_struct* %"lvar'", i32 0, i32 1
  store i1 false, i1* %temp, align 1
  %"lvar'3" = load %node_struct*, %node_struct** %m, align 8
  %temp4 = getelementptr inbounds %node_struct, %node_struct* %"lvar'3", i32 0, i32 1
  %m.flag = load i1, i1* %temp4, align 1
  %m.flag5 = load i1, i1* %temp4, align 1
  %f = alloca i1, align 1
  store i1 %m.flag5, i1* %f, align 1
  %f6 = load i1, i1* %f, align 1
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.4, i32 0, i32 0), i1 %f6)
  %"lvar'7" = load %node_struct*, %node_struct** @n, align 8
  %temp8 = getelementptr inbounds %node_struct, %node_struct* %"lvar'7", i32 0, i32 2
  %n.data = load i8*, i8** %temp8, align 8
  %new_ptr = bitcast i8* %n.data to i32*
  %n.data9 = load i32, i32* %new_ptr, align 4
  %g = alloca i32, align 4
  store i32 %n.data9, i32* %g, align 4
  %g10 = load i32, i32* %g, align 4
  %printf11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.5, i32 0, i32 0), i32 %g10)
  ret void
}

define %node_struct* @return_a_node() {
entry:
  %n1 = alloca %node_struct*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node = bitcast i8* %malloccall to %node_struct*
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data = bitcast i8* %malloccall1 to i8**
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name = bitcast i8* %malloccall2 to i8**
  %data_ptr = bitcast i8** %data to i8*
  %name_ptr = bitcast i8** %name to i8*
  %"name'" = getelementptr inbounds %node_struct, %node_struct* %node, i32 0, i32 0
  %"data'" = getelementptr inbounds %node_struct, %node_struct* %node, i32 0, i32 2
  store i8* %name_ptr, i8** %"name'", align 8
  store i8* %data_ptr, i8** %"data'", align 8
  store %node_struct* %node, %node_struct** %n1, align 8
  %"lvar'" = load %node_struct*, %node_struct** %n1, align 8
  %temp = getelementptr inbounds %node_struct, %node_struct* %"lvar'", i32 0, i32 2
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %bruh = bitcast i8* %malloccall3 to i8**
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @0, i32 0, i32 0), i8** %bruh, align 8
  %name4 = bitcast i8** %bruh to i8*
  store i8* %name4, i8** %temp, align 8
  %"lvar'5" = load %node_struct*, %node_struct** %n1, align 8
  %temp6 = getelementptr inbounds %node_struct, %node_struct* %"lvar'5", i32 0, i32 0
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %bruh8 = bitcast i8* %malloccall7 to i8**
  store i8* getelementptr inbounds ([96 x i8], [96 x i8]* @1, i32 0, i32 0), i8** %bruh8, align 8
  %name9 = bitcast i8** %bruh8 to i8*
  store i8* %name9, i8** %temp6, align 8
  %"lvar'10" = load %node_struct*, %node_struct** %n1, align 8
  %temp11 = getelementptr inbounds %node_struct, %node_struct* %"lvar'10", i32 0, i32 1
  store i1 true, i1* %temp11, align 1
  %n112 = load %node_struct*, %node_struct** %n1, align 8
  ret %node_struct* %n112
}

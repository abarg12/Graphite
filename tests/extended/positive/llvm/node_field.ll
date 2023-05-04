; ModuleID = 'Graphite'
source_filename = "Graphite"

%node_struct = type { i8*, i1, i8* }

@n = global %node_struct* null
@f = global i1 false
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@int_value = global i32 0
@fmt.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @printf(i8*, ...)

declare i8* @array_get(i8*, i32, ...)

declare i8* @array_set(i8*, i32, i8*, ...)

declare i8* @array_add(i8*, i32, i8*, ...)

define i32 @main() {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node = bitcast i8* %malloccall to %node_struct*
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %data = bitcast i8* %malloccall1 to i32*
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  %name = bitcast i8* %malloccall2 to i8**
  %data_ptr = bitcast i32* %data to i8*
  %name_ptr = bitcast i8** %name to i8*
  %"name'" = getelementptr inbounds %node_struct, %node_struct* %node, i32 0, i32 0
  %"data'" = getelementptr inbounds %node_struct, %node_struct* %node, i32 0, i32 2
  store i8* %name_ptr, i8** %"name'"
  store i8* %data_ptr, i8** %"data'"
  store %node_struct* %node, %node_struct** @n
  %"lvar'" = load %node_struct*, %node_struct** @n
  %temp = getelementptr inbounds %node_struct, %node_struct* %"lvar'", i32 0, i32 1
  store i1 true, i1* %temp
  %"lvar'3" = load %node_struct*, %node_struct** @n
  %temp4 = getelementptr inbounds %node_struct, %node_struct* %"lvar'3", i32 0, i32 1
  %n.flag = load i1, i1* %temp4
  %n.flag5 = load i1, i1* %temp4
  store i1 %n.flag5, i1* @f
  %f = load i1, i1* @f
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i1 %f)
  %"lvar'6" = load %node_struct*, %node_struct** @n
  %temp7 = getelementptr inbounds %node_struct, %node_struct* %"lvar'6", i32 0, i32 2
  %malloccall8 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %bruh = bitcast i8* %malloccall8 to i32*
  store i32 5, i32* %bruh
  %name9 = bitcast i32* %bruh to i8*
  store i8* %name9, i8** %temp7
  %"lvar'10" = load %node_struct*, %node_struct** @n
  %temp11 = getelementptr inbounds %node_struct, %node_struct* %"lvar'10", i32 0, i32 2
  %n.data = load i8*, i8** %temp11
  %new_ptr = bitcast i8* %n.data to i32*
  %n.data12 = load i32, i32* %new_ptr
  store i32 %n.data12, i32* @int_value
  %int_value = load i32, i32* @int_value
  %printf13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.1, i32 0, i32 0), i32 %int_value)
  call void @node_in_func()
  ret i32 0
}

declare noalias i8* @malloc(i32)

define void @node_in_func() {
entry:
  %m = alloca %node_struct*
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node = bitcast i8* %malloccall to %node_struct*
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  %data = bitcast i8* %malloccall1 to i8**
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  %name = bitcast i8* %malloccall2 to i8**
  %data_ptr = bitcast i8** %data to i8*
  %name_ptr = bitcast i8** %name to i8*
  %"name'" = getelementptr inbounds %node_struct, %node_struct* %node, i32 0, i32 0
  %"data'" = getelementptr inbounds %node_struct, %node_struct* %node, i32 0, i32 2
  store i8* %name_ptr, i8** %"name'"
  store i8* %data_ptr, i8** %"data'"
  store %node_struct* %node, %node_struct** %m
  %"lvar'" = load %node_struct*, %node_struct** %m
  %temp = getelementptr inbounds %node_struct, %node_struct* %"lvar'", i32 0, i32 1
  store i1 false, i1* %temp
  %"lvar'3" = load %node_struct*, %node_struct** %m
  %temp4 = getelementptr inbounds %node_struct, %node_struct* %"lvar'3", i32 0, i32 1
  %m.flag = load i1, i1* %temp4
  %m.flag5 = load i1, i1* %temp4
  %f = alloca i1
  store i1 %m.flag5, i1* %f
  %f6 = load i1, i1* %f
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.2, i32 0, i32 0), i1 %f6)
  %"lvar'7" = load %node_struct*, %node_struct** @n
  %temp8 = getelementptr inbounds %node_struct, %node_struct* %"lvar'7", i32 0, i32 2
  %n.data = load i8*, i8** %temp8
  %new_ptr = bitcast i8* %n.data to i32*
  %n.data9 = load i32, i32* %new_ptr
  %g = alloca i32
  store i32 %n.data9, i32* %g
  %g10 = load i32, i32* %g
  %printf11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.3, i32 0, i32 0), i32 %g10)
  ret void
}

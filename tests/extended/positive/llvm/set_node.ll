; ModuleID = 'Graphite'
source_filename = "Graphite"

%node_struct = type { i8*, i1, i8* }

@0 = private unnamed_addr constant [10 x i8] c"thissName\00", align 1
@fmt = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

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
  %func_result = call i32 @func()
  ret i32 0
}

define i32 @func() {
entry:
  %please_work = alloca %node_struct*, align 8
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
  store %node_struct* %node, %node_struct** %please_work, align 8
  %"lvar'" = load %node_struct*, %node_struct** %please_work, align 8
  %temp = getelementptr inbounds %node_struct, %node_struct* %"lvar'", i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @0, i32 0, i32 0), i8** %temp, align 8
  %"lvar'3" = load %node_struct*, %node_struct** %please_work, align 8
  %temp4 = getelementptr inbounds %node_struct, %node_struct* %"lvar'3", i32 0, i32 0
  %please_work.name = load i8*, i8** %temp4, align 8
  %srcNode = load i8*, i8** %temp4, align 8
  %x = alloca i8*, align 8
  store i8* %srcNode, i8** %x, align 8
  %x5 = load i8*, i8** %x, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i8* %x5)
  ret i32 1
}

declare noalias i8* @malloc(i32)

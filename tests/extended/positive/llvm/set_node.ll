; ModuleID = 'Graphite'
source_filename = "Graphite"

%node_t = type { i8*, i1, i8* }

@0 = private unnamed_addr constant [10 x i8] c"thissName\00", align 1
@fmt = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

declare i32 @printf(i8*, ...)

declare i8* @array_get(i8*, i32, ...)

declare i8* @array_set(i8*, i32, i8*, ...)

define i32 @main() {
entry:
  %func_result = call i32 @func()
  ret i32 0
}

define i32 @func() {
entry:
  %please_work = alloca %node_t
  %temp = getelementptr inbounds %node_t, %node_t* %please_work, i32 0, i32 0
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  %bruh = bitcast i8* %malloccall to i8**
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @0, i32 0, i32 0), i8** %bruh
  %name = bitcast i8** %bruh to i8*
  store i8* %name, i8** %temp
  %temp1 = getelementptr inbounds %node_t, %node_t* %please_work, i32 0, i32 0
  %please_work.name = load i8*, i8** %temp1
  %name2 = bitcast i8* %please_work.name to i8**
  %please_work.name3 = load i8*, i8** %name2
  %x = alloca i8*
  store i8* %please_work.name3, i8** %x
  %x4 = load i8*, i8** %x
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i8* %x4)
  ret i32 1
}

declare noalias i8* @malloc(i32)

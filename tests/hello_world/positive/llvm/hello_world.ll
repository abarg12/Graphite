; ModuleID = 'Graphite'
source_filename = "Graphite"

@i = global i32 0
@0 = private unnamed_addr constant [14 x i8] c"howdy Richard\00", align 1
@x = global i8* null
@1 = private unnamed_addr constant [13 x i8] c"Howdy Folks!\00", align 1
@2 = private unnamed_addr constant [14 x i8] c"Howdy Folks!\0A\00", align 1

declare i32 @printf(i8*, ...)

declare i8* @array_get(i8*, i32, ...)

declare i8* @array_set(i8*, i32, i8*, ...)

declare i8* @array_add(i8*, i32, i8*, ...)

define i32 @main() {
entry:
  store i32 2, i32* @i
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0), i8** @x
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0))
  ret i32 0
}

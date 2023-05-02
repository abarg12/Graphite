; ModuleID = 'Graphite'
source_filename = "Graphite"

@i = global i32 0
@0 = private unnamed_addr constant [14 x i8] c"howdy Richard\00", align 1
@x = global i8* null
@1 = private unnamed_addr constant [14 x i8] c"Howdy Folks!\0A\00", align 1

declare i32 @printf(i8*, ...)

declare i8* @array_get(i8*, i32, ...)

define i32 @main() {
entry:
  store i32 2, i32* @i, align 4
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0), i8** @x, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0))
  ret i32 0
}

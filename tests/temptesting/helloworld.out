; ModuleID = 'Graphite'
source_filename = "Graphite"

@i = global i32 2
@0 = private unnamed_addr constant [16 x i8] c"\22howdy Richard\22\00", align 1
@x = global i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0)
@1 = private unnamed_addr constant [15 x i8] c"\22Howdy Folks!\22\00", align 1

declare i32 @printf(i8*, ...)

define i32 @main() {
entry:
  store i32 2, i32* @i, align 4
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8** @x, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0))
  ret i32 0
}

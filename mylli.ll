; ModuleID = 'Graphite'
source_filename = "Graphite"

@0 = private unnamed_addr constant [11 x i8] c"\22plz work\22\00", align 1
@1 = private unnamed_addr constant [7 x i8] c"\22test\22\00", align 1

declare i32 @printf(i8*, ...)

define i32 @main() {
entry:
  %z = alloca i8*
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @0, i32 0, i32 0), i8** %z
  %y = alloca i32
  store i32 4, i32* %y
  %0 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1, i32 0, i32 0))
  ret i32 0
}

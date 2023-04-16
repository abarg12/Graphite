; ModuleID = 'Graphite'
source_filename = "Graphite"

@0 = private unnamed_addr constant [2 x i8] c"3\00", align 1

declare i32 @printf(i8*, ...)

define i32 @main() {
entry:
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @0, i32 0, i32 0))
  ret i32 0
}
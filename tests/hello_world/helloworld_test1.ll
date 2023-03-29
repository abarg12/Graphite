; ModuleID = 'Graphite'
source_filename = "Graphite"

@0 = private unnamed_addr constant [6 x i8] c"\22hey\22\00", align 1

declare i32 @printf(i8*, ...)

define void @main() {
entry:
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @0, i32 0, i32 0))
  ret void
}

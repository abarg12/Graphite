; ModuleID = 'Graphite'
source_filename = "Graphite"

declare i32 @printf(i8*, ...)

define void @main() {
entry:
  %printf = call i32 (i8*, ...) @printf([6 x i8] c"\22some\22")
  ret void
}

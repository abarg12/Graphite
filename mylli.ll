; ModuleID = 'Graphite'
source_filename = "Graphite"

@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @printf(i8*, ...)

define i32 @main() {
entry:
  %a = alloca i32, align 4
  store i32 1, i32* %a, align 4
  %b = alloca i32, align 4
  store i32 2, i32* %b, align 4
  %c = alloca i32, align 4
  store i32 3, i32* %c, align 4
  %c1 = load i32, i32* %c, align 4
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %c1)
  %c2 = load i32, i32* %c, align 4
  %c3 = load i32, i32* %c, align 4
  %d = add i32 %c2, %c3
  %d4 = alloca i32, align 4
  store i32 %d, i32* %d4, align 4
  %d5 = load i32, i32* %d4, align 4
  %printf6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.1, i32 0, i32 0), i32 %d5)
  ret i32 0
}

; ModuleID = 'Graphite'
source_filename = "Graphite"

@0 = private unnamed_addr constant [11 x i8] c"\22plz work\22\00", align 1
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

declare i32 @printf(i8*, ...)

define i32 @main() {
entry:
  %z = alloca i8*, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @0, i32 0, i32 0), i8** %z, align 8
  %y = alloca i32, align 4
  store i32 4, i32* %y, align 4
  %z1 = alloca i32, align 4
  store i32 3, i32* %z1, align 4
  %y2 = load i32, i32* %y, align 4
  %z3 = load i32, i32* %z1, align 4
  %a = add i32 %y2, %z3
  %a4 = alloca i32, align 4
  store i32 %a, i32* %a4, align 4
  %a5 = load i32, i32* %a4, align 4
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %a5)
  %z6 = load i8*, i8** %z, align 8
  %printf7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.1, i32 0, i32 0), i8* %z6)
  ret i32 0
}

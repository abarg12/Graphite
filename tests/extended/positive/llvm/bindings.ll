; ModuleID = 'Graphite'
source_filename = "Graphite"

@a = global i32 0
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@b = global i8* null
@0 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@fmt.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@c = global double 0.000000e+00
@fmt.2 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@d = global i1 false
@fmt.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @printf(i8*, ...)

declare i8* @array_get(i8*, i32, ...)

declare i8* @array_set(i8*, i32, i8*, ...)

define i32 @main() {
entry:
  store i32 1, i32* @a
  %a = load i32, i32* @a
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %a)
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @0, i32 0, i32 0), i8** @b
  %b = load i8*, i8** @b
  %printf1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.1, i32 0, i32 0), i8* %b)
  store double 0x3FF1C71C53F39D1B, double* @c
  %c = load double, double* @c
  %printf2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.2, i32 0, i32 0), double %c)
  store i1 false, i1* @d
  %d = load i1, i1* @d
  %printf3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.3, i32 0, i32 0), i1 %d)
  ret i32 0
}

; ModuleID = 'Graphite'
source_filename = "Graphite"

@0 = private unnamed_addr constant [8 x i8] c"3.1415\0A\00", align 1
@1 = private unnamed_addr constant [31 x i8] c"three point one four one five\0A\00", align 1
@2 = private unnamed_addr constant [3 x i8] c"3\0A\00", align 1
@3 = private unnamed_addr constant [3 x i8] c"1\0A\00", align 1
@a = global i32 0
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@b = global double 0.000000e+00
@fmt.1 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@4 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@c = global i8* null
@fmt.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@d = global i1 false
@fmt.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @printf(i8*, ...)

declare i8* @array_get(i8*, i32, ...)

declare i8* @array_set(i8*, i32, i8*, ...)

declare i8* @array_add(i8*, i32, i8*, ...)

define i32 @main() {
entry:
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @0, i32 0, i32 0))
  %printf1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @1, i32 0, i32 0))
  %printf2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @2, i32 0, i32 0))
  %printf3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @3, i32 0, i32 0))
  store i32 10, i32* @a, align 4
  %a = load i32, i32* @a, align 4
  %printf4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %a)
  store double 1.234560e+02, double* @b, align 8
  %b = load double, double* @b, align 8
  %printf5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.1, i32 0, i32 0), double %b)
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @4, i32 0, i32 0), i8** @c, align 8
  %c = load i8*, i8** @c, align 8
  %printf6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.2, i32 0, i32 0), i8* %c)
  store i1 true, i1* @d, align 1
  %d = load i1, i1* @d, align 1
  %printf7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.3, i32 0, i32 0), i1 %d)
  ret i32 0
}

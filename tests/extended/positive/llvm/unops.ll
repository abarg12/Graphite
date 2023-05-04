; ModuleID = 'Graphite'
source_filename = "Graphite"

@0 = private unnamed_addr constant [5 x i8] c"-12\0A\00", align 1
@1 = private unnamed_addr constant [8 x i8] c"-0.111\0A\00", align 1
@a = global i32 0
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@b = global double 0.000000e+00
@fmt.2 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.3 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@2 = private unnamed_addr constant [3 x i8] c"1\0A\00", align 1
@c = global i1 false
@fmt.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.5 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @printf(i8*, ...)

declare i8* @array_get(i8*, i32, ...)

declare i8* @array_set(i8*, i32, i8*, ...)

declare i8* @array_add(i8*, i32, i8*, ...)

define i32 @main() {
entry:
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @0, i32 0, i32 0))
  %printf1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0))
  store i32 2, i32* @a
  %a = load i32, i32* @a
  %printf2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %a)
  %a3 = load i32, i32* @a
  %tmp = sub i32 0, %a3
  store i32 %tmp, i32* @a
  %a4 = load i32, i32* @a
  %printf5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.1, i32 0, i32 0), i32 %a4)
  store double 4.224000e+01, double* @b
  %b = load double, double* @b
  %printf6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.2, i32 0, i32 0), double %b)
  %b7 = load double, double* @b
  %tmp8 = fneg double %b7
  store double %tmp8, double* @b
  %b9 = load double, double* @b
  %printf10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.3, i32 0, i32 0), double %b9)
  %printf11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @2, i32 0, i32 0))
  store i1 true, i1* @c
  %c = load i1, i1* @c
  %printf12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.4, i32 0, i32 0), i1 %c)
  %c13 = load i1, i1* @c
  %tmp14 = xor i1 %c13, true
  store i1 %tmp14, i1* @c
  %c15 = load i1, i1* @c
  %printf16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.5, i32 0, i32 0), i1 %c15)
  ret i32 0
}

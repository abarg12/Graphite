; ModuleID = 'Graphite'
source_filename = "Graphite"

@0 = private unnamed_addr constant [5 x i8] c"-12\0A\00", align 1
@1 = private unnamed_addr constant [8 x i8] c"-0.111\0A\00", align 1
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.2 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.3 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@2 = private unnamed_addr constant [3 x i8] c"1\0A\00", align 1
@fmt.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.5 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @printf(i8*, ...)

define i32 @main() {
entry:
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @0, i32 0, i32 0))
  %printf1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0))
  %a = alloca i32
  store i32 2, i32* %a
  %a2 = load i32, i32* %a
  %printf3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %a2)
  %a4 = load i32, i32* %a
  %tmp = sub i32 0, %a4
  store i32 %tmp, i32* %a
  %a5 = load i32, i32* %a
  %printf6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.1, i32 0, i32 0), i32 %a5)
  %b = alloca double
  store double 4.224000e+01, double* %b
  %b7 = load double, double* %b
  %printf8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.2, i32 0, i32 0), double %b7)
  %b9 = load double, double* %b
  %tmp10 = fneg double %b9
  store double %tmp10, double* %b
  %b11 = load double, double* %b
  %printf12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.3, i32 0, i32 0), double %b11)
  %printf13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @2, i32 0, i32 0))
  %c = alloca i1
  store i1 true, i1* %c
  %c14 = load i1, i1* %c
  %printf15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.4, i32 0, i32 0), i1 %c14)
  %c16 = load i1, i1* %c
  %tmp17 = xor i1 %c16, true
  store i1 %tmp17, i1* %c
  %c18 = load i1, i1* %c
  %printf19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.5, i32 0, i32 0), i1 %c18)
  ret i32 0
}

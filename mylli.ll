; ModuleID = 'Graphite'
source_filename = "Graphite"

@0 = private unnamed_addr constant [8 x i8] c"3.1415\0A\00", align 1
@1 = private unnamed_addr constant [33 x i8] c"\22three point one four one five\22\0A\00", align 1
@2 = private unnamed_addr constant [3 x i8] c"3\0A\00", align 1
@3 = private unnamed_addr constant [6 x i8] c"true\0A\00", align 1
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.1 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@4 = private unnamed_addr constant [9 x i8] c"\22string\22\00", align 1
@fmt.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.3 = private unnamed_addr constant [4 x i8] c"%B\0A\00", align 1

declare i32 @printf(i8*, ...)

define i32 @main() {
entry:
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @0, i32 0, i32 0))
  %printf1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @1, i32 0, i32 0))
  %printf2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @2, i32 0, i32 0))
  %printf3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @3, i32 0, i32 0))
  %a = alloca i32, align 4
  store i32 10, i32* %a, align 4
  %a4 = load i32, i32* %a, align 4
  %printf5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %a4)
  %b = alloca double, align 8
  store double 1.234560e+02, double* %b, align 8
  %b6 = load double, double* %b, align 8
  %printf7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.1, i32 0, i32 0), double %b6)
  %c = alloca i8*, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8** %c, align 8
  %c8 = load i8*, i8** %c, align 8
  %printf9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.2, i32 0, i32 0), i8* %c8)
  %d = alloca i1, align 1
  store i1 true, i1* %d, align 1
  %d10 = load i1, i1* %d, align 1
  %printf11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.3, i32 0, i32 0), i1 %d10)
  ret i32 0
}

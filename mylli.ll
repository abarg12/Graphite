; ModuleID = 'Graphite'
source_filename = "Graphite"

@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@0 = private unnamed_addr constant [6 x i8] c"\22abc\22\00", align 1
@fmt.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@1 = private unnamed_addr constant [6 x i8] c"\22123\22\00", align 1
@fmt.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.4 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.5 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@2 = private unnamed_addr constant [8 x i8] c"99.9999\00", align 1
@fmt.6 = private unnamed_addr constant [4 x i8] c"%B\0A\00", align 1
@fmt.7 = private unnamed_addr constant [4 x i8] c"%B\0A\00", align 1

declare i32 @printf(i8*, ...)

define i32 @main() {
entry:
  %a = alloca i32, align 4
  store i32 1, i32* %a, align 4
  %a1 = load i32, i32* %a, align 4
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %a1)
  %b = alloca i32, align 4
  store i32 2, i32* %b, align 4
  %b2 = load i32, i32* %b, align 4
  %printf3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.1, i32 0, i32 0), i32 %b2)
  %c = alloca i8*, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @0, i32 0, i32 0), i8** %c, align 8
  %c4 = load i8*, i8** %c, align 8
  %printf5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.2, i32 0, i32 0), i8* %c4)
  %d = alloca i8*, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1, i32 0, i32 0), i8** %d, align 8
  %d6 = load i8*, i8** %d, align 8
  %printf7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.3, i32 0, i32 0), i8* %d6)
  %e = alloca double, align 8
  store double 0x3FF1C71C53F39D1B, double* %e, align 8
  %e8 = load double, double* %e, align 8
  %printf9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.4, i32 0, i32 0), double %e8)
  %f = alloca double, align 8
  store double 9.999990e+02, double* %f, align 8
  %f10 = load double, double* %f, align 8
  %printf11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.5, i32 0, i32 0), double %f10)
  %printf12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2, i32 0, i32 0))
  %g = alloca i1, align 1
  store i1 false, i1* %g, align 1
  %g13 = load i1, i1* %g, align 1
  %printf14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.6, i32 0, i32 0), i1 %g13)
  %h = alloca i1, align 1
  store i1 true, i1* %h, align 1
  %h15 = load i1, i1* %h, align 1
  %printf16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.7, i32 0, i32 0), i1 %h15)
  ret i32 0
}

; ModuleID = 'Graphite'
source_filename = "Graphite"

@0 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@1 = private unnamed_addr constant [29 x i8] c"addThings function result: \0A\00", align 1
@fmt = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@3 = private unnamed_addr constant [30 x i8] c"testThings function result: \0A\00", align 1
@fmt.1 = private unnamed_addr constant [4 x i8] c"%B\0A\00", align 1
@4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@5 = private unnamed_addr constant [31 x i8] c"scopeTester function result: \0A\00", align 1
@fmt.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @printf(i8*, ...)

define i32 @main() {
entry:
  %first = alloca double, align 8
  store double 2.500000e+00, double* %first, align 8
  %second = alloca double, align 8
  store double 3.500000e+00, double* %second, align 8
  %second1 = load double, double* %second, align 8
  %first2 = load double, double* %first, align 8
  %result = call double @addThings(double %first2, double %second1)
  %result3 = alloca double, align 8
  store double %result, double* %result3, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @0, i32 0, i32 0))
  %printf4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @1, i32 0, i32 0))
  %result5 = load double, double* %result3, align 8
  %printf6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), double %result5)
  %result7 = load double, double* %result3, align 8
  %result2 = call i1 @testThings(double %result7, double 1.000000e+01, i1 true)
  %result28 = alloca i1, align 1
  store i1 %result2, i1* %result28, align 1
  %printf9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @2, i32 0, i32 0))
  %printf10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @3, i32 0, i32 0))
  %result211 = load i1, i1* %result28, align 1
  %printf12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.1, i32 0, i32 0), i1 %result211)
  %x = alloca i32, align 4
  store i32 1, i32* %x, align 4
  %y = alloca i32, align 4
  store i32 2, i32* %y, align 4
  %result313 = call i32 @scopeTester(i32 3, i32 4)
  %result314 = alloca i32, align 4
  store i32 %result313, i32* %result314, align 4
  %printf15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @4, i32 0, i32 0))
  %printf16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @5, i32 0, i32 0))
  %result317 = load i32, i32* %result314, align 4
  %printf18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.2, i32 0, i32 0), i32 %result317)
  ret i32 0
}

define double @addThings(double %z1, double %y2) {
entry:
  %z = alloca double, align 8
  store double %z1, double* %z, align 8
  %y = alloca double, align 8
  store double %y2, double* %y, align 8
  %z3 = load double, double* %z, align 8
  %y4 = load double, double* %y, align 8
  %x = fadd double %z3, %y4
  %x5 = alloca double, align 8
  store double %x, double* %x5, align 8
  %x6 = load double, double* %x5, align 8
  ret double %x6
}

define i1 @testThings(double %x1, double %y2, i1 %b3) {
entry:
  %x = alloca double, align 8
  store double %x1, double* %x, align 8
  %y = alloca double, align 8
  store double %y2, double* %y, align 8
  %b = alloca i1, align 1
  store i1 %b3, i1* %b, align 1
  %x4 = load double, double* %x, align 8
  %y5 = load double, double* %y, align 8
  %a = fcmp olt double %x4, %y5
  %a6 = alloca i1, align 1
  store i1 %a, i1* %a6, align 1
  %a7 = load i1, i1* %a6, align 1
  %b8 = load i1, i1* %b, align 1
  %res = or i1 %a7, %b8
  %res9 = alloca i1, align 1
  store i1 %res, i1* %res9, align 1
  %res10 = load i1, i1* %res9, align 1
  ret i1 %res10
}

define i32 @scopeTester(i32 %x1, i32 %y2) {
entry:
  %x = alloca i32, align 4
  store i32 %x1, i32* %x, align 4
  %y = alloca i32, align 4
  store i32 %y2, i32* %y, align 4
  %x3 = alloca i32, align 4
  store i32 80, i32* %x3, align 4
  %y4 = alloca i32, align 4
  store i32 20, i32* %y4, align 4
  %x5 = load i32, i32* %x3, align 4
  %y6 = load i32, i32* %y4, align 4
  %tmp = add i32 %x5, %y6
  ret i32 %tmp
}

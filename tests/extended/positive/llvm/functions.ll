; ModuleID = 'Graphite'
source_filename = "Graphite"

%node_struct = type { i8*, i1, i8* }

@first = global double 0.000000e+00
@second = global double 0.000000e+00
@result = global double 0.000000e+00
@0 = private unnamed_addr constant [28 x i8] c"addThings function result:\0A\00", align 1
@fmt = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@result2 = global i1 false
@1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@2 = private unnamed_addr constant [29 x i8] c"testThings function result:\0A\00", align 1
@fmt.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@x = global i32 0
@y = global i32 0
@result3 = global i32 0
@3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@4 = private unnamed_addr constant [30 x i8] c"scopeTester function result:\0A\00", align 1
@fmt.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @printf(i8*, ...)

declare i32 @strcmp(i8*, i8*)

declare i8* @array_get(i8*, i32, ...)

declare i8* @array_set(i8*, i32, i8*, ...)

declare i8* @array_len(i8*, ...)

declare i8 @nodeExists(%node_struct*, ...)

declare i8* @array_add(i8*, i32, i8*, ...)

define i32 @main() {
entry:
  store double 2.500000e+00, double* @first, align 8
  store double 3.500000e+00, double* @second, align 8
  %second = load double, double* @second, align 8
  %first = load double, double* @first, align 8
  %addThings_result = call double @addThings(double %first, double %second)
  store double %addThings_result, double* @result, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @0, i32 0, i32 0))
  %result = load double, double* @result, align 8
  %printf1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), double %result)
  %result2 = load double, double* @result, align 8
  %testThings_result = call i1 @testThings(double %result2, double 1.000000e+01, i1 true)
  store i1 %testThings_result, i1* @result2, align 1
  %printf3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1, i32 0, i32 0))
  %printf4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2, i32 0, i32 0))
  %result25 = load i1, i1* @result2, align 1
  %printf6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.1, i32 0, i32 0), i1 %result25)
  store i32 1, i32* @x, align 4
  store i32 2, i32* @y, align 4
  %scopeTester_result = call i32 @scopeTester(i32 3, i32 4)
  store i32 %scopeTester_result, i32* @result3, align 4
  %printf7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @3, i32 0, i32 0))
  %printf8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @4, i32 0, i32 0))
  %result3 = load i32, i32* @result3, align 4
  %printf9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.2, i32 0, i32 0), i32 %result3)
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
  %tmp = fadd double %z3, %y4
  %x = alloca double, align 8
  store double %tmp, double* %x, align 8
  %x5 = load double, double* %x, align 8
  ret double %x5
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
  %tmp = fcmp olt double %x4, %y5
  %a = alloca i1, align 1
  store i1 %tmp, i1* %a, align 1
  %a6 = load i1, i1* %a, align 1
  %b7 = load i1, i1* %b, align 1
  %tmp8 = or i1 %a6, %b7
  %res = alloca i1, align 1
  store i1 %tmp8, i1* %res, align 1
  %res9 = load i1, i1* %res, align 1
  ret i1 %res9
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

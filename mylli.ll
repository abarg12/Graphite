binding z locally
binding y locally
binding x locally
binding first locally
binding second locally
binding result locally
binding x locally
binding y locally
binding b locally
binding a locally
binding res locally
binding result2 locally
binding x locally
binding y locally
binding x locally
binding y locally
binding x locally
binding y locally
binding result3 locally
; ModuleID = 'Graphite'
source_filename = "Graphite"

@0 = private unnamed_addr constant [28 x i8] c"addThings function result:\0A\00", align 1
@fmt = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@2 = private unnamed_addr constant [29 x i8] c"testThings function result:\0A\00", align 1
@fmt.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@4 = private unnamed_addr constant [30 x i8] c"scopeTester function result:\0A\00", align 1
@fmt.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @printf(i8*, ...)

define i32 @main() {
entry:
  %first = alloca double
  store double 2.500000e+00, double* %first
  %second = alloca double
  store double 3.500000e+00, double* %second
  %second1 = load double, double* %second
  %first2 = load double, double* %first
  %addThings_result = call double @addThings(double %first2, double %second1)
  %result = alloca double
  store double %addThings_result, double* %result
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @0, i32 0, i32 0))
  %result3 = load double, double* %result
  %printf4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), double %result3)
  %result5 = load double, double* %result
  %testThings_result = call i1 @testThings(double %result5, double 1.000000e+01, i1 true)
  %result2 = alloca i1
  store i1 %testThings_result, i1* %result2
  %printf6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1, i32 0, i32 0))
  %printf7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2, i32 0, i32 0))
  %result28 = load i1, i1* %result2
  %printf9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.1, i32 0, i32 0), i1 %result28)
  %x = alloca i32
  store i32 1, i32* %x
  %y = alloca i32
  store i32 2, i32* %y
  %scopeTester_result = call i32 @scopeTester(i32 3, i32 4)
  %result310 = alloca i32
  store i32 %scopeTester_result, i32* %result310
  %printf11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @3, i32 0, i32 0))
  %printf12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @4, i32 0, i32 0))
  %result313 = load i32, i32* %result310
  %printf14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.2, i32 0, i32 0), i32 %result313)
  ret i32 0
}

define double @addThings(double %z1, double %y2) {
entry:
  %z = alloca double
  store double %z1, double* %z
  %y = alloca double
  store double %y2, double* %y
  %z3 = load double, double* %z
  %y4 = load double, double* %y
  %tmp = fadd double %z3, %y4
  %x = alloca double
  store double %tmp, double* %x
  %x5 = load double, double* %x
  ret double %x5
}

define i1 @testThings(double %x1, double %y2, i1 %b3) {
entry:
  %x = alloca double
  store double %x1, double* %x
  %y = alloca double
  store double %y2, double* %y
  %b = alloca i1
  store i1 %b3, i1* %b
  %x4 = load double, double* %x
  %y5 = load double, double* %y
  %tmp = fcmp olt double %x4, %y5
  %a = alloca i1
  store i1 %tmp, i1* %a
  %a6 = load i1, i1* %a
  %b7 = load i1, i1* %b
  %tmp8 = or i1 %a6, %b7
  %res = alloca i1
  store i1 %tmp8, i1* %res
  %res9 = load i1, i1* %res
  ret i1 %res9
}

define i32 @scopeTester(i32 %x1, i32 %y2) {
entry:
  %x = alloca i32
  store i32 %x1, i32* %x
  %y = alloca i32
  store i32 %y2, i32* %y
  %x3 = alloca i32
  store i32 80, i32* %x3
  %y4 = alloca i32
  store i32 20, i32* %y4
  %x5 = load i32, i32* %x3
  %y6 = load i32, i32* %y4
  %tmp = add i32 %x5, %y6
  ret i32 %tmp
}

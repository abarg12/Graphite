; ModuleID = 'Graphite'
source_filename = "Graphite"

@a = global i32 0
@b = global i32 0
@c = global i32 0
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@d = global i32 0
@fmt.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@e = global double 0.000000e+00
@f = global double 0.000000e+00
@g = global double 0.000000e+00
@fmt.2 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@h = global double 0.000000e+00
@i = global double 0.000000e+00
@fmt.3 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@j = global i1 false
@k = global i1 false
@l = global i1 false
@fmt.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@m = global i1 false
@n = global i1 false
@o = global i1 false
@fmt.5 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@p = global i1 false
@q = global i1 false
@r = global i1 false
@fmt.6 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@s = global i1 false
@t = global i1 false
@u = global i1 false
@fmt.7 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @printf(i8*, ...)

declare i8* @array_get(i8*, i32, ...)

declare i8* @array_set(i8*, i32, i8*, ...)

declare i8* @array_add(i8*, i32, i8*, ...)

define i32 @main() {
entry:
  store i32 1, i32* @a
  store i32 2, i32* @b
  store i32 3, i32* @c
  %c = load i32, i32* @c
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %c)
  %c1 = load i32, i32* @c
  %c2 = load i32, i32* @c
  %tmp = add i32 %c1, %c2
  store i32 %tmp, i32* @d
  %d = load i32, i32* @d
  %printf3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.1, i32 0, i32 0), i32 %d)
  store double 0x400A666666666667, double* @e
  store double 6.600000e+00, double* @f
  %e = load double, double* @e
  %f = load double, double* @f
  %tmp4 = fadd double %e, %f
  store double %tmp4, double* @g
  %g = load double, double* @g
  %printf5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.2, i32 0, i32 0), double %g)
  store double 2.000000e+00, double* @h
  %g6 = load double, double* @g
  %h = load double, double* @h
  %tmp7 = fdiv double %g6, %h
  store double %tmp7, double* @i
  %i = load double, double* @i
  %printf8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.3, i32 0, i32 0), double %i)
  store i1 false, i1* @j
  store i1 true, i1* @k
  %j = load i1, i1* @j
  %k = load i1, i1* @k
  %tmp9 = or i1 %j, %k
  store i1 %tmp9, i1* @l
  %l = load i1, i1* @l
  %printf10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.4, i32 0, i32 0), i1 %l)
  store i1 true, i1* @m
  store i1 true, i1* @n
  %m = load i1, i1* @m
  %n = load i1, i1* @n
  %tmp11 = and i1 %m, %n
  store i1 %tmp11, i1* @o
  %o = load i1, i1* @o
  %printf12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.5, i32 0, i32 0), i1 %o)
  store i1 true, i1* @p
  store i1 true, i1* @q
  %p = load i1, i1* @p
  %q = load i1, i1* @q
  %tmp13 = and i1 %p, %q
  store i1 %tmp13, i1* @r
  %r = load i1, i1* @r
  %printf14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.6, i32 0, i32 0), i1 %r)
  store i1 true, i1* @s
  store i1 true, i1* @t
  %s = load i1, i1* @s
  %t = load i1, i1* @t
  %tmp15 = or i1 %s, %t
  store i1 %tmp15, i1* @u
  %u = load i1, i1* @u
  %printf16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.7, i32 0, i32 0), i1 %u)
  ret i32 0
}

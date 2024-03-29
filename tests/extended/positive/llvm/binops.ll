; ModuleID = 'Graphite'
source_filename = "Graphite"

%node_struct = type { i8*, i1, i8* }

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

declare i32 @strcmp(i8*, i8*)

declare i8* @array_get(i8*, i32, ...)

declare i8* @array_set(i8*, i32, i8*, ...)

declare i8* @array_len(i8*, ...)

declare i8 @nodeExists(%node_struct*, ...)

declare i8* @array_add(i8*, i32, i8*, ...)

declare i8* @array_del(i8*, i32, ...)

define i32 @main() {
entry:
  store i32 1, i32* @a, align 4
  store i32 2, i32* @b, align 4
  store i32 3, i32* @c, align 4
  %c = load i32, i32* @c, align 4
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %c)
  %c1 = load i32, i32* @c, align 4
  %c2 = load i32, i32* @c, align 4
  %tmp = add i32 %c1, %c2
  store i32 %tmp, i32* @d, align 4
  %d = load i32, i32* @d, align 4
  %printf3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.1, i32 0, i32 0), i32 %d)
  store double 0x400A666666666667, double* @e, align 8
  store double 6.600000e+00, double* @f, align 8
  %e = load double, double* @e, align 8
  %f = load double, double* @f, align 8
  %tmp4 = fadd double %e, %f
  store double %tmp4, double* @g, align 8
  %g = load double, double* @g, align 8
  %printf5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.2, i32 0, i32 0), double %g)
  store double 2.000000e+00, double* @h, align 8
  %g6 = load double, double* @g, align 8
  %h = load double, double* @h, align 8
  %tmp7 = fdiv double %g6, %h
  store double %tmp7, double* @i, align 8
  %i = load double, double* @i, align 8
  %printf8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.3, i32 0, i32 0), double %i)
  store i1 false, i1* @j, align 1
  store i1 true, i1* @k, align 1
  %j = load i1, i1* @j, align 1
  %k = load i1, i1* @k, align 1
  %tmp9 = or i1 %j, %k
  store i1 %tmp9, i1* @l, align 1
  %l = load i1, i1* @l, align 1
  %printf10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.4, i32 0, i32 0), i1 %l)
  store i1 true, i1* @m, align 1
  store i1 true, i1* @n, align 1
  %m = load i1, i1* @m, align 1
  %n = load i1, i1* @n, align 1
  %tmp11 = and i1 %m, %n
  store i1 %tmp11, i1* @o, align 1
  %o = load i1, i1* @o, align 1
  %printf12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.5, i32 0, i32 0), i1 %o)
  store i1 true, i1* @p, align 1
  store i1 true, i1* @q, align 1
  %p = load i1, i1* @p, align 1
  %q = load i1, i1* @q, align 1
  %tmp13 = and i1 %p, %q
  store i1 %tmp13, i1* @r, align 1
  %r = load i1, i1* @r, align 1
  %printf14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.6, i32 0, i32 0), i1 %r)
  store i1 true, i1* @s, align 1
  store i1 true, i1* @t, align 1
  %s = load i1, i1* @s, align 1
  %t = load i1, i1* @t, align 1
  %tmp15 = or i1 %s, %t
  store i1 %tmp15, i1* @u, align 1
  %u = load i1, i1* @u, align 1
  %printf16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.7, i32 0, i32 0), i1 %u)
  ret i32 0
}

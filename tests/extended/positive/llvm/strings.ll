; ModuleID = 'Graphite'
source_filename = "Graphite"

@0 = private unnamed_addr constant [9 x i8] c"cocacola\00", align 1
@a = global i8* null
@b = global i8* null
@1 = private unnamed_addr constant [6 x i8] c"bepis\00", align 1
@2 = private unnamed_addr constant [18 x i8] c"diet mountain dew\00", align 1
@c = global i8* null
@3 = private unnamed_addr constant [7 x i8] c"sodas\0A\00", align 1
@fmt = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

declare i32 @printf(i8*, ...)

declare i8* @array_get(i8*, i32, ...)

declare i8* @array_set(i8*, i32, i8*, ...)

define i32 @main() {
entry:
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @0, i32 0, i32 0), i8** @a, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1, i32 0, i32 0), i8** @b, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8** @c, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @3, i32 0, i32 0))
  %a = load i8*, i8** @a, align 8
  %printf1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i8* %a)
  %b = load i8*, i8** @b, align 8
  %printf2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.1, i32 0, i32 0), i8* %b)
  %c = load i8*, i8** @c, align 8
  %printf3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.2, i32 0, i32 0), i8* %c)
  ret i32 0
}

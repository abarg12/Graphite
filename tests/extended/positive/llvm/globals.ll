; ModuleID = 'Graphite'
source_filename = "Graphite"

%node_struct = type { i8*, i1, i8* }

@a = global i32 0
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@b = global i32 0
@fmt.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@d = global i32 0
@fmt.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

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
  store i32 2, i32* @a, align 4
  %a = load i32, i32* @a, align 4
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %a)
  store i32 10, i32* @b, align 4
  %b = load i32, i32* @b, align 4
  %printf1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.1, i32 0, i32 0), i32 %b)
  %myFunc_result = call i32 @myFunc(i32 3)
  store i32 %myFunc_result, i32* @d, align 4
  %d = load i32, i32* @d, align 4
  %printf2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.2, i32 0, i32 0), i32 %d)
  ret i32 0
}

define i32 @myFunc(i32 %b1) {
entry:
  %b = alloca i32, align 4
  store i32 %b1, i32* %b, align 4
  %a = load i32, i32* @a, align 4
  %b2 = load i32, i32* %b, align 4
  %tmp = add i32 %a, %b2
  %c = alloca i32, align 4
  store i32 %tmp, i32* %c, align 4
  %c3 = load i32, i32* %c, align 4
  ret i32 %c3
}

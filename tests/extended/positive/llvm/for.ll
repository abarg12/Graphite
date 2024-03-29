; ModuleID = 'Graphite'
source_filename = "Graphite"

%node_struct = type { i8*, i1, i8* }

@i = global i32 0
@s = global i32 0
@fmt = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@0 = private unnamed_addr constant [4 x i8] c"---\00", align 1
@fmt.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@1 = private unnamed_addr constant [4 x i8] c"---\00", align 1

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
  store i32 99, i32* @i, align 4
  store i32 7, i32* @s, align 4
  store i32 0, i32* @i, align 4
  br label %while

while:                                            ; preds = %while_body, %entry
  %i2 = load i32, i32* @i, align 4
  %tmp3 = icmp slt i32 %i2, 7
  br i1 %tmp3, label %while_body, label %merge

while_body:                                       ; preds = %while
  %i = load i32, i32* @i, align 4
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.1, i32 0, i32 0), i32 %i)
  call void @funcy(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @0, i32 0, i32 0))
  %i1 = load i32, i32* @i, align 4
  %tmp = add i32 %i1, 1
  store i32 %tmp, i32* @i, align 4
  br label %while

merge:                                            ; preds = %while
  call void @rev()
  ret i32 0
}

define void @funcy(i8* %s1) {
entry:
  %s = alloca i8*, align 8
  store i8* %s1, i8** %s, align 8
  %s2 = load i8*, i8** %s, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i8* %s2)
  ret void
}

define void @rev() {
entry:
  %i = load i32, i32* @i, align 4
  %j = alloca i32, align 4
  store i32 %i, i32* %j, align 4
  br label %while

while:                                            ; preds = %while_body, %entry
  %j3 = load i32, i32* %j, align 4
  %tmp4 = icmp sge i32 %j3, 0
  br i1 %tmp4, label %while_body, label %merge

while_body:                                       ; preds = %while
  %j1 = load i32, i32* %j, align 4
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.2, i32 0, i32 0), i32 %j1)
  call void @funcy(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1, i32 0, i32 0))
  %j2 = load i32, i32* %j, align 4
  %tmp = sub i32 %j2, 1
  store i32 %tmp, i32* %j, align 4
  br label %while

merge:                                            ; preds = %while
  ret void
}

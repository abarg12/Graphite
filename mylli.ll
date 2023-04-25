; ModuleID = 'Graphite'
source_filename = "Graphite"

@s = global i32 0
@fmt = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@0 = private unnamed_addr constant [4 x i8] c"---\00", align 1

declare i32 @printf(i8*, ...)

define i32 @main() {
entry:
  %i = alloca i32
  store i32 99, i32* %i
  store i32 7, i32* @s
  store i32 0, i32* %i
  br label %while

while:                                            ; preds = %while_body, %entry
  %i3 = load i32, i32* %i
  %tmp4 = icmp slt i32 %i3, 7
  br i1 %tmp4, label %while_body, label %merge

while_body:                                       ; preds = %while
  %i1 = load i32, i32* %i
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.1, i32 0, i32 0), i32 %i1)
  call void @funcy(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @0, i32 0, i32 0))
  %i2 = load i32, i32* %i
  %tmp = add i32 %i2, 1
  store i32 %tmp, i32* %i
  br label %while

merge:                                            ; preds = %while
  ret i32 0
}

define void @funcy(i8* %s1) {
entry:
  %s = alloca i8*
  store i8* %s1, i8** %s
  %s2 = load i8*, i8** %s
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i8* %s2)
  ret void
}

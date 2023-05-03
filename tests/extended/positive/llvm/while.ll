; ModuleID = 'Graphite'
source_filename = "Graphite"

@a = global i32 0
@b = global i32 0
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @printf(i8*, ...)

declare i8* @array_get(i8*, i32, ...)

declare i8* @array_set(i8*, i32, i8*, ...)

define i32 @main() {
entry:
  store i32 0, i32* @a, align 4
  store i32 10, i32* @b, align 4
  br label %while

while:                                            ; preds = %while_body, %entry
  %a2 = load i32, i32* @a, align 4
  %b = load i32, i32* @b, align 4
  %tmp3 = icmp slt i32 %a2, %b
  br i1 %tmp3, label %while_body, label %merge

while_body:                                       ; preds = %while
  %a = load i32, i32* @a, align 4
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %a)
  %a1 = load i32, i32* @a, align 4
  %tmp = add i32 %a1, 1
  store i32 %tmp, i32* @a, align 4
  br label %while

merge:                                            ; preds = %while
  ret i32 0
}

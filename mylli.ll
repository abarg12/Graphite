; ModuleID = 'Graphite'
source_filename = "Graphite"

@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @printf(i8*, ...)

define i32 @main() {
entry:
  %a = alloca i32
  store i32 0, i32* %a
  %b = alloca i32
  store i32 10, i32* %b
  br label %while

while:                                            ; preds = %while_body, %entry
  %a3 = load i32, i32* %a
  %b4 = load i32, i32* %b
  %tmp5 = icmp slt i32 %a3, %b4
  br i1 %tmp5, label %while_body, label %merge

while_body:                                       ; preds = %while
  %a1 = load i32, i32* %a
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %a1)
  %a2 = load i32, i32* %a
  %tmp = add i32 %a2, 1
  store i32 %tmp, i32* %a
  br label %while

merge:                                            ; preds = %while
  ret i32 0
}

; ModuleID = 'Graphite'
source_filename = "Graphite"

@a = global i32 0
@0 = private unnamed_addr constant [23 x i8] c"your number is 4!!!!!\0A\00", align 1
@1 = private unnamed_addr constant [24 x i8] c"your number is too big\0A\00", align 1
@2 = private unnamed_addr constant [26 x i8] c"your number is too small\0A\00", align 1
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @printf(i8*, ...)

define i32 @main() {
entry:
  store i32 0, i32* @a
  %a = load i32, i32* @a
  %tmp = icmp eq i32 %a, 0
  br i1 %tmp, label %then, label %else

merge:                                            ; preds = %else, %then
  ret i32 0

then:                                             ; preds = %entry
  %funky_result = call i32 @funky(i32 5)
  %r = alloca i32
  store i32 %funky_result, i32* %r
  %funky_result1 = call i32 @funky(i32 2)
  %r2 = alloca i32
  store i32 %funky_result1, i32* %r2
  %funky_result2 = call i32 @funky(i32 4)
  %r3 = alloca i32
  store i32 %funky_result2, i32* %r3
  %r33 = load i32, i32* %r3
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %r33)
  br label %merge

else:                                             ; preds = %entry
  br label %merge
}

define i32 @funky(i32 %b1) {
entry:
  %b = alloca i32
  store i32 %b1, i32* %b
  %c = alloca i32
  store i32 3, i32* %c
  %c2 = load i32, i32* %c
  %b3 = load i32, i32* %b
  %tmp = icmp slt i32 %c2, %b3
  br i1 %tmp, label %then, label %else10

merge:                                            ; preds = %merge4
  ret i32 0

then:                                             ; preds = %entry
  %d = alloca i32
  store i32 5, i32* %d
  br i1 false, label %then5, label %else

merge4:                                           ; preds = %else
  br label %merge

then5:                                            ; preds = %then
  %d6 = load i32, i32* %d
  %b7 = load i32, i32* %b
  %tmp8 = icmp sgt i32 %d6, %b7
  %i = alloca i1
  store i1 %tmp8, i1* %i
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0))
  ret i32 1

else:                                             ; preds = %then
  %printf9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @1, i32 0, i32 0))
  br label %merge4

else10:                                           ; preds = %entry
  %printf11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0))
  %a = load i32, i32* @a
  ret i32 %a
}

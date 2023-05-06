; ModuleID = 'Graphite'
source_filename = "Graphite"

%node_struct = type { i8*, i1, i8* }

@a = global i32 0
@0 = private unnamed_addr constant [23 x i8] c"your number is 4!!!!!\0A\00", align 1
@1 = private unnamed_addr constant [24 x i8] c"your number is too big\0A\00", align 1
@2 = private unnamed_addr constant [26 x i8] c"your number is too small\0A\00", align 1
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

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
  store i32 0, i32* @a, align 4
  %a = load i32, i32* @a, align 4
  %tmp = icmp eq i32 %a, 0
  br i1 %tmp, label %then, label %else

merge:                                            ; preds = %else, %then
  ret i32 0

then:                                             ; preds = %entry
  %funky_result = call i32 @funky(i32 5)
  %r = alloca i32, align 4
  store i32 %funky_result, i32* %r, align 4
  %funky_result1 = call i32 @funky(i32 2)
  %r2 = alloca i32, align 4
  store i32 %funky_result1, i32* %r2, align 4
  %funky_result2 = call i32 @funky(i32 4)
  %r3 = alloca i32, align 4
  store i32 %funky_result2, i32* %r3, align 4
  %r33 = load i32, i32* %r3, align 4
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %r33)
  br label %merge

else:                                             ; preds = %entry
  br label %merge
}

define i32 @funky(i32 %b1) {
entry:
  %b = alloca i32, align 4
  store i32 %b1, i32* %b, align 4
  %c = alloca i32, align 4
  store i32 3, i32* %c, align 4
  %c2 = load i32, i32* %c, align 4
  %b3 = load i32, i32* %b, align 4
  %tmp = icmp slt i32 %c2, %b3
  br i1 %tmp, label %then, label %else13

merge:                                            ; preds = %merge7
  ret i32 0

then:                                             ; preds = %entry
  %d = alloca i32, align 4
  store i32 5, i32* %d, align 4
  %d4 = load i32, i32* %d, align 4
  %b5 = load i32, i32* %b, align 4
  %tmp6 = icmp sgt i32 %d4, %b5
  br i1 %tmp6, label %then8, label %else

merge7:                                           ; preds = %else
  br label %merge

then8:                                            ; preds = %then
  %d9 = load i32, i32* %d, align 4
  %b10 = load i32, i32* %b, align 4
  %tmp11 = icmp sgt i32 %d9, %b10
  %i = alloca i1, align 1
  store i1 %tmp11, i1* %i, align 1
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0))
  ret i32 1

else:                                             ; preds = %then
  %printf12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @1, i32 0, i32 0))
  br label %merge7

else13:                                           ; preds = %entry
  %printf14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0))
  %a = load i32, i32* @a, align 4
  ret i32 %a
}

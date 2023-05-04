; ModuleID = 'Graphite'
source_filename = "Graphite"

@0 = private unnamed_addr constant [4 x i8] c"hi\0A\00", align 1
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @printf(i8*, ...)

declare i8* @array_get(i8*, i32, ...)

declare i8* @array_set(i8*, i32, i8*, ...)

declare i8* @array_add(i8*, i32, i8*, ...)

define i32 @main() {
entry:
  br i1 true, label %then, label %else

merge:                                            ; preds = %else, %then
  ret i32 0

then:                                             ; preds = %entry
  %afunc_result = call i32 @afunc(i1 true)
  %c = alloca i32, align 4
  store i32 %afunc_result, i32* %c, align 4
  %a = alloca i32, align 4
  store i32 1, i32* %a, align 4
  %c1 = load i32, i32* %c, align 4
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %c1)
  br label %merge

else:                                             ; preds = %entry
  br label %merge
}

define i32 @afunc(i1 %a1) {
entry:
  %a = alloca i1, align 1
  store i1 %a1, i1* %a, align 1
  %b = alloca i32, align 4
  %a2 = load i1, i1* %a, align 1
  br i1 %a2, label %then, label %else

merge:                                            ; preds = %else, %then
  ret i32 42

then:                                             ; preds = %entry
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @0, i32 0, i32 0))
  br label %merge

else:                                             ; preds = %entry
  br label %merge
}

; ModuleID = 'Graphite'
source_filename = "Graphite"

@0 = private unnamed_addr constant [8 x i8] c"so true\00", align 1
@1 = private unnamed_addr constant [9 x i8] c"so true\0A\00", align 1
@2 = private unnamed_addr constant [11 x i8] c"impressive\00", align 1
@3 = private unnamed_addr constant [12 x i8] c"impressive\0A\00", align 1

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
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0))
  br label %merge

else:                                             ; preds = %entry
  %printf1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0))
  br label %merge
}

; ModuleID = 'Graphite'
source_filename = "Graphite"

@a = global i32 0
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@l = global [3 x i8*]* null

declare i32 @printf(i8*, ...)

declare i8* @array_get(i8*, i32, ...)

define i32 @main() {
entry:
  store i32 1, i32* @a
  %array = alloca [3 x i8*], i32 3
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val = bitcast i8* %malloccall to i32*
  store i32 1, i32* %arr_val
  %arr_idx = getelementptr inbounds [3 x i8*], [3 x i8*]* %array, i32 0, i32 0
  %val_ptr = bitcast i32* %arr_val to i8*
  store i8* %val_ptr, i8** %arr_idx
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val2 = bitcast i8* %malloccall1 to i32*
  store i32 2, i32* %arr_val2
  %arr_idx3 = getelementptr inbounds [3 x i8*], [3 x i8*]* %array, i32 0, i32 1
  %val_ptr4 = bitcast i32* %arr_val2 to i8*
  store i8* %val_ptr4, i8** %arr_idx3
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val6 = bitcast i8* %malloccall5 to i32*
  store i32 3, i32* %arr_val6
  %arr_idx7 = getelementptr inbounds [3 x i8*], [3 x i8*]* %array, i32 0, i32 2
  %val_ptr8 = bitcast i32* %arr_val6 to i8*
  store i8* %val_ptr8, i8** %arr_idx7
  %arr_idx9 = getelementptr inbounds [3 x i8*], [3 x i8*]* %array, i32 0, i32 0
  %value = load i8*, i8** %arr_idx9
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i8* %value)
  store [3 x i8*]* %array, [3 x i8*]** @l
  ret i32 0
}

declare noalias i8* @malloc(i32)

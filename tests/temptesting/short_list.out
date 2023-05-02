; ModuleID = 'Graphite'
source_filename = "Graphite"

@a = global [1 x i8*]* null

declare i32 @printf(i8*, ...)

declare i8* @array_get(i8*, i32, ...)

define i32 @main() {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([1 x i8*]* getelementptr ([1 x i8*], [1 x i8*]* null, i32 1) to i32))
  %array = bitcast i8* %malloccall to [1 x i8*]*
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val = bitcast i8* %malloccall1 to i32*
  store i32 1, i32* %arr_val, align 4
  %arr_idx = getelementptr inbounds [1 x i8*], [1 x i8*]* %array, i32 0, i32 0
  %val_ptr = bitcast i32* %arr_val to i8*
  store i8* %val_ptr, i8** %arr_idx, align 8
  store [1 x i8*]* %array, [1 x i8*]** @a, align 8
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint ([1 x i8*]* getelementptr ([1 x i8*], [1 x i8*]* null, i32 1) to i32))
  %array3 = bitcast i8* %malloccall2 to [1 x i8*]*
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val5 = bitcast i8* %malloccall4 to i32*
  store i32 2, i32* %arr_val5, align 4
  %arr_idx6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %array3, i32 0, i32 0
  %val_ptr7 = bitcast i32* %arr_val5 to i8*
  store i8* %val_ptr7, i8** %arr_idx6, align 8
  %b = alloca [1 x i8*]*, align 8
  store [1 x i8*]* %array3, [1 x i8*]** %b, align 8
  ret i32 0
}

declare noalias i8* @malloc(i32)

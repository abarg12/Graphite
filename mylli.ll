(int : 1)
; ModuleID = 'Graphite'
source_filename = "Graphite"

@a = global double 0.000000e+00
@l = global i8* null
@l.1 = global [3 x i8*]* null
@b = global i32 0
@l2 = global [3 x i8*]* null
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @printf(i8*, ...)

declare i8* @array_get(i8*, i32, ...)

define i32 @main() {
entry:
  %malloccall = tail call i8* @malloc(i32 mul (i32 ptrtoint ([3 x i8*]* getelementptr ([3 x i8*], [3 x i8*]* null, i32 1) to i32), i32 3))
  %array = bitcast i8* %malloccall to [3 x i8*]*
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32))
  %arr_val = bitcast i8* %malloccall1 to double*
  store double 1.600000e+00, double* %arr_val, align 8
  %arr_idx = getelementptr inbounds [3 x i8*], [3 x i8*]* %array, i32 0, i32 0
  %val_ptr = bitcast double* %arr_val to i8*
  store i8* %val_ptr, i8** %arr_idx, align 8
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32))
  %arr_val3 = bitcast i8* %malloccall2 to double*
  store double 2.300000e+00, double* %arr_val3, align 8
  %arr_idx4 = getelementptr inbounds [3 x i8*], [3 x i8*]* %array, i32 0, i32 1
  %val_ptr5 = bitcast double* %arr_val3 to i8*
  store i8* %val_ptr5, i8** %arr_idx4, align 8
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32))
  %arr_val7 = bitcast i8* %malloccall6 to double*
  store double 3.500000e+00, double* %arr_val7, align 8
  %arr_idx8 = getelementptr inbounds [3 x i8*], [3 x i8*]* %array, i32 0, i32 2
  %val_ptr9 = bitcast double* %arr_val7 to i8*
  store i8* %val_ptr9, i8** %arr_idx8, align 8
  %value = load [3 x i8*]*, [3 x i8*]** @l.1, align 8
  %li_conv = bitcast [3 x i8*]* %value to double*
  %val_ptr10 = load double, double* %li_conv, align 8
  store double %val_ptr10, double* @a, align 8
  store i32 1, i32* @b, align 4
  %malloccall11 = tail call i8* @malloc(i32 mul (i32 ptrtoint ([3 x i8*]* getelementptr ([3 x i8*], [3 x i8*]* null, i32 1) to i32), i32 3))
  %array12 = bitcast i8* %malloccall11 to [3 x i8*]*
  %malloccall13 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val14 = bitcast i8* %malloccall13 to i32*
  store i32 5, i32* %arr_val14, align 4
  %arr_idx15 = getelementptr inbounds [3 x i8*], [3 x i8*]* %array12, i32 0, i32 0
  %val_ptr16 = bitcast i32* %arr_val14 to i8*
  store i8* %val_ptr16, i8** %arr_idx15, align 8
  %malloccall17 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val18 = bitcast i8* %malloccall17 to i32*
  store i32 6, i32* %arr_val18, align 4
  %arr_idx19 = getelementptr inbounds [3 x i8*], [3 x i8*]* %array12, i32 0, i32 1
  %val_ptr20 = bitcast i32* %arr_val18 to i8*
  store i8* %val_ptr20, i8** %arr_idx19, align 8
  %malloccall21 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val22 = bitcast i8* %malloccall21 to i32*
  store i32 7, i32* %arr_val22, align 4
  %arr_idx23 = getelementptr inbounds [3 x i8*], [3 x i8*]* %array12, i32 0, i32 2
  %val_ptr24 = bitcast i32* %arr_val22 to i8*
  store i8* %val_ptr24, i8** %arr_idx23, align 8
  %b = load i32, i32* @b, align 4
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %b)
  ret i32 0
}

declare noalias i8* @malloc(i32)

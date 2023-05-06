; ModuleID = 'Graphite'
source_filename = "Graphite"

%node_struct = type { i8*, i1, i8* }
%edge_t = type { %node_struct*, %node_struct*, i32 }

@n1 = global %node_struct* null
@n2 = global %node_struct* null
@n3 = global %node_struct* null
@e1 = global %edge_t* null
@n4 = global %node_struct* null
@i = global i32 0
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@i4 = global i32 0
@fmt.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@e2 = global %edge_t* null
@n6 = global %node_struct* null
@n7 = global %node_struct* null
@f1 = global double 0.000000e+00
@f2 = global double 0.000000e+00
@fmt.4 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.5 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1

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
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node = bitcast i8* %malloccall to %node_struct*
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %data = bitcast i8* %malloccall1 to i32*
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name = bitcast i8* %malloccall2 to i8**
  %data_ptr = bitcast i32* %data to i8*
  %name_ptr = bitcast i8** %name to i8*
  %"name'" = getelementptr inbounds %node_struct, %node_struct* %node, i32 0, i32 0
  %"data'" = getelementptr inbounds %node_struct, %node_struct* %node, i32 0, i32 2
  store i8* %name_ptr, i8** %"name'", align 8
  store i8* %data_ptr, i8** %"data'", align 8
  store %node_struct* %node, %node_struct** @n1, align 8
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node4 = bitcast i8* %malloccall3 to %node_struct*
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %data6 = bitcast i8* %malloccall5 to i32*
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name8 = bitcast i8* %malloccall7 to i8**
  %data_ptr9 = bitcast i32* %data6 to i8*
  %name_ptr10 = bitcast i8** %name8 to i8*
  %"name'11" = getelementptr inbounds %node_struct, %node_struct* %node4, i32 0, i32 0
  %"data'12" = getelementptr inbounds %node_struct, %node_struct* %node4, i32 0, i32 2
  store i8* %name_ptr10, i8** %"name'11", align 8
  store i8* %data_ptr9, i8** %"data'12", align 8
  store %node_struct* %node4, %node_struct** @n2, align 8
  %malloccall13 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node14 = bitcast i8* %malloccall13 to %node_struct*
  %malloccall15 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %data16 = bitcast i8* %malloccall15 to i32*
  %malloccall17 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name18 = bitcast i8* %malloccall17 to i8**
  %data_ptr19 = bitcast i32* %data16 to i8*
  %name_ptr20 = bitcast i8** %name18 to i8*
  %"name'21" = getelementptr inbounds %node_struct, %node_struct* %node14, i32 0, i32 0
  %"data'22" = getelementptr inbounds %node_struct, %node_struct* %node14, i32 0, i32 2
  store i8* %name_ptr20, i8** %"name'21", align 8
  store i8* %data_ptr19, i8** %"data'22", align 8
  store %node_struct* %node14, %node_struct** @n3, align 8
  %"lvar'" = load %node_struct*, %node_struct** @n2, align 8
  %temp = getelementptr inbounds %node_struct, %node_struct* %"lvar'", i32 0, i32 2
  %malloccall23 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %bruh = bitcast i8* %malloccall23 to i32*
  store i32 2, i32* %bruh, align 4
  %name24 = bitcast i32* %bruh to i8*
  store i8* %name24, i8** %temp, align 8
  %"lvar'25" = load %node_struct*, %node_struct** @n3, align 8
  %temp26 = getelementptr inbounds %node_struct, %node_struct* %"lvar'25", i32 0, i32 2
  %malloccall27 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %bruh28 = bitcast i8* %malloccall27 to i32*
  store i32 4, i32* %bruh28, align 4
  %name29 = bitcast i32* %bruh28 to i8*
  store i8* %name29, i8** %temp26, align 8
  %n2 = load %node_struct*, %node_struct** @n2, align 8
  %n3 = load %node_struct*, %node_struct** @n3, align 8
  %malloccall30 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct = bitcast i8* %malloccall30 to %edge_t*
  %"name'31" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 0
  %"name'32" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 1
  %"name'33" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 2
  store %node_struct* %n2, %node_struct** %"name'31", align 8
  store %node_struct* %n3, %node_struct** %"name'32", align 8
  store i32 0, i32* %"name'33", align 4
  %malloccall34 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge = bitcast i8* %malloccall34 to %edge_t*
  %"name'35" = getelementptr inbounds %edge_t, %edge_t* %edge, i32 0, i32 0
  %"data'36" = getelementptr inbounds %edge_t, %edge_t* %edge, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'35", align 8
  store %node_struct* null, %node_struct** %"data'36", align 8
  store %edge_t* %edge, %edge_t** @e1, align 8
  store %edge_t* %myEdgeStruct, %edge_t** @e1, align 8
  %"lvar'37" = load %edge_t*, %edge_t** @e1, align 8
  %temp38 = getelementptr inbounds %edge_t, %edge_t* %"lvar'37", i32 0, i32 0
  %e1.src = load %node_struct*, %node_struct** %temp38, align 8
  %srcNode = load %node_struct*, %node_struct** %temp38, align 8
  %malloccall39 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node40 = bitcast i8* %malloccall39 to %node_struct*
  %malloccall41 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %data42 = bitcast i8* %malloccall41 to i32*
  %malloccall43 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name44 = bitcast i8* %malloccall43 to i8**
  %data_ptr45 = bitcast i32* %data42 to i8*
  %name_ptr46 = bitcast i8** %name44 to i8*
  %"name'47" = getelementptr inbounds %node_struct, %node_struct* %node40, i32 0, i32 0
  %"data'48" = getelementptr inbounds %node_struct, %node_struct* %node40, i32 0, i32 2
  store i8* %name_ptr46, i8** %"name'47", align 8
  store i8* %data_ptr45, i8** %"data'48", align 8
  store %node_struct* %node40, %node_struct** @n4, align 8
  store %node_struct* %srcNode, %node_struct** @n4, align 8
  %"lvar'49" = load %node_struct*, %node_struct** @n4, align 8
  %temp50 = getelementptr inbounds %node_struct, %node_struct* %"lvar'49", i32 0, i32 2
  %n4.data = load i8*, i8** %temp50, align 8
  %new_ptr = bitcast i8* %n4.data to i32*
  %n4.data51 = load i32, i32* %new_ptr, align 4
  store i32 %n4.data51, i32* @i, align 4
  %i = load i32, i32* @i, align 4
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %i)
  %i2 = alloca i32, align 4
  %"lvar'52" = load %edge_t*, %edge_t** @e1, align 8
  %temp53 = getelementptr inbounds %edge_t, %edge_t* %"lvar'52", i32 0, i32 0
  %e1.src54 = load %node_struct*, %node_struct** %temp53, align 8
  %srcNode55 = load %node_struct*, %node_struct** %temp53, align 8
  store %node_struct* %srcNode55, %node_struct** @n3, align 8
  %"lvar'56" = load %node_struct*, %node_struct** @n3, align 8
  %temp57 = getelementptr inbounds %node_struct, %node_struct* %"lvar'56", i32 0, i32 2
  %n3.data = load i8*, i8** %temp57, align 8
  %new_ptr58 = bitcast i8* %n3.data to i32*
  %n3.data59 = load i32, i32* %new_ptr58, align 4
  store i32 %n3.data59, i32* %i2, align 4
  %i260 = load i32, i32* %i2, align 4
  %printf61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.1, i32 0, i32 0), i32 %i260)
  %"lvar'62" = load %edge_t*, %edge_t** @e1, align 8
  %temp63 = getelementptr inbounds %edge_t, %edge_t* %"lvar'62", i32 0, i32 2
  store i32 123, i32* %temp63, align 4
  %"lvar'64" = load %edge_t*, %edge_t** @e1, align 8
  %temp65 = getelementptr inbounds %edge_t, %edge_t* %"lvar'64", i32 0, i32 2
  %e1.weight = load i32, i32* %temp65, align 4
  %e1.weight66 = load i32, i32* %temp65, align 4
  %i3 = alloca i32, align 4
  store i32 %e1.weight66, i32* %i3, align 4
  %i367 = load i32, i32* %i3, align 4
  %printf68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.2, i32 0, i32 0), i32 %i367)
  %"lvar'69" = load %edge_t*, %edge_t** @e1, align 8
  %temp70 = getelementptr inbounds %edge_t, %edge_t* %"lvar'69", i32 0, i32 2
  store i32 999, i32* %temp70, align 4
  %"lvar'71" = load %edge_t*, %edge_t** @e1, align 8
  %temp72 = getelementptr inbounds %edge_t, %edge_t* %"lvar'71", i32 0, i32 2
  %e1.weight73 = load i32, i32* %temp72, align 4
  %e1.weight74 = load i32, i32* %temp72, align 4
  store i32 %e1.weight74, i32* @i4, align 4
  %i4 = load i32, i32* @i4, align 4
  %printf75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.3, i32 0, i32 0), i32 %i4)
  %malloccall76 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge77 = bitcast i8* %malloccall76 to %edge_t*
  %"src''" = getelementptr inbounds %edge_t, %edge_t* %edge77, i32 0, i32 0
  %"dst''" = getelementptr inbounds %edge_t, %edge_t* %edge77, i32 0, i32 1
  store %node_struct* null, %node_struct** %"src''", align 8
  store %node_struct* null, %node_struct** %"dst''", align 8
  store %edge_t* %edge77, %edge_t** @e2, align 8
  %malloccall78 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node79 = bitcast i8* %malloccall78 to %node_struct*
  %malloccall80 = tail call i8* @malloc(i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32))
  %data81 = bitcast i8* %malloccall80 to double*
  %malloccall82 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name83 = bitcast i8* %malloccall82 to i8**
  %data_ptr84 = bitcast double* %data81 to i8*
  %name_ptr85 = bitcast i8** %name83 to i8*
  %"name'86" = getelementptr inbounds %node_struct, %node_struct* %node79, i32 0, i32 0
  %"data'87" = getelementptr inbounds %node_struct, %node_struct* %node79, i32 0, i32 2
  store i8* %name_ptr85, i8** %"name'86", align 8
  store i8* %data_ptr84, i8** %"data'87", align 8
  store %node_struct* %node79, %node_struct** @n6, align 8
  %malloccall88 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node89 = bitcast i8* %malloccall88 to %node_struct*
  %malloccall90 = tail call i8* @malloc(i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32))
  %data91 = bitcast i8* %malloccall90 to double*
  %malloccall92 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name93 = bitcast i8* %malloccall92 to i8**
  %data_ptr94 = bitcast double* %data91 to i8*
  %name_ptr95 = bitcast i8** %name93 to i8*
  %"name'96" = getelementptr inbounds %node_struct, %node_struct* %node89, i32 0, i32 0
  %"data'97" = getelementptr inbounds %node_struct, %node_struct* %node89, i32 0, i32 2
  store i8* %name_ptr95, i8** %"name'96", align 8
  store i8* %data_ptr94, i8** %"data'97", align 8
  store %node_struct* %node89, %node_struct** @n7, align 8
  store double 1.111100e+00, double* @f1, align 8
  store double 9.999900e+00, double* @f2, align 8
  %f1 = load double, double* @f1, align 8
  %"lvar'98" = load %node_struct*, %node_struct** @n6, align 8
  %temp99 = getelementptr inbounds %node_struct, %node_struct* %"lvar'98", i32 0, i32 2
  %malloccall100 = tail call i8* @malloc(i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32))
  %bruh101 = bitcast i8* %malloccall100 to double*
  store double %f1, double* %bruh101, align 8
  %name102 = bitcast double* %bruh101 to i8*
  store i8* %name102, i8** %temp99, align 8
  %f2 = load double, double* @f2, align 8
  %"lvar'103" = load %node_struct*, %node_struct** @n7, align 8
  %temp104 = getelementptr inbounds %node_struct, %node_struct* %"lvar'103", i32 0, i32 2
  %malloccall105 = tail call i8* @malloc(i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32))
  %bruh106 = bitcast i8* %malloccall105 to double*
  store double %f2, double* %bruh106, align 8
  %name107 = bitcast double* %bruh106 to i8*
  store i8* %name107, i8** %temp104, align 8
  %n6 = load %node_struct*, %node_struct** @n6, align 8
  %"lvar'108" = load %edge_t*, %edge_t** @e2, align 8
  %temp109 = getelementptr inbounds %edge_t, %edge_t* %"lvar'108", i32 0, i32 0
  store %node_struct* %n6, %node_struct** %temp109, align 8
  %n7 = load %node_struct*, %node_struct** @n7, align 8
  %"lvar'110" = load %edge_t*, %edge_t** @e2, align 8
  %temp111 = getelementptr inbounds %edge_t, %edge_t* %"lvar'110", i32 0, i32 1
  store %node_struct* %n7, %node_struct** %temp111, align 8
  %e2 = load %edge_t*, %edge_t** @e2, align 8
  %nodefunc_result = call i32 @nodefunc(%edge_t* %e2)
  ret i32 0
}

declare noalias i8* @malloc(i32)

define i32 @nodefunc(%edge_t* %e1) {
entry:
  %e = alloca %edge_t*, align 8
  store %edge_t* %e1, %edge_t** %e, align 8
  %"lvar'" = load %edge_t*, %edge_t** @e2, align 8
  %temp = getelementptr inbounds %edge_t, %edge_t* %"lvar'", i32 0, i32 0
  %e2.src = load %node_struct*, %node_struct** %temp, align 8
  %srcNode = load %node_struct*, %node_struct** %temp, align 8
  %n8 = alloca %node_struct*, align 8
  store %node_struct* %srcNode, %node_struct** %n8, align 8
  %"lvar'2" = load %edge_t*, %edge_t** @e2, align 8
  %temp3 = getelementptr inbounds %edge_t, %edge_t* %"lvar'2", i32 0, i32 1
  %e2.dst = load %node_struct*, %node_struct** %temp3, align 8
  %srcNode4 = load %node_struct*, %node_struct** %temp3, align 8
  store %node_struct* %srcNode4, %node_struct** @n6, align 8
  %"lvar'5" = load %node_struct*, %node_struct** %n8, align 8
  %temp6 = getelementptr inbounds %node_struct, %node_struct* %"lvar'5", i32 0, i32 2
  %n8.data = load i8*, i8** %temp6, align 8
  %new_ptr = bitcast i8* %n8.data to double*
  %n8.data7 = load double, double* %new_ptr, align 8
  %f3 = alloca double, align 8
  store double %n8.data7, double* %f3, align 8
  %"lvar'8" = load %node_struct*, %node_struct** @n6, align 8
  %temp9 = getelementptr inbounds %node_struct, %node_struct* %"lvar'8", i32 0, i32 2
  %n6.data = load i8*, i8** %temp9, align 8
  %new_ptr10 = bitcast i8* %n6.data to double*
  %n6.data11 = load double, double* %new_ptr10, align 8
  store double %n6.data11, double* @f2, align 8
  %f312 = load double, double* %f3, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.4, i32 0, i32 0), double %f312)
  %f2 = load double, double* @f2, align 8
  %printf13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.5, i32 0, i32 0), double %f2)
  ret i32 0
}

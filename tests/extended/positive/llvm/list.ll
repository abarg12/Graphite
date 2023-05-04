; ModuleID = 'Graphite'
source_filename = "Graphite"

%list_node = type { i8*, %list_node* }

@l = global %list_node* null
@a = global double 0.000000e+00
@0 = global %list_node* null
@1 = global i32 0
@2 = global %list_node* null
@fmt = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@l2 = global %list_node* null
@3 = global %list_node* null
@4 = global i32 0
@5 = global %list_node* null
@b = global i32 0
@fmt.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@l3 = global %list_node* null
@6 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@7 = private unnamed_addr constant [6 x i8] c"three\00", align 1
@l4 = global %list_node* null
@8 = global %list_node* null
@9 = global i32 0
@10 = global %list_node* null
@abc = global i1 false
@fmt.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@11 = global %list_node* null
@12 = global i32 0
@13 = global %list_node* null
@bcd = global i8* null
@fmt.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@14 = private unnamed_addr constant [9 x i8] c"badbunny\00", align 1
@15 = global %list_node* null
@16 = global i32 0
@17 = global %list_node* null
@18 = global %list_node* null
@19 = global i32 0
@20 = global %list_node* null
@fmt.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@21 = global %list_node* null
@22 = global i32 0
@23 = global %list_node* null
@fmt.6 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@24 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@25 = global %list_node* null
@26 = global i32 0
@27 = global %list_node* null
@fmt.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@28 = global %list_node* null
@29 = global i32 0
@30 = global %list_node* null
@fmt.8 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @printf(i8*, ...)

declare i8* @array_get(i8*, i32, ...)

declare i8* @array_set(i8*, i32, i8*, ...)

declare i8* @array_add(i8*, i32, i8*, ...)

define i32 @main() {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  %new_list = bitcast i8* %malloccall to %list_node**
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32))
  %arr_val = bitcast i8* %malloccall1 to double*
  store double 1.600000e+00, double* %arr_val
  %i8ptr = bitcast double* %arr_val to i8*
  %malloccall2 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p = bitcast i8* %malloccall2 to %list_node*
  %valloc = getelementptr inbounds %list_node, %list_node* %node_p, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p
  store i8* %i8ptr, i8** %valloc
  store %list_node* %node_p, %list_node** %new_list
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32))
  %arr_val4 = bitcast i8* %malloccall3 to double*
  store double 2.300000e+00, double* %arr_val4
  %i8ptr5 = bitcast double* %arr_val4 to i8*
  %malloccall6 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p7 = bitcast i8* %malloccall6 to %list_node*
  %valloc8 = getelementptr inbounds %list_node, %list_node* %node_p7, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p7
  store i8* %i8ptr5, i8** %valloc8
  %temp = getelementptr inbounds %list_node, %list_node* %node_p, i32 0, i32 1
  store %list_node* %node_p7, %list_node** %temp
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32))
  %arr_val10 = bitcast i8* %malloccall9 to double*
  store double 3.500000e+00, double* %arr_val10
  %i8ptr11 = bitcast double* %arr_val10 to i8*
  %malloccall12 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p13 = bitcast i8* %malloccall12 to %list_node*
  %valloc14 = getelementptr inbounds %list_node, %list_node* %node_p13, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p13
  store i8* %i8ptr11, i8** %valloc14
  %temp15 = getelementptr inbounds %list_node, %list_node* %node_p7, i32 0, i32 1
  store %list_node* %node_p13, %list_node** %temp15
  %temp16 = load %list_node*, %list_node** %new_list
  store %list_node* %temp16, %list_node** @l
  %list = load %list_node*, %list_node** @l
  %intvar = alloca i32
  store i32 1, i32* %intvar
  store %list_node* %list, %list_node** @0
  %0 = load i32, i32* %intvar
  store i32 %0, i32* @1
  br label %traverse_loop

traverse_loop:                                    ; preds = %while_body, %entry
  br i1 true, label %while_body, label %merge

while_body:                                       ; preds = %traverse_loop
  %1 = load %list_node*, %list_node** @0
  %temp17 = getelementptr inbounds %list_node, %list_node* %1, i32 0, i32 1
  %temp18 = load %list_node*, %list_node** %temp17
  store %list_node* %temp18, %list_node** @2
  %2 = load i32, i32* @1
  %subtract = sub i32 %2, 1
  store i32 %subtract, i32* @1
  store %list_node* %temp18, %list_node** @0
  br label %traverse_loop

merge:                                            ; preds = %traverse_loop
  %3 = load %list_node*, %list_node** @2
  %temp19 = getelementptr inbounds %list_node, %list_node* %3, i32 0, i32 0
  %retval = load i8*, i8** %temp19
  %li_conv = bitcast i8* %retval to double*
  %val_ptr = load double, double* %li_conv
  store double %val_ptr, double* @a
  %a = load double, double* @a
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), double %a)
  %malloccall20 = tail call i8* @malloc(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  %new_list21 = bitcast i8* %malloccall20 to %list_node**
  %malloccall22 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val23 = bitcast i8* %malloccall22 to i32*
  store i32 5, i32* %arr_val23
  %i8ptr24 = bitcast i32* %arr_val23 to i8*
  %malloccall25 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p26 = bitcast i8* %malloccall25 to %list_node*
  %valloc27 = getelementptr inbounds %list_node, %list_node* %node_p26, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p26
  store i8* %i8ptr24, i8** %valloc27
  store %list_node* %node_p26, %list_node** %new_list21
  %malloccall28 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val29 = bitcast i8* %malloccall28 to i32*
  store i32 6, i32* %arr_val29
  %i8ptr30 = bitcast i32* %arr_val29 to i8*
  %malloccall31 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p32 = bitcast i8* %malloccall31 to %list_node*
  %valloc33 = getelementptr inbounds %list_node, %list_node* %node_p32, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p32
  store i8* %i8ptr30, i8** %valloc33
  %temp34 = getelementptr inbounds %list_node, %list_node* %node_p26, i32 0, i32 1
  store %list_node* %node_p32, %list_node** %temp34
  %malloccall35 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val36 = bitcast i8* %malloccall35 to i32*
  store i32 7, i32* %arr_val36
  %i8ptr37 = bitcast i32* %arr_val36 to i8*
  %malloccall38 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p39 = bitcast i8* %malloccall38 to %list_node*
  %valloc40 = getelementptr inbounds %list_node, %list_node* %node_p39, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p39
  store i8* %i8ptr37, i8** %valloc40
  %temp41 = getelementptr inbounds %list_node, %list_node* %node_p32, i32 0, i32 1
  store %list_node* %node_p39, %list_node** %temp41
  %temp42 = load %list_node*, %list_node** %new_list21
  store %list_node* %temp42, %list_node** @l2
  %list43 = load %list_node*, %list_node** @l2
  %intvar44 = alloca i32
  store i32 2, i32* %intvar44
  store %list_node* %list43, %list_node** @3
  %4 = load i32, i32* %intvar44
  store i32 %4, i32* @4
  br label %traverse_loop45

traverse_loop45:                                  ; preds = %while_body46, %merge
  br i1 true, label %while_body46, label %merge50

while_body46:                                     ; preds = %traverse_loop45
  %5 = load %list_node*, %list_node** @3
  %temp47 = getelementptr inbounds %list_node, %list_node* %5, i32 0, i32 1
  %temp48 = load %list_node*, %list_node** %temp47
  store %list_node* %temp48, %list_node** @5
  %6 = load i32, i32* @4
  %subtract49 = sub i32 %6, 1
  store i32 %subtract49, i32* @4
  store %list_node* %temp48, %list_node** @3
  br label %traverse_loop45

merge50:                                          ; preds = %traverse_loop45
  %7 = load %list_node*, %list_node** @5
  %temp51 = getelementptr inbounds %list_node, %list_node* %7, i32 0, i32 0
  %retval52 = load i8*, i8** %temp51
  %li_conv53 = bitcast i8* %retval52 to i32*
  %val_ptr54 = load i32, i32* %li_conv53
  store i32 %val_ptr54, i32* @b
  %b = load i32, i32* @b
  %printf55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.1, i32 0, i32 0), i32 %b)
  %malloccall56 = tail call i8* @malloc(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  %new_list57 = bitcast i8* %malloccall56 to %list_node**
  %malloccall58 = tail call i8* @malloc(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32))
  %arr_val59 = bitcast i8* %malloccall58 to i1*
  store i1 true, i1* %arr_val59
  %i8ptr60 = bitcast i1* %arr_val59 to i8*
  %malloccall61 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p62 = bitcast i8* %malloccall61 to %list_node*
  %valloc63 = getelementptr inbounds %list_node, %list_node* %node_p62, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p62
  store i8* %i8ptr60, i8** %valloc63
  store %list_node* %node_p62, %list_node** %new_list57
  %malloccall64 = tail call i8* @malloc(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32))
  %arr_val65 = bitcast i8* %malloccall64 to i1*
  store i1 false, i1* %arr_val65
  %i8ptr66 = bitcast i1* %arr_val65 to i8*
  %malloccall67 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p68 = bitcast i8* %malloccall67 to %list_node*
  %valloc69 = getelementptr inbounds %list_node, %list_node* %node_p68, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p68
  store i8* %i8ptr66, i8** %valloc69
  %temp70 = getelementptr inbounds %list_node, %list_node* %node_p62, i32 0, i32 1
  store %list_node* %node_p68, %list_node** %temp70
  %malloccall71 = tail call i8* @malloc(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32))
  %arr_val72 = bitcast i8* %malloccall71 to i1*
  store i1 true, i1* %arr_val72
  %i8ptr73 = bitcast i1* %arr_val72 to i8*
  %malloccall74 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p75 = bitcast i8* %malloccall74 to %list_node*
  %valloc76 = getelementptr inbounds %list_node, %list_node* %node_p75, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p75
  store i8* %i8ptr73, i8** %valloc76
  %temp77 = getelementptr inbounds %list_node, %list_node* %node_p68, i32 0, i32 1
  store %list_node* %node_p75, %list_node** %temp77
  %malloccall78 = tail call i8* @malloc(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32))
  %arr_val79 = bitcast i8* %malloccall78 to i1*
  store i1 false, i1* %arr_val79
  %i8ptr80 = bitcast i1* %arr_val79 to i8*
  %malloccall81 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p82 = bitcast i8* %malloccall81 to %list_node*
  %valloc83 = getelementptr inbounds %list_node, %list_node* %node_p82, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p82
  store i8* %i8ptr80, i8** %valloc83
  %temp84 = getelementptr inbounds %list_node, %list_node* %node_p75, i32 0, i32 1
  store %list_node* %node_p82, %list_node** %temp84
  %malloccall85 = tail call i8* @malloc(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32))
  %arr_val86 = bitcast i8* %malloccall85 to i1*
  store i1 true, i1* %arr_val86
  %i8ptr87 = bitcast i1* %arr_val86 to i8*
  %malloccall88 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p89 = bitcast i8* %malloccall88 to %list_node*
  %valloc90 = getelementptr inbounds %list_node, %list_node* %node_p89, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p89
  store i8* %i8ptr87, i8** %valloc90
  %temp91 = getelementptr inbounds %list_node, %list_node* %node_p82, i32 0, i32 1
  store %list_node* %node_p89, %list_node** %temp91
  %malloccall92 = tail call i8* @malloc(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32))
  %arr_val93 = bitcast i8* %malloccall92 to i1*
  store i1 false, i1* %arr_val93
  %i8ptr94 = bitcast i1* %arr_val93 to i8*
  %malloccall95 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p96 = bitcast i8* %malloccall95 to %list_node*
  %valloc97 = getelementptr inbounds %list_node, %list_node* %node_p96, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p96
  store i8* %i8ptr94, i8** %valloc97
  %temp98 = getelementptr inbounds %list_node, %list_node* %node_p89, i32 0, i32 1
  store %list_node* %node_p96, %list_node** %temp98
  %temp99 = load %list_node*, %list_node** %new_list57
  store %list_node* %temp99, %list_node** @l3
  %malloccall100 = tail call i8* @malloc(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  %new_list101 = bitcast i8* %malloccall100 to %list_node**
  %malloccall102 = tail call i8* @malloc(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  %arr_val103 = bitcast i8* %malloccall102 to i8**
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @6, i32 0, i32 0), i8** %arr_val103
  %i8ptr104 = bitcast i8** %arr_val103 to i8*
  %malloccall105 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p106 = bitcast i8* %malloccall105 to %list_node*
  %valloc107 = getelementptr inbounds %list_node, %list_node* %node_p106, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p106
  store i8* %i8ptr104, i8** %valloc107
  store %list_node* %node_p106, %list_node** %new_list101
  %malloccall108 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val109 = bitcast i8* %malloccall108 to i32*
  store i32 2, i32* %arr_val109
  %i8ptr110 = bitcast i32* %arr_val109 to i8*
  %malloccall111 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p112 = bitcast i8* %malloccall111 to %list_node*
  %valloc113 = getelementptr inbounds %list_node, %list_node* %node_p112, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p112
  store i8* %i8ptr110, i8** %valloc113
  %temp114 = getelementptr inbounds %list_node, %list_node* %node_p106, i32 0, i32 1
  store %list_node* %node_p112, %list_node** %temp114
  %malloccall115 = tail call i8* @malloc(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  %arr_val116 = bitcast i8* %malloccall115 to i8**
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @7, i32 0, i32 0), i8** %arr_val116
  %i8ptr117 = bitcast i8** %arr_val116 to i8*
  %malloccall118 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p119 = bitcast i8* %malloccall118 to %list_node*
  %valloc120 = getelementptr inbounds %list_node, %list_node* %node_p119, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p119
  store i8* %i8ptr117, i8** %valloc120
  %temp121 = getelementptr inbounds %list_node, %list_node* %node_p112, i32 0, i32 1
  store %list_node* %node_p119, %list_node** %temp121
  %malloccall122 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val123 = bitcast i8* %malloccall122 to i32*
  store i32 4, i32* %arr_val123
  %i8ptr124 = bitcast i32* %arr_val123 to i8*
  %malloccall125 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p126 = bitcast i8* %malloccall125 to %list_node*
  %valloc127 = getelementptr inbounds %list_node, %list_node* %node_p126, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p126
  store i8* %i8ptr124, i8** %valloc127
  %temp128 = getelementptr inbounds %list_node, %list_node* %node_p119, i32 0, i32 1
  store %list_node* %node_p126, %list_node** %temp128
  %temp129 = load %list_node*, %list_node** %new_list101
  store %list_node* %temp129, %list_node** @l4
  %list130 = load %list_node*, %list_node** @l3
  %intvar131 = alloca i32
  store i32 0, i32* %intvar131
  store %list_node* %list130, %list_node** @8
  %8 = load i32, i32* %intvar131
  store i32 %8, i32* @9
  br label %traverse_loop132

traverse_loop132:                                 ; preds = %while_body133, %merge50
  br i1 true, label %while_body133, label %merge137

while_body133:                                    ; preds = %traverse_loop132
  %9 = load %list_node*, %list_node** @8
  %temp134 = getelementptr inbounds %list_node, %list_node* %9, i32 0, i32 1
  %temp135 = load %list_node*, %list_node** %temp134
  store %list_node* %temp135, %list_node** @10
  %10 = load i32, i32* @9
  %subtract136 = sub i32 %10, 1
  store i32 %subtract136, i32* @9
  store %list_node* %temp135, %list_node** @8
  br label %traverse_loop132

merge137:                                         ; preds = %traverse_loop132
  %11 = load %list_node*, %list_node** @10
  %temp138 = getelementptr inbounds %list_node, %list_node* %11, i32 0, i32 0
  %retval139 = load i8*, i8** %temp138
  %li_conv140 = bitcast i8* %retval139 to i1*
  %val_ptr141 = load i1, i1* %li_conv140
  store i1 %val_ptr141, i1* @abc
  %abc = load i1, i1* @abc
  %printf142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.2, i32 0, i32 0), i1 %abc)
  %list143 = load %list_node*, %list_node** @l4
  %intvar144 = alloca i32
  store i32 0, i32* %intvar144
  store %list_node* %list143, %list_node** @11
  %12 = load i32, i32* %intvar144
  store i32 %12, i32* @12
  br label %traverse_loop145

traverse_loop145:                                 ; preds = %while_body146, %merge137
  br i1 true, label %while_body146, label %merge150

while_body146:                                    ; preds = %traverse_loop145
  %13 = load %list_node*, %list_node** @11
  %temp147 = getelementptr inbounds %list_node, %list_node* %13, i32 0, i32 1
  %temp148 = load %list_node*, %list_node** %temp147
  store %list_node* %temp148, %list_node** @13
  %14 = load i32, i32* @12
  %subtract149 = sub i32 %14, 1
  store i32 %subtract149, i32* @12
  store %list_node* %temp148, %list_node** @11
  br label %traverse_loop145

merge150:                                         ; preds = %traverse_loop145
  %15 = load %list_node*, %list_node** @13
  %temp151 = getelementptr inbounds %list_node, %list_node* %15, i32 0, i32 0
  %retval152 = load i8*, i8** %temp151
  %li_conv153 = bitcast i8* %retval152 to i8**
  %val_ptr154 = load i8*, i8** %li_conv153
  store i8* %val_ptr154, i8** @bcd
  %bcd = load i8*, i8** @bcd
  %printf155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.3, i32 0, i32 0), i8* %bcd)
  %malloccall156 = tail call i8* @malloc(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  %new_list157 = bitcast i8* %malloccall156 to %list_node**
  %malloccall158 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val159 = bitcast i8* %malloccall158 to i32*
  store i32 101044, i32* %arr_val159
  %i8ptr160 = bitcast i32* %arr_val159 to i8*
  %malloccall161 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p162 = bitcast i8* %malloccall161 to %list_node*
  %valloc163 = getelementptr inbounds %list_node, %list_node* %node_p162, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p162
  store i8* %i8ptr160, i8** %valloc163
  store %list_node* %node_p162, %list_node** %new_list157
  %malloccall164 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val165 = bitcast i8* %malloccall164 to i32*
  store i32 34, i32* %arr_val165
  %i8ptr166 = bitcast i32* %arr_val165 to i8*
  %malloccall167 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p168 = bitcast i8* %malloccall167 to %list_node*
  %valloc169 = getelementptr inbounds %list_node, %list_node* %node_p168, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p168
  store i8* %i8ptr166, i8** %valloc169
  %temp170 = getelementptr inbounds %list_node, %list_node* %node_p162, i32 0, i32 1
  store %list_node* %node_p168, %list_node** %temp170
  %malloccall171 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val172 = bitcast i8* %malloccall171 to i32*
  store i32 34134, i32* %arr_val172
  %i8ptr173 = bitcast i32* %arr_val172 to i8*
  %malloccall174 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p175 = bitcast i8* %malloccall174 to %list_node*
  %valloc176 = getelementptr inbounds %list_node, %list_node* %node_p175, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p175
  store i8* %i8ptr173, i8** %valloc176
  %temp177 = getelementptr inbounds %list_node, %list_node* %node_p168, i32 0, i32 1
  store %list_node* %node_p175, %list_node** %temp177
  %malloccall178 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val179 = bitcast i8* %malloccall178 to i32*
  store i32 39, i32* %arr_val179
  %i8ptr180 = bitcast i32* %arr_val179 to i8*
  %malloccall181 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p182 = bitcast i8* %malloccall181 to %list_node*
  %valloc183 = getelementptr inbounds %list_node, %list_node* %node_p182, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p182
  store i8* %i8ptr180, i8** %valloc183
  %temp184 = getelementptr inbounds %list_node, %list_node* %node_p175, i32 0, i32 1
  store %list_node* %node_p182, %list_node** %temp184
  %temp185 = load %list_node*, %list_node** %new_list157
  %inner_list = alloca %list_node*
  store %list_node* %temp185, %list_node** %inner_list
  %malloccall186 = tail call i8* @malloc(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  %new_list187 = bitcast i8* %malloccall186 to %list_node**
  %malloccall188 = tail call i8* @malloc(i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32))
  %arr_val189 = bitcast i8* %malloccall188 to double*
  store double -1.100000e+00, double* %arr_val189
  %i8ptr190 = bitcast double* %arr_val189 to i8*
  %malloccall191 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p192 = bitcast i8* %malloccall191 to %list_node*
  %valloc193 = getelementptr inbounds %list_node, %list_node* %node_p192, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p192
  store i8* %i8ptr190, i8** %valloc193
  store %list_node* %node_p192, %list_node** %new_list187
  %malloccall194 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val195 = bitcast i8* %malloccall194 to i32*
  store i32 -2, i32* %arr_val195
  %i8ptr196 = bitcast i32* %arr_val195 to i8*
  %malloccall197 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p198 = bitcast i8* %malloccall197 to %list_node*
  %valloc199 = getelementptr inbounds %list_node, %list_node* %node_p198, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p198
  store i8* %i8ptr196, i8** %valloc199
  %temp200 = getelementptr inbounds %list_node, %list_node* %node_p192, i32 0, i32 1
  store %list_node* %node_p198, %list_node** %temp200
  %malloccall201 = tail call i8* @malloc(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32))
  %arr_val202 = bitcast i8* %malloccall201 to i1*
  store i1 true, i1* %arr_val202
  %i8ptr203 = bitcast i1* %arr_val202 to i8*
  %malloccall204 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p205 = bitcast i8* %malloccall204 to %list_node*
  %valloc206 = getelementptr inbounds %list_node, %list_node* %node_p205, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p205
  store i8* %i8ptr203, i8** %valloc206
  %temp207 = getelementptr inbounds %list_node, %list_node* %node_p198, i32 0, i32 1
  store %list_node* %node_p205, %list_node** %temp207
  %malloccall208 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val209 = bitcast i8* %malloccall208 to i32*
  store i32 -4, i32* %arr_val209
  %i8ptr210 = bitcast i32* %arr_val209 to i8*
  %malloccall211 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p212 = bitcast i8* %malloccall211 to %list_node*
  %valloc213 = getelementptr inbounds %list_node, %list_node* %node_p212, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p212
  store i8* %i8ptr210, i8** %valloc213
  %temp214 = getelementptr inbounds %list_node, %list_node* %node_p205, i32 0, i32 1
  store %list_node* %node_p212, %list_node** %temp214
  %malloccall215 = tail call i8* @malloc(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  %arr_val216 = bitcast i8* %malloccall215 to i8**
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8** %arr_val216
  %i8ptr217 = bitcast i8** %arr_val216 to i8*
  %malloccall218 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p219 = bitcast i8* %malloccall218 to %list_node*
  %valloc220 = getelementptr inbounds %list_node, %list_node* %node_p219, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p219
  store i8* %i8ptr217, i8** %valloc220
  %temp221 = getelementptr inbounds %list_node, %list_node* %node_p212, i32 0, i32 1
  store %list_node* %node_p219, %list_node** %temp221
  %malloccall222 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val223 = bitcast i8* %malloccall222 to i32*
  store i32 2, i32* %arr_val223
  %i8ptr224 = bitcast i32* %arr_val223 to i8*
  %malloccall225 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p226 = bitcast i8* %malloccall225 to %list_node*
  %valloc227 = getelementptr inbounds %list_node, %list_node* %node_p226, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p226
  store i8* %i8ptr224, i8** %valloc227
  %temp228 = getelementptr inbounds %list_node, %list_node* %node_p219, i32 0, i32 1
  store %list_node* %node_p226, %list_node** %temp228
  %malloccall229 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val230 = bitcast i8* %malloccall229 to i32*
  store i32 3, i32* %arr_val230
  %i8ptr231 = bitcast i32* %arr_val230 to i8*
  %malloccall232 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p233 = bitcast i8* %malloccall232 to %list_node*
  %valloc234 = getelementptr inbounds %list_node, %list_node* %node_p233, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p233
  store i8* %i8ptr231, i8** %valloc234
  %temp235 = getelementptr inbounds %list_node, %list_node* %node_p226, i32 0, i32 1
  store %list_node* %node_p233, %list_node** %temp235
  %malloccall236 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val237 = bitcast i8* %malloccall236 to i32*
  store i32 4, i32* %arr_val237
  %i8ptr238 = bitcast i32* %arr_val237 to i8*
  %malloccall239 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p240 = bitcast i8* %malloccall239 to %list_node*
  %valloc241 = getelementptr inbounds %list_node, %list_node* %node_p240, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p240
  store i8* %i8ptr238, i8** %valloc241
  %temp242 = getelementptr inbounds %list_node, %list_node* %node_p233, i32 0, i32 1
  store %list_node* %node_p240, %list_node** %temp242
  %temp243 = load %list_node*, %list_node** %new_list187
  %inner_list2 = alloca %list_node*
  store %list_node* %temp243, %list_node** %inner_list2
  %list244 = load %list_node*, %list_node** %inner_list
  %intvar245 = alloca i32
  store i32 1, i32* %intvar245
  store %list_node* %list244, %list_node** @15
  %16 = load i32, i32* %intvar245
  store i32 %16, i32* @16
  br label %traverse_loop246

traverse_loop246:                                 ; preds = %while_body247, %merge150
  br i1 true, label %while_body247, label %merge251

while_body247:                                    ; preds = %traverse_loop246
  %17 = load %list_node*, %list_node** @15
  %temp248 = getelementptr inbounds %list_node, %list_node* %17, i32 0, i32 1
  %temp249 = load %list_node*, %list_node** %temp248
  store %list_node* %temp249, %list_node** @17
  %18 = load i32, i32* @16
  %subtract250 = sub i32 %18, 1
  store i32 %subtract250, i32* @16
  store %list_node* %temp249, %list_node** @15
  br label %traverse_loop246

merge251:                                         ; preds = %traverse_loop246
  %19 = load %list_node*, %list_node** @17
  %temp252 = getelementptr inbounds %list_node, %list_node* %19, i32 0, i32 0
  %retval253 = load i8*, i8** %temp252
  %li_conv254 = bitcast i8* %retval253 to i32*
  %val_ptr255 = load i32, i32* %li_conv254
  %val1 = alloca i32
  store i32 %val_ptr255, i32* %val1
  %val2 = alloca i8*
  %list256 = load %list_node*, %list_node** %inner_list2
  %intvar257 = alloca i32
  store i32 4, i32* %intvar257
  store %list_node* %list256, %list_node** @18
  %20 = load i32, i32* %intvar257
  store i32 %20, i32* @19
  br label %traverse_loop258

traverse_loop258:                                 ; preds = %while_body259, %merge251
  br i1 true, label %while_body259, label %merge263

while_body259:                                    ; preds = %traverse_loop258
  %21 = load %list_node*, %list_node** @18
  %temp260 = getelementptr inbounds %list_node, %list_node* %21, i32 0, i32 1
  %temp261 = load %list_node*, %list_node** %temp260
  store %list_node* %temp261, %list_node** @20
  %22 = load i32, i32* @19
  %subtract262 = sub i32 %22, 1
  store i32 %subtract262, i32* @19
  store %list_node* %temp261, %list_node** @18
  br label %traverse_loop258

merge263:                                         ; preds = %traverse_loop258
  %23 = load %list_node*, %list_node** @20
  %temp264 = getelementptr inbounds %list_node, %list_node* %23, i32 0, i32 0
  %retval265 = load i8*, i8** %temp264
  %li_conv266 = bitcast i8* %retval265 to i8**
  %val_ptr267 = load i8*, i8** %li_conv266
  store i8* %val_ptr267, i8** %val2
  %val1268 = load i32, i32* %val1
  %printf269 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.4, i32 0, i32 0), i32 %val1268)
  %val2270 = load i8*, i8** %val2
  %printf271 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.5, i32 0, i32 0), i8* %val2270)
  %malloccall272 = tail call i8* @malloc(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  %new_list273 = bitcast i8* %malloccall272 to %list_node**
  %malloccall274 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val275 = bitcast i8* %malloccall274 to i32*
  store i32 1, i32* %arr_val275
  %i8ptr276 = bitcast i32* %arr_val275 to i8*
  %malloccall277 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p278 = bitcast i8* %malloccall277 to %list_node*
  %valloc279 = getelementptr inbounds %list_node, %list_node* %node_p278, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p278
  store i8* %i8ptr276, i8** %valloc279
  store %list_node* %node_p278, %list_node** %new_list273
  %malloccall280 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val281 = bitcast i8* %malloccall280 to i32*
  store i32 2, i32* %arr_val281
  %i8ptr282 = bitcast i32* %arr_val281 to i8*
  %malloccall283 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p284 = bitcast i8* %malloccall283 to %list_node*
  %valloc285 = getelementptr inbounds %list_node, %list_node* %node_p284, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p284
  store i8* %i8ptr282, i8** %valloc285
  %temp286 = getelementptr inbounds %list_node, %list_node* %node_p278, i32 0, i32 1
  store %list_node* %node_p284, %list_node** %temp286
  %malloccall287 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val288 = bitcast i8* %malloccall287 to i32*
  store i32 3, i32* %arr_val288
  %i8ptr289 = bitcast i32* %arr_val288 to i8*
  %malloccall290 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p291 = bitcast i8* %malloccall290 to %list_node*
  %valloc292 = getelementptr inbounds %list_node, %list_node* %node_p291, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p291
  store i8* %i8ptr289, i8** %valloc292
  %temp293 = getelementptr inbounds %list_node, %list_node* %node_p284, i32 0, i32 1
  store %list_node* %node_p291, %list_node** %temp293
  %temp294 = load %list_node*, %list_node** %new_list273
  call void @funcy(%list_node* %temp294)
  ret i32 0
}

declare noalias i8* @malloc(i32)

define void @funcy(%list_node* %l1) {
entry:
  %l = alloca %list_node*
  store %list_node* %l1, %list_node** %l
  %a = alloca i32
  %list = load %list_node*, %list_node** %l
  %intvar = alloca i32
  store i32 0, i32* %intvar
  store %list_node* %list, %list_node** @21
  %0 = load i32, i32* %intvar
  store i32 %0, i32* @22
  br label %traverse_loop

traverse_loop:                                    ; preds = %while_body, %entry
  br i1 true, label %while_body, label %merge

while_body:                                       ; preds = %traverse_loop
  %1 = load %list_node*, %list_node** @21
  %temp = getelementptr inbounds %list_node, %list_node* %1, i32 0, i32 1
  %temp2 = load %list_node*, %list_node** %temp
  store %list_node* %temp2, %list_node** @23
  %2 = load i32, i32* @22
  %subtract = sub i32 %2, 1
  store i32 %subtract, i32* @22
  store %list_node* %temp2, %list_node** @21
  br label %traverse_loop

merge:                                            ; preds = %traverse_loop
  %3 = load %list_node*, %list_node** @23
  %temp3 = getelementptr inbounds %list_node, %list_node* %3, i32 0, i32 0
  %retval = load i8*, i8** %temp3
  %li_conv = bitcast i8* %retval to i32*
  %val_ptr = load i32, i32* %li_conv
  store i32 %val_ptr, i32* %a
  %a4 = load i32, i32* %a
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.6, i32 0, i32 0), i32 %a4)
  %s = alloca i8*
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @24, i32 0, i32 0), i8** %s
  %list5 = load %list_node*, %list_node** @l4
  %intvar6 = alloca i32
  store i32 0, i32* %intvar6
  store %list_node* %list5, %list_node** @25
  %4 = load i32, i32* %intvar6
  store i32 %4, i32* @26
  br label %traverse_loop7

traverse_loop7:                                   ; preds = %while_body8, %merge
  br i1 true, label %while_body8, label %merge12

while_body8:                                      ; preds = %traverse_loop7
  %5 = load %list_node*, %list_node** @25
  %temp9 = getelementptr inbounds %list_node, %list_node* %5, i32 0, i32 1
  %temp10 = load %list_node*, %list_node** %temp9
  store %list_node* %temp10, %list_node** @27
  %6 = load i32, i32* @26
  %subtract11 = sub i32 %6, 1
  store i32 %subtract11, i32* @26
  store %list_node* %temp10, %list_node** @25
  br label %traverse_loop7

merge12:                                          ; preds = %traverse_loop7
  %7 = load %list_node*, %list_node** @27
  %temp13 = getelementptr inbounds %list_node, %list_node* %7, i32 0, i32 0
  %retval14 = load i8*, i8** %temp13
  %li_conv15 = bitcast i8* %retval14 to i8**
  %val_ptr16 = load i8*, i8** %li_conv15
  store i8* %val_ptr16, i8** %s
  %s17 = load i8*, i8** %s
  %printf18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.7, i32 0, i32 0), i8* %s17)
  %list19 = load %list_node*, %list_node** @l3
  %intvar20 = alloca i32
  store i32 5, i32* %intvar20
  store %list_node* %list19, %list_node** @28
  %8 = load i32, i32* %intvar20
  store i32 %8, i32* @29
  br label %traverse_loop21

traverse_loop21:                                  ; preds = %while_body22, %merge12
  br i1 true, label %while_body22, label %merge26

while_body22:                                     ; preds = %traverse_loop21
  %9 = load %list_node*, %list_node** @28
  %temp23 = getelementptr inbounds %list_node, %list_node* %9, i32 0, i32 1
  %temp24 = load %list_node*, %list_node** %temp23
  store %list_node* %temp24, %list_node** @30
  %10 = load i32, i32* @29
  %subtract25 = sub i32 %10, 1
  store i32 %subtract25, i32* @29
  store %list_node* %temp24, %list_node** @28
  br label %traverse_loop21

merge26:                                          ; preds = %traverse_loop21
  %11 = load %list_node*, %list_node** @30
  %temp27 = getelementptr inbounds %list_node, %list_node* %11, i32 0, i32 0
  %retval28 = load i8*, i8** %temp27
  %li_conv29 = bitcast i8* %retval28 to i1*
  %val_ptr30 = load i1, i1* %li_conv29
  %b = alloca i1
  store i1 %val_ptr30, i1* %b
  %b31 = load i1, i1* %b
  %printf32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.8, i32 0, i32 0), i1 %b31)
  ret void
}

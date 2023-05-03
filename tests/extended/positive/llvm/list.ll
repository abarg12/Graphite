; ModuleID = 'Graphite'
source_filename = "Graphite"

%list_node = type { i8*, %list_node* }

@l = global %list_node* null
@a = global double 0.000000e+00
@fmt = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@l2 = global %list_node* null
@b = global i32 0
@fmt.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@l3 = global %list_node* null
@0 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@1 = private unnamed_addr constant [6 x i8] c"three\00", align 1
@l4 = global %list_node* null
@abc = global i1 false
@fmt.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@bcd = global i8* null
@fmt.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@2 = private unnamed_addr constant [9 x i8] c"badbunny\00", align 1
@fmt.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.6 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@3 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@fmt.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.8 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @printf(i8*, ...)

declare i8* @array_get(i8*, i32, ...)

declare i8* @array_set(i8*, i32, i8*, ...)

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
  %temp17 = getelementptr inbounds %list_node, %list_node* %list, i32 0, i32 1
  %temp18 = load %list_node*, %list_node** %temp17
  %temp19 = getelementptr inbounds %list_node, %list_node* %temp18, i32 0, i32 0
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
  %temp44 = getelementptr inbounds %list_node, %list_node* %list43, i32 0, i32 1
  %temp45 = load %list_node*, %list_node** %temp44
  %temp46 = getelementptr inbounds %list_node, %list_node* %temp45, i32 0, i32 1
  %temp47 = load %list_node*, %list_node** %temp46
  %temp48 = getelementptr inbounds %list_node, %list_node* %temp47, i32 0, i32 0
  %retval49 = load i8*, i8** %temp48
  %li_conv50 = bitcast i8* %retval49 to i32*
  %val_ptr51 = load i32, i32* %li_conv50
  store i32 %val_ptr51, i32* @b
  %b = load i32, i32* @b
  %printf52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.1, i32 0, i32 0), i32 %b)
  %malloccall53 = tail call i8* @malloc(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  %new_list54 = bitcast i8* %malloccall53 to %list_node**
  %malloccall55 = tail call i8* @malloc(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32))
  %arr_val56 = bitcast i8* %malloccall55 to i1*
  store i1 true, i1* %arr_val56
  %i8ptr57 = bitcast i1* %arr_val56 to i8*
  %malloccall58 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p59 = bitcast i8* %malloccall58 to %list_node*
  %valloc60 = getelementptr inbounds %list_node, %list_node* %node_p59, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p59
  store i8* %i8ptr57, i8** %valloc60
  store %list_node* %node_p59, %list_node** %new_list54
  %malloccall61 = tail call i8* @malloc(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32))
  %arr_val62 = bitcast i8* %malloccall61 to i1*
  store i1 false, i1* %arr_val62
  %i8ptr63 = bitcast i1* %arr_val62 to i8*
  %malloccall64 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p65 = bitcast i8* %malloccall64 to %list_node*
  %valloc66 = getelementptr inbounds %list_node, %list_node* %node_p65, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p65
  store i8* %i8ptr63, i8** %valloc66
  %temp67 = getelementptr inbounds %list_node, %list_node* %node_p59, i32 0, i32 1
  store %list_node* %node_p65, %list_node** %temp67
  %malloccall68 = tail call i8* @malloc(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32))
  %arr_val69 = bitcast i8* %malloccall68 to i1*
  store i1 true, i1* %arr_val69
  %i8ptr70 = bitcast i1* %arr_val69 to i8*
  %malloccall71 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p72 = bitcast i8* %malloccall71 to %list_node*
  %valloc73 = getelementptr inbounds %list_node, %list_node* %node_p72, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p72
  store i8* %i8ptr70, i8** %valloc73
  %temp74 = getelementptr inbounds %list_node, %list_node* %node_p65, i32 0, i32 1
  store %list_node* %node_p72, %list_node** %temp74
  %malloccall75 = tail call i8* @malloc(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32))
  %arr_val76 = bitcast i8* %malloccall75 to i1*
  store i1 false, i1* %arr_val76
  %i8ptr77 = bitcast i1* %arr_val76 to i8*
  %malloccall78 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p79 = bitcast i8* %malloccall78 to %list_node*
  %valloc80 = getelementptr inbounds %list_node, %list_node* %node_p79, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p79
  store i8* %i8ptr77, i8** %valloc80
  %temp81 = getelementptr inbounds %list_node, %list_node* %node_p72, i32 0, i32 1
  store %list_node* %node_p79, %list_node** %temp81
  %malloccall82 = tail call i8* @malloc(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32))
  %arr_val83 = bitcast i8* %malloccall82 to i1*
  store i1 true, i1* %arr_val83
  %i8ptr84 = bitcast i1* %arr_val83 to i8*
  %malloccall85 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p86 = bitcast i8* %malloccall85 to %list_node*
  %valloc87 = getelementptr inbounds %list_node, %list_node* %node_p86, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p86
  store i8* %i8ptr84, i8** %valloc87
  %temp88 = getelementptr inbounds %list_node, %list_node* %node_p79, i32 0, i32 1
  store %list_node* %node_p86, %list_node** %temp88
  %malloccall89 = tail call i8* @malloc(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32))
  %arr_val90 = bitcast i8* %malloccall89 to i1*
  store i1 false, i1* %arr_val90
  %i8ptr91 = bitcast i1* %arr_val90 to i8*
  %malloccall92 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p93 = bitcast i8* %malloccall92 to %list_node*
  %valloc94 = getelementptr inbounds %list_node, %list_node* %node_p93, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p93
  store i8* %i8ptr91, i8** %valloc94
  %temp95 = getelementptr inbounds %list_node, %list_node* %node_p86, i32 0, i32 1
  store %list_node* %node_p93, %list_node** %temp95
  %temp96 = load %list_node*, %list_node** %new_list54
  store %list_node* %temp96, %list_node** @l3
  %malloccall97 = tail call i8* @malloc(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  %new_list98 = bitcast i8* %malloccall97 to %list_node**
  %malloccall99 = tail call i8* @malloc(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  %arr_val100 = bitcast i8* %malloccall99 to i8**
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @0, i32 0, i32 0), i8** %arr_val100
  %i8ptr101 = bitcast i8** %arr_val100 to i8*
  %malloccall102 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p103 = bitcast i8* %malloccall102 to %list_node*
  %valloc104 = getelementptr inbounds %list_node, %list_node* %node_p103, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p103
  store i8* %i8ptr101, i8** %valloc104
  store %list_node* %node_p103, %list_node** %new_list98
  %malloccall105 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val106 = bitcast i8* %malloccall105 to i32*
  store i32 2, i32* %arr_val106
  %i8ptr107 = bitcast i32* %arr_val106 to i8*
  %malloccall108 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p109 = bitcast i8* %malloccall108 to %list_node*
  %valloc110 = getelementptr inbounds %list_node, %list_node* %node_p109, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p109
  store i8* %i8ptr107, i8** %valloc110
  %temp111 = getelementptr inbounds %list_node, %list_node* %node_p103, i32 0, i32 1
  store %list_node* %node_p109, %list_node** %temp111
  %malloccall112 = tail call i8* @malloc(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  %arr_val113 = bitcast i8* %malloccall112 to i8**
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1, i32 0, i32 0), i8** %arr_val113
  %i8ptr114 = bitcast i8** %arr_val113 to i8*
  %malloccall115 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p116 = bitcast i8* %malloccall115 to %list_node*
  %valloc117 = getelementptr inbounds %list_node, %list_node* %node_p116, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p116
  store i8* %i8ptr114, i8** %valloc117
  %temp118 = getelementptr inbounds %list_node, %list_node* %node_p109, i32 0, i32 1
  store %list_node* %node_p116, %list_node** %temp118
  %malloccall119 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val120 = bitcast i8* %malloccall119 to i32*
  store i32 4, i32* %arr_val120
  %i8ptr121 = bitcast i32* %arr_val120 to i8*
  %malloccall122 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p123 = bitcast i8* %malloccall122 to %list_node*
  %valloc124 = getelementptr inbounds %list_node, %list_node* %node_p123, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p123
  store i8* %i8ptr121, i8** %valloc124
  %temp125 = getelementptr inbounds %list_node, %list_node* %node_p116, i32 0, i32 1
  store %list_node* %node_p123, %list_node** %temp125
  %temp126 = load %list_node*, %list_node** %new_list98
  store %list_node* %temp126, %list_node** @l4
  %list127 = load %list_node*, %list_node** @l3
  %temp128 = getelementptr inbounds %list_node, %list_node* %list127, i32 0, i32 0
  %retval129 = load i8*, i8** %temp128
  %li_conv130 = bitcast i8* %retval129 to i1*
  %val_ptr131 = load i1, i1* %li_conv130
  store i1 %val_ptr131, i1* @abc
  %abc = load i1, i1* @abc
  %printf132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.2, i32 0, i32 0), i1 %abc)
  %list133 = load %list_node*, %list_node** @l4
  %temp134 = getelementptr inbounds %list_node, %list_node* %list133, i32 0, i32 0
  %retval135 = load i8*, i8** %temp134
  %li_conv136 = bitcast i8* %retval135 to i8**
  %val_ptr137 = load i8*, i8** %li_conv136
  store i8* %val_ptr137, i8** @bcd
  %bcd = load i8*, i8** @bcd
  %printf138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.3, i32 0, i32 0), i8* %bcd)
  %malloccall139 = tail call i8* @malloc(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  %new_list140 = bitcast i8* %malloccall139 to %list_node**
  %malloccall141 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val142 = bitcast i8* %malloccall141 to i32*
  store i32 101044, i32* %arr_val142
  %i8ptr143 = bitcast i32* %arr_val142 to i8*
  %malloccall144 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p145 = bitcast i8* %malloccall144 to %list_node*
  %valloc146 = getelementptr inbounds %list_node, %list_node* %node_p145, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p145
  store i8* %i8ptr143, i8** %valloc146
  store %list_node* %node_p145, %list_node** %new_list140
  %malloccall147 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val148 = bitcast i8* %malloccall147 to i32*
  store i32 34, i32* %arr_val148
  %i8ptr149 = bitcast i32* %arr_val148 to i8*
  %malloccall150 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p151 = bitcast i8* %malloccall150 to %list_node*
  %valloc152 = getelementptr inbounds %list_node, %list_node* %node_p151, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p151
  store i8* %i8ptr149, i8** %valloc152
  %temp153 = getelementptr inbounds %list_node, %list_node* %node_p145, i32 0, i32 1
  store %list_node* %node_p151, %list_node** %temp153
  %malloccall154 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val155 = bitcast i8* %malloccall154 to i32*
  store i32 34134, i32* %arr_val155
  %i8ptr156 = bitcast i32* %arr_val155 to i8*
  %malloccall157 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p158 = bitcast i8* %malloccall157 to %list_node*
  %valloc159 = getelementptr inbounds %list_node, %list_node* %node_p158, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p158
  store i8* %i8ptr156, i8** %valloc159
  %temp160 = getelementptr inbounds %list_node, %list_node* %node_p151, i32 0, i32 1
  store %list_node* %node_p158, %list_node** %temp160
  %malloccall161 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val162 = bitcast i8* %malloccall161 to i32*
  store i32 39, i32* %arr_val162
  %i8ptr163 = bitcast i32* %arr_val162 to i8*
  %malloccall164 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p165 = bitcast i8* %malloccall164 to %list_node*
  %valloc166 = getelementptr inbounds %list_node, %list_node* %node_p165, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p165
  store i8* %i8ptr163, i8** %valloc166
  %temp167 = getelementptr inbounds %list_node, %list_node* %node_p158, i32 0, i32 1
  store %list_node* %node_p165, %list_node** %temp167
  %temp168 = load %list_node*, %list_node** %new_list140
  %inner_list = alloca %list_node*
  store %list_node* %temp168, %list_node** %inner_list
  %malloccall169 = tail call i8* @malloc(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  %new_list170 = bitcast i8* %malloccall169 to %list_node**
  %malloccall171 = tail call i8* @malloc(i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32))
  %arr_val172 = bitcast i8* %malloccall171 to double*
  store double -1.100000e+00, double* %arr_val172
  %i8ptr173 = bitcast double* %arr_val172 to i8*
  %malloccall174 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p175 = bitcast i8* %malloccall174 to %list_node*
  %valloc176 = getelementptr inbounds %list_node, %list_node* %node_p175, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p175
  store i8* %i8ptr173, i8** %valloc176
  store %list_node* %node_p175, %list_node** %new_list170
  %malloccall177 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val178 = bitcast i8* %malloccall177 to i32*
  store i32 -2, i32* %arr_val178
  %i8ptr179 = bitcast i32* %arr_val178 to i8*
  %malloccall180 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p181 = bitcast i8* %malloccall180 to %list_node*
  %valloc182 = getelementptr inbounds %list_node, %list_node* %node_p181, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p181
  store i8* %i8ptr179, i8** %valloc182
  %temp183 = getelementptr inbounds %list_node, %list_node* %node_p175, i32 0, i32 1
  store %list_node* %node_p181, %list_node** %temp183
  %malloccall184 = tail call i8* @malloc(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32))
  %arr_val185 = bitcast i8* %malloccall184 to i1*
  store i1 true, i1* %arr_val185
  %i8ptr186 = bitcast i1* %arr_val185 to i8*
  %malloccall187 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p188 = bitcast i8* %malloccall187 to %list_node*
  %valloc189 = getelementptr inbounds %list_node, %list_node* %node_p188, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p188
  store i8* %i8ptr186, i8** %valloc189
  %temp190 = getelementptr inbounds %list_node, %list_node* %node_p181, i32 0, i32 1
  store %list_node* %node_p188, %list_node** %temp190
  %malloccall191 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val192 = bitcast i8* %malloccall191 to i32*
  store i32 -4, i32* %arr_val192
  %i8ptr193 = bitcast i32* %arr_val192 to i8*
  %malloccall194 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p195 = bitcast i8* %malloccall194 to %list_node*
  %valloc196 = getelementptr inbounds %list_node, %list_node* %node_p195, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p195
  store i8* %i8ptr193, i8** %valloc196
  %temp197 = getelementptr inbounds %list_node, %list_node* %node_p188, i32 0, i32 1
  store %list_node* %node_p195, %list_node** %temp197
  %malloccall198 = tail call i8* @malloc(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  %arr_val199 = bitcast i8* %malloccall198 to i8**
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2, i32 0, i32 0), i8** %arr_val199
  %i8ptr200 = bitcast i8** %arr_val199 to i8*
  %malloccall201 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p202 = bitcast i8* %malloccall201 to %list_node*
  %valloc203 = getelementptr inbounds %list_node, %list_node* %node_p202, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p202
  store i8* %i8ptr200, i8** %valloc203
  %temp204 = getelementptr inbounds %list_node, %list_node* %node_p195, i32 0, i32 1
  store %list_node* %node_p202, %list_node** %temp204
  %malloccall205 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val206 = bitcast i8* %malloccall205 to i32*
  store i32 2, i32* %arr_val206
  %i8ptr207 = bitcast i32* %arr_val206 to i8*
  %malloccall208 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p209 = bitcast i8* %malloccall208 to %list_node*
  %valloc210 = getelementptr inbounds %list_node, %list_node* %node_p209, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p209
  store i8* %i8ptr207, i8** %valloc210
  %temp211 = getelementptr inbounds %list_node, %list_node* %node_p202, i32 0, i32 1
  store %list_node* %node_p209, %list_node** %temp211
  %malloccall212 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val213 = bitcast i8* %malloccall212 to i32*
  store i32 3, i32* %arr_val213
  %i8ptr214 = bitcast i32* %arr_val213 to i8*
  %malloccall215 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p216 = bitcast i8* %malloccall215 to %list_node*
  %valloc217 = getelementptr inbounds %list_node, %list_node* %node_p216, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p216
  store i8* %i8ptr214, i8** %valloc217
  %temp218 = getelementptr inbounds %list_node, %list_node* %node_p209, i32 0, i32 1
  store %list_node* %node_p216, %list_node** %temp218
  %malloccall219 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val220 = bitcast i8* %malloccall219 to i32*
  store i32 4, i32* %arr_val220
  %i8ptr221 = bitcast i32* %arr_val220 to i8*
  %malloccall222 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p223 = bitcast i8* %malloccall222 to %list_node*
  %valloc224 = getelementptr inbounds %list_node, %list_node* %node_p223, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p223
  store i8* %i8ptr221, i8** %valloc224
  %temp225 = getelementptr inbounds %list_node, %list_node* %node_p216, i32 0, i32 1
  store %list_node* %node_p223, %list_node** %temp225
  %temp226 = load %list_node*, %list_node** %new_list170
  %inner_list2 = alloca %list_node*
  store %list_node* %temp226, %list_node** %inner_list2
  %list227 = load %list_node*, %list_node** %inner_list
  %temp228 = getelementptr inbounds %list_node, %list_node* %list227, i32 0, i32 1
  %temp229 = load %list_node*, %list_node** %temp228
  %temp230 = getelementptr inbounds %list_node, %list_node* %temp229, i32 0, i32 0
  %retval231 = load i8*, i8** %temp230
  %li_conv232 = bitcast i8* %retval231 to i32*
  %val_ptr233 = load i32, i32* %li_conv232
  %val1 = alloca i32
  store i32 %val_ptr233, i32* %val1
  %val2 = alloca i8*
  %list234 = load %list_node*, %list_node** %inner_list2
  %temp235 = getelementptr inbounds %list_node, %list_node* %list234, i32 0, i32 1
  %temp236 = load %list_node*, %list_node** %temp235
  %temp237 = getelementptr inbounds %list_node, %list_node* %temp236, i32 0, i32 1
  %temp238 = load %list_node*, %list_node** %temp237
  %temp239 = getelementptr inbounds %list_node, %list_node* %temp238, i32 0, i32 1
  %temp240 = load %list_node*, %list_node** %temp239
  %temp241 = getelementptr inbounds %list_node, %list_node* %temp240, i32 0, i32 1
  %temp242 = load %list_node*, %list_node** %temp241
  %temp243 = getelementptr inbounds %list_node, %list_node* %temp242, i32 0, i32 0
  %retval244 = load i8*, i8** %temp243
  %li_conv245 = bitcast i8* %retval244 to i8**
  %val_ptr246 = load i8*, i8** %li_conv245
  store i8* %val_ptr246, i8** %val2
  %val1247 = load i32, i32* %val1
  %printf248 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.4, i32 0, i32 0), i32 %val1247)
  %val2249 = load i8*, i8** %val2
  %printf250 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.5, i32 0, i32 0), i8* %val2249)
  %malloccall251 = tail call i8* @malloc(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  %new_list252 = bitcast i8* %malloccall251 to %list_node**
  %malloccall253 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val254 = bitcast i8* %malloccall253 to i32*
  store i32 1, i32* %arr_val254
  %i8ptr255 = bitcast i32* %arr_val254 to i8*
  %malloccall256 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p257 = bitcast i8* %malloccall256 to %list_node*
  %valloc258 = getelementptr inbounds %list_node, %list_node* %node_p257, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p257
  store i8* %i8ptr255, i8** %valloc258
  store %list_node* %node_p257, %list_node** %new_list252
  %malloccall259 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val260 = bitcast i8* %malloccall259 to i32*
  store i32 2, i32* %arr_val260
  %i8ptr261 = bitcast i32* %arr_val260 to i8*
  %malloccall262 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p263 = bitcast i8* %malloccall262 to %list_node*
  %valloc264 = getelementptr inbounds %list_node, %list_node* %node_p263, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p263
  store i8* %i8ptr261, i8** %valloc264
  %temp265 = getelementptr inbounds %list_node, %list_node* %node_p257, i32 0, i32 1
  store %list_node* %node_p263, %list_node** %temp265
  %malloccall266 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val267 = bitcast i8* %malloccall266 to i32*
  store i32 3, i32* %arr_val267
  %i8ptr268 = bitcast i32* %arr_val267 to i8*
  %malloccall269 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %node_p270 = bitcast i8* %malloccall269 to %list_node*
  %valloc271 = getelementptr inbounds %list_node, %list_node* %node_p270, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p270
  store i8* %i8ptr268, i8** %valloc271
  %temp272 = getelementptr inbounds %list_node, %list_node* %node_p263, i32 0, i32 1
  store %list_node* %node_p270, %list_node** %temp272
  %temp273 = load %list_node*, %list_node** %new_list252
  call void @funcy(%list_node* %temp273)
  ret i32 0
}

declare noalias i8* @malloc(i32)

define void @funcy(%list_node* %l1) {
entry:
  %l = alloca %list_node*
  store %list_node* %l1, %list_node** %l
  %a = alloca i32
  %list = load %list_node*, %list_node** %l
  %temp = getelementptr inbounds %list_node, %list_node* %list, i32 0, i32 0
  %retval = load i8*, i8** %temp
  %li_conv = bitcast i8* %retval to i32*
  %val_ptr = load i32, i32* %li_conv
  store i32 %val_ptr, i32* %a
  %a2 = load i32, i32* %a
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.6, i32 0, i32 0), i32 %a2)
  %s = alloca i8*
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3, i32 0, i32 0), i8** %s
  %list3 = load %list_node*, %list_node** @l4
  %temp4 = getelementptr inbounds %list_node, %list_node* %list3, i32 0, i32 0
  %retval5 = load i8*, i8** %temp4
  %li_conv6 = bitcast i8* %retval5 to i8**
  %val_ptr7 = load i8*, i8** %li_conv6
  store i8* %val_ptr7, i8** %s
  %s8 = load i8*, i8** %s
  %printf9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.7, i32 0, i32 0), i8* %s8)
  %list10 = load %list_node*, %list_node** @l3
  %temp11 = getelementptr inbounds %list_node, %list_node* %list10, i32 0, i32 1
  %temp12 = load %list_node*, %list_node** %temp11
  %temp13 = getelementptr inbounds %list_node, %list_node* %temp12, i32 0, i32 1
  %temp14 = load %list_node*, %list_node** %temp13
  %temp15 = getelementptr inbounds %list_node, %list_node* %temp14, i32 0, i32 1
  %temp16 = load %list_node*, %list_node** %temp15
  %temp17 = getelementptr inbounds %list_node, %list_node* %temp16, i32 0, i32 1
  %temp18 = load %list_node*, %list_node** %temp17
  %temp19 = getelementptr inbounds %list_node, %list_node* %temp18, i32 0, i32 1
  %temp20 = load %list_node*, %list_node** %temp19
  %temp21 = getelementptr inbounds %list_node, %list_node* %temp20, i32 0, i32 0
  %retval22 = load i8*, i8** %temp21
  %li_conv23 = bitcast i8* %retval22 to i1*
  %val_ptr24 = load i1, i1* %li_conv23
  %b = alloca i1
  store i1 %val_ptr24, i1* %b
  %b25 = load i1, i1* %b
  %printf26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.8, i32 0, i32 0), i1 %b25)
  ret void
}

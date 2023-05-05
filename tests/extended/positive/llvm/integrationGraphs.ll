; ModuleID = 'Graphite'
source_filename = "Graphite"

%list_node = type { i8*, %list_node* }
%node_struct = type { i8*, i1, i8* }
%edge_t = type { %node_struct*, %node_struct*, i32 }
%graph_t = type { %node_node*, %edge_node* }
%node_node = type { %node_struct*, %node_node* }
%edge_node = type { %edge_t*, %edge_node* }

@0 = private unnamed_addr constant [12 x i8] c"hello_world\00", align 1
@1 = private unnamed_addr constant [8 x i8] c"scanner\00", align 1
@2 = private unnamed_addr constant [10 x i8] c"homework3\00", align 1
@assignment_names = global %list_node* null
@assignment_id = global %list_node* null
@name_ix = global i32 0
@id_ix = global i32 0
@assignments = global %list_node* null
@steven_oh = global %node_struct* null
@3 = private unnamed_addr constant [5 x i8] c"1352\00", align 1
@claudia_aranda_barrios = global %node_struct* null
@4 = private unnamed_addr constant [5 x i8] c"1352\00", align 1
@aidan_barg = global %node_struct* null
@5 = private unnamed_addr constant [5 x i8] c"1352\00", align 1
@abby_larson = global %node_struct* null
@6 = private unnamed_addr constant [5 x i8] c"1352\00", align 1
@partnership1 = global %edge_t* null
@partnership2 = global %edge_t* null
@students = global %graph_t zeroinitializer
@llNodes = global %node_node* null
@llNodes.1 = global %node_node* null
@llNodes.2 = global %node_node* null
@llNodes.3 = global %node_node* null
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@assignment_id_num = global i32 0
@assignment_index = global i32 0
@7 = private unnamed_addr constant [55 x i8] c"assignment we are averaging is assignment with name: \0A\00", align 1
@assignment_name = global i8* null
@fmt.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@8 = private unnamed_addr constant [36 x i8] c"we will now find the average score\0A\00", align 1
@9 = private unnamed_addr constant [39 x i8] c"The average score for assignment is: \0A\00", align 1
@nodesList = global %list_node* null
@llNodes.6 = global %node_node* null
@allStudents = global %list_node* null
@fmt.7 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.8 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@num_students = global i32 0
@i = global i32 0
@sum = global i32 0
@average = global i32 0
@fmt.9 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @printf(i8*, ...)

declare i32 @strcmp(i8*, i8*)

declare i8* @array_get(i8*, i32, ...)

declare i8* @array_set(i8*, i32, i8*, ...)

declare i8* @array_len(i8*, ...)

declare i8 @nodeExists(%node_struct*, ...)

declare i8* @array_add(i8*, i32, i8*, ...)

define i32 @main() {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %new_list = bitcast i8* %malloccall to %list_node**
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %arr_val = bitcast i8* %malloccall1 to i8**
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @0, i32 0, i32 0), i8** %arr_val, align 8
  %i8ptr = bitcast i8** %arr_val to i8*
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p = bitcast i8* %malloccall2 to %list_node*
  %valloc = getelementptr inbounds %list_node, %list_node* %node_p, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p, align 8
  store i8* %i8ptr, i8** %valloc, align 8
  store %list_node* %node_p, %list_node** %new_list, align 8
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %arr_val4 = bitcast i8* %malloccall3 to i8**
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i8** %arr_val4, align 8
  %i8ptr5 = bitcast i8** %arr_val4 to i8*
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p7 = bitcast i8* %malloccall6 to %list_node*
  %valloc8 = getelementptr inbounds %list_node, %list_node* %node_p7, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p7, align 8
  store i8* %i8ptr5, i8** %valloc8, align 8
  %temp = getelementptr inbounds %list_node, %list_node* %node_p, i32 0, i32 1
  store %list_node* %node_p7, %list_node** %temp, align 8
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %arr_val10 = bitcast i8* %malloccall9 to i8**
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @2, i32 0, i32 0), i8** %arr_val10, align 8
  %i8ptr11 = bitcast i8** %arr_val10 to i8*
  %malloccall12 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p13 = bitcast i8* %malloccall12 to %list_node*
  %valloc14 = getelementptr inbounds %list_node, %list_node* %node_p13, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p13, align 8
  store i8* %i8ptr11, i8** %valloc14, align 8
  %temp15 = getelementptr inbounds %list_node, %list_node* %node_p7, i32 0, i32 1
  store %list_node* %node_p13, %list_node** %temp15, align 8
  %temp16 = load %list_node*, %list_node** %new_list, align 8
  store %list_node* %temp16, %list_node** @assignment_names, align 8
  %malloccall17 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %new_list18 = bitcast i8* %malloccall17 to %list_node**
  %malloccall19 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val20 = bitcast i8* %malloccall19 to i32*
  store i32 13, i32* %arr_val20, align 4
  %i8ptr21 = bitcast i32* %arr_val20 to i8*
  %malloccall22 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p23 = bitcast i8* %malloccall22 to %list_node*
  %valloc24 = getelementptr inbounds %list_node, %list_node* %node_p23, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p23, align 8
  store i8* %i8ptr21, i8** %valloc24, align 8
  store %list_node* %node_p23, %list_node** %new_list18, align 8
  %malloccall25 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val26 = bitcast i8* %malloccall25 to i32*
  store i32 12, i32* %arr_val26, align 4
  %i8ptr27 = bitcast i32* %arr_val26 to i8*
  %malloccall28 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p29 = bitcast i8* %malloccall28 to %list_node*
  %valloc30 = getelementptr inbounds %list_node, %list_node* %node_p29, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p29, align 8
  store i8* %i8ptr27, i8** %valloc30, align 8
  %temp31 = getelementptr inbounds %list_node, %list_node* %node_p23, i32 0, i32 1
  store %list_node* %node_p29, %list_node** %temp31, align 8
  %malloccall32 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val33 = bitcast i8* %malloccall32 to i32*
  store i32 23, i32* %arr_val33, align 4
  %i8ptr34 = bitcast i32* %arr_val33 to i8*
  %malloccall35 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p36 = bitcast i8* %malloccall35 to %list_node*
  %valloc37 = getelementptr inbounds %list_node, %list_node* %node_p36, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p36, align 8
  store i8* %i8ptr34, i8** %valloc37, align 8
  %temp38 = getelementptr inbounds %list_node, %list_node* %node_p29, i32 0, i32 1
  store %list_node* %node_p36, %list_node** %temp38, align 8
  %temp39 = load %list_node*, %list_node** %new_list18, align 8
  store %list_node* %temp39, %list_node** @assignment_id, align 8
  store i32 0, i32* @name_ix, align 4
  store i32 1, i32* @id_ix, align 4
  %malloccall40 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %new_list41 = bitcast i8* %malloccall40 to %list_node**
  %assignment_names = load %list_node*, %list_node** @assignment_names, align 8
  %malloccall42 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %arr_val43 = bitcast i8* %malloccall42 to %list_node**
  store %list_node* %assignment_names, %list_node** %arr_val43, align 8
  %i8ptr44 = bitcast %list_node** %arr_val43 to i8*
  %malloccall45 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p46 = bitcast i8* %malloccall45 to %list_node*
  %valloc47 = getelementptr inbounds %list_node, %list_node* %node_p46, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p46, align 8
  store i8* %i8ptr44, i8** %valloc47, align 8
  store %list_node* %node_p46, %list_node** %new_list41, align 8
  %assignment_id = load %list_node*, %list_node** @assignment_id, align 8
  %malloccall48 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %arr_val49 = bitcast i8* %malloccall48 to %list_node**
  store %list_node* %assignment_id, %list_node** %arr_val49, align 8
  %i8ptr50 = bitcast %list_node** %arr_val49 to i8*
  %malloccall51 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p52 = bitcast i8* %malloccall51 to %list_node*
  %valloc53 = getelementptr inbounds %list_node, %list_node* %node_p52, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p52, align 8
  store i8* %i8ptr50, i8** %valloc53, align 8
  %temp54 = getelementptr inbounds %list_node, %list_node* %node_p46, i32 0, i32 1
  store %list_node* %node_p52, %list_node** %temp54, align 8
  %temp55 = load %list_node*, %list_node** %new_list41, align 8
  store %list_node* %temp55, %list_node** @assignments, align 8
  %malloccall56 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node = bitcast i8* %malloccall56 to %node_struct*
  %malloccall57 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %data = bitcast i8* %malloccall57 to %list_node**
  %malloccall58 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name = bitcast i8* %malloccall58 to i8**
  %data_ptr = bitcast %list_node** %data to i8*
  %name_ptr = bitcast i8** %name to i8*
  %"name'" = getelementptr inbounds %node_struct, %node_struct* %node, i32 0, i32 0
  %"data'" = getelementptr inbounds %node_struct, %node_struct* %node, i32 0, i32 2
  store i8* %name_ptr, i8** %"name'", align 8
  store i8* %data_ptr, i8** %"data'", align 8
  store %node_struct* %node, %node_struct** @steven_oh, align 8
  %"lvar'" = load %node_struct*, %node_struct** @steven_oh, align 8
  %temp59 = getelementptr inbounds %node_struct, %node_struct* %"lvar'", i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3, i32 0, i32 0), i8** %temp59, align 8
  %malloccall60 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %new_list61 = bitcast i8* %malloccall60 to %list_node**
  %malloccall62 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val63 = bitcast i8* %malloccall62 to i32*
  store i32 95, i32* %arr_val63, align 4
  %i8ptr64 = bitcast i32* %arr_val63 to i8*
  %malloccall65 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p66 = bitcast i8* %malloccall65 to %list_node*
  %valloc67 = getelementptr inbounds %list_node, %list_node* %node_p66, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p66, align 8
  store i8* %i8ptr64, i8** %valloc67, align 8
  store %list_node* %node_p66, %list_node** %new_list61, align 8
  %malloccall68 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val69 = bitcast i8* %malloccall68 to i32*
  store i32 90, i32* %arr_val69, align 4
  %i8ptr70 = bitcast i32* %arr_val69 to i8*
  %malloccall71 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p72 = bitcast i8* %malloccall71 to %list_node*
  %valloc73 = getelementptr inbounds %list_node, %list_node* %node_p72, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p72, align 8
  store i8* %i8ptr70, i8** %valloc73, align 8
  %temp74 = getelementptr inbounds %list_node, %list_node* %node_p66, i32 0, i32 1
  store %list_node* %node_p72, %list_node** %temp74, align 8
  %malloccall75 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val76 = bitcast i8* %malloccall75 to i32*
  store i32 99, i32* %arr_val76, align 4
  %i8ptr77 = bitcast i32* %arr_val76 to i8*
  %malloccall78 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p79 = bitcast i8* %malloccall78 to %list_node*
  %valloc80 = getelementptr inbounds %list_node, %list_node* %node_p79, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p79, align 8
  store i8* %i8ptr77, i8** %valloc80, align 8
  %temp81 = getelementptr inbounds %list_node, %list_node* %node_p72, i32 0, i32 1
  store %list_node* %node_p79, %list_node** %temp81, align 8
  %temp82 = load %list_node*, %list_node** %new_list61, align 8
  %"lvar'83" = load %node_struct*, %node_struct** @steven_oh, align 8
  %temp84 = getelementptr inbounds %node_struct, %node_struct* %"lvar'83", i32 0, i32 2
  %malloccall85 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %bruh = bitcast i8* %malloccall85 to %list_node**
  store %list_node* %temp82, %list_node** %bruh, align 8
  %name86 = bitcast %list_node** %bruh to i8*
  store i8* %name86, i8** %temp84, align 8
  %"lvar'87" = load %node_struct*, %node_struct** @steven_oh, align 8
  %temp88 = getelementptr inbounds %node_struct, %node_struct* %"lvar'87", i32 0, i32 1
  store i1 false, i1* %temp88, align 1
  %malloccall89 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node90 = bitcast i8* %malloccall89 to %node_struct*
  %malloccall91 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %data92 = bitcast i8* %malloccall91 to %list_node**
  %malloccall93 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name94 = bitcast i8* %malloccall93 to i8**
  %data_ptr95 = bitcast %list_node** %data92 to i8*
  %name_ptr96 = bitcast i8** %name94 to i8*
  %"name'97" = getelementptr inbounds %node_struct, %node_struct* %node90, i32 0, i32 0
  %"data'98" = getelementptr inbounds %node_struct, %node_struct* %node90, i32 0, i32 2
  store i8* %name_ptr96, i8** %"name'97", align 8
  store i8* %data_ptr95, i8** %"data'98", align 8
  store %node_struct* %node90, %node_struct** @claudia_aranda_barrios, align 8
  %"lvar'99" = load %node_struct*, %node_struct** @claudia_aranda_barrios, align 8
  %temp100 = getelementptr inbounds %node_struct, %node_struct* %"lvar'99", i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @4, i32 0, i32 0), i8** %temp100, align 8
  %malloccall101 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %new_list102 = bitcast i8* %malloccall101 to %list_node**
  %malloccall103 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val104 = bitcast i8* %malloccall103 to i32*
  store i32 91, i32* %arr_val104, align 4
  %i8ptr105 = bitcast i32* %arr_val104 to i8*
  %malloccall106 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p107 = bitcast i8* %malloccall106 to %list_node*
  %valloc108 = getelementptr inbounds %list_node, %list_node* %node_p107, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p107, align 8
  store i8* %i8ptr105, i8** %valloc108, align 8
  store %list_node* %node_p107, %list_node** %new_list102, align 8
  %malloccall109 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val110 = bitcast i8* %malloccall109 to i32*
  store i32 12, i32* %arr_val110, align 4
  %i8ptr111 = bitcast i32* %arr_val110 to i8*
  %malloccall112 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p113 = bitcast i8* %malloccall112 to %list_node*
  %valloc114 = getelementptr inbounds %list_node, %list_node* %node_p113, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p113, align 8
  store i8* %i8ptr111, i8** %valloc114, align 8
  %temp115 = getelementptr inbounds %list_node, %list_node* %node_p107, i32 0, i32 1
  store %list_node* %node_p113, %list_node** %temp115, align 8
  %malloccall116 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val117 = bitcast i8* %malloccall116 to i32*
  store i32 95, i32* %arr_val117, align 4
  %i8ptr118 = bitcast i32* %arr_val117 to i8*
  %malloccall119 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p120 = bitcast i8* %malloccall119 to %list_node*
  %valloc121 = getelementptr inbounds %list_node, %list_node* %node_p120, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p120, align 8
  store i8* %i8ptr118, i8** %valloc121, align 8
  %temp122 = getelementptr inbounds %list_node, %list_node* %node_p113, i32 0, i32 1
  store %list_node* %node_p120, %list_node** %temp122, align 8
  %temp123 = load %list_node*, %list_node** %new_list102, align 8
  %"lvar'124" = load %node_struct*, %node_struct** @claudia_aranda_barrios, align 8
  %temp125 = getelementptr inbounds %node_struct, %node_struct* %"lvar'124", i32 0, i32 2
  %malloccall126 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %bruh127 = bitcast i8* %malloccall126 to %list_node**
  store %list_node* %temp123, %list_node** %bruh127, align 8
  %name128 = bitcast %list_node** %bruh127 to i8*
  store i8* %name128, i8** %temp125, align 8
  %"lvar'129" = load %node_struct*, %node_struct** @claudia_aranda_barrios, align 8
  %temp130 = getelementptr inbounds %node_struct, %node_struct* %"lvar'129", i32 0, i32 1
  store i1 false, i1* %temp130, align 1
  %malloccall131 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node132 = bitcast i8* %malloccall131 to %node_struct*
  %malloccall133 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %data134 = bitcast i8* %malloccall133 to %list_node**
  %malloccall135 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name136 = bitcast i8* %malloccall135 to i8**
  %data_ptr137 = bitcast %list_node** %data134 to i8*
  %name_ptr138 = bitcast i8** %name136 to i8*
  %"name'139" = getelementptr inbounds %node_struct, %node_struct* %node132, i32 0, i32 0
  %"data'140" = getelementptr inbounds %node_struct, %node_struct* %node132, i32 0, i32 2
  store i8* %name_ptr138, i8** %"name'139", align 8
  store i8* %data_ptr137, i8** %"data'140", align 8
  store %node_struct* %node132, %node_struct** @aidan_barg, align 8
  %"lvar'141" = load %node_struct*, %node_struct** @aidan_barg, align 8
  %temp142 = getelementptr inbounds %node_struct, %node_struct* %"lvar'141", i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @5, i32 0, i32 0), i8** %temp142, align 8
  %malloccall143 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %new_list144 = bitcast i8* %malloccall143 to %list_node**
  %malloccall145 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val146 = bitcast i8* %malloccall145 to i32*
  store i32 95, i32* %arr_val146, align 4
  %i8ptr147 = bitcast i32* %arr_val146 to i8*
  %malloccall148 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p149 = bitcast i8* %malloccall148 to %list_node*
  %valloc150 = getelementptr inbounds %list_node, %list_node* %node_p149, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p149, align 8
  store i8* %i8ptr147, i8** %valloc150, align 8
  store %list_node* %node_p149, %list_node** %new_list144, align 8
  %malloccall151 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val152 = bitcast i8* %malloccall151 to i32*
  store i32 90, i32* %arr_val152, align 4
  %i8ptr153 = bitcast i32* %arr_val152 to i8*
  %malloccall154 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p155 = bitcast i8* %malloccall154 to %list_node*
  %valloc156 = getelementptr inbounds %list_node, %list_node* %node_p155, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p155, align 8
  store i8* %i8ptr153, i8** %valloc156, align 8
  %temp157 = getelementptr inbounds %list_node, %list_node* %node_p149, i32 0, i32 1
  store %list_node* %node_p155, %list_node** %temp157, align 8
  %malloccall158 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val159 = bitcast i8* %malloccall158 to i32*
  store i32 100, i32* %arr_val159, align 4
  %i8ptr160 = bitcast i32* %arr_val159 to i8*
  %malloccall161 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p162 = bitcast i8* %malloccall161 to %list_node*
  %valloc163 = getelementptr inbounds %list_node, %list_node* %node_p162, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p162, align 8
  store i8* %i8ptr160, i8** %valloc163, align 8
  %temp164 = getelementptr inbounds %list_node, %list_node* %node_p155, i32 0, i32 1
  store %list_node* %node_p162, %list_node** %temp164, align 8
  %temp165 = load %list_node*, %list_node** %new_list144, align 8
  %"lvar'166" = load %node_struct*, %node_struct** @aidan_barg, align 8
  %temp167 = getelementptr inbounds %node_struct, %node_struct* %"lvar'166", i32 0, i32 2
  %malloccall168 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %bruh169 = bitcast i8* %malloccall168 to %list_node**
  store %list_node* %temp165, %list_node** %bruh169, align 8
  %name170 = bitcast %list_node** %bruh169 to i8*
  store i8* %name170, i8** %temp167, align 8
  %"lvar'171" = load %node_struct*, %node_struct** @aidan_barg, align 8
  %temp172 = getelementptr inbounds %node_struct, %node_struct* %"lvar'171", i32 0, i32 1
  store i1 false, i1* %temp172, align 1
  %malloccall173 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node174 = bitcast i8* %malloccall173 to %node_struct*
  %malloccall175 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %data176 = bitcast i8* %malloccall175 to %list_node**
  %malloccall177 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name178 = bitcast i8* %malloccall177 to i8**
  %data_ptr179 = bitcast %list_node** %data176 to i8*
  %name_ptr180 = bitcast i8** %name178 to i8*
  %"name'181" = getelementptr inbounds %node_struct, %node_struct* %node174, i32 0, i32 0
  %"data'182" = getelementptr inbounds %node_struct, %node_struct* %node174, i32 0, i32 2
  store i8* %name_ptr180, i8** %"name'181", align 8
  store i8* %data_ptr179, i8** %"data'182", align 8
  store %node_struct* %node174, %node_struct** @abby_larson, align 8
  %"lvar'183" = load %node_struct*, %node_struct** @abby_larson, align 8
  %temp184 = getelementptr inbounds %node_struct, %node_struct* %"lvar'183", i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @6, i32 0, i32 0), i8** %temp184, align 8
  %malloccall185 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %new_list186 = bitcast i8* %malloccall185 to %list_node**
  %malloccall187 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val188 = bitcast i8* %malloccall187 to i32*
  store i32 44, i32* %arr_val188, align 4
  %i8ptr189 = bitcast i32* %arr_val188 to i8*
  %malloccall190 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p191 = bitcast i8* %malloccall190 to %list_node*
  %valloc192 = getelementptr inbounds %list_node, %list_node* %node_p191, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p191, align 8
  store i8* %i8ptr189, i8** %valloc192, align 8
  store %list_node* %node_p191, %list_node** %new_list186, align 8
  %malloccall193 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val194 = bitcast i8* %malloccall193 to i32*
  store i32 3, i32* %arr_val194, align 4
  %i8ptr195 = bitcast i32* %arr_val194 to i8*
  %malloccall196 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p197 = bitcast i8* %malloccall196 to %list_node*
  %valloc198 = getelementptr inbounds %list_node, %list_node* %node_p197, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p197, align 8
  store i8* %i8ptr195, i8** %valloc198, align 8
  %temp199 = getelementptr inbounds %list_node, %list_node* %node_p191, i32 0, i32 1
  store %list_node* %node_p197, %list_node** %temp199, align 8
  %malloccall200 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %arr_val201 = bitcast i8* %malloccall200 to i32*
  store i32 98, i32* %arr_val201, align 4
  %i8ptr202 = bitcast i32* %arr_val201 to i8*
  %malloccall203 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node_p204 = bitcast i8* %malloccall203 to %list_node*
  %valloc205 = getelementptr inbounds %list_node, %list_node* %node_p204, i32 0, i32 0
  store %list_node zeroinitializer, %list_node* %node_p204, align 8
  store i8* %i8ptr202, i8** %valloc205, align 8
  %temp206 = getelementptr inbounds %list_node, %list_node* %node_p197, i32 0, i32 1
  store %list_node* %node_p204, %list_node** %temp206, align 8
  %temp207 = load %list_node*, %list_node** %new_list186, align 8
  %"lvar'208" = load %node_struct*, %node_struct** @abby_larson, align 8
  %temp209 = getelementptr inbounds %node_struct, %node_struct* %"lvar'208", i32 0, i32 2
  %malloccall210 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %bruh211 = bitcast i8* %malloccall210 to %list_node**
  store %list_node* %temp207, %list_node** %bruh211, align 8
  %name212 = bitcast %list_node** %bruh211 to i8*
  store i8* %name212, i8** %temp209, align 8
  %"lvar'213" = load %node_struct*, %node_struct** @abby_larson, align 8
  %temp214 = getelementptr inbounds %node_struct, %node_struct* %"lvar'213", i32 0, i32 1
  store i1 false, i1* %temp214, align 1
  %abby_larson = load %node_struct*, %node_struct** @abby_larson, align 8
  %claudia_aranda_barrios = load %node_struct*, %node_struct** @claudia_aranda_barrios, align 8
  %malloccall215 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct = bitcast i8* %malloccall215 to %edge_t*
  %"name'216" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 0
  %"name'217" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 1
  %"name'218" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 2
  store %node_struct* %abby_larson, %node_struct** %"name'216", align 8
  store %node_struct* %claudia_aranda_barrios, %node_struct** %"name'217", align 8
  store i32 0, i32* %"name'218", align 4
  %malloccall219 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge = bitcast i8* %malloccall219 to %edge_t*
  %"name'220" = getelementptr inbounds %edge_t, %edge_t* %edge, i32 0, i32 0
  %"data'221" = getelementptr inbounds %edge_t, %edge_t* %edge, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'220", align 8
  store %node_struct* null, %node_struct** %"data'221", align 8
  store %edge_t* %edge, %edge_t** @partnership1, align 8
  store %edge_t* %myEdgeStruct, %edge_t** @partnership1, align 8
  %"lvar'222" = load %edge_t*, %edge_t** @partnership1, align 8
  %temp223 = getelementptr inbounds %edge_t, %edge_t* %"lvar'222", i32 0, i32 2
  store i32 3, i32* %temp223, align 4
  %aidan_barg = load %node_struct*, %node_struct** @aidan_barg, align 8
  %steven_oh = load %node_struct*, %node_struct** @steven_oh, align 8
  %malloccall224 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct225 = bitcast i8* %malloccall224 to %edge_t*
  %"name'226" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct225, i32 0, i32 0
  %"name'227" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct225, i32 0, i32 1
  %"name'228" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct225, i32 0, i32 2
  store %node_struct* %aidan_barg, %node_struct** %"name'226", align 8
  store %node_struct* %steven_oh, %node_struct** %"name'227", align 8
  store i32 0, i32* %"name'228", align 4
  %malloccall229 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge230 = bitcast i8* %malloccall229 to %edge_t*
  %"name'231" = getelementptr inbounds %edge_t, %edge_t* %edge230, i32 0, i32 0
  %"data'232" = getelementptr inbounds %edge_t, %edge_t* %edge230, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'231", align 8
  store %node_struct* null, %node_struct** %"data'232", align 8
  store %edge_t* %edge230, %edge_t** @partnership2, align 8
  store %edge_t* %myEdgeStruct225, %edge_t** @partnership2, align 8
  %"lvar'233" = load %edge_t*, %edge_t** @partnership2, align 8
  %temp234 = getelementptr inbounds %edge_t, %edge_t* %"lvar'233", i32 0, i32 2
  store i32 2, i32* %temp234, align 4
  %steven_oh235 = load %node_struct*, %node_struct** @steven_oh, align 8
  %nodes_hd = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @students, i32 0, i32 0), align 8
  %malloccall236 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node = bitcast i8* %malloccall236 to %node_node*
  %"lst_rst'" = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 1
  %node_ptr = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 0
  store %node_node* %nodes_hd, %node_node** %"lst_rst'", align 8
  store %node_struct* %steven_oh235, %node_struct** %node_ptr, align 8
  store %node_node* %new_node, %node_node** getelementptr inbounds (%graph_t, %graph_t* @students, i32 0, i32 0), align 8
  %claudia_aranda_barrios237 = load %node_struct*, %node_struct** @claudia_aranda_barrios, align 8
  %nodes_hd238 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @students, i32 0, i32 0), align 8
  %malloccall239 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node240 = bitcast i8* %malloccall239 to %node_node*
  %"lst_rst'241" = getelementptr inbounds %node_node, %node_node* %new_node240, i32 0, i32 1
  %node_ptr242 = getelementptr inbounds %node_node, %node_node* %new_node240, i32 0, i32 0
  store %node_node* %nodes_hd238, %node_node** %"lst_rst'241", align 8
  store %node_struct* %claudia_aranda_barrios237, %node_struct** %node_ptr242, align 8
  store %node_node* %new_node240, %node_node** getelementptr inbounds (%graph_t, %graph_t* @students, i32 0, i32 0), align 8
  %abby_larson243 = load %node_struct*, %node_struct** @abby_larson, align 8
  %nodes_hd244 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @students, i32 0, i32 0), align 8
  %malloccall245 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node246 = bitcast i8* %malloccall245 to %node_node*
  %"lst_rst'247" = getelementptr inbounds %node_node, %node_node* %new_node246, i32 0, i32 1
  %node_ptr248 = getelementptr inbounds %node_node, %node_node* %new_node246, i32 0, i32 0
  store %node_node* %nodes_hd244, %node_node** %"lst_rst'247", align 8
  store %node_struct* %abby_larson243, %node_struct** %node_ptr248, align 8
  store %node_node* %new_node246, %node_node** getelementptr inbounds (%graph_t, %graph_t* @students, i32 0, i32 0), align 8
  %aidan_barg249 = load %node_struct*, %node_struct** @aidan_barg, align 8
  %nodes_hd250 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @students, i32 0, i32 0), align 8
  %malloccall251 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node252 = bitcast i8* %malloccall251 to %node_node*
  %"lst_rst'253" = getelementptr inbounds %node_node, %node_node* %new_node252, i32 0, i32 1
  %node_ptr254 = getelementptr inbounds %node_node, %node_node* %new_node252, i32 0, i32 0
  store %node_node* %nodes_hd250, %node_node** %"lst_rst'253", align 8
  store %node_struct* %aidan_barg249, %node_struct** %node_ptr254, align 8
  store %node_node* %new_node252, %node_node** getelementptr inbounds (%graph_t, %graph_t* @students, i32 0, i32 0), align 8
  %partnership1 = load %edge_t*, %edge_t** @partnership1, align 8
  %edges_hd = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @students, i32 0, i32 1), align 8
  %malloccall255 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge = bitcast i8* %malloccall255 to %edge_node*
  %"lst_rst'256" = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 1
  %edge_ptr = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 0
  store %edge_node* %edges_hd, %edge_node** %"lst_rst'256", align 8
  store %edge_t* %partnership1, %edge_t** %edge_ptr, align 8
  %src_ptr = getelementptr inbounds %edge_t, %edge_t* %partnership1, i32 0, i32 0
  %dst_ptr = getelementptr inbounds %edge_t, %edge_t* %partnership1, i32 0, i32 1
  %"src'" = load %node_struct*, %node_struct** %src_ptr, align 8
  %"dst'" = load %node_struct*, %node_struct** %dst_ptr, align 8
  %ret_true = alloca i1, align 1
  store i1 false, i1* %ret_true, align 1
  %head = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @students, i32 0, i32 0), align 8
  store %node_node* %head, %node_node** @llNodes, align 8
  br label %while

while:                                            ; preds = %entry, %else
  %putMeHere = load %node_node*, %node_node** @llNodes, align 8
  %curr = icmp ne %node_node* %putMeHere, null
  br i1 %curr, label %while_body, label %merge

while_body:                                       ; preds = %while
  %putMeHere257 = load %node_node*, %node_node** @llNodes, align 8
  %nodes = getelementptr inbounds %node_node, %node_node* %putMeHere257, i32 0, i32 0
  %"stored_node'" = load %node_struct*, %node_struct** %nodes, align 8
  br label %if

if:                                               ; preds = %while_body
  %"found?" = icmp eq %node_struct* %"stored_node'", %"src'"
  br i1 %"found?", label %then, label %else

then:                                             ; preds = %if
  store i1 true, i1* %ret_true, align 1
  br label %merge

else:                                             ; preds = %if
  %toBeHere = load %node_node*, %node_node** @llNodes, align 8
  %llNodesPtr = getelementptr inbounds %node_node, %node_node* %toBeHere, i32 0, i32 1
  %toBeHerenow = load %node_node*, %node_node** %llNodesPtr, align 8
  store %node_node* %toBeHerenow, %node_node** @llNodes, align 8
  br label %while

merge:                                            ; preds = %while, %then
  %returnVal = load i1, i1* %ret_true, align 1
  %ret_true258 = alloca i1, align 1
  store i1 false, i1* %ret_true258, align 1
  %head259 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @students, i32 0, i32 0), align 8
  store %node_node* %head259, %node_node** @llNodes.1, align 8
  br label %while260

while260:                                         ; preds = %merge, %else269
  %putMeHere261 = load %node_node*, %node_node** @llNodes.1, align 8
  %curr262 = icmp ne %node_node* %putMeHere261, null
  br i1 %curr262, label %while_body263, label %merge270

while_body263:                                    ; preds = %while260
  %putMeHere264 = load %node_node*, %node_node** @llNodes.1, align 8
  %nodes265 = getelementptr inbounds %node_node, %node_node* %putMeHere264, i32 0, i32 0
  %"stored_node'266" = load %node_struct*, %node_struct** %nodes265, align 8
  br label %if267

if267:                                            ; preds = %while_body263
  %"found?271" = icmp eq %node_struct* %"stored_node'266", %"dst'"
  br i1 %"found?271", label %then268, label %else269

then268:                                          ; preds = %if267
  store i1 true, i1* %ret_true258, align 1
  br label %merge270

else269:                                          ; preds = %if267
  %toBeHere272 = load %node_node*, %node_node** @llNodes.1, align 8
  %llNodesPtr273 = getelementptr inbounds %node_node, %node_node* %toBeHere272, i32 0, i32 1
  %toBeHerenow274 = load %node_node*, %node_node** %llNodesPtr273, align 8
  store %node_node* %toBeHerenow274, %node_node** @llNodes.1, align 8
  br label %while260

merge270:                                         ; preds = %while260, %then268
  %returnVal275 = load i1, i1* %ret_true258, align 1
  br label %if276

if276:                                            ; preds = %merge270
  br i1 %returnVal, label %merge278, label %else277

else277:                                          ; preds = %if276
  %nodes_hd279 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @students, i32 0, i32 0), align 8
  %malloccall280 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node281 = bitcast i8* %malloccall280 to %node_node*
  %"lst_rst'282" = getelementptr inbounds %node_node, %node_node* %new_node281, i32 0, i32 1
  %node_ptr283 = getelementptr inbounds %node_node, %node_node* %new_node281, i32 0, i32 0
  store %node_node* %nodes_hd279, %node_node** %"lst_rst'282", align 8
  store %node_struct* %"src'", %node_struct** %node_ptr283, align 8
  store %node_node* %new_node281, %node_node** getelementptr inbounds (%graph_t, %graph_t* @students, i32 0, i32 0), align 8
  br label %merge278

merge278:                                         ; preds = %else277, %if276
  br label %if284

if284:                                            ; preds = %merge278
  br i1 %returnVal275, label %merge286, label %else285

else285:                                          ; preds = %if284
  %nodes_hd287 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @students, i32 0, i32 0), align 8
  %malloccall288 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node289 = bitcast i8* %malloccall288 to %node_node*
  %"lst_rst'290" = getelementptr inbounds %node_node, %node_node* %new_node289, i32 0, i32 1
  %node_ptr291 = getelementptr inbounds %node_node, %node_node* %new_node289, i32 0, i32 0
  store %node_node* %nodes_hd287, %node_node** %"lst_rst'290", align 8
  store %node_struct* %"dst'", %node_struct** %node_ptr291, align 8
  store %node_node* %new_node289, %node_node** getelementptr inbounds (%graph_t, %graph_t* @students, i32 0, i32 0), align 8
  br label %merge286

merge286:                                         ; preds = %else285, %if284
  store %edge_node* %new_edge, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @students, i32 0, i32 1), align 8
  %partnership2 = load %edge_t*, %edge_t** @partnership2, align 8
  %edges_hd292 = load %edge_node*, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @students, i32 0, i32 1), align 8
  %malloccall293 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge294 = bitcast i8* %malloccall293 to %edge_node*
  %"lst_rst'295" = getelementptr inbounds %edge_node, %edge_node* %new_edge294, i32 0, i32 1
  %edge_ptr296 = getelementptr inbounds %edge_node, %edge_node* %new_edge294, i32 0, i32 0
  store %edge_node* %edges_hd292, %edge_node** %"lst_rst'295", align 8
  store %edge_t* %partnership2, %edge_t** %edge_ptr296, align 8
  %src_ptr297 = getelementptr inbounds %edge_t, %edge_t* %partnership2, i32 0, i32 0
  %dst_ptr298 = getelementptr inbounds %edge_t, %edge_t* %partnership2, i32 0, i32 1
  %"src'299" = load %node_struct*, %node_struct** %src_ptr297, align 8
  %"dst'300" = load %node_struct*, %node_struct** %dst_ptr298, align 8
  %ret_true301 = alloca i1, align 1
  store i1 false, i1* %ret_true301, align 1
  %head302 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @students, i32 0, i32 0), align 8
  store %node_node* %head302, %node_node** @llNodes.2, align 8
  br label %while303

while303:                                         ; preds = %merge286, %else312
  %putMeHere304 = load %node_node*, %node_node** @llNodes.2, align 8
  %curr305 = icmp ne %node_node* %putMeHere304, null
  br i1 %curr305, label %while_body306, label %merge313

while_body306:                                    ; preds = %while303
  %putMeHere307 = load %node_node*, %node_node** @llNodes.2, align 8
  %nodes308 = getelementptr inbounds %node_node, %node_node* %putMeHere307, i32 0, i32 0
  %"stored_node'309" = load %node_struct*, %node_struct** %nodes308, align 8
  br label %if310

if310:                                            ; preds = %while_body306
  %"found?314" = icmp eq %node_struct* %"stored_node'309", %"src'299"
  br i1 %"found?314", label %then311, label %else312

then311:                                          ; preds = %if310
  store i1 true, i1* %ret_true301, align 1
  br label %merge313

else312:                                          ; preds = %if310
  %toBeHere315 = load %node_node*, %node_node** @llNodes.2, align 8
  %llNodesPtr316 = getelementptr inbounds %node_node, %node_node* %toBeHere315, i32 0, i32 1
  %toBeHerenow317 = load %node_node*, %node_node** %llNodesPtr316, align 8
  store %node_node* %toBeHerenow317, %node_node** @llNodes.2, align 8
  br label %while303

merge313:                                         ; preds = %while303, %then311
  %returnVal318 = load i1, i1* %ret_true301, align 1
  %ret_true319 = alloca i1, align 1
  store i1 false, i1* %ret_true319, align 1
  %head320 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @students, i32 0, i32 0), align 8
  store %node_node* %head320, %node_node** @llNodes.3, align 8
  br label %while321

while321:                                         ; preds = %merge313, %else330
  %putMeHere322 = load %node_node*, %node_node** @llNodes.3, align 8
  %curr323 = icmp ne %node_node* %putMeHere322, null
  br i1 %curr323, label %while_body324, label %merge331

while_body324:                                    ; preds = %while321
  %putMeHere325 = load %node_node*, %node_node** @llNodes.3, align 8
  %nodes326 = getelementptr inbounds %node_node, %node_node* %putMeHere325, i32 0, i32 0
  %"stored_node'327" = load %node_struct*, %node_struct** %nodes326, align 8
  br label %if328

if328:                                            ; preds = %while_body324
  %"found?332" = icmp eq %node_struct* %"stored_node'327", %"dst'300"
  br i1 %"found?332", label %then329, label %else330

then329:                                          ; preds = %if328
  store i1 true, i1* %ret_true319, align 1
  br label %merge331

else330:                                          ; preds = %if328
  %toBeHere333 = load %node_node*, %node_node** @llNodes.3, align 8
  %llNodesPtr334 = getelementptr inbounds %node_node, %node_node* %toBeHere333, i32 0, i32 1
  %toBeHerenow335 = load %node_node*, %node_node** %llNodesPtr334, align 8
  store %node_node* %toBeHerenow335, %node_node** @llNodes.3, align 8
  br label %while321

merge331:                                         ; preds = %while321, %then329
  %returnVal336 = load i1, i1* %ret_true319, align 1
  br label %if337

if337:                                            ; preds = %merge331
  br i1 %returnVal318, label %merge339, label %else338

else338:                                          ; preds = %if337
  %nodes_hd340 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @students, i32 0, i32 0), align 8
  %malloccall341 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node342 = bitcast i8* %malloccall341 to %node_node*
  %"lst_rst'343" = getelementptr inbounds %node_node, %node_node* %new_node342, i32 0, i32 1
  %node_ptr344 = getelementptr inbounds %node_node, %node_node* %new_node342, i32 0, i32 0
  store %node_node* %nodes_hd340, %node_node** %"lst_rst'343", align 8
  store %node_struct* %"src'299", %node_struct** %node_ptr344, align 8
  store %node_node* %new_node342, %node_node** getelementptr inbounds (%graph_t, %graph_t* @students, i32 0, i32 0), align 8
  br label %merge339

merge339:                                         ; preds = %else338, %if337
  br label %if345

if345:                                            ; preds = %merge339
  br i1 %returnVal336, label %merge347, label %else346

else346:                                          ; preds = %if345
  %nodes_hd348 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @students, i32 0, i32 0), align 8
  %malloccall349 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node350 = bitcast i8* %malloccall349 to %node_node*
  %"lst_rst'351" = getelementptr inbounds %node_node, %node_node* %new_node350, i32 0, i32 1
  %node_ptr352 = getelementptr inbounds %node_node, %node_node* %new_node350, i32 0, i32 0
  store %node_node* %nodes_hd348, %node_node** %"lst_rst'351", align 8
  store %node_struct* %"dst'300", %node_struct** %node_ptr352, align 8
  store %node_node* %new_node350, %node_node** getelementptr inbounds (%graph_t, %graph_t* @students, i32 0, i32 0), align 8
  br label %merge347

merge347:                                         ; preds = %else346, %if345
  store %edge_node* %new_edge294, %edge_node** getelementptr inbounds (%graph_t, %graph_t* @students, i32 0, i32 1), align 8
  store i32 13, i32* @assignment_id_num, align 4
  %assignment_id_num = load i32, i32* @assignment_id_num, align 4
  %assignmentIndex_result = call i32 @assignmentIndex(i32 %assignment_id_num)
  store i32 %assignmentIndex_result, i32* @assignment_index, align 4
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @7, i32 0, i32 0))
  %list = load %list_node*, %list_node** @assignment_names, align 8
  %assignment_index = load i32, i32* @assignment_index, align 4
  %malloccall353 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %0 = bitcast i8* %malloccall353 to %list_node**
  %malloccall354 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %malloccall354 to i32*
  store %list_node* %list, %list_node** %0, align 8
  store i32 %assignment_index, i32* %1, align 4
  br label %traverse_loop

traverse_loop:                                    ; preds = %while_body355, %merge347
  %2 = load i32, i32* %1, align 4
  %temp358 = icmp ne i32 %2, 0
  br i1 %temp358, label %while_body355, label %merge359

while_body355:                                    ; preds = %traverse_loop
  %3 = load %list_node*, %list_node** %0, align 8
  %temp356 = getelementptr inbounds %list_node, %list_node* %3, i32 0, i32 1
  %temp357 = load %list_node*, %list_node** %temp356, align 8
  %4 = load i32, i32* %1, align 4
  %subtract = sub i32 %4, 1
  store i32 %subtract, i32* %1, align 4
  store %list_node* %temp357, %list_node** %0, align 8
  br label %traverse_loop

merge359:                                         ; preds = %traverse_loop
  %5 = load %list_node*, %list_node** %0, align 8
  %temp360 = getelementptr inbounds %list_node, %list_node* %5, i32 0, i32 0
  %retval = load i8*, i8** %temp360, align 8
  %li_conv = bitcast i8* %retval to i8**
  %val_ptr = load i8*, i8** %li_conv, align 8
  store i8* %val_ptr, i8** @assignment_name, align 8
  %assignment_name = load i8*, i8** @assignment_name, align 8
  %printf361 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.5, i32 0, i32 0), i8* %assignment_name)
  %printf362 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @8, i32 0, i32 0))
  %printf363 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @9, i32 0, i32 0))
  %head364 = load %node_node*, %node_node** getelementptr inbounds (%graph_t, %graph_t* @students, i32 0, i32 0), align 8
  store %node_node* %head364, %node_node** @llNodes.6, align 8
  br label %while365

while365:                                         ; preds = %merge359, %else372
  %putMeHere366 = load %node_node*, %node_node** @llNodes.6, align 8
  %curr367 = icmp ne %node_node* %putMeHere366, null
  br i1 %curr367, label %while_body368, label %merge373

while_body368:                                    ; preds = %while365
  %putMeHere369 = load %node_node*, %node_node** @llNodes.6, align 8
  %nodes370 = getelementptr inbounds %node_node, %node_node* %putMeHere369, i32 0, i32 0
  %"stored_nodeA'" = load %node_struct*, %node_struct** %nodes370, align 8
  br label %then371

then371:                                          ; preds = %while_body368
  %malloccall374 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node375 = bitcast i8* %malloccall374 to %list_node*
  %nodes376 = getelementptr inbounds %list_node, %list_node* %node375, i32 0, i32 0
  %nodes377 = getelementptr inbounds %list_node, %list_node* %node375, i32 0, i32 1
  %malloccall378 = tail call i8* @malloc(i32 ptrtoint (%node_struct** getelementptr (%node_struct*, %node_struct** null, i32 1) to i32))
  %please_work = bitcast i8* %malloccall378 to %node_struct**
  store %node_struct* %"stored_nodeA'", %node_struct** %please_work, align 8
  %currNodeVoidPtr = bitcast %node_struct** %please_work to i8*
  store i8* %currNodeVoidPtr, i8** %nodes376, align 8
  %nextNodes = load %list_node*, %list_node** @nodesList, align 8
  store %list_node* %nextNodes, %list_node** %nodes377, align 8
  store %list_node* %node375, %list_node** @nodesList, align 8
  br label %else372

else372:                                          ; preds = %then371
  %toBeHere379 = load %node_node*, %node_node** @llNodes.6, align 8
  %llNodesPtr380 = getelementptr inbounds %node_node, %node_node* %toBeHere379, i32 0, i32 1
  %toBeHerenow381 = load %node_node*, %node_node** %llNodesPtr380, align 8
  store %node_node* %toBeHerenow381, %node_node** @llNodes.6, align 8
  br label %while365

merge373:                                         ; preds = %while365
  %return = load %list_node*, %list_node** @nodesList, align 8
  store %list_node* %return, %list_node** @allStudents, align 8
  %printf382 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.7, i32 0, i32 0), i32 69)
  %list383 = load %list_node*, %list_node** @allStudents, align 8
  %malloccall384 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %6 = bitcast i8* %malloccall384 to %list_node**
  %malloccall385 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %7 = bitcast i8* %malloccall385 to i32*
  store i32 0, i32* %7, align 4
  store %list_node* %list383, %list_node** %6, align 8
  %8 = icmp eq %list_node* %list383, null
  br i1 %8, label %then387, label %else388

merge386:                                         ; preds = %merge394, %then387
  %9 = load i32, i32* %7, align 4
  store i32 %9, i32* @num_students, align 4
  store i32 0, i32* @i, align 4
  store i32 0, i32* @sum, align 4
  store i32 0, i32* @i, align 4
  br label %while395

then387:                                          ; preds = %merge373
  store i32 0, i32* %7, align 4
  br label %merge386

else388:                                          ; preds = %merge373
  %printf389 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.8, i32 0, i32 0), i32 69)
  br label %traverse_loop390

traverse_loop390:                                 ; preds = %while_body391, %else388
  %10 = load %list_node*, %list_node** %6, align 8
  %11 = icmp ne %list_node* %10, null
  br i1 %11, label %while_body391, label %merge394

while_body391:                                    ; preds = %traverse_loop390
  %12 = load %list_node*, %list_node** %6, align 8
  %temp392 = getelementptr inbounds %list_node, %list_node* %12, i32 0, i32 1
  %temp393 = load %list_node*, %list_node** %temp392, align 8
  %13 = load i32, i32* %7, align 4
  %add = add i32 %13, 1
  store i32 %add, i32* %7, align 4
  store %list_node* %temp393, %list_node** %6, align 8
  br label %traverse_loop390

merge394:                                         ; preds = %traverse_loop390
  br label %merge386

while395:                                         ; preds = %merge425, %merge386
  %i434 = load i32, i32* @i, align 4
  %num_students = load i32, i32* @num_students, align 4
  %tmp435 = icmp slt i32 %i434, %num_students
  br i1 %tmp435, label %while_body396, label %merge436

while_body396:                                    ; preds = %while395
  %sum = load i32, i32* @sum, align 4
  %curr397 = alloca i32, align 4
  store i32 %sum, i32* %curr397, align 4
  %list398 = load %list_node*, %list_node** @allStudents, align 8
  %i = load i32, i32* @i, align 4
  %malloccall399 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %14 = bitcast i8* %malloccall399 to %list_node**
  %malloccall400 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %15 = bitcast i8* %malloccall400 to i32*
  store %list_node* %list398, %list_node** %14, align 8
  store i32 %i, i32* %15, align 4
  br label %traverse_loop401

traverse_loop401:                                 ; preds = %while_body402, %while_body396
  %16 = load i32, i32* %15, align 4
  %temp406 = icmp ne i32 %16, 0
  br i1 %temp406, label %while_body402, label %merge407

while_body402:                                    ; preds = %traverse_loop401
  %17 = load %list_node*, %list_node** %14, align 8
  %temp403 = getelementptr inbounds %list_node, %list_node* %17, i32 0, i32 1
  %temp404 = load %list_node*, %list_node** %temp403, align 8
  %18 = load i32, i32* %15, align 4
  %subtract405 = sub i32 %18, 1
  store i32 %subtract405, i32* %15, align 4
  store %list_node* %temp404, %list_node** %14, align 8
  br label %traverse_loop401

merge407:                                         ; preds = %traverse_loop401
  %19 = load %list_node*, %list_node** %14, align 8
  %temp408 = getelementptr inbounds %list_node, %list_node* %19, i32 0, i32 0
  %retval409 = load i8*, i8** %temp408, align 8
  %li_conv410 = bitcast i8* %retval409 to %node_struct**
  %val_ptr411 = load %node_struct*, %node_struct** %li_conv410, align 8
  %curr_student = alloca %node_struct*, align 8
  store %node_struct* %val_ptr411, %node_struct** %curr_student, align 8
  %"lvar'412" = load %node_struct*, %node_struct** %curr_student, align 8
  %temp413 = getelementptr inbounds %node_struct, %node_struct* %"lvar'412", i32 0, i32 2
  %curr_student.data = load i8*, i8** %temp413, align 8
  %new_ptr = bitcast i8* %curr_student.data to %list_node**
  %curr_student.data414 = load %list_node*, %list_node** %new_ptr, align 8
  %score_list = alloca %list_node*, align 8
  store %list_node* %curr_student.data414, %list_node** %score_list, align 8
  %list415 = load %list_node*, %list_node** %score_list, align 8
  %assignment_index416 = load i32, i32* @assignment_index, align 4
  %malloccall417 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %20 = bitcast i8* %malloccall417 to %list_node**
  %malloccall418 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %21 = bitcast i8* %malloccall418 to i32*
  store %list_node* %list415, %list_node** %20, align 8
  store i32 %assignment_index416, i32* %21, align 4
  br label %traverse_loop419

traverse_loop419:                                 ; preds = %while_body420, %merge407
  %22 = load i32, i32* %21, align 4
  %temp424 = icmp ne i32 %22, 0
  br i1 %temp424, label %while_body420, label %merge425

while_body420:                                    ; preds = %traverse_loop419
  %23 = load %list_node*, %list_node** %20, align 8
  %temp421 = getelementptr inbounds %list_node, %list_node* %23, i32 0, i32 1
  %temp422 = load %list_node*, %list_node** %temp421, align 8
  %24 = load i32, i32* %21, align 4
  %subtract423 = sub i32 %24, 1
  store i32 %subtract423, i32* %21, align 4
  store %list_node* %temp422, %list_node** %20, align 8
  br label %traverse_loop419

merge425:                                         ; preds = %traverse_loop419
  %25 = load %list_node*, %list_node** %20, align 8
  %temp426 = getelementptr inbounds %list_node, %list_node* %25, i32 0, i32 0
  %retval427 = load i8*, i8** %temp426, align 8
  %li_conv428 = bitcast i8* %retval427 to i32*
  %val_ptr429 = load i32, i32* %li_conv428, align 4
  %score = alloca i32, align 4
  store i32 %val_ptr429, i32* %score, align 4
  %curr430 = load i32, i32* %curr397, align 4
  %score431 = load i32, i32* %score, align 4
  %tmp = add i32 %curr430, %score431
  store i32 %tmp, i32* @sum, align 4
  %i432 = load i32, i32* @i, align 4
  %tmp433 = add i32 %i432, 1
  store i32 %tmp433, i32* @i, align 4
  br label %while395

merge436:                                         ; preds = %while395
  %sum437 = load i32, i32* @sum, align 4
  %num_students438 = load i32, i32* @num_students, align 4
  %tmp439 = sdiv i32 %sum437, %num_students438
  store i32 %tmp439, i32* @average, align 4
  %average = load i32, i32* @average, align 4
  %printf440 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.9, i32 0, i32 0), i32 %average)
  ret i32 0
}

declare noalias i8* @malloc(i32)

define i32 @assignmentIndex(i32 %assignment_id1) {
entry:
  %assignment_id = alloca i32, align 4
  store i32 %assignment_id1, i32* %assignment_id, align 4
  %list = load %list_node*, %list_node** @assignments, align 8
  %id_ix = load i32, i32* @id_ix, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %0 = bitcast i8* %malloccall to %list_node**
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %malloccall2 to i32*
  store %list_node* %list, %list_node** %0, align 8
  store i32 %id_ix, i32* %1, align 4
  br label %traverse_loop

traverse_loop:                                    ; preds = %while_body, %entry
  %2 = load i32, i32* %1, align 4
  %temp4 = icmp ne i32 %2, 0
  br i1 %temp4, label %while_body, label %merge

while_body:                                       ; preds = %traverse_loop
  %3 = load %list_node*, %list_node** %0, align 8
  %temp = getelementptr inbounds %list_node, %list_node* %3, i32 0, i32 1
  %temp3 = load %list_node*, %list_node** %temp, align 8
  %4 = load i32, i32* %1, align 4
  %subtract = sub i32 %4, 1
  store i32 %subtract, i32* %1, align 4
  store %list_node* %temp3, %list_node** %0, align 8
  br label %traverse_loop

merge:                                            ; preds = %traverse_loop
  %5 = load %list_node*, %list_node** %0, align 8
  %temp5 = getelementptr inbounds %list_node, %list_node* %5, i32 0, i32 0
  %retval = load i8*, i8** %temp5, align 8
  %li_conv = bitcast i8* %retval to %list_node**
  %val_ptr = load %list_node*, %list_node** %li_conv, align 8
  %assignment_ids = alloca %list_node*, align 8
  store %list_node* %val_ptr, %list_node** %assignment_ids, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 69)
  %list6 = load %list_node*, %list_node** @assignments, align 8
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %6 = bitcast i8* %malloccall7 to %list_node**
  %malloccall8 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %7 = bitcast i8* %malloccall8 to i32*
  store i32 0, i32* %7, align 4
  store %list_node* %list6, %list_node** %6, align 8
  %8 = icmp eq %list_node* %list6, null
  br i1 %8, label %then, label %else

merge9:                                           ; preds = %merge15, %then
  %9 = load i32, i32* %7, align 4
  %num_assigments = alloca i32, align 4
  store i32 %9, i32* %num_assigments, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  %index = alloca i32, align 4
  store i32 -1, i32* %index, align 4
  store i32 0, i32* %i, align 4
  br label %while

then:                                             ; preds = %merge
  store i32 0, i32* %7, align 4
  br label %merge9

else:                                             ; preds = %merge
  %printf10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.4, i32 0, i32 0), i32 69)
  br label %traverse_loop11

traverse_loop11:                                  ; preds = %while_body12, %else
  %10 = load %list_node*, %list_node** %6, align 8
  %11 = icmp ne %list_node* %10, null
  br i1 %11, label %while_body12, label %merge15

while_body12:                                     ; preds = %traverse_loop11
  %12 = load %list_node*, %list_node** %6, align 8
  %temp13 = getelementptr inbounds %list_node, %list_node* %12, i32 0, i32 1
  %temp14 = load %list_node*, %list_node** %temp13, align 8
  %13 = load i32, i32* %7, align 4
  %add = add i32 %13, 1
  store i32 %add, i32* %7, align 4
  store %list_node* %temp14, %list_node** %6, align 8
  br label %traverse_loop11

merge15:                                          ; preds = %traverse_loop11
  br label %merge9

while:                                            ; preds = %merge34, %merge9
  %i40 = load i32, i32* %i, align 4
  %num_assigments41 = load i32, i32* %num_assigments, align 4
  %tmp42 = icmp slt i32 %i40, %num_assigments41
  br i1 %tmp42, label %while_body16, label %merge43

while_body16:                                     ; preds = %while
  %list17 = load %list_node*, %list_node** %assignment_ids, align 8
  %i18 = load i32, i32* %i, align 4
  %malloccall19 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %14 = bitcast i8* %malloccall19 to %list_node**
  %malloccall20 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %15 = bitcast i8* %malloccall20 to i32*
  store %list_node* %list17, %list_node** %14, align 8
  store i32 %i18, i32* %15, align 4
  br label %traverse_loop21

traverse_loop21:                                  ; preds = %while_body22, %while_body16
  %16 = load i32, i32* %15, align 4
  %temp26 = icmp ne i32 %16, 0
  br i1 %temp26, label %while_body22, label %merge27

while_body22:                                     ; preds = %traverse_loop21
  %17 = load %list_node*, %list_node** %14, align 8
  %temp23 = getelementptr inbounds %list_node, %list_node* %17, i32 0, i32 1
  %temp24 = load %list_node*, %list_node** %temp23, align 8
  %18 = load i32, i32* %15, align 4
  %subtract25 = sub i32 %18, 1
  store i32 %subtract25, i32* %15, align 4
  store %list_node* %temp24, %list_node** %14, align 8
  br label %traverse_loop21

merge27:                                          ; preds = %traverse_loop21
  %19 = load %list_node*, %list_node** %14, align 8
  %temp28 = getelementptr inbounds %list_node, %list_node* %19, i32 0, i32 0
  %retval29 = load i8*, i8** %temp28, align 8
  %li_conv30 = bitcast i8* %retval29 to i32*
  %val_ptr31 = load i32, i32* %li_conv30, align 4
  %id = alloca i32, align 4
  store i32 %val_ptr31, i32* %id, align 4
  %assignment_id32 = load i32, i32* %assignment_id, align 4
  %id33 = load i32, i32* %id, align 4
  %tmp = icmp eq i32 %assignment_id32, %id33
  br i1 %tmp, label %then35, label %else37

merge34:                                          ; preds = %else37, %then35
  %i38 = load i32, i32* %i, align 4
  %tmp39 = add i32 %i38, 1
  store i32 %tmp39, i32* %i, align 4
  br label %while

then35:                                           ; preds = %merge27
  %i36 = load i32, i32* %i, align 4
  store i32 %i36, i32* %index, align 4
  br label %merge34

else37:                                           ; preds = %merge27
  br label %merge34

merge43:                                          ; preds = %while
  %index44 = load i32, i32* %index, align 4
  ret i32 %index44
}

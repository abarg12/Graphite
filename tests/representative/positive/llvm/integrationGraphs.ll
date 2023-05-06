; ModuleID = 'Graphite'
source_filename = "Graphite"

%list_node = type { i8*, %list_node* }
%node_struct = type { i8*, i1, i8* }
%edge_t = type { %node_struct*, %node_struct*, i32 }
%graph_tt = type { %node_node*, %edge_node* }
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
@students = global %graph_tt* null
@llNodes = global %node_node* null
@llNodes.1 = global %node_node* null
@llNodes.2 = global %node_node* null
@llNodes.3 = global %node_node* null
@assignment_id_num = global i32 0
@assignment_index = global i32 0
@7 = private unnamed_addr constant [55 x i8] c"assignment we are averaging is assignment with name: \0A\00", align 1
@assignment_name = global i8* null
@fmt = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@8 = private unnamed_addr constant [36 x i8] c"we will now find the average score\0A\00", align 1
@9 = private unnamed_addr constant [39 x i8] c"The average score for assignment is: \0A\00", align 1
@nodesList = global %list_node* null
@llNodes.4 = global %node_node* null
@allStudents = global %list_node* null
@num_students = global i32 0
@i = global i32 0
@sum = global i32 0
@average = global i32 0
@fmt.5 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

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
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %new_list = bitcast i8* %malloccall to %list_node**
  store %list_node* null, %list_node** %new_list, align 8
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
  store %list_node* null, %list_node** %new_list18, align 8
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
  store %list_node* null, %list_node** %new_list41, align 8
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
  store %list_node* null, %list_node** %new_list61, align 8
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
  store %list_node* null, %list_node** %new_list102, align 8
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
  store %list_node* null, %list_node** %new_list144, align 8
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
  store %list_node* null, %list_node** %new_list186, align 8
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
  %malloccall235 = tail call i8* @malloc(i32 ptrtoint (%graph_tt* getelementptr (%graph_tt, %graph_tt* null, i32 1) to i32))
  %node236 = bitcast i8* %malloccall235 to %graph_tt*
  %"name'237" = getelementptr inbounds %graph_tt, %graph_tt* %node236, i32 0, i32 0
  %"data'238" = getelementptr inbounds %graph_tt, %graph_tt* %node236, i32 0, i32 1
  store %node_node* null, %node_node** %"name'237", align 8
  store %edge_node* null, %edge_node** %"data'238", align 8
  store %graph_tt* %node236, %graph_tt** @students, align 8
  %steven_oh239 = load %node_struct*, %node_struct** @steven_oh, align 8
  %graph_ptr = load %graph_tt*, %graph_tt** @students, align 8
  %nodes = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr, i32 0, i32 0
  %nodes_hd = load %node_node*, %node_node** %nodes, align 8
  %malloccall240 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node = bitcast i8* %malloccall240 to %node_node*
  %"lst_rst'" = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 1
  %node_ptr = getelementptr inbounds %node_node, %node_node* %new_node, i32 0, i32 0
  store %node_node* %nodes_hd, %node_node** %"lst_rst'", align 8
  store %node_struct* %steven_oh239, %node_struct** %node_ptr, align 8
  store %node_node* %new_node, %node_node** %nodes, align 8
  %claudia_aranda_barrios241 = load %node_struct*, %node_struct** @claudia_aranda_barrios, align 8
  %graph_ptr242 = load %graph_tt*, %graph_tt** @students, align 8
  %nodes243 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr242, i32 0, i32 0
  %nodes_hd244 = load %node_node*, %node_node** %nodes243, align 8
  %malloccall245 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node246 = bitcast i8* %malloccall245 to %node_node*
  %"lst_rst'247" = getelementptr inbounds %node_node, %node_node* %new_node246, i32 0, i32 1
  %node_ptr248 = getelementptr inbounds %node_node, %node_node* %new_node246, i32 0, i32 0
  store %node_node* %nodes_hd244, %node_node** %"lst_rst'247", align 8
  store %node_struct* %claudia_aranda_barrios241, %node_struct** %node_ptr248, align 8
  store %node_node* %new_node246, %node_node** %nodes243, align 8
  %abby_larson249 = load %node_struct*, %node_struct** @abby_larson, align 8
  %graph_ptr250 = load %graph_tt*, %graph_tt** @students, align 8
  %nodes251 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr250, i32 0, i32 0
  %nodes_hd252 = load %node_node*, %node_node** %nodes251, align 8
  %malloccall253 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node254 = bitcast i8* %malloccall253 to %node_node*
  %"lst_rst'255" = getelementptr inbounds %node_node, %node_node* %new_node254, i32 0, i32 1
  %node_ptr256 = getelementptr inbounds %node_node, %node_node* %new_node254, i32 0, i32 0
  store %node_node* %nodes_hd252, %node_node** %"lst_rst'255", align 8
  store %node_struct* %abby_larson249, %node_struct** %node_ptr256, align 8
  store %node_node* %new_node254, %node_node** %nodes251, align 8
  %aidan_barg257 = load %node_struct*, %node_struct** @aidan_barg, align 8
  %graph_ptr258 = load %graph_tt*, %graph_tt** @students, align 8
  %nodes259 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr258, i32 0, i32 0
  %nodes_hd260 = load %node_node*, %node_node** %nodes259, align 8
  %malloccall261 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node262 = bitcast i8* %malloccall261 to %node_node*
  %"lst_rst'263" = getelementptr inbounds %node_node, %node_node* %new_node262, i32 0, i32 1
  %node_ptr264 = getelementptr inbounds %node_node, %node_node* %new_node262, i32 0, i32 0
  store %node_node* %nodes_hd260, %node_node** %"lst_rst'263", align 8
  store %node_struct* %aidan_barg257, %node_struct** %node_ptr264, align 8
  store %node_node* %new_node262, %node_node** %nodes259, align 8
  %partnership1 = load %edge_t*, %edge_t** @partnership1, align 8
  %graph_ptr265 = load %graph_tt*, %graph_tt** @students, align 8
  %edges = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr265, i32 0, i32 1
  %edges_hd = load %edge_node*, %edge_node** %edges, align 8
  %malloccall266 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge = bitcast i8* %malloccall266 to %edge_node*
  %"lst_rst'267" = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 1
  %edge_ptr = getelementptr inbounds %edge_node, %edge_node* %new_edge, i32 0, i32 0
  store %edge_node* %edges_hd, %edge_node** %"lst_rst'267", align 8
  store %edge_t* %partnership1, %edge_t** %edge_ptr, align 8
  %src_ptr = getelementptr inbounds %edge_t, %edge_t* %partnership1, i32 0, i32 0
  %dst_ptr = getelementptr inbounds %edge_t, %edge_t* %partnership1, i32 0, i32 1
  %"src'" = load %node_struct*, %node_struct** %src_ptr, align 8
  %"dst'" = load %node_struct*, %node_struct** %dst_ptr, align 8
  %ret_true = alloca i1, align 1
  store i1 false, i1* %ret_true, align 1
  %graph_ptr268 = load %graph_tt*, %graph_tt** @students, align 8
  %nodes269 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr268, i32 0, i32 0
  %head = load %node_node*, %node_node** %nodes269, align 8
  store %node_node* %head, %node_node** @llNodes, align 8
  br label %while

while:                                            ; preds = %entry, %else
  %putMeHere = load %node_node*, %node_node** @llNodes, align 8
  %curr = icmp ne %node_node* %putMeHere, null
  br i1 %curr, label %while_body, label %merge

while_body:                                       ; preds = %while
  %putMeHere270 = load %node_node*, %node_node** @llNodes, align 8
  %nodes271 = getelementptr inbounds %node_node, %node_node* %putMeHere270, i32 0, i32 0
  %"stored_node'" = load %node_struct*, %node_struct** %nodes271, align 8
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
  %ret_true272 = alloca i1, align 1
  store i1 false, i1* %ret_true272, align 1
  %graph_ptr273 = load %graph_tt*, %graph_tt** @students, align 8
  %nodes274 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr273, i32 0, i32 0
  %head275 = load %node_node*, %node_node** %nodes274, align 8
  store %node_node* %head275, %node_node** @llNodes.1, align 8
  br label %while276

while276:                                         ; preds = %merge, %else285
  %putMeHere277 = load %node_node*, %node_node** @llNodes.1, align 8
  %curr278 = icmp ne %node_node* %putMeHere277, null
  br i1 %curr278, label %while_body279, label %merge286

while_body279:                                    ; preds = %while276
  %putMeHere280 = load %node_node*, %node_node** @llNodes.1, align 8
  %nodes281 = getelementptr inbounds %node_node, %node_node* %putMeHere280, i32 0, i32 0
  %"stored_node'282" = load %node_struct*, %node_struct** %nodes281, align 8
  br label %if283

if283:                                            ; preds = %while_body279
  %"found?287" = icmp eq %node_struct* %"stored_node'282", %"dst'"
  br i1 %"found?287", label %then284, label %else285

then284:                                          ; preds = %if283
  store i1 true, i1* %ret_true272, align 1
  br label %merge286

else285:                                          ; preds = %if283
  %toBeHere288 = load %node_node*, %node_node** @llNodes.1, align 8
  %llNodesPtr289 = getelementptr inbounds %node_node, %node_node* %toBeHere288, i32 0, i32 1
  %toBeHerenow290 = load %node_node*, %node_node** %llNodesPtr289, align 8
  store %node_node* %toBeHerenow290, %node_node** @llNodes.1, align 8
  br label %while276

merge286:                                         ; preds = %while276, %then284
  %returnVal291 = load i1, i1* %ret_true272, align 1
  br label %if292

if292:                                            ; preds = %merge286
  br i1 %returnVal, label %merge294, label %else293

else293:                                          ; preds = %if292
  %graph_ptr295 = load %graph_tt*, %graph_tt** @students, align 8
  %nodes296 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr295, i32 0, i32 0
  %nodes_hd297 = load %node_node*, %node_node** %nodes296, align 8
  %malloccall298 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node299 = bitcast i8* %malloccall298 to %node_node*
  %"lst_rst'300" = getelementptr inbounds %node_node, %node_node* %new_node299, i32 0, i32 1
  %node_ptr301 = getelementptr inbounds %node_node, %node_node* %new_node299, i32 0, i32 0
  store %node_node* %nodes_hd297, %node_node** %"lst_rst'300", align 8
  store %node_struct* %"src'", %node_struct** %node_ptr301, align 8
  store %node_node* %new_node299, %node_node** %nodes296, align 8
  br label %merge294

merge294:                                         ; preds = %else293, %if292
  br label %if302

if302:                                            ; preds = %merge294
  br i1 %returnVal291, label %merge304, label %else303

else303:                                          ; preds = %if302
  %graph_ptr305 = load %graph_tt*, %graph_tt** @students, align 8
  %nodes306 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr305, i32 0, i32 0
  %nodes_hd307 = load %node_node*, %node_node** %nodes306, align 8
  %malloccall308 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node309 = bitcast i8* %malloccall308 to %node_node*
  %"lst_rst'310" = getelementptr inbounds %node_node, %node_node* %new_node309, i32 0, i32 1
  %node_ptr311 = getelementptr inbounds %node_node, %node_node* %new_node309, i32 0, i32 0
  store %node_node* %nodes_hd307, %node_node** %"lst_rst'310", align 8
  store %node_struct* %"dst'", %node_struct** %node_ptr311, align 8
  store %node_node* %new_node309, %node_node** %nodes306, align 8
  br label %merge304

merge304:                                         ; preds = %else303, %if302
  store %edge_node* %new_edge, %edge_node** %edges, align 8
  %partnership2 = load %edge_t*, %edge_t** @partnership2, align 8
  %graph_ptr312 = load %graph_tt*, %graph_tt** @students, align 8
  %edges313 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr312, i32 0, i32 1
  %edges_hd314 = load %edge_node*, %edge_node** %edges313, align 8
  %malloccall315 = tail call i8* @malloc(i32 ptrtoint (%edge_node* getelementptr (%edge_node, %edge_node* null, i32 1) to i32))
  %new_edge316 = bitcast i8* %malloccall315 to %edge_node*
  %"lst_rst'317" = getelementptr inbounds %edge_node, %edge_node* %new_edge316, i32 0, i32 1
  %edge_ptr318 = getelementptr inbounds %edge_node, %edge_node* %new_edge316, i32 0, i32 0
  store %edge_node* %edges_hd314, %edge_node** %"lst_rst'317", align 8
  store %edge_t* %partnership2, %edge_t** %edge_ptr318, align 8
  %src_ptr319 = getelementptr inbounds %edge_t, %edge_t* %partnership2, i32 0, i32 0
  %dst_ptr320 = getelementptr inbounds %edge_t, %edge_t* %partnership2, i32 0, i32 1
  %"src'321" = load %node_struct*, %node_struct** %src_ptr319, align 8
  %"dst'322" = load %node_struct*, %node_struct** %dst_ptr320, align 8
  %ret_true323 = alloca i1, align 1
  store i1 false, i1* %ret_true323, align 1
  %graph_ptr324 = load %graph_tt*, %graph_tt** @students, align 8
  %nodes325 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr324, i32 0, i32 0
  %head326 = load %node_node*, %node_node** %nodes325, align 8
  store %node_node* %head326, %node_node** @llNodes.2, align 8
  br label %while327

while327:                                         ; preds = %merge304, %else336
  %putMeHere328 = load %node_node*, %node_node** @llNodes.2, align 8
  %curr329 = icmp ne %node_node* %putMeHere328, null
  br i1 %curr329, label %while_body330, label %merge337

while_body330:                                    ; preds = %while327
  %putMeHere331 = load %node_node*, %node_node** @llNodes.2, align 8
  %nodes332 = getelementptr inbounds %node_node, %node_node* %putMeHere331, i32 0, i32 0
  %"stored_node'333" = load %node_struct*, %node_struct** %nodes332, align 8
  br label %if334

if334:                                            ; preds = %while_body330
  %"found?338" = icmp eq %node_struct* %"stored_node'333", %"src'321"
  br i1 %"found?338", label %then335, label %else336

then335:                                          ; preds = %if334
  store i1 true, i1* %ret_true323, align 1
  br label %merge337

else336:                                          ; preds = %if334
  %toBeHere339 = load %node_node*, %node_node** @llNodes.2, align 8
  %llNodesPtr340 = getelementptr inbounds %node_node, %node_node* %toBeHere339, i32 0, i32 1
  %toBeHerenow341 = load %node_node*, %node_node** %llNodesPtr340, align 8
  store %node_node* %toBeHerenow341, %node_node** @llNodes.2, align 8
  br label %while327

merge337:                                         ; preds = %while327, %then335
  %returnVal342 = load i1, i1* %ret_true323, align 1
  %ret_true343 = alloca i1, align 1
  store i1 false, i1* %ret_true343, align 1
  %graph_ptr344 = load %graph_tt*, %graph_tt** @students, align 8
  %nodes345 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr344, i32 0, i32 0
  %head346 = load %node_node*, %node_node** %nodes345, align 8
  store %node_node* %head346, %node_node** @llNodes.3, align 8
  br label %while347

while347:                                         ; preds = %merge337, %else356
  %putMeHere348 = load %node_node*, %node_node** @llNodes.3, align 8
  %curr349 = icmp ne %node_node* %putMeHere348, null
  br i1 %curr349, label %while_body350, label %merge357

while_body350:                                    ; preds = %while347
  %putMeHere351 = load %node_node*, %node_node** @llNodes.3, align 8
  %nodes352 = getelementptr inbounds %node_node, %node_node* %putMeHere351, i32 0, i32 0
  %"stored_node'353" = load %node_struct*, %node_struct** %nodes352, align 8
  br label %if354

if354:                                            ; preds = %while_body350
  %"found?358" = icmp eq %node_struct* %"stored_node'353", %"dst'322"
  br i1 %"found?358", label %then355, label %else356

then355:                                          ; preds = %if354
  store i1 true, i1* %ret_true343, align 1
  br label %merge357

else356:                                          ; preds = %if354
  %toBeHere359 = load %node_node*, %node_node** @llNodes.3, align 8
  %llNodesPtr360 = getelementptr inbounds %node_node, %node_node* %toBeHere359, i32 0, i32 1
  %toBeHerenow361 = load %node_node*, %node_node** %llNodesPtr360, align 8
  store %node_node* %toBeHerenow361, %node_node** @llNodes.3, align 8
  br label %while347

merge357:                                         ; preds = %while347, %then355
  %returnVal362 = load i1, i1* %ret_true343, align 1
  br label %if363

if363:                                            ; preds = %merge357
  br i1 %returnVal342, label %merge365, label %else364

else364:                                          ; preds = %if363
  %graph_ptr366 = load %graph_tt*, %graph_tt** @students, align 8
  %nodes367 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr366, i32 0, i32 0
  %nodes_hd368 = load %node_node*, %node_node** %nodes367, align 8
  %malloccall369 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node370 = bitcast i8* %malloccall369 to %node_node*
  %"lst_rst'371" = getelementptr inbounds %node_node, %node_node* %new_node370, i32 0, i32 1
  %node_ptr372 = getelementptr inbounds %node_node, %node_node* %new_node370, i32 0, i32 0
  store %node_node* %nodes_hd368, %node_node** %"lst_rst'371", align 8
  store %node_struct* %"src'321", %node_struct** %node_ptr372, align 8
  store %node_node* %new_node370, %node_node** %nodes367, align 8
  br label %merge365

merge365:                                         ; preds = %else364, %if363
  br label %if373

if373:                                            ; preds = %merge365
  br i1 %returnVal362, label %merge375, label %else374

else374:                                          ; preds = %if373
  %graph_ptr376 = load %graph_tt*, %graph_tt** @students, align 8
  %nodes377 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr376, i32 0, i32 0
  %nodes_hd378 = load %node_node*, %node_node** %nodes377, align 8
  %malloccall379 = tail call i8* @malloc(i32 ptrtoint (%node_node* getelementptr (%node_node, %node_node* null, i32 1) to i32))
  %new_node380 = bitcast i8* %malloccall379 to %node_node*
  %"lst_rst'381" = getelementptr inbounds %node_node, %node_node* %new_node380, i32 0, i32 1
  %node_ptr382 = getelementptr inbounds %node_node, %node_node* %new_node380, i32 0, i32 0
  store %node_node* %nodes_hd378, %node_node** %"lst_rst'381", align 8
  store %node_struct* %"dst'322", %node_struct** %node_ptr382, align 8
  store %node_node* %new_node380, %node_node** %nodes377, align 8
  br label %merge375

merge375:                                         ; preds = %else374, %if373
  store %edge_node* %new_edge316, %edge_node** %edges313, align 8
  store i32 13, i32* @assignment_id_num, align 4
  %assignment_id_num = load i32, i32* @assignment_id_num, align 4
  %assignmentIndex_result = call i32 @assignmentIndex(i32 %assignment_id_num)
  store i32 %assignmentIndex_result, i32* @assignment_index, align 4
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @7, i32 0, i32 0))
  %list = load %list_node*, %list_node** @assignment_names, align 8
  %assignment_index = load i32, i32* @assignment_index, align 4
  %malloccall383 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %0 = bitcast i8* %malloccall383 to %list_node**
  %malloccall384 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %malloccall384 to i32*
  store %list_node* %list, %list_node** %0, align 8
  store i32 %assignment_index, i32* %1, align 4
  br label %traverse_loop

traverse_loop:                                    ; preds = %while_body385, %merge375
  %2 = load i32, i32* %1, align 4
  %temp388 = icmp ne i32 %2, 0
  br i1 %temp388, label %while_body385, label %merge389

while_body385:                                    ; preds = %traverse_loop
  %3 = load %list_node*, %list_node** %0, align 8
  %temp386 = getelementptr inbounds %list_node, %list_node* %3, i32 0, i32 1
  %temp387 = load %list_node*, %list_node** %temp386, align 8
  %4 = load i32, i32* %1, align 4
  %subtract = sub i32 %4, 1
  store i32 %subtract, i32* %1, align 4
  store %list_node* %temp387, %list_node** %0, align 8
  br label %traverse_loop

merge389:                                         ; preds = %traverse_loop
  %5 = load %list_node*, %list_node** %0, align 8
  %temp390 = getelementptr inbounds %list_node, %list_node* %5, i32 0, i32 0
  %retval = load i8*, i8** %temp390, align 8
  %li_conv = bitcast i8* %retval to i8**
  %val_ptr = load i8*, i8** %li_conv, align 8
  store i8* %val_ptr, i8** @assignment_name, align 8
  %assignment_name = load i8*, i8** @assignment_name, align 8
  %printf391 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i8* %assignment_name)
  %printf392 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @8, i32 0, i32 0))
  %printf393 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @9, i32 0, i32 0))
  %graph_ptr394 = load %graph_tt*, %graph_tt** @students, align 8
  %nodes395 = getelementptr inbounds %graph_tt, %graph_tt* %graph_ptr394, i32 0, i32 0
  %head396 = load %node_node*, %node_node** %nodes395, align 8
  store %node_node* %head396, %node_node** @llNodes.4, align 8
  br label %while397

while397:                                         ; preds = %merge389, %else404
  %putMeHere398 = load %node_node*, %node_node** @llNodes.4, align 8
  %curr399 = icmp ne %node_node* %putMeHere398, null
  br i1 %curr399, label %while_body400, label %merge405

while_body400:                                    ; preds = %while397
  %putMeHere401 = load %node_node*, %node_node** @llNodes.4, align 8
  %nodes402 = getelementptr inbounds %node_node, %node_node* %putMeHere401, i32 0, i32 0
  %"stored_nodeA'" = load %node_struct*, %node_struct** %nodes402, align 8
  br label %then403

then403:                                          ; preds = %while_body400
  %malloccall406 = tail call i8* @malloc(i32 ptrtoint (%list_node* getelementptr (%list_node, %list_node* null, i32 1) to i32))
  %node407 = bitcast i8* %malloccall406 to %list_node*
  %nodes408 = getelementptr inbounds %list_node, %list_node* %node407, i32 0, i32 0
  %nodes409 = getelementptr inbounds %list_node, %list_node* %node407, i32 0, i32 1
  %malloccall410 = tail call i8* @malloc(i32 ptrtoint (%node_struct** getelementptr (%node_struct*, %node_struct** null, i32 1) to i32))
  %please_work = bitcast i8* %malloccall410 to %node_struct**
  store %node_struct* %"stored_nodeA'", %node_struct** %please_work, align 8
  %currNodeVoidPtr = bitcast %node_struct** %please_work to i8*
  store i8* %currNodeVoidPtr, i8** %nodes408, align 8
  %nextNodes = load %list_node*, %list_node** @nodesList, align 8
  store %list_node* %nextNodes, %list_node** %nodes409, align 8
  store %list_node* %node407, %list_node** @nodesList, align 8
  br label %else404

else404:                                          ; preds = %then403
  %toBeHere411 = load %node_node*, %node_node** @llNodes.4, align 8
  %llNodesPtr412 = getelementptr inbounds %node_node, %node_node* %toBeHere411, i32 0, i32 1
  %toBeHerenow413 = load %node_node*, %node_node** %llNodesPtr412, align 8
  store %node_node* %toBeHerenow413, %node_node** @llNodes.4, align 8
  br label %while397

merge405:                                         ; preds = %while397
  %return = load %list_node*, %list_node** @nodesList, align 8
  store %list_node* %return, %list_node** @allStudents, align 8
  %list414 = load %list_node*, %list_node** @allStudents, align 8
  %malloccall415 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %6 = bitcast i8* %malloccall415 to %list_node**
  %malloccall416 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %7 = bitcast i8* %malloccall416 to i32*
  store i32 0, i32* %7, align 4
  store %list_node* %list414, %list_node** %6, align 8
  %8 = icmp eq %list_node* %list414, null
  br i1 %8, label %then418, label %else419

merge417:                                         ; preds = %merge424, %then418
  %9 = load i32, i32* %7, align 4
  store i32 %9, i32* @num_students, align 4
  store i32 0, i32* @i, align 4
  store i32 0, i32* @sum, align 4
  store i32 0, i32* @i, align 4
  br label %while425

then418:                                          ; preds = %merge405
  store i32 0, i32* %7, align 4
  br label %merge417

else419:                                          ; preds = %merge405
  br label %traverse_loop420

traverse_loop420:                                 ; preds = %while_body421, %else419
  %10 = load %list_node*, %list_node** %6, align 8
  %11 = icmp ne %list_node* %10, null
  br i1 %11, label %while_body421, label %merge424

while_body421:                                    ; preds = %traverse_loop420
  %12 = load %list_node*, %list_node** %6, align 8
  %temp422 = getelementptr inbounds %list_node, %list_node* %12, i32 0, i32 1
  %temp423 = load %list_node*, %list_node** %temp422, align 8
  %13 = load i32, i32* %7, align 4
  %add = add i32 %13, 1
  store i32 %add, i32* %7, align 4
  store %list_node* %temp423, %list_node** %6, align 8
  br label %traverse_loop420

merge424:                                         ; preds = %traverse_loop420
  br label %merge417

while425:                                         ; preds = %merge455, %merge417
  %i464 = load i32, i32* @i, align 4
  %num_students = load i32, i32* @num_students, align 4
  %tmp465 = icmp slt i32 %i464, %num_students
  br i1 %tmp465, label %while_body426, label %merge466

while_body426:                                    ; preds = %while425
  %sum = load i32, i32* @sum, align 4
  %curr427 = alloca i32, align 4
  store i32 %sum, i32* %curr427, align 4
  %list428 = load %list_node*, %list_node** @allStudents, align 8
  %i = load i32, i32* @i, align 4
  %malloccall429 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %14 = bitcast i8* %malloccall429 to %list_node**
  %malloccall430 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %15 = bitcast i8* %malloccall430 to i32*
  store %list_node* %list428, %list_node** %14, align 8
  store i32 %i, i32* %15, align 4
  br label %traverse_loop431

traverse_loop431:                                 ; preds = %while_body432, %while_body426
  %16 = load i32, i32* %15, align 4
  %temp436 = icmp ne i32 %16, 0
  br i1 %temp436, label %while_body432, label %merge437

while_body432:                                    ; preds = %traverse_loop431
  %17 = load %list_node*, %list_node** %14, align 8
  %temp433 = getelementptr inbounds %list_node, %list_node* %17, i32 0, i32 1
  %temp434 = load %list_node*, %list_node** %temp433, align 8
  %18 = load i32, i32* %15, align 4
  %subtract435 = sub i32 %18, 1
  store i32 %subtract435, i32* %15, align 4
  store %list_node* %temp434, %list_node** %14, align 8
  br label %traverse_loop431

merge437:                                         ; preds = %traverse_loop431
  %19 = load %list_node*, %list_node** %14, align 8
  %temp438 = getelementptr inbounds %list_node, %list_node* %19, i32 0, i32 0
  %retval439 = load i8*, i8** %temp438, align 8
  %li_conv440 = bitcast i8* %retval439 to %node_struct**
  %val_ptr441 = load %node_struct*, %node_struct** %li_conv440, align 8
  %curr_student = alloca %node_struct*, align 8
  store %node_struct* %val_ptr441, %node_struct** %curr_student, align 8
  %"lvar'442" = load %node_struct*, %node_struct** %curr_student, align 8
  %temp443 = getelementptr inbounds %node_struct, %node_struct* %"lvar'442", i32 0, i32 2
  %curr_student.data = load i8*, i8** %temp443, align 8
  %new_ptr = bitcast i8* %curr_student.data to %list_node**
  %curr_student.data444 = load %list_node*, %list_node** %new_ptr, align 8
  %score_list = alloca %list_node*, align 8
  store %list_node* %curr_student.data444, %list_node** %score_list, align 8
  %list445 = load %list_node*, %list_node** %score_list, align 8
  %assignment_index446 = load i32, i32* @assignment_index, align 4
  %malloccall447 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %20 = bitcast i8* %malloccall447 to %list_node**
  %malloccall448 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %21 = bitcast i8* %malloccall448 to i32*
  store %list_node* %list445, %list_node** %20, align 8
  store i32 %assignment_index446, i32* %21, align 4
  br label %traverse_loop449

traverse_loop449:                                 ; preds = %while_body450, %merge437
  %22 = load i32, i32* %21, align 4
  %temp454 = icmp ne i32 %22, 0
  br i1 %temp454, label %while_body450, label %merge455

while_body450:                                    ; preds = %traverse_loop449
  %23 = load %list_node*, %list_node** %20, align 8
  %temp451 = getelementptr inbounds %list_node, %list_node* %23, i32 0, i32 1
  %temp452 = load %list_node*, %list_node** %temp451, align 8
  %24 = load i32, i32* %21, align 4
  %subtract453 = sub i32 %24, 1
  store i32 %subtract453, i32* %21, align 4
  store %list_node* %temp452, %list_node** %20, align 8
  br label %traverse_loop449

merge455:                                         ; preds = %traverse_loop449
  %25 = load %list_node*, %list_node** %20, align 8
  %temp456 = getelementptr inbounds %list_node, %list_node* %25, i32 0, i32 0
  %retval457 = load i8*, i8** %temp456, align 8
  %li_conv458 = bitcast i8* %retval457 to i32*
  %val_ptr459 = load i32, i32* %li_conv458, align 4
  %score = alloca i32, align 4
  store i32 %val_ptr459, i32* %score, align 4
  %curr460 = load i32, i32* %curr427, align 4
  %score461 = load i32, i32* %score, align 4
  %tmp = add i32 %curr460, %score461
  store i32 %tmp, i32* @sum, align 4
  %i462 = load i32, i32* @i, align 4
  %tmp463 = add i32 %i462, 1
  store i32 %tmp463, i32* @i, align 4
  br label %while425

merge466:                                         ; preds = %while425
  %sum467 = load i32, i32* @sum, align 4
  %num_students468 = load i32, i32* @num_students, align 4
  %tmp469 = sdiv i32 %sum467, %num_students468
  store i32 %tmp469, i32* @average, align 4
  %average = load i32, i32* @average, align 4
  %printf470 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.5, i32 0, i32 0), i32 %average)
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
  %list6 = load %list_node*, %list_node** @assignments, align 8
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %6 = bitcast i8* %malloccall7 to %list_node**
  %malloccall8 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %7 = bitcast i8* %malloccall8 to i32*
  store i32 0, i32* %7, align 4
  store %list_node* %list6, %list_node** %6, align 8
  %8 = icmp eq %list_node* %list6, null
  br i1 %8, label %then, label %else

merge9:                                           ; preds = %merge14, %then
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
  br label %traverse_loop10

traverse_loop10:                                  ; preds = %while_body11, %else
  %10 = load %list_node*, %list_node** %6, align 8
  %11 = icmp ne %list_node* %10, null
  br i1 %11, label %while_body11, label %merge14

while_body11:                                     ; preds = %traverse_loop10
  %12 = load %list_node*, %list_node** %6, align 8
  %temp12 = getelementptr inbounds %list_node, %list_node* %12, i32 0, i32 1
  %temp13 = load %list_node*, %list_node** %temp12, align 8
  %13 = load i32, i32* %7, align 4
  %add = add i32 %13, 1
  store i32 %add, i32* %7, align 4
  store %list_node* %temp13, %list_node** %6, align 8
  br label %traverse_loop10

merge14:                                          ; preds = %traverse_loop10
  br label %merge9

while:                                            ; preds = %merge33, %merge9
  %i39 = load i32, i32* %i, align 4
  %num_assigments40 = load i32, i32* %num_assigments, align 4
  %tmp41 = icmp slt i32 %i39, %num_assigments40
  br i1 %tmp41, label %while_body15, label %merge42

while_body15:                                     ; preds = %while
  %list16 = load %list_node*, %list_node** %assignment_ids, align 8
  %i17 = load i32, i32* %i, align 4
  %malloccall18 = tail call i8* @malloc(i32 ptrtoint (%list_node** getelementptr (%list_node*, %list_node** null, i32 1) to i32))
  %14 = bitcast i8* %malloccall18 to %list_node**
  %malloccall19 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %15 = bitcast i8* %malloccall19 to i32*
  store %list_node* %list16, %list_node** %14, align 8
  store i32 %i17, i32* %15, align 4
  br label %traverse_loop20

traverse_loop20:                                  ; preds = %while_body21, %while_body15
  %16 = load i32, i32* %15, align 4
  %temp25 = icmp ne i32 %16, 0
  br i1 %temp25, label %while_body21, label %merge26

while_body21:                                     ; preds = %traverse_loop20
  %17 = load %list_node*, %list_node** %14, align 8
  %temp22 = getelementptr inbounds %list_node, %list_node* %17, i32 0, i32 1
  %temp23 = load %list_node*, %list_node** %temp22, align 8
  %18 = load i32, i32* %15, align 4
  %subtract24 = sub i32 %18, 1
  store i32 %subtract24, i32* %15, align 4
  store %list_node* %temp23, %list_node** %14, align 8
  br label %traverse_loop20

merge26:                                          ; preds = %traverse_loop20
  %19 = load %list_node*, %list_node** %14, align 8
  %temp27 = getelementptr inbounds %list_node, %list_node* %19, i32 0, i32 0
  %retval28 = load i8*, i8** %temp27, align 8
  %li_conv29 = bitcast i8* %retval28 to i32*
  %val_ptr30 = load i32, i32* %li_conv29, align 4
  %id = alloca i32, align 4
  store i32 %val_ptr30, i32* %id, align 4
  %assignment_id31 = load i32, i32* %assignment_id, align 4
  %id32 = load i32, i32* %id, align 4
  %tmp = icmp eq i32 %assignment_id31, %id32
  br i1 %tmp, label %then34, label %else36

merge33:                                          ; preds = %else36, %then34
  %i37 = load i32, i32* %i, align 4
  %tmp38 = add i32 %i37, 1
  store i32 %tmp38, i32* %i, align 4
  br label %while

then34:                                           ; preds = %merge26
  %i35 = load i32, i32* %i, align 4
  store i32 %i35, i32* %index, align 4
  br label %merge33

else36:                                           ; preds = %merge26
  br label %merge33

merge42:                                          ; preds = %while
  %index43 = load i32, i32* %index, align 4
  ret i32 %index43
}

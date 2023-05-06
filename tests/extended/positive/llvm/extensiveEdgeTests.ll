; ModuleID = 'Graphite'
source_filename = "Graphite"

%edge_t = type { %node_struct*, %node_struct*, i32 }
%node_struct = type { i8*, i1, i8* }

@e1 = global %edge_t* null
@n1 = global %node_struct* null
@n2 = global %node_struct* null
@n3 = global %node_struct* null
@0 = private unnamed_addr constant [47 x i8] c"Richard thank you for singing kareoke with us!\00", align 1
@1 = private unnamed_addr constant [56 x i8] c"My brain is all fritzed out I cannot even think anymore\00", align 1
@2 = private unnamed_addr constant [66 x i8] c"And to think I still have to do my math final that is a massive L\00", align 1
@n1ImposterNode = global %node_struct* null
@prtyMsgFrRichard = global i8* null
@fmt = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@e2 = global %edge_t* null
@testWeight = global i32 0
@fmt.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@e3 = global %edge_t* null
@n4 = global %node_struct* null
@aGlimpseIntoMyFuture = global i8* null
@fmt.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@3 = private unnamed_addr constant [5 x i8] c"damn\00", align 1
@4 = private unnamed_addr constant [32 x i8] c"havent really tested you have I\00", align 1
@Ihaveconfidenceinsunshine = global %edge_t* null
@Ihaveconfidenceinrain = global %node_struct* null
@despitewhatyouseeIhaveconfidenceinme = global i8* null
@fmt.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

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
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge = bitcast i8* %malloccall to %edge_t*
  %"src''" = getelementptr inbounds %edge_t, %edge_t* %edge, i32 0, i32 0
  %"dst''" = getelementptr inbounds %edge_t, %edge_t* %edge, i32 0, i32 1
  store %node_struct* null, %node_struct** %"src''", align 8
  store %node_struct* null, %node_struct** %"dst''", align 8
  store %edge_t* %edge, %edge_t** @e1, align 8
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node = bitcast i8* %malloccall1 to %node_struct*
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data = bitcast i8* %malloccall2 to i8**
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name = bitcast i8* %malloccall3 to i8**
  %data_ptr = bitcast i8** %data to i8*
  %name_ptr = bitcast i8** %name to i8*
  %"name'" = getelementptr inbounds %node_struct, %node_struct* %node, i32 0, i32 0
  %"data'" = getelementptr inbounds %node_struct, %node_struct* %node, i32 0, i32 2
  store i8* %name_ptr, i8** %"name'", align 8
  store i8* %data_ptr, i8** %"data'", align 8
  store %node_struct* %node, %node_struct** @n1, align 8
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node5 = bitcast i8* %malloccall4 to %node_struct*
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data7 = bitcast i8* %malloccall6 to i8**
  %malloccall8 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name9 = bitcast i8* %malloccall8 to i8**
  %data_ptr10 = bitcast i8** %data7 to i8*
  %name_ptr11 = bitcast i8** %name9 to i8*
  %"name'12" = getelementptr inbounds %node_struct, %node_struct* %node5, i32 0, i32 0
  %"data'13" = getelementptr inbounds %node_struct, %node_struct* %node5, i32 0, i32 2
  store i8* %name_ptr11, i8** %"name'12", align 8
  store i8* %data_ptr10, i8** %"data'13", align 8
  store %node_struct* %node5, %node_struct** @n2, align 8
  %malloccall14 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node15 = bitcast i8* %malloccall14 to %node_struct*
  %malloccall16 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data17 = bitcast i8* %malloccall16 to i8**
  %malloccall18 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name19 = bitcast i8* %malloccall18 to i8**
  %data_ptr20 = bitcast i8** %data17 to i8*
  %name_ptr21 = bitcast i8** %name19 to i8*
  %"name'22" = getelementptr inbounds %node_struct, %node_struct* %node15, i32 0, i32 0
  %"data'23" = getelementptr inbounds %node_struct, %node_struct* %node15, i32 0, i32 2
  store i8* %name_ptr21, i8** %"name'22", align 8
  store i8* %data_ptr20, i8** %"data'23", align 8
  store %node_struct* %node15, %node_struct** @n3, align 8
  %"lvar'" = load %node_struct*, %node_struct** @n1, align 8
  %temp = getelementptr inbounds %node_struct, %node_struct* %"lvar'", i32 0, i32 2
  %malloccall24 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %bruh = bitcast i8* %malloccall24 to i8**
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @0, i32 0, i32 0), i8** %bruh, align 8
  %name25 = bitcast i8** %bruh to i8*
  store i8* %name25, i8** %temp, align 8
  %"lvar'26" = load %node_struct*, %node_struct** @n2, align 8
  %temp27 = getelementptr inbounds %node_struct, %node_struct* %"lvar'26", i32 0, i32 2
  %malloccall28 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %bruh29 = bitcast i8* %malloccall28 to i8**
  store i8* getelementptr inbounds ([56 x i8], [56 x i8]* @1, i32 0, i32 0), i8** %bruh29, align 8
  %name30 = bitcast i8** %bruh29 to i8*
  store i8* %name30, i8** %temp27, align 8
  %"lvar'31" = load %node_struct*, %node_struct** @n3, align 8
  %temp32 = getelementptr inbounds %node_struct, %node_struct* %"lvar'31", i32 0, i32 2
  %malloccall33 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %bruh34 = bitcast i8* %malloccall33 to i8**
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @2, i32 0, i32 0), i8** %bruh34, align 8
  %name35 = bitcast i8** %bruh34 to i8*
  store i8* %name35, i8** %temp32, align 8
  %n1 = load %node_struct*, %node_struct** @n1, align 8
  %"lvar'36" = load %edge_t*, %edge_t** @e1, align 8
  %temp37 = getelementptr inbounds %edge_t, %edge_t* %"lvar'36", i32 0, i32 0
  store %node_struct* %n1, %node_struct** %temp37, align 8
  %n2 = load %node_struct*, %node_struct** @n2, align 8
  %"lvar'38" = load %edge_t*, %edge_t** @e1, align 8
  %temp39 = getelementptr inbounds %edge_t, %edge_t* %"lvar'38", i32 0, i32 1
  store %node_struct* %n2, %node_struct** %temp39, align 8
  %"lvar'40" = load %edge_t*, %edge_t** @e1, align 8
  %temp41 = getelementptr inbounds %edge_t, %edge_t* %"lvar'40", i32 0, i32 2
  store i32 3, i32* %temp41, align 4
  %"lvar'42" = load %edge_t*, %edge_t** @e1, align 8
  %temp43 = getelementptr inbounds %edge_t, %edge_t* %"lvar'42", i32 0, i32 0
  %e1.src = load %node_struct*, %node_struct** %temp43, align 8
  %srcNode = load %node_struct*, %node_struct** %temp43, align 8
  %malloccall44 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node45 = bitcast i8* %malloccall44 to %node_struct*
  %malloccall46 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data47 = bitcast i8* %malloccall46 to i8**
  %malloccall48 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name49 = bitcast i8* %malloccall48 to i8**
  %data_ptr50 = bitcast i8** %data47 to i8*
  %name_ptr51 = bitcast i8** %name49 to i8*
  %"name'52" = getelementptr inbounds %node_struct, %node_struct* %node45, i32 0, i32 0
  %"data'53" = getelementptr inbounds %node_struct, %node_struct* %node45, i32 0, i32 2
  store i8* %name_ptr51, i8** %"name'52", align 8
  store i8* %data_ptr50, i8** %"data'53", align 8
  store %node_struct* %node45, %node_struct** @n1ImposterNode, align 8
  store %node_struct* %srcNode, %node_struct** @n1ImposterNode, align 8
  %"lvar'54" = load %node_struct*, %node_struct** @n1ImposterNode, align 8
  %temp55 = getelementptr inbounds %node_struct, %node_struct* %"lvar'54", i32 0, i32 2
  %n1ImposterNode.data = load i8*, i8** %temp55, align 8
  %new_ptr = bitcast i8* %n1ImposterNode.data to i8**
  %n1ImposterNode.data56 = load i8*, i8** %new_ptr, align 8
  store i8* %n1ImposterNode.data56, i8** @prtyMsgFrRichard, align 8
  %prtyMsgFrRichard = load i8*, i8** @prtyMsgFrRichard, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i8* %prtyMsgFrRichard)
  %e1 = load %edge_t*, %edge_t** @e1, align 8
  %malloccall57 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge58 = bitcast i8* %malloccall57 to %edge_t*
  %"name'59" = getelementptr inbounds %edge_t, %edge_t* %edge58, i32 0, i32 0
  %"data'60" = getelementptr inbounds %edge_t, %edge_t* %edge58, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'59", align 8
  store %node_struct* null, %node_struct** %"data'60", align 8
  store %edge_t* %edge58, %edge_t** @e2, align 8
  store %edge_t* %e1, %edge_t** @e2, align 8
  %"lvar'61" = load %edge_t*, %edge_t** @e2, align 8
  %temp62 = getelementptr inbounds %edge_t, %edge_t* %"lvar'61", i32 0, i32 2
  store i32 4, i32* %temp62, align 4
  %"lvar'63" = load %edge_t*, %edge_t** @e1, align 8
  %temp64 = getelementptr inbounds %edge_t, %edge_t* %"lvar'63", i32 0, i32 2
  %e1.weight = load i32, i32* %temp64, align 4
  %e1.weight65 = load i32, i32* %temp64, align 4
  store i32 %e1.weight65, i32* @testWeight, align 4
  %testWeight = load i32, i32* @testWeight, align 4
  %printf66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.1, i32 0, i32 0), i32 %testWeight)
  %n167 = load %node_struct*, %node_struct** @n1, align 8
  %n3 = load %node_struct*, %node_struct** @n3, align 8
  %malloccall68 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct = bitcast i8* %malloccall68 to %edge_t*
  %"name'69" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 0
  %"name'70" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 1
  %"name'71" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 2
  store %node_struct* %n167, %node_struct** %"name'69", align 8
  store %node_struct* %n3, %node_struct** %"name'70", align 8
  store i32 0, i32* %"name'71", align 4
  %malloccall72 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge73 = bitcast i8* %malloccall72 to %edge_t*
  %"name'74" = getelementptr inbounds %edge_t, %edge_t* %edge73, i32 0, i32 0
  %"data'75" = getelementptr inbounds %edge_t, %edge_t* %edge73, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'74", align 8
  store %node_struct* null, %node_struct** %"data'75", align 8
  store %edge_t* %edge73, %edge_t** @e3, align 8
  store %edge_t* %myEdgeStruct, %edge_t** @e3, align 8
  %"lvar'76" = load %edge_t*, %edge_t** @e3, align 8
  %temp77 = getelementptr inbounds %edge_t, %edge_t* %"lvar'76", i32 0, i32 1
  %e3.dst = load %node_struct*, %node_struct** %temp77, align 8
  %srcNode78 = load %node_struct*, %node_struct** %temp77, align 8
  %malloccall79 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node80 = bitcast i8* %malloccall79 to %node_struct*
  %malloccall81 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data82 = bitcast i8* %malloccall81 to i8**
  %malloccall83 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name84 = bitcast i8* %malloccall83 to i8**
  %data_ptr85 = bitcast i8** %data82 to i8*
  %name_ptr86 = bitcast i8** %name84 to i8*
  %"name'87" = getelementptr inbounds %node_struct, %node_struct* %node80, i32 0, i32 0
  %"data'88" = getelementptr inbounds %node_struct, %node_struct* %node80, i32 0, i32 2
  store i8* %name_ptr86, i8** %"name'87", align 8
  store i8* %data_ptr85, i8** %"data'88", align 8
  store %node_struct* %node80, %node_struct** @n4, align 8
  store %node_struct* %srcNode78, %node_struct** @n4, align 8
  %"lvar'89" = load %node_struct*, %node_struct** @n4, align 8
  %temp90 = getelementptr inbounds %node_struct, %node_struct* %"lvar'89", i32 0, i32 2
  %n4.data = load i8*, i8** %temp90, align 8
  %new_ptr91 = bitcast i8* %n4.data to i8**
  %n4.data92 = load i8*, i8** %new_ptr91, align 8
  store i8* %n4.data92, i8** @aGlimpseIntoMyFuture, align 8
  %aGlimpseIntoMyFuture = load i8*, i8** @aGlimpseIntoMyFuture, align 8
  %printf93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.2, i32 0, i32 0), i8* %aGlimpseIntoMyFuture)
  %weAreSoBehindLMAO_result = call %edge_t* @weAreSoBehindLMAO()
  %malloccall94 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %edge95 = bitcast i8* %malloccall94 to %edge_t*
  %"name'96" = getelementptr inbounds %edge_t, %edge_t* %edge95, i32 0, i32 0
  %"data'97" = getelementptr inbounds %edge_t, %edge_t* %edge95, i32 0, i32 1
  store %node_struct* null, %node_struct** %"name'96", align 8
  store %node_struct* null, %node_struct** %"data'97", align 8
  store %edge_t* %edge95, %edge_t** @Ihaveconfidenceinsunshine, align 8
  store %edge_t* %weAreSoBehindLMAO_result, %edge_t** @Ihaveconfidenceinsunshine, align 8
  %"lvar'98" = load %edge_t*, %edge_t** @Ihaveconfidenceinsunshine, align 8
  %temp99 = getelementptr inbounds %edge_t, %edge_t* %"lvar'98", i32 0, i32 1
  %Ihaveconfidenceinsunshine.dst = load %node_struct*, %node_struct** %temp99, align 8
  %srcNode100 = load %node_struct*, %node_struct** %temp99, align 8
  %malloccall101 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node102 = bitcast i8* %malloccall101 to %node_struct*
  %malloccall103 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data104 = bitcast i8* %malloccall103 to i8**
  %malloccall105 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name106 = bitcast i8* %malloccall105 to i8**
  %data_ptr107 = bitcast i8** %data104 to i8*
  %name_ptr108 = bitcast i8** %name106 to i8*
  %"name'109" = getelementptr inbounds %node_struct, %node_struct* %node102, i32 0, i32 0
  %"data'110" = getelementptr inbounds %node_struct, %node_struct* %node102, i32 0, i32 2
  store i8* %name_ptr108, i8** %"name'109", align 8
  store i8* %data_ptr107, i8** %"data'110", align 8
  store %node_struct* %node102, %node_struct** @Ihaveconfidenceinrain, align 8
  store %node_struct* %srcNode100, %node_struct** @Ihaveconfidenceinrain, align 8
  %"lvar'111" = load %node_struct*, %node_struct** @Ihaveconfidenceinrain, align 8
  %temp112 = getelementptr inbounds %node_struct, %node_struct* %"lvar'111", i32 0, i32 0
  %Ihaveconfidenceinrain.name = load i8*, i8** %temp112, align 8
  %srcNode113 = load i8*, i8** %temp112, align 8
  store i8* %srcNode113, i8** @despitewhatyouseeIhaveconfidenceinme, align 8
  %despitewhatyouseeIhaveconfidenceinme = load i8*, i8** @despitewhatyouseeIhaveconfidenceinme, align 8
  %printf114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.3, i32 0, i32 0), i8* %despitewhatyouseeIhaveconfidenceinme)
  ret i32 0
}

declare noalias i8* @malloc(i32)

define %edge_t* @weAreSoBehindLMAO() {
entry:
  %aMessageForMain = alloca %node_struct*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node = bitcast i8* %malloccall to %node_struct*
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data = bitcast i8* %malloccall1 to i8**
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name = bitcast i8* %malloccall2 to i8**
  %data_ptr = bitcast i8** %data to i8*
  %name_ptr = bitcast i8** %name to i8*
  %"name'" = getelementptr inbounds %node_struct, %node_struct* %node, i32 0, i32 0
  %"data'" = getelementptr inbounds %node_struct, %node_struct* %node, i32 0, i32 2
  store i8* %name_ptr, i8** %"name'", align 8
  store i8* %data_ptr, i8** %"data'", align 8
  store %node_struct* %node, %node_struct** %aMessageForMain, align 8
  %ifFunctionsDontWorkMyGod = alloca %node_struct*, align 8
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint (%node_struct* getelementptr (%node_struct, %node_struct* null, i32 1) to i32))
  %node4 = bitcast i8* %malloccall3 to %node_struct*
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %data6 = bitcast i8* %malloccall5 to i8**
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %name8 = bitcast i8* %malloccall7 to i8**
  %data_ptr9 = bitcast i8** %data6 to i8*
  %name_ptr10 = bitcast i8** %name8 to i8*
  %"name'11" = getelementptr inbounds %node_struct, %node_struct* %node4, i32 0, i32 0
  %"data'12" = getelementptr inbounds %node_struct, %node_struct* %node4, i32 0, i32 2
  store i8* %name_ptr10, i8** %"name'11", align 8
  store i8* %data_ptr9, i8** %"data'12", align 8
  store %node_struct* %node4, %node_struct** %ifFunctionsDontWorkMyGod, align 8
  %"lvar'" = load %node_struct*, %node_struct** %aMessageForMain, align 8
  %temp = getelementptr inbounds %node_struct, %node_struct* %"lvar'", i32 0, i32 2
  %malloccall13 = tail call i8* @malloc(i32 ptrtoint (i8** getelementptr (i8*, i8** null, i32 1) to i32))
  %bruh = bitcast i8* %malloccall13 to i8**
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3, i32 0, i32 0), i8** %bruh, align 8
  %name14 = bitcast i8** %bruh to i8*
  store i8* %name14, i8** %temp, align 8
  %"lvar'15" = load %node_struct*, %node_struct** %ifFunctionsDontWorkMyGod, align 8
  %temp16 = getelementptr inbounds %node_struct, %node_struct* %"lvar'15", i32 0, i32 0
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8** %temp16, align 8
  %aMessageForMain17 = load %node_struct*, %node_struct** %aMessageForMain, align 8
  %ifFunctionsDontWorkMyGod18 = load %node_struct*, %node_struct** %ifFunctionsDontWorkMyGod, align 8
  %malloccall19 = tail call i8* @malloc(i32 ptrtoint (%edge_t* getelementptr (%edge_t, %edge_t* null, i32 1) to i32))
  %myEdgeStruct = bitcast i8* %malloccall19 to %edge_t*
  %"name'20" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 0
  %"name'21" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 1
  %"name'22" = getelementptr inbounds %edge_t, %edge_t* %myEdgeStruct, i32 0, i32 2
  store %node_struct* %aMessageForMain17, %node_struct** %"name'20", align 8
  store %node_struct* %ifFunctionsDontWorkMyGod18, %node_struct** %"name'21", align 8
  store i32 0, i32* %"name'22", align 4
  %newbie = alloca %edge_t*, align 8
  store %edge_t* %myEdgeStruct, %edge_t** %newbie, align 8
  %newbie23 = load %edge_t*, %edge_t** %newbie, align 8
  ret %edge_t* %newbie23
}

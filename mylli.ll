; ModuleID = 'Graphite'
source_filename = "Graphite"

%node_t = type { i8*, i1, i8* }

@n = global %node_t zeroinitializer
@f = global i1 false
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@int_value = global i32 0
@fmt.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @printf(i8*, ...)

define i32 @main() {
entry:
  store i1 true, i1* getelementptr inbounds (%node_t, %node_t* @n, i32 0, i32 1)
  %n.flag = load i1, i1* getelementptr inbounds (%node_t, %node_t* @n, i32 0, i32 1)
  %n.flag1 = load i1, i1* getelementptr inbounds (%node_t, %node_t* @n, i32 0, i32 1)
  store i1 %n.flag1, i1* @f
  %f = load i1, i1* @f
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i1 %f)
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %bruh = bitcast i8* %malloccall to i32*
  store i32 5, i32* %bruh
  %name = bitcast i32* %bruh to i8*
  store i8* %name, i8** getelementptr inbounds (%node_t, %node_t* @n, i32 0, i32 2)
  %n.data = load i8*, i8** getelementptr inbounds (%node_t, %node_t* @n, i32 0, i32 2)
  %name2 = bitcast i8* %n.data to i32*
  %n.data3 = load i32, i32* %name2
  store i32 %n.data3, i32* @int_value
  %int_value = load i32, i32* @int_value
  %printf4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.1, i32 0, i32 0), i32 %int_value)
  call void @node_in_func()
  ret i32 0
}

declare noalias i8* @malloc(i32)

define void @node_in_func() {
entry:
  %m = alloca %node_t
  %temp = getelementptr inbounds %node_t, %node_t* %m, i32 0, i32 1
  store i1 false, i1* %temp
  %temp1 = getelementptr inbounds %node_t, %node_t* %m, i32 0, i32 1
  %m.flag = load i1, i1* %temp1
  %m.flag2 = load i1, i1* %temp1
  %f = alloca i1
  store i1 %m.flag2, i1* %f
  %f3 = load i1, i1* %f
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.2, i32 0, i32 0), i1 %f3)
  %n.data = load i8*, i8** getelementptr inbounds (%node_t, %node_t* @n, i32 0, i32 2)
  %name = bitcast i8* %n.data to i32*
  %n.data4 = load i32, i32* %name
  %g = alloca i32
  store i32 %n.data4, i32* %g
  %g5 = load i32, i32* %g
  %printf6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.3, i32 0, i32 0), i32 %g5)
  ret void
}

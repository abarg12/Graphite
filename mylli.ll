; ModuleID = 'Graphite'
source_filename = "Graphite"

%node_t = type { i8*, i1, i8* }

@n = global %node_t zeroinitializer
@f = global i1 false
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @printf(i8*, ...)

define i32 @main() {
entry:
  store i1 true, i1* getelementptr inbounds (%node_t, %node_t* @n, i32 0, i32 1)
  %n.flag = load i1, i1* getelementptr inbounds (%node_t, %node_t* @n, i32 0, i32 1)
  store i1 %n.flag, i1* @f
  %f = load i1, i1* @f
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i1 %f)
  call void @node_in_func()
  ret i32 0
}

define void @node_in_func() {
entry:
  %m = alloca %node_t
  %temp = getelementptr inbounds %node_t, %node_t* %m, i32 0, i32 1
  store i1 false, i1* %temp
  %temp1 = getelementptr inbounds %node_t, %node_t* %m, i32 0, i32 1
  %m.flag = load i1, i1* %temp1
  %f = alloca i1
  store i1 %m.flag, i1* %f
  %f2 = load i1, i1* %f
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.1, i32 0, i32 0), i1 %f2)
  ret void
}

; ModuleID = 'Graphite'
source_filename = "Graphite"

%node_t = type { i8*, i1, i8* }

@fmt = private unnamed_addr constant [4 x i8] c"%B\0A\00", align 1

declare i32 @printf(i8*, ...)

declare void @add_node(i8*, i8*, ...)

define i32 @main() {
entry:
  %n = alloca %node_t, align 8
  %temp = getelementptr inbounds %node_t, %node_t* %n, i32 0, i32 1
  store i1 true, i1* %temp, align 1
  %temp1 = getelementptr inbounds %node_t, %node_t* %n, i32 0, i32 1
  %i = load i1, i1* %temp1, align 1
  %i2 = alloca i1, align 1
  store i1 %i, i1* %i2, align 1
  %i3 = load i1, i1* %i2, align 1
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i1 %i3)
  ret i32 0
}

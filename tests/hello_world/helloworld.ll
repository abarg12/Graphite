; ModuleID = 'Graphite'
source_filename = "Graphite"

@a = global i32 2

define void @main() {
entry:
  store i32 2, i32* @a, align 4
  ret void
}

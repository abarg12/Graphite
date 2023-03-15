toplevel.native : parser.mly scanner.mll codegen.ml semant.ml toplevel.ml
	opam exec -- \
	ocamlbuild -use-ocamlfind toplevel.native

clean :
	ocamlbuild -clean
	rm -f toplevel.native
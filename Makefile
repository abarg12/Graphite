toplevel.native : parser.mly scanner.mll 
	opam exec -- \
	ocamlbuild -use-ocamlfind toplevel.native

clean :
	ocamlbuild -clean
	rm -f toplevel.native
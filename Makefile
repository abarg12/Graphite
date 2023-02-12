calc.native : toplevel.ml ast.ml parser.mly scanner.mll
	ocamlbuild toplevel.native

clean :
	ocamlbuild -clean
	rm -f toplevel.native
type binop = Add | Sub | Mul | Div | Eq | Neq | A
    (* TODO: finish writing binary ops*)

type unop = Neg | - ++ --?
    (*  *)

type ty = Graph | List | Node | Edge | Int | Float | String | Bool | Null

type setop = Union | Inter | Diff | Xor

type expr =
     BinExp of expr * binop * expr
   | UnExp of unop * expr
   | SetExp of expr * setop * expr
   | IntLit
   | Var of string 

type fundec = {
   ret : ty;
   fname : string;
   formals : list;
   body : 
}
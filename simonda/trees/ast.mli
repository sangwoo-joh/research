(*** ast.mli - Interface of the Ast module ***)

(* Type of identifiers *)
type identifier =
    string

(* Type of operators *)
type operator =
    Op_add | Op_sub | Op_mul
  | Op_lss | Op_grt | Op_leq | Op_geq | Op_eq

(* Type of constants *)
type constant =
    Const_int of int
  | Const_bool of bool
  | Const_operator of operator
  | Const_proj of int

(* Type of expressions *)
type expression =
    Exp_const of constant
  | Exp_ident of identifier
  | Exp_tuple of expression list
  | Exp_app of expression * expression
  | Exp_abstr of identifier * expression
  | Exp_if of expression * expression * expression
  | Exp_let of identifier * expression * expression
  | Exp_letrec of identifier * expression * expression


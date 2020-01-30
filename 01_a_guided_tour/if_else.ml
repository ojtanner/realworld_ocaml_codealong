(*
 * If-Else
 * ==========
 *
 * *)

(* Basic if-else expressions
 * consist of
 * - a predicate
 * - a result if true
 * - a result if false *)
let my_if_else_expression =
  if 10 < 11
  then true
  else false

(* An if-else alsways must
 * provide a result of the same
 * type for both branches.
 * Also, you HAVE to provide
 * a "then" and an "else" branch *)
let a_faulty_if_else_expression =
  if true
  then true (* You should get an error here *)

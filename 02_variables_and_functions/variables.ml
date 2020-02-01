(*
 * In OCaml, variables are immutable.
 * That means variables, once declared
 * do not change.
 * It also means that you can not reassign
 * variable identifiers.
 *
 * If you do "reassign" a variable,
 * you effectively created a new
 * variable and reused the identifier.
 * The old value of the identifier will
 * no longer be accessible.
 *)

(* Variable "a" *)
let a = 10

(* A different variable called "a" *)
let a = "Penguin"

(*
 * Block-scoping:
 * In OCaml, each variable is only
 * accessible from within it's block.
 * The uppermost block is the top-level.
 *)

(* Top-level variable,
 * accessible in all of the file
 *)

let toplevel_block = 1;;

let smaller_block = 2 in
  (* "smaller_block" is only accessible
   * from within this block.
   * Once we exit this block,
   * the variable will no longer
   * be accessible to us
   *)
  smaller_block + 1

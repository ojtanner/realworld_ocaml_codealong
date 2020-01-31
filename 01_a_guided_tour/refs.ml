(*
 * Refs are a special variant of
 * mutable records.
 *
 * Refs are records that only
 * hold exactly one value
 * called "contents",
 * which is mutable.
 *)
let my_ref = { contents = 0 }

(*
 * Refs have useful shorthand
 * operations for manipulation
*)

(*
 * Creating a ref:
 *)
let my_ref = ref 0

(*
 * Reading value held by ref:
 *)
let value_held_by_ref = !my_ref;;

(*
 * Mutating value hold by ref:
 *)
my_ref := !my_ref + 1;;

(*
 * Variant Types
 * =============
 *
 *)

(* Imagine variants as enums on crack.
 * Apart from enumerating, they can
 * also hold values *)

type pet =
  | Dog
  | Cat

let greet_pet pet =
  match pet with
  | Dog -> "Hello dog!"
  | Cat -> "Hello cat!"

type variant_with_values =
  | My_Integer of int
  | My_Float of float

(* You can construct a variant
 * by invoking its name.
 * You must provide a value
 * if the variant expects one *)
let my_integer = My_Integer 42
let my_float = My_Float 9.8
(* Be aware that both my_integer and
 * my_float are of type "variant_with_values" *)

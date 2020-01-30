(*
 * Option Monad
 * ============
 *
 *)

(* The Option Monad allows you
 * to safely handle errors
 * without throwing exceptions *)
let division_option x y =
  match x, y with
  (* If the function divides by zero, return None *)
  | _, 0 -> None
  (* If the function does not divide by zero,
   * return the Some (Result of division) *)
  | x, y -> Some (x / y)

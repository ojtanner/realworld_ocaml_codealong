(*
 * Lists are immutable and finite data structures
 *)

(* This is a list of integers *)
let mylist = [ 1; 2; 3 ]

(*
 * Lists can be constructed via the `:::` Operator
 * The lefthand needs to be an element appended to the head of the list
 * The righthand has to be an existing list of the same type as the lefthand
 *
 * Note: [] is the empty list. The empty list is still polymorphic since
 * it's type has not yet been specified. Therefore we can add an integer
 * to the head of the empty list.
 * From then on, the list will be of type `int` instead of polymorphic
 *)
let mylist = [ 1; 2; 3 ]

(*

Arrays
======

 *)

(* Arrays are a MUTABLE data structure *)
let my_array = [| 1; 2; 3; 4; 5 |]

(* Arrays start at 0, as it should be *)
let first_element = my_array.(0)

(* This is a shorthand for setting
 a value in an array *)

;;
my_array.(0) <- 42

(* Arrays behave exactly like you would
 expect them to in every language *)

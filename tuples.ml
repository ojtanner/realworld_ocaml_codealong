(* 1)
 * Tuples basics
 * Tuples are
 * - fixed length
 * - ordered
 *)

let my_tuple = (10, -10)
(* Tuples are written by putting values inside
 * parentheses, separated by commas. *)

type my_tuple = int * int
(* To define the type of a tuple, you
 * write out the types separated by asterisks. *)

(* 2)
 * Pattern matching tuples *)

let (left, right) = my_tuple
(* You can destructure tuples to get access to
 * specific elements. Be careful to respect the
 * ordering of the elements in the tuple. *)

let my_function_with_tuple_input (left, right) =
  left + right
(* If you have a function with tuples as input args,
 * you can destructure the tuples in the function
 * signature so that you don't have to destructure
 * them inside the function body. *)

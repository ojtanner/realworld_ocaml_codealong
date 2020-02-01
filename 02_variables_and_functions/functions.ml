(*
 * Anonymous functions:
 * Functions without a name
 *)

(fun parameter ->
  (* function body*)
  parameter)

let eight = (fun number -> number + 1) 7

(*
 * Higher Order Functions:
 * Functions that take functions
 * as an argument and / or
 * return functions
 *)

let binary_operation a_function x y =
  (* this function takes another function
   * and applies that function to x and y
   *)
  a_function x y

let addition x y =
  x + y

let four = binary_operation addition 2 2

(*
 * Multi-argument Functions and Currying:
 * You can write functions the following
 * way:
 *)
let my_addition =
  (fun x ->
    (fun y ->
      x + y));;

(* Each argument of a function
 * is actually one anonymous function.
 * Once you supply the argument,
 * it returns the next function, which
 * is waiting for it's own argument.
 *)

(*
 * We can use this to "load" a function
 * with a specific argument and reuse
 * that function with that specific argument.
 *)

(* we define the addition function
 * which takes an x and a y
 *)
let add x y =
  x + y;;

(* we only give "add" the first argument,
 * "x", and "load" the function with
 * the value 2.
 * "add" then returns a new function
 * which waits for the second argument, "y".
 * We then save that function and we now
 * have an addition function that always adds
 * 2 to each y.
 *
 * This concept is called currying.
 *)
let add_2 = add 2;;

let four = add_2 2;;

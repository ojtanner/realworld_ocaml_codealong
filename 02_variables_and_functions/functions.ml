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

(*
 * Recursive functions:
 * If you want to define a recursive function,
 * you mark it with "rec"
 *)
let rec range a b f =
  match a - b with
  | 0 -> ()
  | _ ->
      f a;
      range (a + 1) b f;;

(*
 * "function" keyword:
 * You can declare functions using the
 * "function" keyword.
 * Why and when?
 * Whenever you need to pattern match
 * your input argument.
 *)
let f = function
  | [] -> None
  | hd :: tl -> Some hd
(* Here we directly pattern match the
 * list provided as input argument
 * thanks to the "function" keyword.
 *)

(*
 * Labeled Parameters:
 * You can label parameters.
 * Why would you do that?
 * Because it can sometimes be
 * more explicit what is being passed to
 * the function.
 * Also, labeled arguments can be passed
 * in any order.
 *)
let my_function ~dividend ~divisor = dividend / divisor;;

(* Invoking a function with labeled parameters: *)
my_function ~dividend:10 ~divisor:2

(* You can also use shorthands if there
 * already exist variables with the same
 * names as your labeled parameters.
 *)
let dividend = 10;;
let divisor = 2;;

my_function ~dividend ~divisor;;

(* Gotchas with labeled arguments:
 * If you pass a function with
 * labeled arguments to another function,
 * you have to be VERY careful to
 * invoke the function with labeled
 * arguments in such a way that
 * the labeled arguments are passed
 * in the same order as in the
 * function signature.
 *)

let wrapper f divisor dividend = f ~dividend ~divisor;;

wrapper my_function 10 20

(* The code above works.
 * The code below not.
 *)

(*
 * let wrapper f divisor dividend = f ~divisor ~dividend;;
 * wrapper my_function 10 20
 *)

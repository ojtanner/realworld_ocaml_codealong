(*
* Imperative Datastructures
* -------------
*
* Arrays
* ======
* Arrays are an imperative data structure of OCaml.
*
* Instantiating Arrays:
*
* Either:
* - Create an array with a literal
* - Create an array with Array.make
*)

let my_array = [| 1; 2; 3 |]
let array_length = 5
let initial_array_values = 0
let another_array = Array.make array_length initial_array_values

(*
*
* Getting and Setting array elements:
*
*)

let first_value = my_array.(0)
let first_value = my_array.(0)

;;
my_array.(0) <- 69
;;
my_array.(0) <- 69

(*
* Strings
* =======
*
* Strings are another imp. ds. of OCaml.
*
* Instantiating Strings:
*
* Put stuff between ""
*)

let my_string = "Hello World"

(*
*
* Getting char of String:
*
* Modifying Strings in Place seems to be deprecated sinde 4.02
*
*)

let my_char = my_string.[0]
let my_char = String.get my_string 0;;

(*
* Error Handling Basics
* -------------
*
* There are two ways of error handling:
* 1) Error-aware return types
* 2) Exceptions
*
* Error-aware return types:
* Use Monads or Variants to denote the fact that multiple outcomes are
* possible.
*
*)

let rec find_number_in_list number = function
| [] -> Error ("number " ^ string_of_int number ^ " not in list")
| hd :: tl ->
  if hd = number then Ok hd
else (find_number_in_list number tl)

(*
*
* In the above code we make it clear that this function may fail thanks to
* the return type of (int, string) result
*
* Exeptions:
* Throw exceptions when the computation fails.
*
* 1) Define a new exception that suits your needs
* 2) Write a function that throws the exception and append _exn
* to the end of the name
*
*)

exception My_exception of string

let always_fails_exn int =
raise (My_exception "this always fails")

let how_to_use_functions_that_throw_exceptions int =
  try
    always_fails_exn int
  with
  | My_exception exn -> print_string ("Raised exceptions " ^ exn)

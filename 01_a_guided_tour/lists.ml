(* 1) List basics
 * List properties:
 * - linear access
 * - elements added at the end
 * - can only hold one single type
 *)

let my_list = ["Hello"; "i am a list"; "of strings"]

type my_list = String list

(* 2) List concatenation / creation *)

let my_other_list = "hello" :: []

let yet_another_list = ["I am"; "the first list"] @ ["And i am"; "the second list"]

(* 3) List pattern matching *)

match my_list with
| [] -> "i got an empty list"
| [head_of_list] -> "i got a list with only one element"
| head_of_list :: rest_of_list -> "looks like this list has two or more elements"
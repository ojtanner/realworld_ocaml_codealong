(*
* Polymorphic Variants
* -------------
*
* Polymorphic Variants are more flexible than regular variants.
* But they are less efficient and have a few gotchas.
*
* Why use them? Because they offer you the ability to instantiate them ad-hoc
* as you need them and you can mix and match them together. Normal variants
* can not do that.
*
* Creating and using them:
* 1) Define them ad-hoc or in a type
* 2) Use them ad-hoc or as a restricted selection of input
*
*)

let one = `Int 1
let two = `Int 2
let three = `Int 3
let four = `Float 4

let print_number number = function
| `Int num -> print_int num
| `Float num -> print_float num

(*
*
* The type of this function will be the following:
* val print_number : [< `Int of int | `Float of float ] -> ()
* [>] is a lower-bound : These polymorphic variants or MORE
* [<] is an upper-bound : Only these or LESS
*
* What does this mean for our function ? It only accepts the variants
* `Int or `Float.
*)

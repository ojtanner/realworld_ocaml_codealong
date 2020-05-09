(*
* Variant Basics
* -------------
*
* Creating Records:
*
* 1) Declare type
* 2) Instantiate type
*
*)

type animal =
| Cat
| Dog
| Cow
| Fish

let cat = Cat

(*
*
* Variants can hold values
*
* GOTCHA: values of variants are NOT tuples
*
*)

type currency =
  | Dollar of float
  | Euro of float
  | SwissFrank of float

let amount_payed = Dollar 4.20

(*
*
* Difference between Variant values and tuples
*
*)

type example_variant =
| None
| One of int
| Two of int * int
| Tuple of (int * int)

(*
*
* Variants can be recursive.
*
*)

type simple_mathematical_expression =
| Value of int
| Addition of simple_mathematical_expression * simple_mathematical_expression

let addition = Addition (Value 10, Value 20)

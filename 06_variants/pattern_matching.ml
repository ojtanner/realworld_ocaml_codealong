(*
* Pattern Matching Variants
* -------------------------
*
* Pattern matching is one of the main reasons why variants exist.
* Imagine them as Java Enums on steroids with a turbo-charged switch/case.
* Furthermore, OCaml will warn you if you have not matched ALL cases of a
* variant type.
*
*)

type rgb =
| Red
| Green
| Blue

let print_color = function
| Red -> print_string "red color"
| Green -> print_string "green color"
| Blue -> print_string "blue color"

(*
*
* You can provide a catch-all case for matching variants. But this
* will prevent OCaml from telling you that you have forgotten a case.
*
*)

let print_some_colors = function
| Red -> print_string "red color"
| Green -> print_string "green color"
| _ -> print_string "catch all case"

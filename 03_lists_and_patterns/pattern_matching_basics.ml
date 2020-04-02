(*
 * Pattern-matching Lists can be done with the following expression
 *)

let mylist = [1;2;3]

(*
 * We have to match all cases of the list:
 * `[]` means our list is empty
 * `[hd]` means our list has exaxtly one element
 * `hd :: tl` means our list has at least 2 elements:
 *    `hd`: is the naming convention for "head"
 *    head is the value stored at the start of the list
 *    It is of type a'
 *    `tl`: is the naming convention for "tail"
 *    tail is the rest of the list. It is of type a' list
 *    and not of type a'
 *)
let rec droplist list todrop =
  match list with
  | [] -> []
  | [hd] ->
      if hd = todrop
          then []
          else [hd]
  | hd :: tl ->
      if hd = todrop
        then droplist tl todrop
        else hd :: droplist tl todrop;;

droplist mylist 3

(*
 * You can also directly match for a desired value.
 *
 * Note: you have to provide the raw value. If you pass
 * the name of the variable that stores the desired value
 * OCaml will interpret that as "the matched value will be called
 * `variable name`"
 *)
let rec dropzero list =
  match list with
  | [] -> []
  | 0 :: tl ->
      dropzero tl
  | hd :: tl ->
      hd :: dropzero tl;;

(*
 * It is also possible to not name a pattern at all if you don't care for it
 *)
let rec traverselist list =
  match list with
  | [] -> []
  | _ :: tl -> traverselist tl

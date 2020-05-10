(*
 * You can use a few advanced tricks to make pattern-matching terser:
 *)

let list_matching list =
  match list with
  | [] | [ _ ] -> "group two cases into one output"
  | hd :: tl -> "same as ever"
;;

(*
 * Above we have grouped two cases into one single output
 * It is important to note that you can not use an identifier in only
 * one OR not all of the cases.
 *
 * If we would have used `[hd]` above, the compiler would have complained
 *)

let list_matching list =
  match list with
  | ([] | [ _ ]) as l -> l
  | hd :: tl as l -> l
;;

(*
 * Above we have repeated the example but we have assigned a name to
 * the appearing pattern that is matched.
 *
 * In the first case we said `empty list or one-element list, and call
 * it "l"`
 *)

let integer_matching numer =
  match numer with
  | num when num = 0 -> "Found the zero"
  | num -> "All the other cases"
;;

(*
 * Here we see that we can specify when the particula case should be matched
 * Be aware that the compiler can no longer check if this is exhaustive
 * matching or not.
 *
 * So do not use this pattern.
 *)

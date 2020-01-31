(*
 * OCaml supports imperative looping.
 * Both for and do_while exist.
 *)

(*
 * for-loop:
 *)
for i = 0 to 10 do
 print_int i;
done

(*
 * while-loop:
 *)
let i = ref 0;;

while !i < 10 do
 print_int !i;
 i := !i + 1;
done

(*
 * Note that every
 * expression with a
 * sideffect is terminated
 * by a comma.
 *)

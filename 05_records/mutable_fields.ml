(*
* Mutable Fields:
* ---------------
*
* Records are immutable by default.
* If you want a field to be mutable you have to explicitly declare it as such.
*
*)

type counter =
{
mutable count : int;
}

(*
*
* Upate values with the following syntax:
* 'mutable field name' <- 'new value of same type'
*
*)

let update_counter counter =
counter.count <- counter.count + 1;

(*
* Functor Basics
* -------------
*
* In OCaml, "Functors" are functions from modules to modules.
* Not to be confused with functors as mappable data structures.
*
* Using Functors:
* 1) Define a functor WITH SPECIFIC type annotations.
* 2) Give a module as input to the functor.
*
*)

module type X_int = sig
  val x : int
end

(*
*
* This Functor takes a module that complies with the signature of
* X_int and returns another module that complies with the signature
* of X_int
*
*)
module Increment (M : X_int) : X_int = struct
  let x = M.x + 1
end

(*
*
* Instantiating a new Module with the Functor:
*
*)

module Three = struct
  let x = 3
end

module Four = Increment (Three)

module Three_and_more = struct
  let x = 3
  let y = "three"
end

module Four_and_more = Increment(Three_and_more)

(*
* Abstract Functors
* -------------
*
* Abstract functors let you hide implementation details.
*
*)
module type Comparable = sig
  type t
  val compare : t -> t -> int
  end

module type Interval_interface = sig
  type t
  type endpoint
  val create : endpoint -> endpoint -> t
end


(*
*
* This module is now abstract, but it is TOO abstract. We can not
* instantiate it, since we do not know of what type endpoint will be.
*
*)
module Make_interval(Endpoint : Comparable) : Interval_interface = struct
  type endpoint = Endpoint.t
  type t = | Interval of Endpoint.t * Endpoint.t
           | Empty

  let create low high =
    if Endpoint.compare low high > 0 then Empty
    else Interval (low, high)
end

(*
*
* There are various ways to fix this:
* 1) Share constraints with the interface
* 2) Share constraint with Functor
* 3) Use destructive substitution
*
* 1) Share constraints via intf
*)

module type Int_interval_interface =
  Interval_interface with type endpoint = int

(*
*
* 2) Share constraints via Functor
* This will lead to the redundant type endpoint.
*
*)

module Make_interval(Endpoint : Comparable) :
  (Interval_interface with type endpoint = Endpoint.t) = struct
  type endpoint = Endpoint.t
  type t = | Interval of Endpoint.t * Endpoint.t
           | Empty

  let create low high =
    if Endpoint.compare low high > 0 then Empty
    else Interval (low, high)
end

(*
*
* 3) Use destructive substitution
* This gets rid of unused type delcarations
*
*)

module Make_interval(Endpoint : Comparable) :
  (Interval_interface with type endpoint := Endpoint.t) = struct
  type t = | Interval of Endpoint.t * Endpoint.t
           | Empty

  let create low high =
    if Endpoint.compare low high > 0 then Empty
    else Interval (low, high)
end



(*
* Multiple Interfaces
* -------------
*
* You can create a Module Signature that inherits multiple
* other module signatures.
*
*)

open Core_kernel

module type Comparable = sig
  type t
  val compare : t -> t -> int
end

module type Sexpable = sig
  type t
  val sexp_of_t : t -> Sexp.t
  val t_of_sexp : Sexp.t -> t
end

module type Interval_intf_with_sexp = sig
  type t
  include Comparable with type t := t
  include Core_kernel.Sexpable with type t := t
end

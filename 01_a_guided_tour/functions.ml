(*
 * Absolute basics for writing
 * functions:
 *)

let function_name parameter_1 parameter_n =
  (* function body *)
  let nested_function parameter =
    parameter
  in
  nested_function (parameter_1 + parameter_n);;
  (* the last line of a function
   * is the return value
   *)

  (* also note that we used the
   * "+" operator, which is limited
   * to Integers.
   * OCaml therefore infers that
   * both parameter_1 and
   * parameter_n have to be
   * Integers and enforces their
   * types.
   *)

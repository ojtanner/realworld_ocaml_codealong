(*
 * Records
 * =======
 *
 *)

(* BEFORE you can instantiate
 * records, you first have to
 * DECLARE their type *)
type example_record =
  { first_name : string
  ; last_name : string
  }

(* ONCE YOU HAVE DECLARED A
 * RECORD TYPE you can instantiate
 * a record that matches the type *)
let my_record_exapmle = { first_name = "John"; last_name = "Doe" }

(* You can destructure a record
 * that is provided as a function
 * argument *)
let a_function_with_a_record_input { first_name = fn; last_name = ln } =
  let fullname = fn ^ " " ^ ln in
  fullname
;;

(* You can also directly use the defined
 * names of the fields if that suits you
 * better. This is called
 * "field punning" *)
let another_function_with_a_record_input { first_name; last_name } =
  let fullname = first_name ^ " " ^ last_name in
  fullname
;;

(* You can access the fields of a record
 * via the dot-notation as an alternative *)
let my_first_name = my_record_exapmle.first_name
let my_last_name = my_record_exapmle.last_name

(*
 Record fields can be marked as MUTABLE
*)
type running_sum =
  { mutable sum : float
  ; mutable n : int
  }

let my_mutable_record = { sum = 0.; n = 0 }

(*
 Increment the running sum by a randomly
 chosen number
*)
let () =
  (* the strange "()" simply means "nothing" *)
  my_mutable_record.sum <- my_mutable_record.sum +. 45.2;
  my_mutable_record.n <- my_mutable_record.n + 1
;;

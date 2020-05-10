(*
* Pattern-Matching Records:
* ------------------------
*
* Extract information of records with pattern matching.
*
* When the name of the Record field fits your needs you can leave
* them as-is and OCaml will assign them to variables in scope of the
* function.
*
* This is called "Field punning"
*
*)

type person =
  { name : string
  ; age : int
  }

let person_printer { name; age } =
  print_string ("Name : " ^ name ^ ", age : " ^ string_of_int age)
;;

(*
*
* Field punning can also be used to create records.
*
*)

let name = "John"
let age = 20
let john_person = { name; age }

(*
*
* Also works with labeled arguments.
*
* (Note that create_person will infer the type of name and age bc we
* use these arguments to create a 'person' record)
*
*)

let create_person ~name ~age = { name; age }

(*
*
* If you do not like the names of the filed you can assign them
* to a differently named variable to avoid field punning.
* Makes working with long field names more convenient.
*
*)

type needlessly_verbose_record =
  { this_name_is_too_long : string
  ; another_extremly_long_field_name : int
  }

let myfunction
    { this_name_is_too_long = first; another_extremly_long_field_name = second }
  =
  first ^ string_of_int second
;;

(*
*
* Pattern-Matching of a Record does not have to be exhaustive
*
* GOTCHA:
* Since this is true, OCaml will not complain when we update the type of
* a record and we ADD a new field.
* Keep that in mind when extending types of records. Ideally you update
* all existing records.
*
*)

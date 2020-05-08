(*
* Record Basics
* -------------
*
* Creating Records:
*
* 1) Declare type
* 2) Instantiate type
*
*)

type record_example =
  { field_example : string;
    another_field : int;
  }

let my_record =
  { field_example = "Hello world";
    another_field = 42;
}

(*
*
* Getting values from Records:
*
*)

let extracted_value = my_record.field_example

(*
*
* Polymorphic fields:
*
*)

type 'a polymorphic_fields =
  { polymorphic : 'a;
    non_polymorphic : int;
  }

let instanciated_polymorphic_record =
  { polymorphic = "I am a string now";
    non_polymorphic = 69;
  }

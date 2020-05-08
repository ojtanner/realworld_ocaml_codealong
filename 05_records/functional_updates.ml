(*
* Functional Updates:
* ------------------
*
* Create a new record based off of an existing record and only change a
* subset of the field-values.
*
* GOTCHA:
* Be careful when using fun. upd. with records.
* If you modify the record type signature then the functional update will
* not break your code.
*)

type person =
{
name : string;
age : int;
}

let tyler_20 =
{
name = "Tyler";
age = 20;
}

let tyler_40 =
{
  tyler_20 with age = 40
}

let functional_update_of_record person new_age =
{ person with age = new_age }

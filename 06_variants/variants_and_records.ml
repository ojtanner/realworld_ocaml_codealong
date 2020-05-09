(*
* Combining Records with Variants
* -------------
*
* Combining records with variants can be very useful.
*
*)

module Car = struct
type t = {
wheels: int;
horsepower: int;
}
end

module Motorcycle = struct
type t = {
seats: int;
sidecar: bool;
}
end

module Plane = struct
type t = {
altitude: float;
capacity: float;
}
end

type vehicle =
| Car of Car.t
| Motorcycle of Motorcycle.t
| Plane of Plane.t

let some_car = Car {
wheels = 4;
horsepower = 200;
}

(*
*
* You can embed records directly in variants.
*
*)

type message =
| Greeting of { greet: string }
| Goodbye of { goodbye: string }

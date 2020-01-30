(* 1) "let" expression block *)
let my_expression = 10 in
  (* Everything between in and the end of the block is in the scope of let.
   * Everything before or after the end of the block is outside of the scope. *)

  let another_expression = 20 in
  (* Let-expressions can be nested. *)

    let my_expression = 100 in
    (* Let-expressions will shadow each other if they have the same name. *)

    my_expression + another_expression;;
    (* Generally, the last line in the block will be it's return value.
     * In a functional language, everything has to evaluate to something.
     * This Let-expression will evaluate to the sum of 20 and 100.
     * Once an expression evaluates to something, the block dissapears and
     * everything within it's scope will not be available anymore.
     * Except if you have a closure. But that's a topic for another example. *)

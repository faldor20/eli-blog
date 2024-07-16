open Nottui
module W = Nottui_widgets

let button_example =
  let count_var = Lwd.var 0 in
  (* int Lwd.var *)
  let button =
    W.button "click me!" (fun _ -> Lwd.set count_var (Lwd.peek count_var + 1))
  in
  let counter =
    Lwd.map (Lwd.get count_var) ~f:(fun count -> count |> string_of_int |> W.string)
  in
  W.vbox [ counter; button |> Lwd.pure ]
;;

(*let () = Ui_loop.run ~quit_on_ctrl_q:true button_example*)

let button_example =
  let count_var = Lwd.var 0 in
  (* int Lwd.var *)
  let button =
    W.button "click me!" (fun _ -> Lwd.set count_var (Lwd.peek count_var + 1))
  in
  let counter =
    Lwd.map (Lwd.get count_var) ~f:(fun count ->
      Ui.vcat
        [ count |> string_of_int |> W.string
        ; Lwd.peek count_var |> string_of_int |> W.string
        ])
  in
  W.vbox
    [ counter
    ; button |> Lwd.pure
    ; Lwd.peek count_var |> string_of_int |> W.string |> Lwd.pure
    ]
;;

(*let () = Ui_loop.run ~quit_on_ctrl_q:true button_example*)

open Lwd_infix

let button_example =
  let count_var = Lwd.var 0 in
  let counter =
    let$ count = Lwd.get count_var in
    count |> string_of_int |> W.string
  in
  (* ui Lwd.t*)
  let button = W.button "click me!" (fun _ -> count_var $= Lwd.peek count_var + 1) in
  (* int Lwd.var *)
  W.vbox [ counter; button |> Lwd.pure ]
;;

let elem = Ui.hcat [ W.string "hi"; W.string "there" ] |> Lwd.pure
let elem = Ui.hcat [ W.string "hi" |> Ui.resize ~sw:1; W.string "there" ] |> Lwd.pure

let elem =
  Ui.hcat [ W.string "hi" |> Ui.resize ~sw:1; W.string "there" |> Ui.resize ~sw:2 ]
;;

let elem =
  Ui.hcat
    [ W.string "1234567890" |> Ui.resize ~w:10 ~sw:1
    ; W.string "there" |> Ui.resize ~sw:2
    ]
;;

let () = Ui_loop.run ~quit_on_ctrl_q:true (elem |> Lwd.pure)

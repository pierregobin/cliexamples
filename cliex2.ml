open Core;;

let command =
        Command.basic
        ~summary:"first example"
        Command.Spec.(
                empty
                +> flag "-a" (required int ) ~doc:"a integer"
                +> flag "-b" (optional string) ~doc:"b string"
        )
        (fun a b () -> 
                let b' = match b with
                | Some s -> s
                | None -> ""
                in Printf.printf "a=%d, b=%s\n" a b';)
;;
let () = Command.run ~version:"0.0" ~build_info:"..." command;;


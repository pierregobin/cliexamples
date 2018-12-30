open Core;;

let command =
        Command.basic
        ~summary:"first example"
        Command.Spec.(
                empty
                +> anon("a" %: int)
                +> anon("b" %: string)
        )
        (fun a b () -> Printf.printf "a=%d, b=%s\n" a b;)
;;
let () = Command.run ~version:"0.0" ~build_info:"..." command;;


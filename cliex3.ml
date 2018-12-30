open Core;;

let command =
        Command.basic
        ~summary:"example with new interface"
        (let open Command.Let_syntax in
        let%map_open
           a = anon ("A" %: int)
          in
        fun   () -> 
                Printf.printf "a=%d\n" a ;
        )
;;
let () = Command.run ~version:"0.0" ~build_info:"..." command;;


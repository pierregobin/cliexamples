open Core;;

let command =
        Command.basic
        ~summary:"example with new interface"
        [%map_open
          let a = anon ("a" %: int)
          in
        (fun a  () -> 
                Printf.printf "a=%d, b=%s\n" a ;)
        ]
;;
let () = Command.run ~version:"0.0" ~build_info:"..." command;;


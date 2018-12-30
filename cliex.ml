open Core;;

let command =
        Command.basic
        ~summary:"first example"
         (let open Command.Let_syntax in 
         let%map_open  
             a = flag "a" (required int) ~doc:"a is an integer"
         and b = flag "b" (optional string) ~doc:"b is a string"
         in
         fun ()  -> 
                 let b' = match b with
                 | Some bb -> bb
                 | None -> "" in
                 Printf.printf "a=%d b=%s\n" a b';
         )
;;
let () = Command.run ~version:"0.0" ~build_info:"..." command;;


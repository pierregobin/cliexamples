open Core;;

let command =
        Command.basic
        ~summary:"example with new interface"
        (let open Command.Let_syntax in
        let%map_open
           slow = flag "slow" ~aliases:["AA";"-BB"] no_arg ~doc:"speak fast or slow"
           and a = anon ("A" %: int)
           and b = anon (sequence ("B" %: string) )
           and l = flag "l" (listed string) ~doc:"list"
          in
        fun   () -> 
                Printf.printf "a=%d\n" a ;
                print_endline (if slow then "slow" else "fast");
                List.iter b ~f:(fun x -> print_endline x);
                List.iter l ~f:(fun x -> print_endline x)
        )
;;
let () = Command.run ~version:"0.0" ~build_info:"..." command;;


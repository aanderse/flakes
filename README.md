```
$ cd subdir/
$ nix repl                                                                                                                                                                                            
Welcome to Nix 2.8.1. Type :? for help.

nix-repl> let flake = builtins.getFlake (toString ./.); in builtins.readFile ("${flake.self-as-an-output}/test.txt")
copying '/home/aaron/flakes-test/subdir'"this is a text file at the deeper inside of my git repository\n"

nix-repl> :lf .#                                                                                                     
Added 12 variables.

nix-repl> builtins.readFile ("${outputs.self-as-an-output}/test.txt")                                                
"this is a text file at the root of my git repository\n"
```

why do i get different results? :thinking:

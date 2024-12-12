-module(Dz4_zadanie1).
-export([setup_structure/0]).

setup_structure() ->
    Directories = ["src", "test", "ebin"],
    [file:make_dir(Dir) || Dir <- Directories].

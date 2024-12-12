-module(Dz4_zadanie2).
-export([build_with_tool/1]).

build_with_tool(Tool) ->
    case Tool of
        rebar3 -> os:cmd("rebar3 compile");
        rebar2 -> os:cmd("rebar compile");
        erlang_mk -> os:cmd("make");
        _ -> {error, unsupported_tool}
    end.

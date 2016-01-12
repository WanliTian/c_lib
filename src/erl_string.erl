-module(erl_string).

-export([
    is_string/1,
    to_string/1
]).

is_string(S) ->
    io_lib:printable_list(S).

to_string(Term) ->
    case ?MODULE:is_string(Term) of
        true ->
            Term;
        false ->
            lists:flatten(io_lib:format("~134217728p", [Term]))
    end.

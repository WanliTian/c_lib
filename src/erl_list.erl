-module(erl_list).

-export([
    index/2
]).

-spec index(list(), term()) -> integer().
index(List, Term) ->
    string:str(List, [Term]).

-module(erl_list).

-export([
    index/2
]).

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
-endif.

-spec index(list(), term()) -> integer().
index(List, Term) ->
    string:str(List, [Term]).

-ifdef(TEST).

index_test() ->
    0 = ?MODULE:index(["one", "two", "three"], "zero"),
    1 = ?MODULE:index(["one", "two", "three"], "one"),
    2 = ?MODULE:index(["one", "two", "three"], "two"),
    3 = ?MODULE:index(["one", "two", "three"], "three").

-endif.

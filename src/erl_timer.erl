-module(erl_timer).

-export([
    unixtime/0,
    timestamp/0
]).

unixtime() ->
    {M, S, _} = os:timestamp(),
    M * 1000000 + S.

timestamp() ->
    ?MODULE:unixtime().

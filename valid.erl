-module(valid).

-export([rand_check/0]).

rand_check() ->
    lists:foldl(fun({A,B,C}, {Acc1, Acc2, Acc3}) -> {Acc1 + A, Acc2 + B, Acc3 + C} end, {0,0,0}, 
                [setelement(rand:uniform(3), {0,0,0}, 1)  || _ <- lists:seq(1,10000)]).
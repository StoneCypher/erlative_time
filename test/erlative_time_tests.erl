
-module(erlative_time_tests).
-compile(export_all).

-include_lib("proper/include/proper.hrl").
-include_lib("eunit/include/eunit.hrl").





since_test_() ->

    { "unixtime", [
        { "now", ?_assert(todo =:= erlative_time:since( erlative_time:epoch() )) }
    ] }.

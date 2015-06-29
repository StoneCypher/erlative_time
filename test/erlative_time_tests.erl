
-module(erlative_time_tests).
-compile(export_all).

-include_lib("proper/include/proper.hrl").
-include_lib("eunit/include/eunit.hrl").

since_test_() ->

    { "tautology", [
        { "anything", ?_assert(todo =:= erlative_time:since(1)) }
    ] }.

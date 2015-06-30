
-module(erlative_time).





-export([

    epoch/0,

    since/1,

    about/1,
      about/2

]).





epoch() ->

    erlang:universaltime_to_posixtime( calendar:now_to_universal_time( now() ) ).





since(When) when is_integer(When) ->

    case epoch() - When of
        Ago     when Ago > 0     -> {Ago,          ago};
        FromNow when FromNow < 0 -> {-1 * FromNow, from_now};
        _                        -> now
    end.





about(First, Second) when First > Second -> about_range(First, Second) ++ " before";
about(First, Second) when First < Second -> about_range(First, Second) ++ " after";
about(First, Second)                     -> "at the same time".

about(When) ->
    Second = epoch(),
    if
        When > Second -> about_range(When, Second) ++ " ago";
        When < Second -> about_range(When, Second) ++ " from now";
        true          -> "now"
    end.





drop_cycle(LastDelta, [{NextRange, NextLabel} | FollowPair], LastLabel) ->





about_range(First, Second) ->

     Ranges = [
         { 1, "second" }
     ],

     Delta = abs(First - Second),
     integer_to_list(Delta) ++ " " ++ "seconds".

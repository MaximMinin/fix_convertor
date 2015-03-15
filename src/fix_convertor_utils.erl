%% @author maxim
%% @doc @todo Add description to fix_convertor_utils.


-module(fix_convertor_utils).

%% ====================================================================
%% API functions
%% ====================================================================
-export([bin_to_num/1,
         bin_to_datetime/1, datetime_to_fixstring/1,
         bin2utctime/1, utctime2fixstring/1,
         bin2utcdate/1, utcdate2fixstring/1,
         bin2localmktdate/1, localmktdate2fixstring/1,
         bin2monthyear/1, monthyear2fixstring/1]).


bin_to_num(Bin) ->
    N = erlang:binary_to_list(Bin),
    case string:to_float(N) of
        {error,no_float} -> erlang:list_to_integer(N);
        {F,_Rest} -> F
    end.

bin_to_datetime(Bin) ->
    T = erlang:binary_to_list(Bin),
    {D, H,M,S,_Ms} = case string:tokens(T, "-:.") of
        [D1,H1,M1,S1] -> {D1,H1,M1,S1,0};
        [D2,H2,M2,S2,Ms2] -> {D2,H2,M2,S2,Ms2}
    end,
    Y = list_to_integer(string:substr(D, 1, 4)),
    Month = list_to_integer(string:substr(D, 5, 2)),
    Day = list_to_integer(string:substr(D,7)) ,
    {{Y, Month, Day}, {list_to_integer(H), 
                       list_to_integer(M),
                       list_to_integer(S)}}.

datetime_to_fixstring({{Year, Month, Day}, {Hour, Minute, Second}}) -> 
    lists:concat([integer_to_list(Year),
                                 getTwoDigits(Month),
                                 getTwoDigits(Day),
                                 "-",
                                 getTwoDigits(Hour),
                                 ":",
                                 getTwoDigits(Minute),
                                 ":",
                                 getTwoDigits(Second)]).

bin2utctime(Bin) ->
    T = erlang:binary_to_list(Bin),
    {H,M,S,_Ms} = case string:tokens(T, ":.") of
        [H1,M1,S1] -> {H1,M1,S1,0};
        [H2,M2,S2,Ms2] -> {H2,M2,S2,Ms2}
    end,
    {list_to_integer(H), list_to_integer(M), list_to_integer(S)}.

utctime2fixstring({Hour, Minute, Second}) -> 
    lists:concat([getTwoDigits(Hour),
                  ":",
                  getTwoDigits(Minute),
                  ":",
                  getTwoDigits(Second)]).

bin2utcdate(Bin) ->
    D = erlang:binary_to_list(Bin),
    Y = list_to_integer(string:substr(D, 1, 4)),
    Month = list_to_integer(string:substr(D, 5, 2)),
    Day = list_to_integer(string:substr(D,7)) ,
    {Y, Month, Day}.

utcdate2fixstring({Year, Month, Day}) -> 
    lists:concat([integer_to_list(Year),
                  getTwoDigits(Month),
                  getTwoDigits(Day)
                 ]).

bin2localmktdate(Bin) ->
    S = erlang:binary_to_list(Bin),
    [Y1,Y2,Y3,Y4,M1,M2,D1,D2] = S,
    {list_to_integer([Y1,Y2,Y3,Y4]), 
     list_to_integer([M1,M2]),
     list_to_integer([D1,D2])}.

localmktdate2fixstring({Y, M, D}) -> 
    lists:concat([Y,
                  getTwoDigits(M),
                  getTwoDigits(D)]).

bin2monthyear(Bin)->
    S = erlang:binary_to_list(Bin),
    case string:len(S) of
        6 -> 
            [Y1,Y2,Y3,Y4,M1,M2] = S,
            {list_to_integer([Y1,Y2,Y3,Y4]),
             list_to_integer([M1,M2]),
             undefined};
        8 -> 
            [Y1,Y2,Y3,Y4,M1,M2, D1,D2] = S,
            try
                {list_to_integer([Y1,Y2,Y3,Y4]),
                    list_to_integer([M1,M2]),
                    list_to_integer([D1,D2])}
            catch _:_ ->
                    {list_to_integer([Y1,Y2,Y3,Y4]),
                    list_to_integer([M1,M2]),
                    list_to_existing_atom([D1,D2])}
            end
    end.

monthyear2fixstring({Y,M,undefined}) ->
    lists:concat([Y, getTwoDigits(M)]);
monthyear2fixstring({Y,M,D}) when is_integer(D) ->
    lists:concat([Y, getTwoDigits(M), getTwoDigits(D)]);
monthyear2fixstring({Y,M,D}) ->
    lists:concat([Y, getTwoDigits(M), atom_to_list(D)]).

%% ====================================================================
%% Local Functions
%% ====================================================================
getTwoDigits(Int) when Int < 10 ->
    lists:concat(["0",Int]);
getTwoDigits(Int) ->
    erlang:integer_to_list(Int).

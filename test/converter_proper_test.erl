%% @author Maxim Minin
%% @doc @todo Add description to converter_proper_test.


-module(converter_proper_test).
%%
%% Include files
%%
-include_lib("proper/include/proper.hrl").   
-include_lib("eunit/include/eunit.hrl"). 
%% ====================================================================
%% API functions
%% ====================================================================
-compile(export_all).


check_convertor_specs_test_() ->
    {timeout, 1200, [{?LINE, fun() ->
    ?assertEqual([], proper:check_specs(fix_convertor))
    end}]}.

check_convertor_40_test_() ->
    {timeout, 1200, [{?LINE, fun() ->
    ?assert(proper:quickcheck(proper:numtests(1000, fix_4_0_convertor_proper_test:prop_convertor())))
    end}]}.

check_convertor_41_test_() ->
    {timeout, 1200, [{?LINE, fun() ->
    ?assert(proper:quickcheck(proper:numtests(1000, fix_4_1_convertor_proper_test:prop_convertor())))
    end}]}.

check_convertor_42_test_() ->
    {timeout, 1200, [{?LINE, fun() ->
    ?assert(proper:quickcheck(proper:numtests(2000, fix_4_2_convertor_proper_test:prop_convertor())))
    end}]}.

check_convertor_43_test_() ->
    {timeout, 1200, [{?LINE, fun() ->
    ?assert(proper:quickcheck(proper:numtests(3000, fix_4_3_convertor_proper_test:prop_convertor())))
    end}]}.

check_convertor_44_test_() ->
    {timeout, 1200, [{?LINE, fun() ->
    ?assert(proper:quickcheck(proper:numtests(4000, fix_4_4_convertor_proper_test:prop_convertor())))
    end}]}.

check_convertor_50_test_() ->
    {timeout, 1200, [{?LINE, fun() ->
    ?assert(proper:quickcheck(proper:numtests(5000, fix_5_0_convertor_proper_test:prop_convertor())))
    end}]}.

check_convertor_50sp1_test_() ->
    {timeout, 1200, [{?LINE, fun() ->
    ?assert(proper:quickcheck(proper:numtests(6000, fix_5_0_sp1_convertor_proper_test:prop_convertor())))
    end}]}.

check_convertor_50sp2_test_() ->
    {timeout, 1200, [{?LINE, fun() ->
    ?assert(proper:quickcheck(proper:numtests(7000, fix_5_0_sp2_convertor_proper_test:prop_convertor())))
    end}]}.



%% ====================================================================
%% Internal functions
%% ====================================================================



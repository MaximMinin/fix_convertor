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
    ?assertEqual([], proper:check_specs(convertor)),
    ?assert(proper:quickcheck(proper:numtests(20000, fix_4_0_convertor_proper_test:prop_convertor()))),
    ?assert(proper:quickcheck(proper:numtests(20000, fix_4_1_convertor_proper_test:prop_convertor()))),
    ?assert(proper:quickcheck(proper:numtests(20000, fix_4_2_convertor_proper_test:prop_convertor()))),
    ?assert(proper:quickcheck(proper:numtests(20000, fix_4_3_convertor_proper_test:prop_convertor()))),
    ?assert(proper:quickcheck(proper:numtests(20000, fix_4_4_convertor_proper_test:prop_convertor()))),
    ?assert(proper:quickcheck(proper:numtests(20000, fix_5_0_convertor_proper_test:prop_convertor()))),
    ?assert(proper:quickcheck(proper:numtests(20000, fix_5_0_sp1_convertor_proper_test:prop_convertor()))),
    ?assert(proper:quickcheck(proper:numtests(20000, fix_5_0_sp2_convertor_proper_test:prop_convertor())))
    end}]}.
%% ====================================================================
%% Internal functions
%% ====================================================================



-type fix_version () :: 
          'FIX 4.0' |
          'FIX 4.1' | 'FIX 4.2' |
          'FIX 4.3' | 'FIX 4.4'| 
          'FIX 5.0' | 'FIX 5.0 SP 1' |
          'FIX 5.0 SP 2'.

-type fix_util_module() ::
                util_convert_to_record_FIX_4_0 |
                util_convert_to_record_FIX_4_1 |
                util_convert_to_record_FIX_4_2 |
                util_convert_to_record_FIX_4_3 |
                util_convert_to_record_FIX_4_4 |
                util_convert_to_record_FIX_5_0 |
                util_convert_to_record_FIX_5_0SP1 |
                util_convert_to_record_FIX_5_0SP2.

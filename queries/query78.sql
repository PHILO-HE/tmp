select
id,
get_json_object(rit_stats_json, '$.col_80511') as col_80511,
col_62986,
col_43924,
col_30973,
get_json_object(rit_stats_json, '$.rit') as rit,
get_json_object(rit_stats_json, '$.col_7182') as col_47217,
get_json_object(rit_stats_json, '$.capital_id') as col_79149,
get_json_object(rit_stats_json, '$.col_65902') as col_65902,
col_8394unixcol_24989(col_69194) as col_62384,
col_8394unixcol_24989(col_37449) as col_41724,
col_8394unixcol_24989(col_77931) as col_77931,
col_8394unixcol_24989(col_86387) as col_86387,
col_78590 as col_54044
from(
    select
      id, col_55183 as col_30973, col_62986, col_43924, col_69194, col_37449, col_77931, col_86387, col_78590,
      if(instr(rit_stats_item,'}')=0, concat(rit_stats_item, '}'), rit_stats_item) as rit_stats_json
    from (
        select
          id, col_55183, col_62986, col_43924, col_69194, col_37449, col_77931, col_86387, col_94761, col_78590
        from tbl_7196
        where col_77093='20200831'
    ) creative_rit_detail_col_65902
    LATERAL VIEW explode(split(translate(creative_rit_detail_col_65902.col_94761, '[]',''),'},')) col_65902_table AS rit_stats_item
)rit_stats_map_infos
limit 10000

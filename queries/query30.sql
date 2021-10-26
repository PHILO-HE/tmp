select
    col_65263 as key,
    to_json( map(
        'vv', sum(vv),
        'uv', col_35211(case when vv > 0 then 1 end),
        'col_85978', sum(col_85978),
        'col_28788', col_35211(case when col_85978 > 0 then 1 end),
        'col_36592', sum(col_36592),
        'col_15380', sum(case when col_36592 > 0 then 1 else 0 end),
        'col_94124', sum(col_94124),
        'col_24274', sum(case when col_94124 > 0 then 1 else 0 end),
        'col_36931', sum(col_36931),
        'col_60743', sum(case when col_36931 > 0 then 1 else 0 end),
        'col_56648', sum(col_56648),
        'col_14948', sum(case when col_56648 > 0 then 1 else 0 end),
        'col_50872', sum(col_50872),
        'col_81867', sum(case when col_50872 > 0 then 1 else 0 end),
        'discol_60653y_vv', sum(discol_60653y_vv),
        'col_2056', sum(col_2056),
        'col_34624', sum(col_34624),
        'poi_vv', sum(poi_vv),
        'poi_uv', sum(case when poi_vv > 0 then 1 else 0 end),
        'col_41753', sum(col_41753),
        'col_31255', sum(case when col_41753>0 then 1 else 0 end),
        'col_83898',sum(col_83898),
        'col_89717',sum(case when col_83898>0 then 1 else 0 end)

    ) ) as col_48685
from
(
    select
        coalesce(col_78590, 0) as col_65263,
        col_13174,
        sum(1) as vv,
        sum(case when col_77546 = 'homepage_hot' then 1 end) as col_85978,
        sum(case when col_77546 = 'homepage_col_18027' then 1 end) as col_36592,
        sum(case when col_77546 = 'personal_homepage' then 1 end) as col_94124,
        sum(case when col_77546 = 'others_homepage' then 1 end) as col_36931,
        sum(case when col_77546 in ('general_search', 'search_result') then 1 end) as col_56648,
        sum(case when col_77546 in ('message', 'chat') then 1 end) as col_50872,
        sum(case when col_77546 = 'discol_60653y' then 1 end) as discol_60653y_vv,
        sum(case when col_77546 = 'general_search' then 1 else 0 end) as col_2056,
        sum(case when col_77546 = 'search_result' then 1 else 0 end) as col_34624,
        sum(case when col_77546 = 'poi_page' then 1 else 0 end) as poi_vv,
        sum(case when col_77546 = 'homepage_fresh' then 1 else 0 end) as col_41753,
        sum(case when col_77546  IN ('homepage_long_video','long_video_detail_page') then 1 else 0 end) as col_83898
    from tbl_89
    where date = '20200831'
        and col_43492 = 'video_play'
    group by coalesce(col_78590,0), col_13174
) as temp
group by col_65263
limit 10000

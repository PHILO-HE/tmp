select
col_65263 as key,
to_json(map('col_10797', sum(col_10797),
            'col_46645', sum(col_46645),
            'col_77831', sum(col_77831),
            'col_87927', sum(col_87927),
            'col_504', sum(col_504),
            'col_70062', sum(col_70062),
            'col_12815', sum(col_12815),
            'poi_col_10797', sum(poi_col_10797),
            'col_71216', sum(col_71216),
            'col_30297', sum(col_30297)
)) as col_48685
from(
  select
  coalesce(col_78590, 0) as col_65263,
  col_13174,
  sum(cast(col_94815 as bigint)) as col_10797,
  sum(case when col_77546 = 'homepage_hot' then cast(col_94815 as bigint) end) as col_46645,
  sum(case when col_77546 = 'homepage_col_18027' then cast(col_94815 as bigint) end) as col_77831,
  sum(case when col_77546 in ('message', 'chat') then cast(col_94815 as bigint) end) as col_87927,
  sum(case when col_77546 = 'others_homepage' then cast(col_94815 as bigint) end) as col_504,
  sum(case when col_77546 = 'personal_homepage' then cast(col_94815 as bigint) end) as col_70062,
  sum(case when col_77546 in('general_search', 'search_result') then cast(col_94815 as bigint) end) as col_12815,
  sum(case when col_77546 = 'poi_page' then cast(col_94815 as bigint) end) as poi_col_10797,
  sum(case when col_77546 = 'homepage_fresh' then cast(col_94815 as bigint) end) as col_71216,
  sum(case when col_77546  IN ('homepage_long_video','long_video_detail_page') then cast(col_94815 as bigint) end) as col_30297
  from tbl_89
  where date='20200831' and col_43492='col_69856' and cast(col_94815 as bigint)>0 and cast(col_94815 as bigint)<86400000
  group by coalesce(col_78590, 0), col_13174
)x1 group by col_65263 cluster by key
limit 10000

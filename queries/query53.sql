select
    col_15440_info.os as os,
    col_15440_info.col_24229 as col_24229,
    col_35211(first_col_15440.col_3859) as first_col_14948_30s,
    col_35211(col_15440_info.col_3859) as first_search_dau
from
    (
        select
            col_3859, os, col_24229
        from
            m_device_distinct_clean
        where
            col_77093 = '2020-08-31'
            and col_24229 = 'video_article'
            and col_12611 >= '7.2.4'
            and os in ('ios','android')
        group by
            col_3859, os ,col_24229
    ) col_15440_info
    left join (
        select
            col_3859, col_30617
        from
            tbl_2990
        where
            date = '20200831'
            and app = 'video_article'
            and col_43492 = 'first_search'
            and col_12611 >= '7.2.4'
            and col_30617 in ('ios','android')
            and cast(col_19137 ['first_search_col_24989'] as bigint) > 0
            and cast(col_19137 ['first_search_col_24989'] as bigint) <= 30000
              and col_19137 ['col_95097'] in ('input','sug','search_history')
        group by
            col_3859, col_30617
    ) first_col_15440 on col_15440_info.col_3859 = cast(first_col_15440.col_3859 as bigint)
    and col_15440_info.os = first_col_15440.col_30617
group by
    col_15440_info.os,col_15440_info.col_24229
limit 10000

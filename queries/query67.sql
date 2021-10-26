SELECT
    COALESCE(group_index.col_78590, online_index.col_78590) as col_78590,
    CASE
        WHEN group_info.col_68653 in ('xigua_video','short_video') and substr(col_169,1,13) >= '2020-03-24 12' then col_70938
        ELSE COALESCE(col_53258, 0)
    END as col_53258,
    CASE
        WHEN group_info.col_68653 in ('xigua_video','short_video') and substr(col_169,1,13) >= '2020-03-24 12' then col_40444
        ELSE  COALESCE(col_18465, 0)
    END as col_18465,
    COALESCE(col_42247, 0) as col_42247,
    COALESCE(col_5302, 0) as col_5302,
    COALESCE(danmaku_cnt, 0) as danmaku_cnt,
    COALESCE(col_23844, 0) as col_23844,
    COALESCE(col_95987, 0) as col_95987,
    COALESCE(play_percent_sum, 0) as col_75728_sum,
    COALESCE(play_percent_cnt, 0) as col_75728_cnt,
    CASE
        WHEN group_info.col_68653 in ('xigua_video','short_video') and substr(col_169,1,13) >= '2020-03-24 12' then fans_col_70938
        ELSE  COALESCE(col_34039, 0)
    END as col_34039,
    CASE
        WHEN group_info.col_68653 in ('xigua_video','short_video') and substr(col_169,1,13) >= '2020-03-24 12' then fans_col_40444
        ELSE  COALESCE(col_64887, 0)
    END as col_64887,
    COALESCE(col_4807, 0) as col_4807,
    COALESCE(col_97839, 0) as col_97839,
    COALESCE(fans_danmaku_cnt, 0) as fans_danmaku_cnt,
    COALESCE(col_91362, 0) as col_91362,
    COALESCE(col_39347, 0) as col_39347,
    COALESCE(fans_play_percent_sum, 0) as fans_col_75728_sum,
    COALESCE(fans_play_percent_cnt, 0) as fans_col_75728_cnt,
    0 col_21448,
    0 col_81519,
    COALESCE(group_index.col_65263,online_index.col_65263) as col_65263,
    COALESCE(play_over_cnt,0) as play_over_cnt,
    COALESCE(fans_play_over_cnt,0) as fans_play_over_cnt,
    if(play_percent_cnt>0, COALESCE(play_percent_sum, 0)/COALESCE(play_percent_cnt, 0),0) as play_percent,
    if(fans_play_percent_cnt>0, COALESCE(fans_play_percent_sum, 0)/COALESCE(fans_play_percent_cnt, 0),0) as play_percent_2,
    pugc.col_68653
FROM
(
    SELECT
        col_78590,
        col_65263,
        sum(col_53258) as col_53258,
        sum(col_18465) as col_18465,
        sum(col_70938) as col_70938,
        sum(col_40444) as col_40444,
        sum(if(col_19617=1,col_53258,0)) as col_34039,
        sum(if(col_19617=1,col_18465,0)) as col_64887,
        sum(if(col_19617=1,col_70938,0)) as fans_col_70938,
        sum(if(col_19617=1,col_40444,0)) as fans_col_40444,
        sum(col_42247) as col_42247,
        sum(col_5302)  as col_5302,
        sum(col_23844) as col_23844,
        sum(if(col_19617>0,col_42247,0)) as col_4807,
        sum(if(col_19617>0,col_5302,0)) as col_97839,
        sum(if(col_19617>0,col_23844,0)) as col_91362
    FROM
        tbl_4171
    WHERE
        date='20200831'
    GROUP by
        col_78590,col_65263
)online_index
FULL JOIN
(
    SELECT
        col_78590,
        col_65263,
        sum(play_percent_sum) as play_percent_sum,
        sum(play_percent_cnt) as play_percent_cnt,
        sum(fans_play_percent_sum) as fans_play_percent_sum,
        sum(fans_play_percent_cnt) as fans_play_percent_cnt,
        sum(play_over_cnt) as play_over_cnt,
        sum(col_95987) as col_95987,
        sum(col_39347) as col_39347,
        sum(fans_play_over_cnt) as fans_play_over_cnt
    from
        dwm_mp_zhouzheht_percent_index_di
    where
        date = '20200831'
    group by col_78590,col_65263
) group_index on group_index.col_78590 = online_index.col_78590
                and group_index.col_65263 = online_index.col_65263
JOIN
(
                SELECT
                    col_78590,col_68653,col_65263,col_169
                FROM
                    tbl_4231
                where
                    date = greatest('20200831', '20200429')
                    and col_68653 in ('xigua_video','short_video')
) group_info on COALESCE(group_index.col_78590, online_index.col_78590) = group_info.col_78590
LEFT JOIN
(
        select
            col_35211(1) as danmaku_cnt,
            col_35211(if(col_19617_danmaku = 1, 1, null)) as fans_danmaku_cnt,
            col_65263 as col_78590,
            col_65263
        from
            dwd_danmaku_info_df
        where
            date = greatest('20200831','20200413')
            and substr(col_77931,1,10)= '2020-08-31'
            and service_id != 1250
        group by
            col_65263
)danmaku_info on COALESCE(group_index.col_78590, online_index.col_78590) = danmaku_info.col_78590
        and COALESCE(group_index.col_65263,online_index.col_65263) = danmaku_info.col_65263
JOIN (
        SELECT
            col_78590,
            col_75157,
            col_68653
        FROM
            tbl_4231
        WHERE
            date = '20200831'
            and col_68653 in  ('xigua_video','short_video')
    ) pugc ON COALESCE(group_index.col_78590, online_index.col_78590)  = pugc.col_78590
limit 10000

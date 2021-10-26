with  item_publish as
(
    select
        col_87630
        ,col_13174
        ,col_27490
        ,col_45204
        ,sum(col_91333) col_91333
        ,sum(col_40429) col_40429
        ,sum(col_39472) col_39472
        ,sum(col_82297) col_82297
        ,sum(col_16934) col_16934
        ,col_35211(1) col_8929
    from
    (
        select
                col_65263
               ,col_87630
               ,col_13174
        FROM
            tbl_8526
        WHERE
            date = '20200831'
            and FROM_UNIXTIME(col_77931, 'yyyyMMdd') <= '20200831'
            AND col_87630 > 0
            and col_13174>0
            AND col_28543 = 1128
    )q
    left join
    (
        select
             col_99537
            ,col_27490
            ,col_45204
        from tbl_5358
        where date='20200831'
    )w on  q.col_87630=w.col_99537
    left join
    (
        SELECT
                col_65263,
                col_91333,
                col_40429,
                col_39472,
                col_82297,
                col_16934
            FROM
                tbl_6912
            WHERE
                date = '20200831'
    )r on q.col_65263=r.col_65263
    group by col_87630
        ,col_13174
        ,col_27490
        ,col_45204
)

select
    a.col_13174
    ,nvl(col_3962,0) as col1
    ,nvl(col_97677,0) as col2
    ,nvl(col_88086,0) as col3
    ,nvl(col_88592,0) as col4
    ,nvl(col_83512,0) as col5
    ,nvl(col_46676,0) as col6

    ,last_launch_date
    ,nvl(last_launch_period,0) as col7

    ,nvl(storm_upload_song_cnt_all,0) as col8
    ,nvl(pgc_pgc_clip_upload_cnt_all,0) as col9
    ,nvl(confirm_song_cnt_all,0) as col10

    ,first_confirm_song_col_26122_id

    ,nvl(max_col_8929,0) as col11

    ,nvl(pgc_col_46676,0) as col12
    ,nvl(self_pgc_col_46676,0) as col13
    ,nvl(self_ugc_col_46676,0) as col14

    ,nvl(other_use_self_col_46676,0) as col15
    ,nvl(other_use_self_pgc_col_46676,0) as col16

    ,nvl(col_37627,0) as col17
    ,nvl(col_81910,0) as col18
    ,nvl(col_51825,0) as col19
    ,nvl(col_24047_all,0) as col20
    ,nvl(col_62156,0) as col21
    ,nvl(self_pgc_col_16934,0) as col22
    ,nvl(self_ugc_col_16934,0) as col23

    ,nvl(other_use_self_pgc_col_16934,0) as col24
    ,nvl(other_use_self_ugc_col_16934,0) as col25
    ,nvl(other_use_self_pgc_col_91333,0) as col26
    ,nvl(other_use_self_ugc_col_91333,0) as col27
from
(
    select
        col_13174
    from tbl_1537
    WHERE  date = '20200831'
    and col_87124 =1
)a
left join
(
    SELECT
        col_13174,
        col_60408 col_3962
    FROM tbl_9672
    WHERE
        date = '20200831'
)b ON a.col_13174 = b.col_13174
left join
(
    SELECT
        col_13174,
        col_8929,
        col_97677,
        col_88086,
        col_88592,
        col_83512,
        col_46676
    FROM
        tbl_9672
    WHERE   date = '20200831'

)c ON a.col_13174 = c.col_13174
left join
(

    select
        col_13174
        ,col_2188  last_launch_date
        ,DATEDIFF(col_8394unixcol_24989(unix_col_15250(date, 'yyyyMMdd'),'yyyy-MM-dd'),col_2188)  last_launch_period
    from tbl_213
    where date = '20200831'
    and col_2188 is not null and trim(col_2188)<>''

)d ON a.col_13174 = d.col_13174
left join
(
    SELECT
        col_13174,
        col_35211(DISTINCT  col_44131 )  storm_upload_song_cnt_all,
        col_35211(DISTINCT if(col_27490='pgc'  ,col_99537,null))  pgc_pgc_clip_upload_cnt_all,
        col_35211(DISTINCT if(col_23006 in (4,7) ,col_44131,null))   confirm_song_cnt_all
    from
    (
         select
        uid col_13174
        ,col_44131
        ,col_77931
        ,col_23006
        FROM  tbl_1877
        WHERE
            date = '20200831'
    )q
    left join
    (
        select
            id as col_99537
            ,'pgc' col_27490
            ,CASE WHEN CAST(get_json_object(col_28120, '$.song_mapping_id') AS BIGINT) > 0 THEN CAST(get_json_object(col_28120, '$.song_mapping_id') AS BIGINT)
                ELSE CAST(id * -1 AS BIGINT) END col_58008
        from tbl_6272
        where date='20200831'
    )w on q.col_44131=w.col_58008
    group by col_13174

)e ON a.col_13174 = e.col_13174
left join
(
    select col_13174,first_confirm_song_col_26122_id
    from
    (
        SELECT
            col_13174
            ,FIRST_VALUE(col_57827) OVER(PARTITION BY col_13174 ORDER BY col_77558 asc) AS first_confirm_song_col_26122_id
        from
        (
            select
            col_13174
            from tbl_1537
            WHERE  date = '20200831'
            and col_23006 =2
        )m
        join
        (
            SELECT uid ,col_44131 ,col_77558
            from tbl_1877
            WHERE  date = '20200831'
            and col_23006 IN (4,7)

        )n on m.col_13174=n.uid
        left join
        (

            SELECT  col_44131,col_57827
            from tbl_5733
            WHERE  date = '20200831'
        )o on n.col_44131 =o.col_44131

    )ff
    GROUP BY col_13174,first_confirm_song_col_26122_id

)f ON a.col_13174 = f.col_13174
left join
(

        select
            col_13174
            ,sum(if(col_27490='pgc',col_8929,0))   pgc_col_46676
            ,sum(if(col_27490='pgc' and col_13174= col_45204 ,col_8929,0)) self_pgc_col_46676
            ,sum(if(col_27490='ugc' and col_13174= col_45204 ,col_8929,0)) self_ugc_col_46676
        from item_publish
        group by col_13174

)h on a.col_13174=h.col_13174
left join
(
    select
        col_45204
        ,max(col_8929) max_col_8929
        ,sum(other_use_self_col_46676) other_use_self_col_46676
        ,sum(other_use_self_pgc_col_46676) other_use_self_pgc_col_46676
    from
    (
        SELECT
            col_45204
            ,col_87630
            ,sum(col_8929)  col_8929
            ,sum(col_8929) other_use_self_col_46676
            ,sum(if(col_27490='pgc' ,col_8929,0))  other_use_self_pgc_col_46676
        from  item_publish
        group by col_45204,col_87630
    )k
    group by col_45204
)i on a.col_13174=i.col_45204
left join
(
    select
     col_13174
    ,sum(col_91333) col_37627
    ,sum(col_40429) col_81910
    ,sum(col_39472) col_51825
    ,sum(col_82297) col_24047_all
    ,sum(col_16934) col_62156
    ,sum(if(col_13174=col_45204 and col_27490='pgc',col_16934,0))   self_pgc_col_16934
    ,sum(if(col_13174=col_45204 and col_27490='ugc',col_16934,0))   self_ugc_col_16934
    from
    (
        SELECT * from item_publish
    )j1
    group by col_13174

)j on a.col_13174=j.col_13174
left join
(
    select
     col_45204
    ,sum(if(col_27490='pgc',col_16934,0))   other_use_self_pgc_col_16934
    ,sum(if(col_27490='ugc',col_16934,0))   other_use_self_ugc_col_16934
    ,sum(if(col_27490='pgc',col_91333,0))   other_use_self_pgc_col_91333
    ,sum(if(col_27490='ugc',col_91333,0))   other_use_self_ugc_col_91333
    from
    (
        SELECT * from item_publish
    )h1
    group by col_45204
)k on a.col_13174=k.col_45204
limit 10000

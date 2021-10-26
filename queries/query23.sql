select
    anchor_retain_info.col_76332
    ,col_54902
    ,col_25960
    ,col_30103
    ,col_17398
    ,nvl(anchor_shop_info.is_shop_anchor,0)         as is_shop_anchor
    ,first_ecom_live_date                           as first_ecom_live_date
    ,nvl(anchor_retain_info.col_79891om_live_1d,0)      as col_79891om_live_1d
    ,nvl(anchor_retain_info.col_79891om_live_1dbf,0)    as col_79891om_live_1dbf
    ,nvl(anchor_retain_info.col_79891om_live_2dbf,0)    as col_79891om_live_2dbf
    ,nvl(anchor_retain_info.col_79891om_live_3dbf,0)    as col_79891om_live_3dbf
    ,nvl(anchor_retain_info.col_79891om_live_4dbf,0)    as col_79891om_live_4dbf
    ,nvl(anchor_retain_info.col_79891om_live_5dbf,0)    as col_79891om_live_5dbf
    ,nvl(anchor_retain_info.col_79891om_live_6dbf,0)    as col_79891om_live_6dbf
    ,nvl(anchor_retain_info.col_79891om_live_7dbf,0)    as col_79891om_live_7dbf
    ,nvl(anchor_retain_info.col_79891om_live_8dbf,0)    as col_79891om_live_8dbf
    ,nvl(anchor_retain_info.col_79891om_live_9dbf,0)    as col_79891om_live_9dbf
    ,nvl(anchor_retain_info.col_79891om_live_10dbf,0)   as col_79891om_live_10dbf
    ,nvl(anchor_retain_info.col_79891om_live_11dbf,0)   as col_79891om_live_11dbf
    ,nvl(anchor_retain_info.col_79891om_live_12dbf,0)   as col_79891om_live_12dbf
    ,nvl(anchor_retain_info.col_79891om_live_13dbf,0)   as col_79891om_live_13dbf
    ,nvl(anchor_retain_info.col_79891om_live_14dbf,0)   as col_79891om_live_14dbf
    ,nvl(anchor_retain_info.col_79891om_live_29dbf,0)   as col_79891om_live_29dbf
    ,nvl(anchor_retain_info.col_79891om_live_30dbf,0)   as col_79891om_live_30dbf
    ,nvl(anchor_retain_info.col_79891om_live_7d,0)      as col_79891om_live_7d
    ,nvl(anchor_retain_info.col_79891om_live_14d,0)     as col_79891om_live_14d
    ,nvl(anchor_retain_info.col_79891om_live_30d,0)     as col_79891om_live_30d
    ,nvl(anchor_retain_info.col_79891om_retain_1dbf,0)  as col_79891om_retain_1dbf
    ,nvl(anchor_retain_info.col_79891om_retain_6dbf,0)  as col_79891om_retain_6dbf
    ,nvl(anchor_retain_info.col_79891om_retain_13dbf,0) as col_79891om_retain_13dbf
    ,nvl(anchor_retain_info.col_79891om_retain_29dbf,0) as col_79891om_retain_29dbf
    ,nvl(anchor_retain_info.col_79891om_retain_7d,0)    as col_79891om_retain_7d
    ,nvl(anchor_retain_info.col_79891om_retain_14d,0)   as col_79891om_retain_14d
    ,nvl(anchor_retain_info.col_79891om_retain_30d,0)   as col_79891om_retain_30d
from
(
    select
        col_76332
        ,first_ecom_live_date
        ,col_79891om_live_1d
        ,col_79891om_live_1dbf
        ,col_79891om_live_2dbf
        ,col_79891om_live_3dbf
        ,col_79891om_live_4dbf
        ,col_79891om_live_5dbf
        ,col_79891om_live_6dbf
        ,col_79891om_live_7dbf
        ,col_79891om_live_8dbf
        ,col_79891om_live_9dbf
        ,col_79891om_live_10dbf
        ,col_79891om_live_11dbf
        ,col_79891om_live_12dbf
        ,col_79891om_live_13dbf
        ,col_79891om_live_14dbf
        ,col_79891om_live_29dbf
        ,col_79891om_live_30dbf
        ,col_79891om_live_7d
        ,col_79891om_live_14d
        ,col_79891om_live_30d
        ,if(col_79891om_live_1dbf = 1 and col_79891om_live_1d = 1,1,0) as col_79891om_retain_1dbf
        ,if(col_79891om_live_6dbf = 1 and col_79891om_live_1d = 1,1,0) as col_79891om_retain_6dbf
        ,if(col_79891om_live_13dbf = 1 and col_79891om_live_1d = 1,1,0) as col_79891om_retain_13dbf
        ,if(col_79891om_live_29dbf = 1 and col_79891om_live_1d = 1,1,0) as col_79891om_retain_29dbf
        ,if(col_79891om_live_7d = 1 and col_79891om_live_7dbf = 1,1,0)   as col_79891om_retain_7d
        ,if(col_79891om_live_14d = 1 and col_79891om_live_14dbf = 1,1,0) as col_79891om_retain_14d
        ,if(col_79891om_live_30d = 1 and col_79891om_live_30dbf = 1,1,0) as col_79891om_retain_30d
    from
    (
        select
            col_76332
            ,first_ecom_live_date
            ,max(if((live_col_64292t_date <= '20200831' and (live_end_date is null or live_end_date >= '20200831')),1,0))       as col_79891om_live_1d
            ,max(if((live_col_64292t_date <= '${date-1}' and (live_end_date is null or live_end_date >= '${date-1}')),1,0))   as col_79891om_live_1dbf
            ,max(if((live_col_64292t_date <= '${date-2}' and (live_end_date is null or live_end_date >= '${date-2}')),1,0))   as col_79891om_live_2dbf
            ,max(if((live_col_64292t_date <= '${date-3}' and (live_end_date is null or live_end_date >= '${date-3}')),1,0))   as col_79891om_live_3dbf
            ,max(if((live_col_64292t_date <= '${date-4}' and (live_end_date is null or live_end_date >= '${date-4}')),1,0))   as col_79891om_live_4dbf
            ,max(if((live_col_64292t_date <= '${date-5}' and (live_end_date is null or live_end_date >= '${date-5}')),1,0))   as col_79891om_live_5dbf
            ,max(if((live_col_64292t_date <= '${date-6}' and (live_end_date is null or live_end_date >= '${date-6}')),1,0))   as col_79891om_live_6dbf
            ,max(if((live_col_64292t_date <= '${date-7}' and (live_end_date is null or live_end_date >= '${date-7}')),1,0))   as col_79891om_live_7dbf
            ,max(if((live_col_64292t_date <= '${date-8}' and (live_end_date is null or live_end_date >= '${date-8}')),1,0))   as col_79891om_live_8dbf
            ,max(if((live_col_64292t_date <= '${date-9}' and (live_end_date is null or live_end_date >= '${date-9}')),1,0))   as col_79891om_live_9dbf
            ,max(if((live_col_64292t_date <= '${date-10}' and (live_end_date is null or live_end_date >= '${date-10}')),1,0)) as col_79891om_live_10dbf
            ,max(if((live_col_64292t_date <= '${date-11}' and (live_end_date is null or live_end_date >= '${date-11}')),1,0)) as col_79891om_live_11dbf
            ,max(if((live_col_64292t_date <= '${date-12}' and (live_end_date is null or live_end_date >= '${date-12}')),1,0)) as col_79891om_live_12dbf
            ,max(if((live_col_64292t_date <= '${date-13}' and (live_end_date is null or live_end_date >= '${date-13}')),1,0)) as col_79891om_live_13dbf
            ,max(if((live_col_64292t_date <= '${date-14}' and (live_end_date is null or live_end_date >= '${date-14}')),1,0)) as col_79891om_live_14dbf
            ,max(if((live_col_64292t_date <= '${date-29}' and (live_end_date is null or live_end_date >= '${date-29}')),1,0)) as col_79891om_live_29dbf
            ,max(if((live_col_64292t_date <= '${date-30}' and (live_end_date is null or live_end_date >= '${date-30}')),1,0)) as col_79891om_live_30dbf
            ,max(if(
                (live_col_64292t_date <= '20200831' and live_col_64292t_date >= '${date-6}')
                or (live_col_64292t_date < '${date-6}' and (live_end_date is null or live_end_date >= '${date-6}')),1,0)
                ) as col_79891om_live_7d
            ,max(if(
                (live_col_64292t_date <= '20200831' and live_col_64292t_date >= '${date-13}')
                or (live_col_64292t_date < '${date-13}' and (live_end_date is null or live_end_date >= '${date-13}')),1,0)
                ) as col_79891om_live_14d
            ,max(if(
                (live_col_64292t_date <= '20200831' and live_col_64292t_date >= '${date-29}')
                or (live_col_64292t_date < '${date-29}' and (live_end_date is null or live_end_date >= '${date-29}')),1,0)
                ) as col_79891om_live_30d
        from
        (
            select
                col_76332
                ,col_8394unixcol_24989(col_74054,'yyyyMMdd') as live_col_64292t_date
                ,col_8394unixcol_24989(col_52825,'yyyyMMdd') as live_end_date
                ,col_74054
                ,min(col_8394unixcol_24989(col_74054,'yyyyMMdd'))over(partition by col_76332)    as first_ecom_live_date
            from
            (
                select
                    *
                    ,row_number() over(
                    partition by col_63175,
                    col_76332,
                    col_8527
                    col_52468 by
                        date col_48760
                    ) as col_30258
                from tbl_4495
                where date <='20200831'
                and col_8527 = 10
                and col_28543 = 1128
            )ecom_live_all
            where col_30258=1
        )live_all_t1
        group by
            col_76332
            ,first_ecom_live_date
    )t1
)anchor_retain_info
left outer join
(
    select
        col_76332
        ,col_54902
        ,col_25960
        ,col_30103
        ,col_17398
    from tbl_9551
    where date = '20200831'
    and col_8527 = 10
    and col_28543 = 1128
)anchor_col_15440_info
on anchor_retain_info.col_76332 = anchor_col_15440_info.col_76332
left outer join
(
    select
        col_47854 as col_76332
        ,1 as is_shop_anchor
    from tbl_6168
    where date = '20200831'
    and col_68137 = 3
    and col_44192 = 2
    and col_47854 <> 0
    group by
        col_47854
)anchor_shop_info
on anchor_retain_info.col_76332 = anchor_shop_info.col_76332
limit 10000

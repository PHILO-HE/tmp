with today as(
    select
        col_28499
        ,sum(case when col_69546_pv>0 then 1 else 0 end) col_69546_uv
        ,sum(case when show_pv>0 then 1 else 0 end) col_47732
        ,os
        ,'today' as col_24989_window
    from
        (
            select
                col_28499
                ,col_3859
                ,os
                ,sum(case when col_93433 = '20200831'
                    and col_82280>0 then 1 else 0 end)     col_69546_pv
                ,sum(case when (col_93433 = '20200831' or col_93433 is null)
                    and col_81323>0 then 1 else 0 end)            show_pv
            from
                tbl_767
            where
                dt = '20200831' and col_77093 = '20200831'
            group by
                col_28499, col_3859, os
        )t1
    where
        show_pv>0
    group by
        col_28499, os
),
fourteen_days as(
    select
        col_28499
        ,sum(case when col_69546_pv>0 then 1 else 0 end) col_69546_uv
        ,sum(case when show_pv>0 then 1 else 0 end) col_47732
        ,os
        ,'fourteen_days' as col_24989_window
    from
        (
            select
                col_28499
                ,col_3859
                ,os
                ,sum(case when col_93433 = col_77093
                    and col_82280>0 then 1 else 0 end)     col_69546_pv
                ,sum(case when (col_93433 = col_77093 or col_93433 is null)
                    and col_81323>0 then 1 else 0 end)            show_pv
            from
                tbl_767
            where
                dt = '20200831' and col_77093 >= '${date-13}'
            group by
                col_28499, col_3859, os
        )t2
    where
        show_pv>0
    group by
        col_28499, os
),
history as(
    select
        col_28499
        ,sum(case when col_69546_pv>0 then 1 else 0 end) col_69546_uv
        ,sum(case when show_pv>0 then 1 else 0 end) col_47732
        ,os
        ,'history' as col_24989_window
    from
        (
            select
                col_28499
                ,col_3859
                ,os
                ,sum(case when col_93433 = col_77093
                    and col_82280>0 then 1 else 0 end)     col_69546_pv
                ,sum(case when (col_93433 = col_77093 or col_93433 is null)
                    and col_81323>0 then 1 else 0 end)            show_pv
            from
                tbl_767
            where
                dt = '20200831'
            group by
                col_28499, col_3859, os
        )t3
    where
        show_pv>0
    group by
        col_28499, os
)

select
    col_28499
    ,sum(col_69546_uv)   col_69546_uv
    ,sum(col_47732)   col_47732
    ,'all'          os
    ,'today'    col_24989_window
from
    today
group by
    col_28499
union all
select
    col_28499
    ,sum(col_69546_uv)       col_69546_uv
    ,sum(col_47732)       col_47732
    ,'all'              os
    ,'fourteen_days'    col_24989_window
from
    fourteen_days
group by
    col_28499
union all
select
    col_28499
    ,sum(col_69546_uv)   col_69546_uv
    ,sum(col_47732)   col_47732
    ,'all'          os
    ,'history'      col_24989_window
from
    history
group by
    col_28499
union all
select
    col_28499
    ,col_69546_uv
    ,col_47732
    ,os
    ,col_24989_window
from
    today
union all
select
    col_28499
    ,col_69546_uv
    ,col_47732
    ,os
    ,col_24989_window
from
    fourteen_days
union all
select
    col_28499
    ,col_69546_uv
    ,col_47732
    ,os
    ,col_24989_window
from
    history

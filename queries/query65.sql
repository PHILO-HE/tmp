with book_col_69546_history_festival as
(
    select
        a.col_28499
        ,a.col_78590
        ,a.col_3859
        ,col_77093
        ,col_93433
        ,a.is_col_69546er_col_69546
        ,a.is_listen
        ,a.col_6437
        ,a.col_56458
        ,col_96613
        ,col_24229
        ,a.dt
from
(
    select
        col_28499
        ,col_78590
        ,col_3859
        ,col_77093
        ,col_93433
        ,if(col_82280>0,1,0) as is_col_69546er_col_69546
        ,if(col_73575>0,1,0) as is_listen
        ,col_6437
        ,col_56458
        ,col_96613
        ,dt
        ,col_24229
    from
        tbl_767
    where
        dt = '20200831'
        and col_24229 = 'novelapp'
        and col_78590 is not null
        and (col_82280 > 0 or col_73575 > 0)
) a
left join
(
    select
        col_3859
        ,dt
    from
        tbl_3718
    where
        dt >= '20200117' and dt <= '20200124'
        and col_82170='spring_festival'
        and col_24229='novelapp'
    group by
        col_3859
        ,dt
) b on a.col_3859 = b.col_3859 and a.col_77093=b.dt
where
    b.col_3859 is null
)
,book_group_col_52468_info as(
    select
        t1.col_28499
        ,t1.col_65263
        ,row_number()       over(partition by t1.col_28499 col_52468 by t1.col_52468 asc)     rownum
        ,row_number()       over(partition by t1.col_28499 col_52468 by t1.col_52468 col_48760)    rownum_col_48760
        ,col_35211(t1.col_65263)  over(partition by t1.col_28499) all_group_cnt
    from
    (
        select
            col_28499
            ,col_65263
            ,col_52468
        from
            tbl_1835
        where
            dt='20200831'
            and col_28499>0
            and col_78590>0
            and col_23006 in (1, 6)
    )t1
)

select
    t1.col_28499
    ,nvl(t1.first_group_col_69546_uv_t14,0)          first_group_col_69546_uv_t14
    ,nvl(case when t1.d50_col_69546_uv_t14>t1.first_group_col_69546_uv_t14     then t1.first_group_col_69546_uv_t14     else t1.d50_col_69546_uv_t14   end,0) d50_col_69546_uv_t14
    ,nvl(case when t1.d200_col_69546_uv_t14>t1.d50_col_69546_uv_t14            then t1.d50_col_69546_uv_t14    else t1.d200_col_69546_uv_t14           end,0) d200_col_69546_uv_t14
    ,nvl(case when t1.d400_col_69546_uv_t14>t1.d200_col_69546_uv_t14           then t1.d200_col_69546_uv_t14    else t1.d400_col_69546_uv_t14          end,0) d400_col_69546_uv_t14
    ,nvl(t2.whole_book_col_69546_end_uv_t14,0)       whole_book_col_69546_end_uv_t14
    ,nvl(t1.first_group_col_69546_uv_history,0)      first_group_col_69546_uv_history
    ,nvl(case when t1.d50_col_69546_uv_history>t1.first_group_col_69546_uv_history    then t1.first_group_col_69546_uv_history     else t1.d50_col_69546_uv_history end,0)  d50_col_69546_uv_history
    ,nvl(case when t1.d200_col_69546_uv_history>t1.d50_col_69546_uv_history           then t1.d50_col_69546_uv_history     else t1.d200_col_69546_uv_history         end,0) d200_col_69546_uv_history
    ,nvl(case when t1.d400_col_69546_uv_history>t1.d200_col_69546_uv_history          then t1.d200_col_69546_uv_history    else t1.d400_col_69546_uv_history        end,0)  d400_col_69546_uv_history
    ,nvl(t2.whole_book_col_69546_end_uv_history,0)   whole_book_col_69546_end_uv_history
    ,nvl(cnt9_col_48760_col_69546_uv_history,0)           cnt9_col_48760_col_69546_uv_history
from
(
    select
        t1.col_28499
        ,max(case when t1.rownum in (1,2,3) then col_69546_uv_t14 else 0 end)        first_group_col_69546_uv_t14
        ,max(case when t1.rownum in (1,2,3) then col_69546_uv_history else 0 end)    first_group_col_69546_uv_history
        ,percentile(case when t1.rownum between 46  and 55   then col_69546_uv_t14 end,0.5) d50_col_69546_uv_t14
        ,percentile(case when t1.rownum between 196 and 205  then col_69546_uv_t14 end,0.5) d200_col_69546_uv_t14
        ,percentile(case when t1.rownum between 396 and 405  then col_69546_uv_t14 end,0.5) d400_col_69546_uv_t14
        ,percentile(case when t1.rownum between 46  and 55   then col_69546_uv_history end,0.5) d50_col_69546_uv_history
        ,percentile(case when t1.rownum between 196 and 205  then col_69546_uv_history end,0.5) d200_col_69546_uv_history
        ,percentile(case when t1.rownum between 396 and 405  then col_69546_uv_history end,0.5) d400_col_69546_uv_history
        ,sum(case when t1.rownum_col_48760=9  then col_69546_uv_history end) cnt9_col_48760_col_69546_uv_history
    from
    (
        select
            t1.col_28499
            ,t1.col_65263
            ,t1.rownum
            ,t1.rownum_col_48760
            ,nvl(t2.col_69546_uv_history,0)  col_69546_uv_history
            ,nvl(t2.col_69546_uv_t14,0)      col_69546_uv_t14
        from
        (
            select
                col_28499
                ,col_65263
                ,rownum
                ,rownum_col_48760
            from
                book_group_col_52468_info
        )t1 left outer join
        (
            select
                col_28499
                ,col_78590
                ,col_35211(distinct case when col_77093>='${date-13}' and col_93433 between '${date-13}' and '${date-7}' then col_3859 end) col_69546_uv_t14
                ,col_35211(distinct col_3859) col_69546_uv_history
            from
                book_col_69546_history_festival
            where
                dt='20200831'
                and col_24229='novelapp'
                and (col_3859 is not null or cast(col_3859 as bigint)<>0)
                and col_78590>0
                and col_28499>0
            group by
                col_28499
                ,col_78590
        )t2 on t1.col_65263=t2.col_78590 and t1.col_28499=t2.col_28499
    )t1
    group by
        t1.col_28499
)t1 left outer join
(
    select
        t1.col_28499
        ,col_35211(distinct case when t2.group_cnt_t14/t1.all_group_cnt>=0.3        and is_col_69546_end_t14=1      then t2.col_3859 end) whole_book_col_69546_end_uv_t14
        ,col_35211(distinct case when t2.group_cnt_history/t1.all_group_cnt>=0.3    and is_col_69546_end_history=1  then t2.col_3859 end) whole_book_col_69546_end_uv_history
    from
    (
        select
            col_28499
            ,all_group_cnt
        from
            book_group_col_52468_info
        group by
            col_28499
            ,all_group_cnt
    )t1 left outer join
    (
        select
            col_28499
            ,col_3859
            ,col_35211(distinct case when col_77093>='${date-13}' and col_93433 between '${date-13}' and '${date-7}' then col_78590 end) group_cnt_t14
            ,max(case when col_77093>='${date-13}' and col_93433 between '${date-13}' and '${date-7}' and col_6137>0 then 1 else 0 end) is_col_69546_end_t14
            ,col_35211(distinct col_78590) group_cnt_history
            ,max(case when col_6137>0 then 1 else 0 end) is_col_69546_end_history
        from
            tbl_767
        where
            dt='20200831'
            and col_24229='novelapp'
            and (col_3859 is not null or cast(col_3859 as bigint)<>0)
            and col_78590>0
            and col_28499>0
            and col_82280 > 0
        group by
            col_28499
            ,col_3859
    )t2 on t1.col_28499=t2.col_28499
    group by
        t1.col_28499
)t2 on t1.col_28499=t2.col_28499
limit 10000

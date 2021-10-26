select
    t1.col_28499
    ,t2.col_69546_all_uv
    ,t2.col_69546_today_uv
    ,t2.col_69546_new_today_uv
    ,t1.col_19334_today_uv
    ,t1.col_19334_today_pv
    ,t1.col_19334_today_sum/t1.col_19334_today_pv   col_19334_today_avg
    ,t1.col_19334_all_uv
    ,t1.col_19334_all_pv
    ,t1.col_19334_all_sum/t1.col_19334_all_pv       col_19334_all_avg
    ,t1.book_col_31301_today_uv
    ,t1.book_col_31301_today_pv
    ,t1.hot_book_col_31301_today_uv
    ,t1.hot_book_col_31301_today_pv
    ,t1.book_col_31301_all_uv
    ,t1.book_col_31301_all_pv
    ,t1.hot_book_col_31301_all_uv
    ,t1.hot_book_col_31301_all_pv
    ,t1.book_col_31301_modify_today_uv
    ,t1.book_col_31301_modify_today_pv
    ,t1.hot_book_col_31301_modify_today_uv
    ,t1.hot_book_col_31301_modify_today_pv
    ,t1.book_col_31301_first_today_uv
    ,t1.book_col_31301_first_today_pv
    ,t1.hot_book_col_31301_first_today_uv
    ,t1.hot_book_col_31301_first_today_pv
    ,t3.group_cnt
    ,t3.group_today_cnt
    ,t4.col_69546_new_group_uv
    ,t3.group_72h_cnt
    ,t4.col_69546_72h_group_uv
    ,t1.group_col_31301_today_uv
    ,t1.group_col_31301_today_pv
    ,t1.hot_group_col_31301_today_uv
    ,t1.hot_group_col_31301_today_pv
    ,t1.group_col_31301_all_uv
    ,t1.group_col_31301_all_pv
    ,t1.hot_group_col_31301_all_uv
    ,t1.hot_group_col_31301_all_pv
    ,t1.new_group_col_31301_today_uv
    ,t1.new_group_col_31301_today_pv
    ,t1.hot_new_group_col_31301_today_uv
    ,t1.hot_new_group_col_31301_today_pv
    ,t1.72h_group_col_31301_today_uv
    ,t1.72h_group_col_31301_today_pv
    ,t1.hot_72h_group_col_31301_today_uv
    ,t1.hot_72h_group_col_31301_today_pv
    ,t1.show_today_uv
    ,t1.click_today_uv
    ,t1.click_today_pv
    ,t1.show_all_uv
    ,t1.click_all_uv
    ,t1.click_all_pv
    ,t1.col_44088_today_uv
    ,t1.col_44088_today_pv
    ,t1.col_27487_today_uv
    ,t1.col_27487_today_pv
    ,t1.col_44088_all_uv
    ,t1.col_44088_all_pv
    ,t1.col_27487_all_uv
    ,t1.col_27487_all_pv
    ,t1.reply_book_col_31301_today_uv
    ,t1.reply_book_col_31301_today_pv
    ,t1.reply_group_col_31301_today_uv
    ,t1.reply_group_col_31301_today_pv
    ,t1.reply_book_col_31301_all_uv
    ,t1.reply_book_col_31301_all_pv
    ,t1.reply_group_col_31301_all_uv
    ,t1.reply_group_col_31301_all_pv
from
(
    select
        col_28499
        ,col_35211(distinct case when col_19334>0 and col_77931='20200831' or col_1215='20200831' then col_3859 end)    col_19334_today_uv
        ,col_35211(case when col_19334>0 and col_77931='20200831' or col_1215='20200831' then col_3859 end)             col_19334_today_pv
        ,sum(case when col_19334>0 and col_77931='20200831' or col_1215='20200831' then col_19334 end)   col_19334_today_sum
        ,col_35211(distinct case when col_19334>0 then col_3859 end)       col_19334_all_uv
        ,col_35211(case when col_19334>0  then col_3859 end)               col_19334_all_pv
        ,sum(case when col_19334>0 then col_19334 end)   col_19334_all_sum
        ,col_35211(distinct case when col_12824 is not null and col_77931='20200831' and col_50426='book'
            and col_96596=0 then col_3859 end)             book_col_31301_today_uv
        ,col_35211(distinct case when col_12824 is not null and col_77931='20200831' and col_50426='book'
            and col_96596=0 then col_12824 end)            book_col_31301_today_pv
        ,col_35211(distinct case when col_12824 is not null and col_77931='20200831' and col_50426='book' and col_96596=0
            and(col_72259+col_96164)>5 then col_3859 end)  hot_book_col_31301_today_uv
        ,col_35211(distinct case when col_12824 is not null and col_77931='20200831' and col_50426='book' and col_96596=0
            and(col_72259+col_96164)>5 then col_12824 end) hot_book_col_31301_today_pv
        ,col_35211(distinct case when col_12824 is not null and col_50426='book'
            and col_96596=0 then col_3859 end)             book_col_31301_all_uv
        ,col_35211(distinct case when col_12824 is not null and col_50426='book'
            and col_96596=0 then col_12824 end)            book_col_31301_all_pv
        ,col_35211(distinct case when col_12824 is not null and col_50426='book' and col_96596=0
            and(col_72259+col_96164)>5 then col_3859 end)  hot_book_col_31301_all_uv
        ,col_35211(distinct case when col_12824 is not null and col_50426='book' and col_96596=0
            and(col_72259+col_96164)>5 then col_12824 end) hot_book_col_31301_all_pv
        ,col_35211(distinct case when col_12824 is not null and col_77931='20200831' and col_50426='book' and col_96596=0
            and col_4147<>col_99711 then col_3859 end)   book_col_31301_modify_today_uv
        ,col_35211(distinct case when col_12824 is not null and col_77931='20200831' and col_50426='book' and col_96596=0
            and col_4147<>col_99711 then col_12824 end)  book_col_31301_modify_today_pv
        ,col_35211(distinct case when col_12824 is not null and col_77931='20200831' and col_50426='book' and col_96596=0
            and(col_72259+col_96164)>5 and col_4147<>col_99711
            then col_3859 end)      hot_book_col_31301_modify_today_uv
        ,col_35211(distinct case when col_12824 is not null and col_77931='20200831' and col_50426='book' and col_96596=0
            and(col_72259+col_96164)>5 and col_4147<>col_99711
            then col_12824 end)     hot_book_col_31301_modify_today_pv
        ,col_35211(distinct case when col_12824 is not null and col_77931='20200831' and col_50426='book' and col_96596=0
            and col_4147=col_99711 then col_3859 end)    book_col_31301_first_today_uv
        ,col_35211(distinct case when col_12824 is not null and col_77931='20200831' and col_50426='book' and col_96596=0
            and col_4147=col_99711 then col_12824 end)   book_col_31301_first_today_pv
        ,col_35211(distinct case when col_12824 is not null and col_77931='20200831' and col_50426='book' and col_96596=0
            and(col_72259+col_96164)>5 and col_4147=col_99711
            then col_3859 end)      hot_book_col_31301_first_today_uv
        ,col_35211(distinct case when col_12824 is not null and col_77931='20200831' and col_50426='book' and col_96596=0
            and(col_72259+col_96164)>5 and col_4147=col_99711
            then col_12824 end)     hot_book_col_31301_first_today_pv
        ,col_35211(distinct case when col_12824 is not null and col_77931='20200831' and col_50426='group'
            and col_96596=0 then col_3859 end)             group_col_31301_today_uv
        ,col_35211(distinct case when col_12824 is not null and col_77931='20200831' and col_50426='group'
            and col_96596=0 then col_12824 end)            group_col_31301_today_pv
        ,col_35211(distinct case when col_12824 is not null and col_77931='20200831' and col_50426='group' and col_96596=0
            and(col_72259+col_96164)>5 then col_3859 end)  hot_group_col_31301_today_uv
        ,col_35211(distinct case when col_12824 is not null and col_77931='20200831' and col_50426='group' and col_96596=0
            and(col_72259+col_96164)>5 then col_12824 end) hot_group_col_31301_today_pv
        ,col_35211(distinct case when col_12824 is not null and col_50426='group'
            and col_96596=0 then col_3859 end)             group_col_31301_all_uv
        ,col_35211(distinct case when col_12824 is not null and col_50426='group'
            and col_96596=0 then col_12824 end)            group_col_31301_all_pv
        ,col_35211(distinct case when col_12824 is not null and col_50426='group' and col_96596=0
            and(col_72259+col_96164)>5 then col_3859 end)  hot_group_col_31301_all_uv
        ,col_35211(distinct case when col_12824 is not null and col_50426='group' and col_96596=0
            and(col_72259+col_96164)>5 then col_12824 end) hot_group_col_31301_all_pv
        ,col_35211(distinct case when col_12824 is not null and col_77931='20200831' and col_50426='group' and col_96596=0
            and col_41975=0 then col_3859 end)   new_group_col_31301_today_uv
        ,col_35211(distinct case when col_12824 is not null and col_77931='20200831' and col_50426='group' and col_96596=0
            and col_41975=0 then col_12824 end)  new_group_col_31301_today_pv
        ,col_35211(distinct case when col_12824 is not null and col_77931='20200831' and col_50426='group' and col_96596=0
            and(col_72259+col_96164)>5 and col_41975=0
            then col_3859 end)      hot_new_group_col_31301_today_uv
        ,col_35211(distinct case when col_12824 is not null and col_77931='20200831' and col_50426='book' and col_96596=0
            and(col_72259+col_96164)>5 and col_41975=0
            then col_12824 end)     hot_new_group_col_31301_today_pv
        ,col_35211(distinct case when col_12824 is not null and col_77931='20200831' and col_50426='group' and col_96596=0
            and col_41975<=2 then col_3859 end)   72h_group_col_31301_today_uv
        ,col_35211(distinct case when col_12824 is not null and col_77931='20200831' and col_50426='group' and col_96596=0
            and col_41975<=2 then col_12824 end)  72h_group_col_31301_today_pv
        ,col_35211(distinct case when col_12824 is not null and col_77931='20200831' and col_50426='group' and col_96596=0
            and(col_72259+col_96164)>5 and col_41975<=2
            then col_3859 end)      hot_72h_group_col_31301_today_uv
        ,col_35211(distinct case when col_12824 is not null and col_77931='20200831' and col_50426='book' and col_96596=0
            and(col_72259+col_96164)>5 and col_41975<=2
            then col_12824 end)     hot_72h_group_col_31301_today_pv
        ,col_35211(distinct case when col_54886=1 and col_77931='20200831' then col_3859 end)       show_today_uv
        ,col_35211(distinct case when col_57674=1 and col_77931='20200831' then col_3859 end)      click_today_uv
        ,sum(case when col_57674=1 and col_77931='20200831' then col_19653 else 0 end)     click_today_pv
        ,col_35211(distinct case when col_54886=1 then col_3859 end)       show_all_uv
        ,col_35211(distinct case when col_57674=1 then col_3859 end)      click_all_uv
        ,sum(case when col_57674=1 then col_19653 else 0 end)     click_all_pv
        ,col_35211(distinct case when col_44088>0 and col_77931='20200831' then col_3859 end)     col_44088_today_uv
        ,sum(case when col_44088>0 and col_77931='20200831' then col_44088 else 0 end)                col_44088_today_pv
        ,col_35211(distinct case when col_27487>0 and col_77931='20200831' then col_3859 end)    col_27487_today_uv
        ,sum(case when col_27487>0 and col_77931='20200831' then col_44088 else 0 end)               col_27487_today_pv
        ,col_35211(distinct case when col_44088>0 then col_3859 end)     col_44088_all_uv
        ,sum(case when col_44088>0 then col_44088 else 0 end)                col_44088_all_pv
        ,col_35211(distinct case when col_27487>0 then col_3859 end)    col_27487_all_uv
        ,sum(case when col_27487>0 then col_44088 else 0 end)               col_27487_all_pv
        ,col_35211(distinct case when col_12824 is not null and col_77931='20200831' and col_50426='book'
            and col_96596=2 then col_3859 end)             reply_book_col_31301_today_uv
        ,col_35211(distinct case when col_12824 is not null and col_77931='20200831' and col_50426='book'
            and col_96596=2 then col_12824 end)            reply_book_col_31301_today_pv
        ,col_35211(distinct case when col_12824 is not null and col_77931='20200831' and col_50426='group'
            and col_96596=2 then col_3859 end)             reply_group_col_31301_today_uv
        ,col_35211(distinct case when col_12824 is not null and col_77931='20200831' and col_50426='group'
            and col_96596=2 then col_12824 end)            reply_group_col_31301_today_pv
        ,col_35211(distinct case when col_12824 is not null and col_50426='book'
            and col_96596=2 then col_3859 end)             reply_book_col_31301_all_uv
        ,col_35211(distinct case when col_12824 is not null and col_50426='book'
            and col_96596=2 then col_12824 end)            reply_book_col_31301_all_pv
        ,col_35211(distinct case when col_12824 is not null and col_50426='group'
            and col_96596=2 then col_3859 end)             reply_group_col_31301_all_uv
        ,col_35211(distinct case when col_12824 is not null and col_50426='group'
            and col_96596=2 then col_12824 end)            reply_group_col_31301_all_pv
    from
        tbl_1147
    where
        dt='20200831'
        and col_28499>0
    group by
        col_28499
)t1 left outer join
(
    select
        col_28499
        ,col_35211(distinct case when col_82280>0 or col_73575>0 then col_3859 end)    col_69546_all_uv
        ,col_35211(distinct case when col_77093='20200831' and (col_82280>0 or col_73575>0) then col_3859 end)  col_69546_today_uv
        ,col_35211(distinct case when col_77093='20200831' and col_93433='20200831'
               and (col_82280>0 or col_73575>0) then col_3859 end)      col_69546_new_today_uv
    from
        tbl_767
    where
        dt='20200831'
        and col_78590>0
        and col_28499>0
    group by
        col_28499
)t2 on t1.col_28499=t2.col_28499
left outer join
(
    select
        col_28499
        ,col_35211(distinct col_78590)        group_cnt
        ,col_35211(distinct case when datediff(col_8394unixcol_24989(unix_col_15250(dt,'yyyymmdd'),'yyyy-mm-dd'),
               col_8394unixcol_24989(cast(get_json_object(col_28120,'$.first_pass_col_24989') as bigint),'yyyy-MM-dd')
               )=0 then col_78590 end)       group_today_cnt
        ,col_35211(distinct case when datediff(col_8394unixcol_24989(unix_col_15250(dt,'yyyymmdd'),'yyyy-mm-dd'),
               col_8394unixcol_24989(cast(get_json_object(col_28120,'$.first_pass_col_24989') as bigint),'yyyy-MM-dd')
               )<=2 then col_78590 end)       group_72h_cnt
    from
        tbl_1835
    where
        dt='20200831'
        and col_23006 in (1,6)
        and col_78590>0
        and col_28499>0
    group by
        col_28499
)t3 on t1.col_28499=t3.col_28499
left outer join
(
    select
        col_28499
        ,col_35211(distinct case when col_94815=0 then t5.col_3859 end)     col_69546_new_group_uv
        ,col_35211(distinct case when col_94815<=2 then t5.col_3859 end)    col_69546_72h_group_uv
    from
    (
        select
            col_78590
            ,col_3859
            ,col_28499
        from
            tbl_9820
        where
            dt='20200831'
            and col_24229='novelapp'
            and col_78590>0
            and col_28499>0
    )t5 left outer join
    (
        select
            datediff(col_8394unixcol_24989(unix_col_15250(dt,'yyyymmdd'),'yyyy-mm-dd'),
                     col_8394unixcol_24989(cast(get_json_object(col_28120,'$.first_pass_col_24989') as bigint),'yyyy-MM-dd')) col_94815
            ,col_78590
        from
            tbl_1835
        where
            dt='20200831'
            and col_23006 in (1,6)
            and col_78590>0
    )t6 on t5.col_78590=t6.col_78590
    group by
        col_28499
)t4 on t4.col_28499=t1.col_28499
limit 10000

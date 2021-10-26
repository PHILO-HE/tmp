select
    t1.col_28499
    ,col_58384
    ,new_col_80294
    ,col_19334
    ,col_61530
    ,col_93779
    ,col_50426
    ,col_23006
    ,nvl(retain_3day,0)                 retain_3day
    ,nvl(new_uv_3day,0)                 new_uv_3day
    ,nvl(new_uv_2day,0)                 new_uv_2day
    ,nvl(new_uv_1day,0)                 new_uv_1day
    ,nvl(col_69546_listen_10min_new_uv,0)    col_69546_listen_10min_new_uv
    ,nvl(col_69546_listen_40min_new_uv,0)    col_69546_listen_40min_new_uv
    ,nvl(listen_50min_new_uv,0)         listen_50min_new_uv
    ,nvl(listen_150min_new_uv,0)        listen_150min_new_uv
    ,nvl(col_69546_listen_new_uv,0)          col_69546_listen_new_uv
    ,nvl(listen_new_uv,0)               listen_new_uv
    ,nvl(col_69546_ctr_col_3775,0)               col_69546_ctr_col_3775
    ,recommcol_76376
    ,datediff('2020-08-31',col_8394unixcol_24989(recommcol_76376,'yyyy-MM-dd'))     recommend_col_94815
    ,nvl(col_47732,0)                     col_47732
    ,0                                  show_pv
    ,has_cold_col_64292t_success
    ,first_cold_col_64292t_dt
from
(
    select
        col_28499
        ,col_58384
        ,coalesce(get_json_object(col_28120, '$.major_coldcol_64292t'), -1)                      col_19334
        ,get_json_object(get_json_object(col_28120,'$.dynamic_fields'),'$.col_61530')          col_61530
        ,col_93779
        ,col_50426
        ,col_23006
        ,cast(get_json_object(col_28120,'$.media_book_col_74197') as bigint)     recommcol_76376
    from
        ods_group_novel_media_book_df
    where
        dt='20200831'
        and get_json_object(col_28120, '$.col_40654') = 1
        and col_50426=0
        and col_23006<>3
        and col_28499<>0
        and col_31850&8796093022208>0
)t1 left outer join
(
    select
        col_28499
        ,retain_3day
        ,new_uv_3day
        ,new_uv_2day
        ,new_uv_1day
    from
        dwm_group_novel_books_retain_history_di
    where
        dt='20200831'
)t2 on t1.col_28499=t2.col_28499
left outer join
(
    select
        col_28499
        ,col_35211(distinct case when col_56458+col_6437>10*60*1000 and col_1611=1 then col_3859 end)    col_69546_listen_10min_new_uv
        ,col_35211(distinct case when col_56458+col_6437>40*60*1000 and col_1611=1 then col_3859 end)    col_69546_listen_40min_new_uv
        ,col_35211(distinct case when col_56458>50*60*1000 and col_1611=1 then col_3859 end)                  listen_50min_new_uv
        ,col_35211(distinct case when col_56458>150*60*1000 and col_1611=1 then col_3859 end)                 listen_150min_new_uv
        ,col_35211(distinct case when (col_56458>0 or col_6437>0) and col_1611=1 then col_3859 end)      col_69546_listen_new_uv
        ,col_35211(distinct case when col_56458>0 and col_1611=1 then col_3859 end)                           listen_new_uv
        ,col_35211(distinct case when col_81323>0 then col_3859 end)                                                    col_47732
    from
        tbl_767
    where
        dt='20200831'
        and col_24229='novelapp'
    group by
        col_28499
)t3 on t1.col_28499=t3.col_28499
left outer join
(
    select
        col_28499
        ,col_69546_uv/col_47732        col_69546_ctr_col_3775
    from
        dwm_group_novel_ctr_di
    where
        dt='20200831'
        and col_24989_window='history'
        and os='all'
)t4 on t1.col_28499=t4.col_28499
left outer join
(
    select
        col_28499
        ,col_80294
        ,col_92398  new_col_80294
    from
        tbl_3597
    where
        dt='20200831'
)t5 on t1.col_28499=t5.col_28499
left outer join
(
    select
        col_28499
        ,has_cold_col_64292t_success
        ,first_cold_col_64292t_dt
    from
        dwm_group_novel_books_first_col_64292t_df
    where
        dt='20200831'
)t6 on t1.col_28499=t6.col_28499

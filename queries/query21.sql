select
    col_52468_info.col_13174                     as col_13174
    ,col_52468_info.col_85495                    as col_85495
    ,first_stockup_info.first_col_36181 as shop_first_col_36181
    ,col_52468_info.first_col_74086         as shop_first_col_74086_1d


    ,sum(if(is_stockup_td ,1,0))                                      as stockup_cnt_1d
    ,sum(if(is_stockup_td ,col_23738,0))                           as stockup_gmv_1d
    ,sum(if(is_stockup_td and col_71416= 'zhibo',1,0))             as live_stockup_cnt_1d
    ,sum(if(is_stockup_td and col_71416= 'zhibo',col_23738,0))  as live_stockup_gmv_1d
    ,sum(if(is_stockup_td and col_71416= 'duanshipin',1,0))            as item_stockup_cnt_1d
    ,sum(if(is_stockup_td and col_71416= 'duanshipin',col_23738,0)) as item_stockup_gmv_1d
    ,sum(if(is_stockup_td and is_luban,1,0))                          as luban_stockup_cnt_1d
    ,sum(if(is_stockup_td and is_luban,col_23738,0))               as luban_stockup_gmv_1d
    ,sum(if(is_stockup_td and is_col_51602,1,0))                        as col_51602_stockup_cnt_1d
    ,sum(if(is_stockup_td and is_col_51602,col_23738,0))             as col_51602_stockup_gmv_1d



    ,sum(if(is_create_td ,1,0))                            as create_cnt_1d
    ,sum(if(is_create_td ,col_23738,0))                 as create_gmv_1d
    ,sum(if(is_create_td and col_71416= 'zhibo' ,1,0))              as live_create_cnt_1d
    ,sum(if(is_create_td and col_71416= 'zhibo' ,col_23738,0))   as live_create_gmv_1d
    ,sum(if(is_create_td and col_71416= 'duanshipin',1,0))             as item_create_cnt_1d
    ,sum(if(is_create_td and col_71416= 'duanshipin',col_23738,0))  as item_create_gmv_1d

    ,sum(if(is_create_td and is_luban ,1,0))              as luban_create_cnt_1d
    ,sum(if(is_create_td and is_luban ,col_23738,0))   as luban_create_gmv_1d
    ,sum(if(is_create_td and is_col_51602,1,0))             as col_51602_create_cnt_1d
    ,sum(if(is_create_td and is_col_51602,col_23738,0))  as col_51602_create_gmv_1d


    ,sum(if(is_stockup_td and is_normal ,1,0))
-sum(if(is_stockup_td and is_abnormal_his ,1,0))
                                                                                as normal_stockup_cnt_1d
    ,sum(if(is_stockup_td and is_normal ,col_23738,0))
-sum(if(is_stockup_td and is_abnormal_his ,col_23738,0))                as normal_stockup_gmv_1d

    ,sum(if(is_stockup_td and col_71416= 'zhibo' and is_normal ,1,0))
-sum(if(is_stockup_td and col_71416= 'zhibo' and is_abnormal_his ,1,0))              as live_normal_stockup_cnt_1d
    ,sum(if(is_stockup_td and col_71416= 'zhibo' and is_normal ,col_23738,0))
-sum(if(is_stockup_td and col_71416= 'zhibo' and is_abnormal_his ,col_23738,0))   as live_normal_stockup_gmv_1d
    ,sum(if(is_stockup_td and col_71416= 'duanshipin' and is_normal ,1,0))
-sum(if(is_stockup_td and col_71416= 'duanshipin' and is_abnormal_his ,1,0))               as item_normal_stockup_cnt_1d
    ,sum(if(is_stockup_td and col_71416= 'duanshipin' and is_normal ,col_23738,0))
-sum(if(is_stockup_td and col_71416= 'duanshipin' and is_abnormal_his ,col_23738,0))    as item_normal_stockup_gmv_1d

    ,sum(if(is_stockup_td and is_luban and is_normal ,1,0))
-sum(if(is_stockup_td and is_luban and is_abnormal_his ,1,0))              as luban_normal_stockup_cnt_1d
    ,sum(if(is_stockup_td and is_luban and is_normal ,col_23738,0))
-sum(if(is_stockup_td and is_luban and is_abnormal_his ,col_23738,0))   as luban_normal_stockup_gmv_1d
    ,sum(if(is_stockup_td and is_col_51602 and is_normal ,1,0))
-sum(if(is_stockup_td and is_col_51602 and is_abnormal_his ,1,0))               as col_51602_normal_stockup_cnt_1d
    ,sum(if(is_stockup_td and is_col_51602 and is_normal ,col_23738,0))
-sum(if(is_stockup_td and is_col_51602 and is_abnormal_his ,col_23738,0))    as col_51602_normal_stockup_gmv_1d


    ,sum(if(is_create_td and is_normal ,1,0))
-sum(if(is_create_td and is_abnormal_his ,1,0))                             as normal_create_cnt_1d
    ,sum(if(is_create_td and is_normal ,col_23738,0))
    -sum(if(is_create_td and is_abnormal_his ,col_23738,0))                 as normal_create_gmv_1d
    ,sum(if(is_create_td and col_71416= 'zhibo' and is_normal ,1,0))
-sum(if(is_create_td and col_71416= 'zhibo' and is_abnormal_his ,1,0))               as live_normal_create_cnt_1d
    ,sum(if(is_create_td and col_71416= 'zhibo' and is_normal ,col_23738,0))
-sum(if(is_create_td and col_71416= 'zhibo' and is_abnormal_his ,col_23738,0))    as live_normal_create_gmv_1d
    ,sum(if(is_create_td and col_71416= 'duanshipin' and is_normal ,1,0))
-sum(if(is_create_td and col_71416= 'duanshipin' and is_abnormal_his ,1,0))               as item_normal_create_cnt_1d
    ,sum(if(is_create_td and col_71416= 'duanshipin' and is_normal ,col_23738,0))
-sum(if(is_create_td and col_71416= 'duanshipin' and is_abnormal_his ,col_23738,0))    as item_normal_create_gmv_1d

    ,sum(if(is_create_td and is_luban and is_normal ,1,0))
-sum(if(is_create_td and is_luban and is_abnormal_his ,1,0))               as luban_normal_create_cnt_1d
    ,sum(if(is_create_td and is_luban and is_normal ,col_23738,0))
-sum(if(is_create_td and is_luban and is_abnormal_his ,col_23738,0))    as luban_normal_create_gmv_1d
    ,sum(if(is_create_td and is_col_51602 and is_normal ,1,0))
-sum(if(is_create_td and is_col_51602 and is_abnormal_his ,1,0))               as col_51602_normal_create_cnt_1d
    ,sum(if(is_create_td and is_col_51602 and is_normal ,col_23738,0))
-sum(if(is_create_td and is_col_51602 and is_abnormal_his ,col_23738,0))    as col_51602_normal_create_gmv_1d





    ,sum(if(is_stockup_td and is_abnormal_today ,1,0))                          as abnormal_stockup_cnt_1d
    ,sum(if(is_stockup_td and is_abnormal_today ,col_23738,0))               as abnormal_stockup_gmv_1d

    ,sum(if(is_stockup_td and is_luban and is_abnormal_today ,1,0))            as luban_abnormal_stockup_cnt_1d
    ,sum(if(is_stockup_td and is_luban and is_abnormal_today ,col_23738,0)) as luban_abnormal_stockup_gmv_1d
    ,sum(if(is_stockup_td and is_col_51602 and is_abnormal_today ,1,0))             as col_51602_abnormal_stockup_cnt_1d
    ,sum(if(is_stockup_td and is_col_51602 and is_abnormal_today ,col_23738,0))  as col_51602_abnormal_stockup_gmv_1d

    ,sum(if(is_create_td and is_abnormal_today ,1,0))                           as abnormal_create_cnt_1d
    ,sum(if(is_create_td and is_abnormal_today ,col_23738,0))                as abnormal_create_gmv_1d

    ,sum(if(is_create_td and is_luban and is_abnormal_today ,1,0))             as luban_abnormal_create_cnt_1d
    ,sum(if(is_create_td and is_luban and is_abnormal_today ,col_23738,0))  as luban_abnormal_create_gmv_1d
    ,sum(if(is_create_td and is_col_51602 and is_abnormal_today ,1,0))              as col_51602_abnormal_create_cnt_1d
    ,sum(if(is_create_td and is_col_51602 and is_abnormal_today ,col_23738,0))   as col_51602_abnormal_create_gmv_1d

    ,col_52468_info.col_24229          as col_24229

from
    (
        select
            col_13174
            ,col_85495
            ,col_91207
            ,col_42563
            ,col_36181
            ,col_93234
            ,col_89611
            ,col_23738
            ,col_71416
            ,col_23477
            ,if(col_36181='20200831' ,true ,false)as is_stockup_td
            ,if(col_93234='20200831' ,true ,false ) as is_create_td
            ,if(col_42563='lubandianshang',true,false) as is_luban
            ,if(col_42563='neirongdianshang',true,false) as is_col_51602
            ,if(col_89611 is null or col_89611> '20200831' ,true ,false)as is_normal
            ,if(col_89611 = '20200831' ,true ,false)as is_abnormal_today
            ,if((col_89611 = '20200831'and col_36181 < '20200831'),true ,false) as is_abnormal_his
            ,col_24229
            ,col_74086
            ,col_77931
            ,min(col_74086)over(partition by col_13174,col_85495) as first_col_74086
            ,min(col_77931)over(partition by col_13174,col_85495) as first_col_77931
        from tbl_28
        where date='20200831'
        and col_8527=10
        and lifecycle='active'
        and col_42563 in('neirongdianshang','lubandianshang')
        and (col_93234  = '20200831' or col_36181= '20200831' or col_89611 = '20200831' )
    )col_52468_info
left outer join
    (
        select
            col_13174
            ,col_85495
            ,min(col_36181) as first_col_36181
        from tbl_28
        where date='20200831'
        and col_8527=10
        group by
        col_13174
        ,col_85495
    )first_stockup_info
on col_52468_info.col_13174=first_stockup_info.col_13174
and col_52468_info.col_85495=first_stockup_info.col_85495
group by
    col_52468_info.col_13174
    ,col_52468_info.col_85495
    ,first_stockup_info.first_col_36181
    ,col_52468_info.first_col_74086
    ,col_52468_info.col_24229
limit 10000

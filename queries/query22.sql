select

          col_28543                                            as col_28543
        , col_3859                                         as col_3859
        , col_13174                                           as col_13174
        , col_63175                                           as col_63175
        , col_35934                                       as col_35934
        , col_60834                                  as col_60834
        , col_80219                                      as col_80219
        , col_9154                                          as col_9154
        , is_other_col_7675                                  as is_other_col_7675
        , if(col_88325<=0,null,col_88325)             as col_88325
        , col_71459                                    as col_71459
        , nvl(promot.col_74464,col_15440list.col_74464)        as col_74464
        , promot.col_40278                                   as col_40278
        , promot.col_91570                              as col_91570
        , col_15440list.col_76332                                as col_76332
        ,case when col_24229 = 'live_stream'
              then nvl(col_18027_info.hotsoon_fan_col_27490, 0)
              when col_24229='aweme'
              then nvl(col_18027_info.aweme_fan_col_27490, 0)
              else 0 end                                    as col_19617
        ,case when col_24229 = 'live_stream'
              then nvl(col_18027_info.hotsoon_mutual_col_27490,0)
              when col_24229='aweme'
              then nvl(col_18027_info.aweme_mutual_col_27490, 0)
              else 0 end                                    as col_5966
        ,coalesce(awehot_fan_col_27490, 0)                       as col_16876
        ,coalesce(awehot_mutual_col_27490, 0)                    as col_66601
        ,case when col_24229 = 'live_stream'
              then nvl(col_18027_info.hotsoon_col_32094_col_27490,0)
              when col_24229='aweme'
              then nvl(col_18027_info.aweme_col_32094_col_27490, 0)
              else 0
        end                                                 as col_32094
        ,coalesce(awehot_col_32094_col_27490, 0)               as col_69623

        , col_10393                    as col_10393
        , col_37542                    as col_37542
        , col_9154_show_cart_tag_cnt_1d
        , col_9154_click_cart_tag_cnt_1d
        , showprd_popup_cnt_1d
        , clickprd_popup_cnt_1d
        , showprd_cnt_1d
        , showprd_cart_tag_cnt_1d
        , showprd_card_cnt_1d
        , showprd_bubble_cnt_1d
        , showprd_buynow_cnt_1d
        , clickprd_cnt_1d
        , clickprd_cart_tag_cnt_1d
        , clickprd_card_cnt_1d
        , clickprd_bubble_cnt_1d
        , clickprd_buynow_cnt_1d
        , col_96980_1d
        , detail_clickprd_cnt_1d
        , detail_clickprd_cart_tag_cnt_1d
        , detail_clickprd_card_cnt_1d
        , detail_clickprd_bubble_cnt_1d
        , col_44181
        , col_55540
        , col_37539
        , col_68780
        , col_82124
        , col_33671
        , col_93836
        , col_8527
        , col_24229
from
    (
        select
            col_8527                                             as col_8527
            ,logs.col_24229                                      as col_24229
            ,max(col_28543)                                        as col_28543
            ,col_3859                                          as col_3859
            ,col_13174                                            as col_13174
            ,logs.col_63175                                       as col_63175
            ,max(room_anchor.col_76332)                         as col_76332
            ,col_35934                                        as col_35934
            ,col_60834                                   as col_60834
            ,col_80219                                       as col_80219
            ,col_9154                                           as col_9154
            ,is_other_col_7675                                   as is_other_col_7675
            ,logs.col_88325                                  as col_88325
            ,case when max(skewed.col_88325)>0
                 then cast(rand() * 30 as bigint)
                 else 1
             end                                                as col
            ,max(col_74464)                                    as col_74464
            ,max(col_71459)                                as col_71459
            ,sum( if( col_43492 = 'livesdk_col_12026_col_9154_show' ,1,0) )as col_10393
            ,sum( if( col_43492 = 'livesdk_col_12026_col_9154_click' ,1,0)) as col_37542
            ,sum( if( col_43492 = 'livesdk_col_12026_col_9154_show' and col_91179 = 'live_cart_tag'  ,1,0) )as col_9154_show_cart_tag_cnt_1d
            ,max( if( col_43492 = 'livesdk_show_col_12026' and col_91179 = 'live_list_card' ,1,0) )as is_showprd_list
            ,sum( if( col_43492 = 'livesdk_show_col_12026' and col_91179 = 'live_popup_card' ,1,0) )as showprd_popup_cnt_1d

            ,sum( if( col_43492 = 'livesdk_col_12026_col_9154_click' and col_91179 = 'live_cart_tag' ,1,0)) as col_9154_click_cart_tag_cnt_1d
            ,sum( if( col_43492 = 'livesdk_click_col_12026' and col_91179 = 'live_popup_card' ,1,0)) as clickprd_popup_cnt_1d

            ,sum( if( col_43492 = 'livesdk_show_col_12026' ,1,0) ) as showprd_cnt_1d
            ,sum( if( col_43492 = 'livesdk_show_col_12026' and col_91179='live_list_card' ,1,0) ) showprd_cart_tag_cnt_1d
            ,sum( if( col_43492 = 'livesdk_show_col_12026' and col_91179 = 'live_popup_card' ,1,0) )showprd_card_cnt_1d
            ,sum( if( col_43492 = 'livesdk_click_col_12026' and col_91179='live_bubble' ,1,0) )  as showprd_bubble_cnt_1d
            ,sum( if( col_43492 = 'livesdk_click_col_12026' and live_col_12026_col_50426 in ('buynow_all','buynow_part') and cmdt_col_50426 = 'bihuan',1,0) ) as showprd_buynow_cnt_1d

            ,sum( if( col_43492 = 'livesdk_click_col_12026' ,1,0) ) as clickprd_cnt_1d
            ,sum( if( col_43492 = 'livesdk_click_col_12026' and col_91179 ='live_list_card'  ,1,0) ) as clickprd_cart_tag_cnt_1d
            ,sum( if( col_43492 = 'livesdk_click_col_12026' and col_91179 ='live_popup_card' ,1,0) ) as clickprd_card_cnt_1d
            ,sum( if( col_43492 = 'livesdk_click_col_12026' and col_91179='live_bubble' ,1,0) )  as clickprd_bubble_cnt_1d
            ,sum( if( col_43492 = 'livesdk_click_col_12026' and  live_col_12026_col_50426 in ('buynow_all','buynow_part') ,1,0) )  as clickprd_buynow_cnt_1d

            ,sum( if( col_43492 = 'enter_col_12026_detail' and col_95097_page = 'live' ,1,0) ) as col_96980_1d

            ,sum( if( col_43492 = 'click_col_12026' and col_95097_page = 'live' and col_77546 = 'col_12026_detail'  ,1,0) ) as  detail_clickprd_cnt_1d
            ,sum( if( col_43492 = 'click_col_12026' and col_95097_page = 'live' and col_77546 = 'col_12026_detail'  and col_91179='live_list_card' ,1,0) ) as detail_clickprd_cart_tag_cnt_1d
            ,sum( if( col_43492 = 'click_col_12026' and col_95097_page = 'live' and col_77546 = 'col_12026_detail'  and col_91179='live_popup_card' ,1,0) )  as detail_clickprd_card_cnt_1d
            ,sum( if( col_43492 = 'click_col_12026' and col_95097_page = 'live' and col_77546 = 'col_12026_detail'  and col_91179='live_bubble' ,1,0) )  as  detail_clickprd_bubble_cnt_1d

            ,sum( case when col_43492 = 'show_col_12026_col_19137_detail' and col_95097_page = 'live' and cmdt_col_50426 = 'bihuan' then 1
                       when col_43492 = 'livesdk_show_col_12026_col_19137_detail' and cmdt_col_50426 = 'bihuan' and cmdt_col_50426 = 'bihuan'
                       then 1 else 0 end
            ) as col_44181
            ,sum( case when col_43492 = 'confirm_col_12026_col_19137' and cmdt_col_50426 = 'bihuan' and col_95097_page = 'live' then 1
                    when col_43492 = 'livesdk_confirm_col_12026_col_19137' and cmdt_col_50426 = 'bihuan' then 1
                    else 0 end
            ) as col_55540
            ,sum( case when col_43492 = 'confirm_col_12026_col_19137' and col_91179='live_list_card' and cmdt_col_50426 = 'bihuan' and col_95097_page = 'live' then 1
                    when col_43492 = 'livesdk_confirm_col_12026_col_19137' and col_91179='live_list_card' and cmdt_col_50426 = 'bihuan' then 1
                    else 0 end
            )as col_37539
            ,sum( case when col_43492 = 'confirm_col_12026_col_19137' and col_91179='live_popup_card' and cmdt_col_50426 = 'bihuan' and col_95097_page = 'live' then 1
                    when col_43492 = 'livesdk_confirm_col_12026_col_19137' and col_91179='live_popup_card' and cmdt_col_50426 = 'bihuan' then 1
                    else 0 end
            )as col_68780
            ,sum( case when col_43492 = 'livesdk_confirm_col_12026_col_19137' and cmdt_col_50426 = 'bihuan' then 1
                       else 0 end
            ) as col_82124
            ,sum( case when col_43492 = 'confirm_col_12026_col_19137' and cmdt_col_50426 = 'bihuan' and col_95097_page = 'live' then 1
                       else 0 end
            ) as col_33671
            ,sum( if( col_43492 = 'page_view' and area_col_50426 = 169 and col_52308 in(2002015000, 3002015000),1,0) ) as col_93836
        from
            (
            select  col_8527
                    ,col_24229
                    ,col_28543
                    ,col_3859
                    ,col_13174
                    ,col_63175
                    ,col_76332
                    ,col_35934
                    ,col_60834
                    ,col_80219
                    ,col_9154
                    ,coalesce(col_97952['is_other_col_7675'],'-999999')                             as is_other_col_7675
                    ,col_43492
                    ,col_91179
                    ,case
                        when col_71459 in (4, 6) then 'bihuan'
                        when col_71459 not in (4, 6)
                        and col_71459 is not null then 'thirdparty'
                    end                                                     as cmdt_col_50426
                    ,col_71459
                    ,col_19137['col_95097_page']                                  as col_95097_page
                    ,col_77546
                    ,col_97952['area_col_50426']                             as area_col_50426
                    ,col_97952['col_52308'] col_52308
                    ,col_97952['live_col_12026_col_50426'] live_col_12026_col_50426
                    ,col_74464
                    ,case when col_88325 is null then cast(rand() * 10000000 * -1 as bigint)
                          else col_88325
                          end  as col_88325
                from tbl_8918
                where
                    date = '20200831'
                    and col_8527 = 10
                    and col_24229='aweme'
                    and col_63175>0
            ) logs
        left join
            (
            select  col_63175
                    ,col_76332
                    ,col_24229
            from    tbl_2329
            where   date='20200831'
            and     col_8527=10
            )room_anchor
        on  room_anchor.col_63175  = logs.col_63175
        and room_anchor.col_24229 = logs.col_24229
        left join
            (
                select  col_88325,col_24229
                from    tbl_717
                where   date='20200831' and col_8527=10
                group   by col_88325,col_24229
            )skewed
        on  logs.col_88325=skewed.col_88325
        and logs.col_24229 = skewed.col_24229
        group by
            col_8527
            ,logs.col_24229
            ,col_3859
            ,col_13174
            ,logs.col_63175
            ,col_60834
            ,col_80219
            ,col_9154
            ,is_other_col_7675
            ,col_35934
            ,logs.col_88325
    ) col_15440list
left join
    (
        select
                col_32718
                ,col_74464
                ,cast(tf.col as bigint) as col
                ,col_40278
                ,col_91570
        from
        (
            select  col_74464, col_32718
                    ,col_40278
                    ,col_91570
                    ,case when skewed.col_88325>0
                    then '0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30'
                    else '1'
                    end  as array_info
            from
            (
                select col_74464, col_32718 ,col_40278, col_91570
                from   tbl_7140
                where  date='20200831'
            )alli
            left join
            (
                select  col_88325
                from    tbl_717
                where   date='20200831' and col_8527=10 and col_24229='aweme'
                group   by col_88325
            )skewed
            on  alli.col_32718= skewed.col_88325
        )tmp
     lateral view explode(split(array_info, ',')) tf as col
    )promot
  on   col_15440list.col_88325 =promot.col_32718
  and  col_15440list.col = promot.col

left   join
      (
       select
              col_18027_in.col_37410                             as col_37410
             ,col_18027_in.col_39136                               as col_39136
             ,max(if(sub_col_8527 = 0,1,0))                       as hotsoon_fan_col_27490
             ,max(if(sub_col_8527 = 0 and col_32094 = 1 ,1,0))  as hotsoon_col_32094_col_27490
             ,max(if(sub_col_8527 = 0 , col_5966,0))             as hotsoon_mutual_col_27490
             ,max(if(sub_col_8527 = 1 ,1,0))                      as aweme_fan_col_27490
             ,max(if(sub_col_8527 = 1 and col_32094 = 1 ,1,0))  as aweme_col_32094_col_27490
             ,max(if(sub_col_8527 = 1 , col_5966,0))             as aweme_mutual_col_27490
             ,1                                                  as awehot_fan_col_27490
             ,if(FROM_UNIXTIME(min(col_46900), 'yyyyMMdd') = '20200831' ,1,0) as awehot_col_32094_col_27490
             ,max(col_5966)                                     as awehot_mutual_col_27490
       from (select col_76332
             from   tbl_2329
             where  date='20200831' and col_8527=10
             group  by col_76332
            )room_anchor
        inner join
             (
              select
                     col_37410                                                as col_37410
                    ,col_39136                                                  as col_39136
                    ,col_46900                                                   as col_46900
                    ,if(FROM_UNIXTIME(col_46900, 'yyyyMMdd') = '20200831' ,1,0)   as col_32094
                    ,col_5966                                                   as col_5966
                    ,col_8527                                                     as col_8527
                    ,sub_col_8527                                                 as sub_col_8527
              from   tbl_1965
              where  date = '20200831'
              and    col_23006 = 1
              and    col_8527 in (10)
              and    date >= '20200212'

              union  all

              select
                     col_37410                                               as col_37410
                    ,col_39136                                                 as col_39136
                    ,col_46900                                                  as col_46900
                    ,if(FROM_UNIXTIME(col_46900, 'yyyyMMdd') = '20200831' ,1,0)  as col_32094
                    ,col_5966                                                  as col_5966
                    ,10                                                         as col_8527
                    ,col_8527                                                    as sub_col_8527
              from   tbl_4607
              where  date = '20200831'
              and    col_23006 = 1
              and    col_8527 in (0, 1)
              and    date < '20200212'
             ) col_18027_in

       on     room_anchor.col_76332  = col_18027_in.col_39136
       group  by col_18027_in.col_37410, col_18027_in.col_39136
      ) col_18027_info
on    col_15440list.col_13174   = col_18027_info.col_37410
and   col_15440list.col_76332 = col_18027_info.col_39136
limit 10000

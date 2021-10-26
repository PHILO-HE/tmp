select
     if(topview_ad_attr.col_30629 is null,dwa_daily.col_80511,0) as col_80511
    ,dwa_daily.col_62986
    ,dwa_daily.col_43924
    ,dwa_daily.col_30973
    ,if(topview_ad_attr.col_30629 is null,dwa_daily.rit,0) as rit
    ,dwa_daily.col_47217
    ,sum(
        case topview_ad_attr.col_30629
        when 'topview_splash' then dwa_daily.col_71053 * col_92272_show.col_83334
        when 'topview_feed'   then dwa_daily.col_71053 * col_92272_show.col_38723
        else dwa_daily.col_71053
        end
    ) as col_71053
     ,sum(
        case topview_ad_attr.col_30629
        when 'topview_splash' then dwa_daily.col_26342 * col_92272_click.col_83334
        when 'topview_feed'   then dwa_daily.col_26342 * col_92272_click.col_38723
        else dwa_daily.col_26342
        end
     ) as col_26342
    ,sum(if(topview_ad_attr.col_30629 is null, dwa_daily.col_8818,0)) as col_8818
    ,sum(if(topview_ad_attr.col_30629 is null, dwa_daily.col_60292,0)) as col_60292
    ,sum(if(topview_ad_attr.col_30629 is null, dwa_daily.col_11412,0)) as col_11412
    ,sum(if(topview_ad_attr.col_30629 is null, dwa_daily.col_47080,0)) as col_47080
    ,sum(if(topview_ad_attr.col_30629 is null, dwa_daily.col_17159,0)) as col_17159
    ,sum(if(topview_ad_attr.col_30629 is null, dwa_daily.col_5603,0)) as col_5603
    ,sum(if(topview_ad_attr.col_30629 is null, dwa_daily.col_24913,0)) as col_24913
    ,sum(
        case topview_ad_attr.col_30629
        when 'topview_splash' then dwa_daily.col_32100 * col_92272_play.col_83334
        when 'topview_feed'   then dwa_daily.col_32100 * col_92272_play.col_38723
        else dwa_daily.col_32100
     end
     ) as  col_32100
    ,sum(
        case topview_ad_attr.col_30629
        when 'topview_splash' then dwa_daily.col_26362 * col_92272_valid_play.col_83334
        when 'topview_feed'   then dwa_daily.col_26362 * col_92272_valid_play.col_38723
        else dwa_daily.col_26362
    end) as col_26362
    ,sum(if(topview_ad_attr.col_30629 is null,dwa_daily.col_65350,0)) as col_65350
    ,sum(if(topview_ad_attr.col_30629 is null,dwa_daily.col_59149,0)) as col_59149
    ,sum(
        case topview_ad_attr.col_30629
        when 'topview_splash' then dwa_daily.col_85847 * col_92272_play_over.col_83334
        when 'topview_feed'   then dwa_daily.col_85847 * col_92272_play_over.col_38723
        else dwa_daily.col_85847
    end) as  col_85847
    ,sum(if(topview_ad_attr.col_30629 is null, dwa_daily.col_37212,0)) as  col_37212
    ,sum(
        case topview_ad_attr.col_30629
        when 'topview_splash' then dwa_daily.col_65902 * col_92272_col_65902.col_83334
        when 'topview_feed'   then dwa_daily.col_65902 * col_92272_col_65902.col_38723
        else dwa_daily.col_65902
    end) as  col_65902
    ,dwa_daily.col_67236
    ,dwa_daily.col_62384
    ,dwa_daily.col_82734
    ,'null' as col_76160
    ,if(topview_ad_attr.col_30629 is null,'non_topview',topview_ad_attr.col_30629) as col_30629
    ,if(topview_ad_attr.col_30629 is null,dwa_daily.col_62986,topview_ad_attr.col_55598) as col_55598
    ,if(topview_ad_attr.col_30629 is null,dwa_daily.col_43924,topview_ad_attr.col_70954) as col_70954
    ,if(topview_ad_attr.col_30629 is null,dwa_daily.col_47217,topview_ad_attr.col_79434) as col_79434,
    sum(
        case topview_ad_attr.col_30629
        when 'topview_splash' then dwa_daily.col_22924 * col_92272_col_65902.col_83334
        when 'topview_feed'   then dwa_daily.col_22924 * col_92272_col_65902.col_38723
        else dwa_daily.col_22924
    end) as  col_22924,
    sum(
        case topview_ad_attr.col_30629
        when 'topview_splash' then dwa_daily.col_53946 * col_92272_col_65902.col_83334
        when 'topview_feed'   then dwa_daily.col_53946 * col_92272_col_65902.col_38723
        else dwa_daily.col_53946
    end) as  col_53946,
    sum(
        case topview_ad_attr.col_30629
        when 'topview_splash' then dwa_daily.col_57809 * col_92272_col_65902.col_83334
        when 'topview_feed'   then dwa_daily.col_57809 * col_92272_col_65902.col_38723
        else dwa_daily.col_57809
    end) as  col_57809,
    sum(
        case topview_ad_attr.col_30629
        when 'topview_splash' then dwa_daily.col_81800 * col_92272_col_65902.col_83334
        when 'topview_feed'   then dwa_daily.col_81800 * col_92272_col_65902.col_38723
        else dwa_daily.col_81800
    end) as  col_81800,
    sum(
        case topview_ad_attr.col_30629
        when 'topview_splash' then dwa_daily.col_70221 * col_92272_col_65902.col_83334
        when 'topview_feed'   then dwa_daily.col_70221 * col_92272_col_65902.col_38723
        else dwa_daily.col_70221
    end) as  col_70221,
    sum(
        case topview_ad_attr.col_30629
        when 'topview_splash' then dwa_daily.col_11540 * col_92272_col_65902.col_83334
        when 'topview_feed'   then dwa_daily.col_11540 * col_92272_col_65902.col_38723
        else dwa_daily.col_11540
    end) as  col_11540
from
 (
    select *
    from tbl_8002
    where col_77093 = '20200831'
)dwa_daily
left outer join
(
    select col_62986, col_55598,col_30629,col_70954,col_79434
    from tbl_6513
    where col_77093 = '20200831'
)topview_ad_attr on dwa_daily.col_62986 = topview_ad_attr.col_62986
left outer join
(
    select col_73452,col_83334, col_38723
    from tbl_5535
    where col_77093 = '20200831'
    and col_73452 = 'col_71053'
)col_92272_show on 1=1
left outer join
(
    select col_73452,col_83334, col_38723
    from tbl_5535
    where col_77093 = '20200831'
    and col_73452 = 'col_26342'
)col_92272_click on 1=1
left outer join
(
    select col_73452,col_83334, col_38723
    from tbl_5535
    where col_77093 = '20200831'
    and col_73452 = 'col_65902'
)col_92272_col_65902 on 1=1
left outer join
(
    select col_73452,col_83334, col_38723
    from tbl_5535
    where col_77093 = '20200831'
    and col_73452 = 'col_32100'
)col_92272_play on 1=1
left outer join
(
    select col_73452,col_83334, col_38723
    from tbl_5535
    where col_77093 = '20200831'
    and col_73452 = 'col_26362'
)col_92272_valid_play on 1=1
left outer join
(
    select col_73452,col_83334, col_38723
    from tbl_5535
    where col_77093 = '20200831'
    and col_73452 = 'col_85847'
)col_92272_play_over on 1=1
group by
    if(topview_ad_attr.col_30629 is null,dwa_daily.col_80511,0)
    ,dwa_daily.col_62986
    ,dwa_daily.col_43924
    ,dwa_daily.col_30973
    ,if(topview_ad_attr.col_30629 is null,dwa_daily.rit,0)
    ,dwa_daily.col_47217
    ,dwa_daily.col_67236
    ,dwa_daily.col_62384
    ,dwa_daily.col_82734
    ,if(topview_ad_attr.col_30629 is null,'non_topview',topview_ad_attr.col_30629)
    ,if(topview_ad_attr.col_30629 is null,dwa_daily.col_62986,topview_ad_attr.col_55598)
    ,if(topview_ad_attr.col_30629 is null,dwa_daily.col_43924,topview_ad_attr.col_70954)
    ,if(topview_ad_attr.col_30629 is null,dwa_daily.col_47217,topview_ad_attr.col_79434)
limit 10000

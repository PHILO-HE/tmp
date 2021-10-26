with vip_advertiser as (
    select
        col_30973
    from
        (
            select
                col_30973,
                collect_set(rit) as rits
            from
                (
                    select
                        col_30973,
                        rit
                    from
                        dwd_tianchi_effective_ad
                    lateral view explode(rits) ad_table as rit
                    where
                        col_77093 = '20200831'
                        and col_17185 in (3, 6) -- 只筛选竞价
                )tianchi
            group by
                col_30973
        ) ppx_vip
    where array_contains(rits, bigint(16001)) and size(rits) = 1 -- 筛选出只投到皮皮虾的广告主

    union

    select
        col_30973
    from
        (
            select
                col_30973,
                collect_set(rit) as rits,
                1 as join_key
            from
                (
                    select
                        col_30973,
                        rit
                    from
                        dwd_tianchi_effective_ad
                    lateral view explode(rits) ad_table as rit
                    where
                        col_77093 = '20200831'
                )tianchi
            group by
                col_30973
        ) xs_vip
        left join
        (
            select
                collect_set(col_10082) as col_47217_set,
                1 as join_key
            from
                tbl_4989
            where
                col_77093 = '20200831' and col_24229 = '常读小说'
        ) rit_attr
        on xs_vip.join_key = rit_attr.join_key
    where  -- 保证广告主只投了一个app，并且该app是常读小说
        size(array_intersect(rits,col_47217_set)) = size(rits)
    group by
        col_30973
)

select
    bid_overture.col_80511,
    bid_overture.col_62986,
    bid_overture.col_43924,
    bid_overture.col_30973,
    bid_overture.col_47217,
    bid_overture.rit,
    bid_overture.col_8954,
    bid_overture.col_19590,
    bid_overture.col_1857,
    bid_overture.col_10082,
    bid_overture.col_65902,
    coalesce(bid_billing.col_22924,0) as col_22924,   --现金消耗
    coalesce(bid_billing.col_53946,0) as col_53946, --返点消耗
    coalesce(bid_billing.col_57809,0) as col_57809,  --赠款消耗
    coalesce(bid_billing.col_71220,0) as col_71220, --返货消耗
    coalesce(bid_billing.col_81800,0) as col_81800, --预付款消耗coalesce(
    coalesce(bid_billing.col_70221,0) as col_70221, --授信消耗
    coalesce(bid_billing.col_11540,0) as  col_11540,--开户费消耗
    bid_overture.col_81323,
    bid_overture.col_38811,
    bid_overture.col_86219,
    bid_overture.col_75623,
    bid_overture.col_74219,
    bid_overture.col_42493,
    bid_overture.col_634,
    bid_overture.col_48884,
    bid_overture.col_71043,
    bid_overture.col_64237,
    bid_overture.col_24221,
    bid_overture.col_37212,
    bid_overture.col_67236,
    bid_overture.col_17185,
    bid_overture.col_45123,
    bid_overture.col_46144,
    bid_overture.col_43781,
    bid_overture.col_75801,
    bid_overture.col_76340,
    bid_overture.col_63940,
    bid_overture.col_40120,
    bid_overture.col_17160,
    bid_overture.col_87151,
    bid_overture.col_68655,
    bid_overture.col_40540,
    bid_overture.col_3373,
    bid_overture.col_44942,
    bid_overture.col_78788,
    bid_overture.col_5384,
    bid_overture.col_85563,
    bid_overture.col_47564,
    bid_overture.col_50554,
    bid_overture.col_57175 as col_91732,
    bid_overture.col_30859,
    bid_overture.col_66475,
    'null' as col_64309,
    case when bid_overture.col_78788 !='搜索广告' then -1 
         when bid_overture.col_46144 = 5 and (bid_overture.col_47217 = 80016 or bid_overture.dpa_id = 20000001) then 1
         when bid_overture.col_46144 <> 5 and bid_overture.col_94642 = 2 then 1
        else 0 end as col_80031,
    bid_overture.col_49580,
    bid_overture.col_95052,
    bid_overture.col_62334,
    bid_overture.col_76160,
    bid_overture.col_42642,
    bid_overture.col_85591,
    if(vip_advertiser.col_30973 is null, 0, 1) as col_58637,
    false as col_4689,
    col_18796,
    col_68653,
    'null' as col_4684, --只有品牌有该字段
    col_17410,
    col_33894,
    bid_overture.col_90149,
    bid_overture.col_19562,
    col_17422, --只有品牌有该字段
    col_40017, --只有品牌有该字段,
    bid_overture.col_63464,
    bid_overture.col_19147,
    if(col_42642 not in (15, 19, 22, 26), --不包括15:抖+, 19:DOU+ GD广告, 22:抖店计划, 26:    星图全民任务(流量任务走 dou+)
    case
        when col_3047 = 1 then 1 --'取抖音主页视频投放'
        when col_3047 = 2 then 2 --'取达人视频投放'
        when col_3047 = 3 and col_79116 = 1  then 3 --'达人视频素材用广告主账号发布的强原生'
        when col_3047 = 3 and nvl(col_79116, 0) = 0 then 4 --'达人视频素材发布的伪原生'
        when nvl(col_3047, 0) = 0 and col_79116 = 1 then 5 --'为上传素材发布的强原生'
        when nvl(col_3047, 0) = 0 and nvl(col_79116, 0) = 0 then 6 -- '上传素材发布伪原生'
        else 0 -- '其它投放方式'
    end, -1) as col_77148,
    col_78970,
    col_86442,
    col_64569,
    col_55500
from
(
    select
        overture.col_80511,
        overture.col_62986,
        overture.col_43924,
        overture.col_30973,
        overture.col_47217,
        overture.rit,
        ad_attr.col_8954,
        campaign_attr.col_19590,
        app_attr.col_1857,
        overture.col_10082,
        overture.col_65902,
        overture.col_81323,
        overture.col_38811,
        overture.col_86219,
        overture.col_75623,
        overture.col_74219,
        overture.col_42493,
        overture.col_634,
        overture.col_48884,
        overture.col_71043,
        overture.col_64237,
        overture.col_24221,
        overture.col_37212,
        ad_attr.col_67236,
        ad_attr.col_17185,
        creative_attr.col_45123,
        if(ad_attr.col_67236=0, ad_attr.col_46144, campaign_attr.col_46144) as col_46144,
        customer_attr.col_43781,
        customer_attr.col_75801,
        ad_attr.col_76340,
        ad_attr.col_63940,
        customer_attr.col_40120,
        customer_attr.col_17160,
        customer_attr.col_87151,
        customer_attr.col_68655,
        customer_attr.col_40540,
        customer_attr.col_3373,
        customer_attr.col_44942,
        app_attr.col_78788,
        customer_attr.col_5384,
        customer_attr.col_85563,
        customer_attr.col_47564,
        customer_attr.col_50554,
        ad_attr.col_57175,
        audience_col_50426.col_30859,
        ad_attr.col_66475,
        ad_attr.dpa_id,
        campaign_attr.col_94642,
        coalesce(ad_audit_col_5384,adp_col_5384) as col_49580,
        coalesce(ad_audit_col_47564,adp_col_47564) as col_95052,
        coalesce(ad_audit_col_84401,adp_col_84401) as col_62334,
        overture.col_76160,
        col_42642,
        col_85591,
        col_55500,
        show_app_attr.col_1857 as col_18796,
        col_68653,
        col_17410,
        if(col_17410 is not null ,1,0) col_33894,
        col_90149,
        col_19562,
        ad_attr.col_17422 as col_17422,
        campaign_attr.col_40017 as col_40017,
        ad_attr.col_63464,
        ad_attr.col_19147,
        col_3047,
        col_79116,
        col_78970,
        col_86442,
        col_64569
    from
    (
        select
            col_80511,
            col_62986,
            col_43924,
            col_30973,
            col_47217,
            rit,
            case
            when rit >= 800000000 and rit < 900000000  then 800000000
            when rit >= 900000000 and rit < 1000000000 then 900000000
            else rit
            end as col_10082,
            case
            when col_47217 >= 800000000 and col_47217 < 900000000  then 800000000
            when col_47217 >= 900000000 and col_47217 < 1000000000 then 900000000
            else col_47217
            end as col_79434,
            sum(col_65902) as col_65902,
            sum(col_81323) as col_81323,
            sum(col_38811) as col_38811,
            sum(col_86219) as col_86219,
            sum(col_75623) as col_75623,
            sum(col_74219) as col_74219,
            sum(col_42493) as col_42493,
            sum(col_634) as col_634,
            sum(col_48884) as col_48884,
            sum(col_71043) as col_71043,
            sum(col_64237) as col_64237,
            sum(col_24221) as col_24221,
            sum(col_37212) as col_37212,
            'null' as col_76160
        from tbl_8094
        where col_77093='20200831'
        and rit != 30020
        group by
        col_62986,col_80511,col_43924,
        col_30973,col_47217,rit,
        case
        when rit >= 800000000 and rit < 900000000 then 800000000
        when rit >= 900000000 and rit < 1000000000 then 900000000
        else rit
        end,
        case
        when col_47217 >= 800000000 and col_47217 < 900000000  then 800000000
        when col_47217 >= 900000000 and col_47217 < 1000000000 then 900000000
        else col_47217
        end
    ) overture
    left join
    (
        select
        col_80511,
        col_45123,
        col_3047
        from tbl_2465
        where col_77093='20200831'
    ) creative_attr
    on (overture.col_80511 = creative_attr.col_80511)
    inner join
    (
        select
            ad.*,
            site_info.col_86442,
            coalesce(col_48268, col_77385) as col_64569
        from
            (
                select
                    col_62986,
                    col_8954,
                    col_28477,
                    col_17185,
                    case
                        when if(col_66475 = 1, col_68653, col_66475) in (5, 10, 102, 104, 203) then 1
                        when if(col_66475 = 1, col_68653, col_66475) in (8, 101, 103, 105) then 2
                        when if(col_66475 = 1, col_68653, col_66475) in (2, 6) then 3
                        when if(col_66475 = 1, col_68653, col_66475) = 4 then -11 --开屏
                        else -10 --其他
                    end as col_46144,
                    get_json_object(col_71951, '$.col_19605') as col_19605,
                    col_76340,
                    col_63940,
                    col_67236,
                    col_57175,
                    col_66475,
                    get_json_object(col_71951, '$.col_76904') AS dpa_id,
                    col_84401,
                    col_42642,
                    col_55500,
                    col_68653,
                    col_19562,
                    col_17422,
                    col_63464,
                    if(col_67650 = true, 1, 0) as col_19147,
                    col_79116,
                    case when col_83017 is null or col_83017 = '' then (-100) * ( col_62986 + col_43924 ) else cast(col_83017 as bigint) end as col_83017,
                    col_77385
                from
                    tbl_4121
                where
                    col_77093 = '20200831'
                    and coalesce(col_42642, 0) <> 11
                    and coalesce(col_75216, 0) not in (2, 3, 4)
            ) ad
            left join(
                select
                    col_83017,
                    col_86442
                from
                    tbl_8850
                where
                    col_77093 = '20200831'
            ) site_info on site_info.col_83017 = ad.col_83017
            left join (
                select
                    id, 
                    col_48268
                from tbl_8981
                where col_77093 = '20200831'  
            ) conv on conv.id = ad.col_28477
    ) ad_attr on overture.col_62986 = ad_attr.col_62986
    inner join
    (
        select col_43924,col_19590,
          if(col_46144 is not NULL, col_46144, -10) as col_46144,
          col_94642,
          col_40017,
          get_json_object(col_71951,'$.col_78970') as col_78970
        from tbl_5371
        where col_77093='20200831'
        and col_19590 <> 1
    ) campaign_attr
    on overture.col_43924 = campaign_attr.col_43924
    left join
    (
        select col_10082,col_1857,col_78788
        from tbl_4989
        where col_77093='20200831'
    ) app_attr
    on overture.col_10082 = app_attr.col_10082
    left join
    (
        select col_10082,col_1857
        from tbl_4989
        where col_77093='20200831'
    ) show_app_attr
    on overture.col_79434 = show_app_attr.col_10082
    left join
    (
      select
        col_62986,
        col_17160,
        col_87151,
        col_43781,
        col_68655,
        col_75801,
        col_40540,
        col_40120,
        col_3373,
        col_44942,
        col_5384,
        col_85563,
        col_47564,
        col_50554,
        col_85591,
        col_90149
      from tbl_7283
      where col_77093='20200831'
    ) customer_attr
    on (overture.col_62986 = customer_attr.col_62986)
    left join ---增加定向类型,通过col_62986关联
    (
      select
         col_62986,
         col_30859
      from tbl_5764
      where col_77093 = '20200831'
    )audience_col_50426
    on overture.col_62986 = audience_col_50426.col_62986
    left join(
        select
            col_62986,
            col_5384 as ad_audit_col_5384,
            col_47564 as ad_audit_col_47564,
            col_84401  as ad_audit_col_84401
        from tbl_1989
        where col_77093 = '20200831'
    )ad_audit_industry
    on overture.col_62986 = ad_audit_industry.col_62986
    left join (
        select
            col_43781,
            col_5384 as adp_col_5384,
            col_47564 as adp_col_47564,
            col_84401 as adp_col_84401
        from tbl_2174
    )industry on ad_attr.col_84401 = industry.col_43781
    left join (
        select
            col_80511,
            col_17410
        from
            tbl_7077
        where col_77093='20200831'
    )live_creative on live_creative.col_80511=overture.col_80511
    
)bid_overture
left outer join
(
    select
        billing_stat.col_80511,
        billing_stat.rit,
        billing_stat.col_47217,
        billing_stat.col_62986,
        sum(if(col_86073 in (11,12),col_65902,0)) col_22924, --现金消耗
        sum(if(col_86073 = 2,col_65902,0)) as col_53946,--返点消耗
        sum(if(col_86073 = 3,col_65902,0)) as col_57809,--赠款消耗
        sum(if(col_86073 = 4,col_65902,0)) as col_71220,--返货消耗
        sum(if(col_86073 = 11,col_65902,0)) as col_81800,--预付款消耗
        sum(if(col_86073 = 12,col_65902,0)) as col_70221,--授信消耗
        sum(if(billing_stat.col_79149 in (44, 1406),col_65902,0)) as col_11540--开户费消耗
    from
    (
        select col_80511,col_79149,rit,col_47217,col_62986,
            sum(if(col_22924 is null, 0, col_22924)) as col_65902
        from tbl_2145
        where col_77093 = '20200831'
        group by col_80511,col_79149,rit,col_47217,col_62986
    ) billing_stat
    left outer join  (
        select col_79149,col_86073
        from tbl_4763
        where col_77093 = '20200831'
    ) capital_pool
    on capital_pool.col_79149 = billing_stat.col_79149
    group by
    billing_stat.col_80511,
    billing_stat.rit,
    billing_stat.col_47217,
    billing_stat.col_62986
)bid_billing
on bid_overture.col_80511 = bid_billing.col_80511
and bid_overture.rit = bid_billing.rit
and bid_overture.col_47217 = bid_billing.col_47217
and bid_overture.col_62986 = bid_billing.col_62986
and bid_overture.col_65902 >0
left join vip_advertiser on bid_overture.col_30973 = vip_advertiser.col_30973
limit 10000

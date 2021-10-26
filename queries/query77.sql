select
    '2020-08-31' as col_24989,
    ad_attr.dpa_col_76904,
    dwd_all.col_74464 as dpa_col_74464,
    ad_customer_rel.col_17160,
    ad_customer_rel.col_87151,
    ad_attr.col_17185,
    ad_attr.col_76340,
    ad_attr.col_63940,
    ad_attr.is_direct_dpa,
    dwd_all.col_10082,
    app_attr.col_1857,
    campaign_attr.col_46144,  --此处没有用if(col_67236=0,ad.col_46144, campaign.col_46144)逻辑的原因是ad表中的转化后的col_46144并不会有5的值，所以直接取广告组的col_46144
    if(campaign_attr.col_46144=5,1,0) as col_76859,
    customer_group_rel.col_86040,
    ad_customer_rel.col_5384,
    ad_customer_rel.col_47564,
    sum(dwd_all.col_37212) as col_37212,
    company_attr.col_78590
from
(
    select
        col_62986,
        col_61459['col_74464'] as col_74464,
        case
            when rit >= 800000000 and rit < 900000000 then 800000000
            when rit >= 900000000 and rit < 1000000000 then 900000000
            else rit
        end as col_10082,
        sum(col_37212) as col_37212
    from
        tbl_3917
    where
        col_77093 = '20200831'
        and col_61459['col_74464'] is not null
        and col_37212 >0
        group by col_62986, col_61459['col_74464'],
        case
            when rit >= 800000000 and rit < 900000000 then 800000000
            when rit >= 900000000 and rit < 1000000000 then 900000000
            else rit
        end
)dwd_all
left join (
    select
        col_62986,
        col_43924,
        col_17185,
        col_76340,
        col_63940,
        col_30973,
        get_json_object(col_71951,'$.col_76904') as dpa_col_76904,
        get_json_object(col_71951, '$.audience.dpa_local_audience') as is_direct_dpa
    from tbl_4121
    where col_77093 = '20200831'
    and length(trim(get_json_object(col_71951,'$.col_76904'))) <> 0
)ad_attr on dwd_all.col_62986 = ad_attr.col_62986
left join (
    select
        col_43924,col_46144
    from tbl_5371
    where col_77093 = '20200831'
)campaign_attr on ad_attr.col_43924 = campaign_attr.col_43924
left join (
    select
        col_62986,
        col_17160,
        col_87151,
        col_40120,
        col_5384,
        col_47564
    from tbl_7283
    where col_77093='20200831'
)ad_customer_rel on dwd_all.col_62986 = ad_customer_rel.col_62986
inner join
(
    select col_87151, col_86040
    from tbl_2591
    where col_77093 = '20200831'
)customer_group_rel on ad_customer_rel.col_87151 = customer_group_rel.col_87151
left join
(
    select col_10082,col_1857
    from tbl_4989
    where col_77093 = '20200831'
)app_attr on dwd_all.col_10082 = app_attr.col_10082
left join
(
    select col_17160, col_12073
    from tbl_7269
    where col_77093 = '20200831'
)customer_attr on ad_customer_rel.col_17160 = customer_attr.col_17160
left join(
    select
        col_12073,
        col_78590
    from
        tbl_5739
    where
        col_77093 = '20200831'
)company_attr on customer_attr.col_12073 = company_attr.col_12073
group by
    ad_attr.dpa_col_76904,
    dwd_all.col_74464,
    ad_customer_rel.col_17160,
    ad_customer_rel.col_87151,
    ad_attr.col_17185,
    ad_attr.col_76340,
    ad_attr.col_63940,
    ad_attr.is_direct_dpa,
    dwd_all.col_10082,
    app_attr.col_1857,
    campaign_attr.col_46144,
    if(campaign_attr.col_46144=5,1,0),
    customer_group_rel.col_86040,
    ad_customer_rel.col_5384,
    ad_customer_rel.col_47564,
    company_attr.col_78590
limit 10000

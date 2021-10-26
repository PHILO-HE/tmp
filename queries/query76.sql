select
    rit,
    col_47217,
    col_10082,
    col_1857,
    stats.col_12117,
    stats.col_43308,
    col_80511,
    stats.col_62986 as col_62986,
    stats.col_43924 as col_43924,
    col_8818,
    col_71053,
    col_26342,
    col_24913,
    col_65902,
    col_94642,
    if(ad_attr.col_67236=0, ad_attr.col_46144, campaign_attr.col_46144) as col_46144,
    col_17160,
    col_87151,
    col_40120,
    col_5384,
    col_47564,
    case when if(ad_attr.col_67236=0, ad_attr.col_46144, campaign_attr.col_46144) = 5 and (col_47217 = 80016 or dpa_col_40278_id = 20000001) then 1
        when if(ad_attr.col_67236=0, ad_attr.col_46144, campaign_attr.col_46144) <> 5 and col_94642 = 2 then 1
        else 0  end as col_80031,
    coalesce(ad_audit_col_5384,adp_col_5384) as col_49580,
    coalesce(ad_audit_col_47564,adp_col_47564) as col_95052,
    coalesce(ad_audit_col_84401,adp_col_84401) as col_62334,
    col_43308_col_29499,
    col_76348,
    col_81800,
    col_70221,
    col_53946,
    col_57809,
    col_8954
from(
    select
        rit,
        col_47217,
        its.col_12117 as col_12117,
        iogs.col_43308 as col_43308,
        col_80511,
        col_62986,
        col_43924,
        col_76348,
        col_8954,
        sum(col_8818) as col_8818,
        sum(col_71053) as col_71053,
        sum(col_26342) as col_26342,
        sum(col_24913) as col_24913,
        sum(col_65902) as col_65902,
        sum(col_81800) as col_81800,
        sum(col_70221) as col_70221,
        sum(col_53946) as col_53946,
        sum(col_57809)  as col_57809
    from
    (
        select
            rit,
            col_47217,
            col_12117,
            col_43308,
            col_80511,
            col_62986,
            col_43924,
            col_76348,
            col_8954,
            0 as col_8818,
            0 as col_71053,
            0 as col_26342,
            0 as col_24913,
            sum(col_65902) as col_65902,
            sum(col_81800) as col_81800,
            sum(col_70221) as col_70221,
            sum(col_53946) as col_53946,
            sum(col_57809)  as col_57809
        from tbl_6784
        where col_77093 = '20200831'
        group by
            rit,
            col_47217,
            col_12117,
            col_43308,
            col_80511,
            col_62986,
            col_43924,
            col_76348,
            col_8954
        union all
        select
            rit,
            col_47217,
            col_12117,
            col_43308,
            col_80511,
            col_62986,
            col_43924,
            col_76348,
            col_8954,
            sum(col_8818) as col_8818,
            sum(col_71053) as col_71053,
            sum(col_26342) as col_26342,
            sum(col_24913) as col_24913,
            0 as col_65902,
            0 as col_81800,
            0 as col_70221,
            0 as col_53946,
            0 as col_57809
        from tbl_3917
        where col_77093 = '20200831'
        group by
            rit,
            col_47217,
            col_12117,
            col_43308,
            col_80511,
            col_62986,
            col_43924,
            col_76348,
            col_8954
    )all
    left join(
        select
            col_85335 as col_12117
        from tbl_4538
        where date = '20200831'
        group by
            col_85335
    )its on all.col_12117 = its.col_12117
    left join(
        select
            col_59148 as col_43308
        from tbl_4538
        where date = '20200831'
        group by
            col_59148
    )iogs on cast(all.col_43308 as bigint) = cast(iogs.col_43308 as bigint)
    group by
        rit,
        col_47217,
        its.col_12117,
        iogs.col_43308,
        col_80511,
        col_62986,
        col_43924,
        col_76348,
        col_8954
)stats
inner join(
    select
        col_62986,
        case
          when if(col_66475=1, col_68653, col_66475) in (5, 10, 102, 104, 203) then 1
          when if(col_66475=1, col_68653, col_66475) in (8, 101, 103, 105) then 2
          when if(col_66475=1, col_68653, col_66475) in (2, 6) then 3
          when if(col_66475=1, col_68653, col_66475) = 4 then -11 -- 开屏
        else -10 -- 其他
        end as col_46144,
        col_67236,
        get_json_object(col_71951, '$.col_76904') AS dpa_col_40278_id,
        col_84401 as industry_v3
    from tbl_4121
    where col_77093='20200831'
    and coalesce(col_42642,0) <> 11 --去掉ADX的数据
    and coalesce(col_75216,0) not in (2,3,4) ---过滤掉adx打底数据，4表示PDB-DSP的打底计划，只取本地数据
)ad_attr on (stats.col_62986 = ad_attr.col_62986)
inner join
(
    select
        col_43924,
        col_19590,
        col_94642,
        if(col_46144 is not NULL, col_46144, -10) as col_46144 --与本地的口径保持一致
    from tbl_5371
    where col_77093='20200831' and col_19590 = 2 --只获取竞价的数据，2表示竞价
) campaign_attr on (stats.col_43924 = campaign_attr.col_43924)
left join
(
    select
        col_62986,
        col_17160,
        col_87151,
        col_40120,
        col_5384,
        col_47564
    from tbl_7283
    where col_77093='20200831'
) customer_attr on (stats.col_62986 = customer_attr.col_62986)
left join(
    select
        col_62986,
        col_5384 as ad_audit_col_5384,
        col_47564 as ad_audit_col_47564,
        col_84401  as ad_audit_col_84401
    from tbl_1989
    where col_77093 = '20200831'
)ad_audit_industry on (stats.col_62986 = ad_audit_industry.col_62986)
left join (
    select
        col_43781,
        col_5384 as adp_col_5384,
        col_47564 as adp_col_47564,
        col_84401 as adp_col_84401
    from tbl_2174
)industry on (ad_attr.industry_v3 = industry.col_43781)
inner join (
    select
        col_10082,
        col_1857
    from
        tbl_4989
    where
        col_77093 = '20200831'
        and col_78788 = '搜索广告'
) inventory on (
    case
        when stats.rit >= 800000000 and stats.rit < 900000000 then 800000000
        when stats.rit >= 900000000 and stats.rit < 1000000000 then 900000000
        else stats.rit
    end
) = inventory.col_10082
left join(
    select
        col_85335 as col_12117,
        col_59148 as col_43308,
        col_6364 as  col_43308_col_29499
    from tbl_4538
    where date = '20200831'
    group by
        col_85335,
        col_59148,
        col_6364
)dim on stats.col_12117 = dim.col_12117 and
stats.col_43308 = dim.col_43308
limit 10000

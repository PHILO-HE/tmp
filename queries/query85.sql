select
    col_80511,
    col_62986,
    col_43924,
    col_30973,
    col_47217,
    rit,
    sum(col_81323) as col_81323,
    sum(col_81323) as col_38811,
    sum(col_86219) as col_86219,
    sum(col_75623) as col_75623,
    sum(col_74219) as col_74219,
    sum(col_42493) as col_42493,
    sum(col_634) as col_634,
    sum(col_48884) as col_48884,
    sum(col_71043) as col_71043,
    sum(col_64237) as col_64237,
    sum(col_24221) as col_24221,
    sum(col_65902) as col_65902,
    sum(col_37212) as col_37212,
    col_55947,
    col_79355,
    'null' as col_76160,
    sum(col_22924) as  col_22924, --现金消耗
    sum(col_53946) as col_53946,--返点消耗
    sum(col_57809) as col_57809,--赠款消耗
    sum(col_71220) as col_71220,--返货消耗
    sum(col_81800) as col_81800,--预付款消耗
    sum(col_70221) as col_70221,--授信消耗
    sum(col_11540) as col_11540 --开户费消耗
from
(
    select
    overture_no_union.col_80511,
    overture_no_union.col_62986,
    overture_no_union.col_43924,
    overture_no_union.col_30973,
    overture_no_union.col_47217,
    overture_no_union.rit,
    overture_no_union.col_81323,
    overture_no_union.col_38811,
    overture_no_union.col_86219,
    overture_no_union.col_75623,
    overture_no_union.col_74219,
    overture_no_union.col_42493,
    overture_no_union.col_634,
    overture_no_union.col_48884,
    overture_no_union.col_71043,
    overture_no_union.col_64237,
    overture_no_union.col_24221,
    case
    when ad_attr.col_62986 is not null or tbl_5371.col_43924 is not null then 0
    when col_97731_detail_no_union.col_63142 =2 then col_97731_detail_no_union.col_87132
    when col_97731_detail_no_union.col_63142 =1 then col_97731_detail_no_union.col_80564 - col_97731_detail_no_union.col_87072
    else overture_no_union.col_65902 end as col_65902,
    overture_no_union.col_37212,
    col_97731_detail_no_union.col_55947,
    col_97731_detail_no_union.col_79355,
    overture_no_union.col_76160,
    0 as  col_22924, --现金消耗
    0 as col_53946,--返点消耗
    0 as col_57809,--赠款消耗
    0 as col_71220,--返货消耗
    0 as col_81800,--预付款消耗
    0 as col_70221,--授信消耗
    0 as col_11540 --开户费消耗
    from
    (
    select
        col_80511,
        col_47217,
        rit,
        col_62986,
        col_43924,
        col_30973,
        sum(col_71053) as col_81323,
        sum(col_71053) as col_38811,
        sum(col_26342) as col_86219,
        sum(col_8818) as col_75623,
        sum(col_60292) as col_74219,
        sum(col_11412) as col_42493,
        sum(col_47080) as col_634,
        sum(col_17159) as col_48884,
        sum(col_5603) as col_71043,
        sum(col_24913) as col_64237,
        0 as col_24221,
        sum(col_37212) as col_37212,
        sum(col_65902) as col_65902,
        null as col_76160
    from tbl_8002
    where col_77093 = '20200831'
    and ( coalesce(rit,0) < 800000000 or coalesce(rit,0) >= 1000000000)
    group by col_80511,
        col_47217,
        rit,
        col_62986,
        col_43924,
        col_30973
    ) overture_no_union
    left outer join
    (
        select col_62986
        from tbl_4121
        where col_77093='20200831'
        and get_json_object(col_71951, '$.col_17422') = 1 -- 过滤品牌实结部分，因为这部分走实时计费，不需要再拆分
    ) ad_attr
    on overture_no_union.col_62986 = ad_attr.col_62986
    left join (
        select
            col_43924
        FROM
            tbl_5371
        where
            col_77093 = '20200831'
        and col_19590 = 1
        and col_40017 = 1 --过滤出来品牌R&F,因为这部分走实时计费，不需要再拆分
    ) tbl_5371
    on tbl_5371.col_43924 = overture_no_union.col_43924
    left outer join
    (
    select col_80511,rit,col_47217,col_63142,col_87132,
    col_80564,col_87072,col_55947,col_79355,col_62986
    from tbl_6547
    where col_77093 = '20200831'
    and is_union ='no_union'
    )col_97731_detail_no_union
    on overture_no_union.col_80511 = col_97731_detail_no_union.col_80511
    and overture_no_union.rit = col_97731_detail_no_union.rit
    and overture_no_union.col_47217 = col_97731_detail_no_union.col_47217
    and overture_no_union.col_62986 = col_97731_detail_no_union.col_62986
    union all
    select   -- 拼接品牌实结部分col_65902 以及分资金池col_65902
        col_80511,
        billing.col_62986,
        billing.col_43924,
        col_30973,
        col_47217,
        rit,
        0 as col_81323,
        0 as col_38811,
        0 as col_86219,
        0 as col_75623,
        0 as col_74219,
        0 as col_42493,
        0 as col_634,
        0 as col_48884,
        0 as col_71043,
        0 as col_64237,
        0 as col_24221,
        sum(col_65902) as col_65902,
        0 as col_37212,
        null as col_55947,
        null as col_79355, -- 品牌实结不需要拆分 给null 后续分资金池消耗直接取即可
        map('col_65902', sum(col_65902)) as col_76160,
        sum(if(col_86073 in (11,12),col_65902,0)) col_22924, --现金消耗
        sum(if(col_86073 = 2,col_65902,0)) as col_53946,--返点消耗
        sum(if(col_86073 = 3,col_65902,0)) as col_57809,--赠款消耗
        sum(if(col_86073 = 4,col_65902,0)) as col_71220,--返货消耗
        sum(if(col_86073 = 11,col_65902,0)) as col_81800,--预付款消耗
        sum(if(col_86073 = 12,col_65902,0)) as col_70221,--授信消耗
        sum(if(billing.col_79149 in (44, 1406),col_65902,0)) as col_11540 --开户费消耗
    from
    (
        select
            col_80511,
            col_62986,
            col_43924,
            col_30973,
            col_47217,
            rit,
            col_79149,
            sum(col_65902) as col_65902
        from tbl_9873
        where col_77093 = '20200831'
        and (coalesce(rit,0) < 800000000 or coalesce(rit,0) >= 1000000000)
        group by
            col_80511,
            col_62986,
            col_43924,
            col_30973,
            col_47217,
            rit,
            col_79149
    ) billing
    left join
    (
        select col_62986
        from tbl_4121
        where col_77093='20200831'
        and  get_json_object(col_71951, '$.col_17422') = 1 -- 过滤品牌实结部分，因为这部分走实时计费，不需要再拆分
    ) cpt_cpm_ad
    on billing.col_62986 = cpt_cpm_ad.col_62986
    left join (
        select
            col_43924
        from
            tbl_5371
        where col_77093 = '20200831'
        and col_19590 = 1
        and col_40017 = 1 -- 拿出品牌R&F部分
    ) rf_cpm_ad
    on billing.col_43924 = rf_cpm_ad.col_43924
    left join(
            select col_79149,col_86073
            from tbl_4763
            where col_77093 = '20200831'
    ) capital_pool on billing.col_79149 = capital_pool.col_79149
    where
        cpt_cpm_ad.col_62986 is not null or rf_cpm_ad.col_43924 is not null
    group by
        col_80511,
        billing.col_62986,
        billing.col_43924,
        col_30973,
        col_47217,
        rit
) all
group by
    col_80511,
    col_62986,
    col_43924,
    col_30973,
    col_47217,
    rit,
    col_55947,
    col_79355
limit 10000

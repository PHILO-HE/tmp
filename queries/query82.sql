select
    col_80511,
    stats_and_billing.col_62986 as col_62986,
    stats_and_billing.col_43924,
    col_30973,
    rit,
    col_47217,
    SUM(col_71053) as col_71053,
    SUM(col_26342) as col_26342,
    SUM(col_8818) as col_8818,
    SUM(col_60292) as col_60292,
    SUM(col_11412) as col_11412,
    SUM(col_47080) as col_47080,
    SUM(col_17159) as col_17159,
    SUM(col_5603) as col_5603,
    SUM(col_24913) as col_24913,
    SUM(col_32100) as col_32100,
    SUM(col_26362) as col_26362,
    SUM(col_65350) as col_65350,
    SUM(col_59149) as col_59149,
    SUM(col_85847) as col_85847,
    SUM(col_37212 + if(coalesce(tbl_4121.col_17422, 0) = 1 or coalesce(tbl_5371.col_40017, 0) = 1, 0, col_97731_col_37212)) as col_37212,
    SUM(col_65902) as col_65902,
    col_67236,
    col_62384,
    col_8394unixcol_24989(
        unix_col_15250(col_62384),
        'yyyy-MM-dd 00:00:00'
    ) as col_82734,
    sum(col_22924) col_22924, --现金消耗
    sum(col_53946) as col_53946,--返点消耗
    sum(col_57809) as col_57809,--赠款消耗
    sum(col_81800) as col_81800,--预付款消耗
    sum(col_70221) as col_70221,--授信消耗
    sum(col_11540) as col_11540 --开户费消耗
from
    (
        select
            col_80511,
            col_62986,
            col_43924,
            col_30973,
            rit,
            col_47217,
            col_62384,
            col_71053,
            col_26342,
            col_8818,
            col_60292,
            col_11412,
            col_47080,
            col_17159,
            col_5603,
            col_24913,
            col_32100,
            col_26362,
            col_65350,
            col_59149,
            col_85847,
            col_37212,
            0 as col_65902,
            0 as col_97731_col_37212,
            col_76160,
            0 as col_22924,
            0 as col_53946,
            0 as col_57809,
            0 as col_81800,
            0 as col_70221,
            0 as col_11540
        from
            tbl_1433
        where
            col_77093 = '20200831'
        union all
        select
            col_80511,
            col_62986,
            col_43924,
            col_30973,
            rit,
            col_47217,
            col_62384,
            0 as col_71053,
            0 as col_26342,
            0 as col_8818,
            0 as col_60292,
            0 as col_11412,
            0 as col_47080,
            0 as col_17159,
            0 as col_5603,
            0 as col_24913,
            0 as col_32100,
            0 as col_26362,
            0 as col_65350,
            0 as col_59149,
            0 as col_85847,
            0 as col_37212,
            sum(col_65902) as col_65902,
            0 as col_97731_col_37212,
            map('col_65902', sum(col_65902)) as col_76160,
            sum(if(col_86073 in (11,12),col_65902,0)) col_22924, --现金消耗
            sum(if(col_86073 = 2,col_65902,0)) as col_53946,--返点消耗
            sum(if(col_86073 = 3,col_65902,0)) as col_57809,--赠款消耗
            sum(if(col_86073 = 11,col_65902,0)) as col_81800,--预付款消耗
            sum(if(col_86073 = 12,col_65902,0)) as col_70221,--授信消耗
            sum(if(bid_col_65902.col_79149 in (44, 1406),col_65902,0)) as col_11540 --开户费消耗
        from
            (
                select
                    col_80511,
                    col_62986,
                    col_43924,
                    col_30973,
                    rit,
                    col_47217,
                    col_62384,
                    col_79149,
                    col_65902
                from
                    tbl_2666
                where
                    col_77093 = '20200831'
            )bid_col_65902
            left join
            (
                select
                    col_79149,col_86073
                from
                    tbl_4763
                where
                    col_77093 = '20200831'
            )capital_pool on bid_col_65902.col_79149 = capital_pool.col_79149
        group by
            col_80511,
            col_62986,
            col_43924,
            col_30973,
            rit,
            col_47217,
            col_62384
        union all
        select
            col_62986 as col_80511,
            col_62986,
            col_43924,
            col_30973,
            rit,
            col_47217,
            col_62384,
            0 as col_71053,
            0 as col_26342,
            0 as col_8818,
            0 as col_60292,
            0 as col_11412,
            0 as col_47080,
            0 as col_17159,
            0 as col_5603,
            0 as col_24913,
            0 as col_32100,
            0 as col_26362,
            0 as col_65350,
            0 as col_59149,
            0 as col_85847,
            0 as col_37212,
            sum(col_65902) as col_65902,
            sum(col_65902) as col_97731_col_37212,
            map('col_65902', sum(col_65902)) as col_76160,
            sum(if(col_86073 in (11,12),col_65902,0)) col_22924, --现金消耗
            sum(if(col_86073 = 2,col_65902,0)) as col_53946,--返点消耗
            sum(if(col_86073 = 3,col_65902,0)) as col_57809,--赠款消耗
            sum(if(col_86073 = 11,col_65902,0)) as col_81800,--预付款消耗
            sum(if(col_86073 = 12,col_65902,0)) as col_70221,--授信消耗
            sum(if(col_97731_col_65902.col_79149 in (44, 1406),col_65902,0)) as col_11540 --开户费消耗
        from
            (
                select
                    col_62986,
                    col_43924,
                    col_30973,
                    rit,
                    col_47217,
                    col_62384,
                    col_79149,
                    col_65902
                from
                    tbl_9044
                where
                    col_77093 = '20200831'
            )col_97731_col_65902
            left join
            (
                select
                    col_79149,col_86073
                from
                    tbl_4763
                where
                    col_77093 = '20200831'
            )capital_pool on col_97731_col_65902.col_79149 = capital_pool.col_79149
        group by
            col_62986,
            col_43924,
            col_30973,
            rit,
            col_47217,
            col_62384
    ) stats_and_billing
    left outer join (
        select
            col_62986,
            col_67236,
            col_17422
        from
            tbl_4121
        where
            col_77093 = '20200831'
    ) tbl_4121 on stats_and_billing.col_62986 = tbl_4121.col_62986
    left outer join (
        select
            col_43924,
            col_40017
        from
            tbl_5371
        where
            col_77093 = '20200831'
    ) tbl_5371 on stats_and_billing.col_43924 = tbl_5371.col_43924
group by
    col_80511,
    stats_and_billing.col_62986,
    stats_and_billing.col_43924,
    col_30973,
    rit,
    col_47217,
    col_62384,
    col_67236
limit 10000

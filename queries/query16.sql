with i_date as (

select
    col_76332,
    COALESCE(col_17347, 0) as col_17347,
    COALESCE(col_40532, 0) as col_40532,
    COALESCE(col_2495, 0) as col_2495,
    COALESCE(col_17928, 0) as col_17928,
    COALESCE(col_30329, 0) as col_30329,
    COALESCE(col_23653, 0) as col_23653,
    COALESCE(col_74744, 0) as col_74744,
    COALESCE(col_6130, 0) as col_6130,
    COALESCE(col_11533, 0) as col_11533,
    COALESCE(col_33920, 0) as col_33920,
    COALESCE(col_77518, 0) as col_77518,
    COALESCE(col_78456, 0) as col_78456,
    COALESCE(col_85490, 0) as col_85490,
    COALESCE(col_97239, 0) as col_97239,
    COALESCE(col_13116, 0) as col_13116,
    COALESCE(col_23875, 0) as col_23875,
    COALESCE(col_28261, 0) as col_28261,
    COALESCE(col_58584, 0) as col_58584,
    COALESCE(col_81816, 0) as col_81816,
    COALESCE(col_93911, 0) as col_93911,
    COALESCE(col_85586, 0) as col_85586,
    COALESCE(col_82974, 0) as col_82974,
    COALESCE(col_50317, 0) as col_50317,
    COALESCE(col_32514, 0) as col_32514,
    COALESCE(col_27828, 0) as col_27828,
    COALESCE(col_22231, 0) as col_22231,
    COALESCE(col_90490, 0) as col_90490,
    COALESCE(col_27757, 0) as col_27757,
    COALESCE(col_12419, 0) as col_12419,
    COALESCE(col_92596, 0) as col_92596,
    COALESCE(col_30357, 0) as col_30357,
    COALESCE(col_64393, 0) as col_64393,
    COALESCE(col_1618, 0) as col_1618,
    col_28543,
    case when col_28543=1112 then 'live_stream' when col_28543=1128 then 'aweme' end col_24229
from
    (
        select
            col_76332,
            col_35211(
                distinct if(
                    col_28777 = 1
                    and date BETWEEN '${date -6}'
                    and '20200831',
                    col_37410,
                    'null' 
                )
            ) as col_17347,
            col_35211(
                distinct if(
                    col_28777 = 0
                    and date BETWEEN '${date -6}'
                    and '20200831',
                    col_37410,
                    'null'
                )
            ) as col_40532,
            sum(
                if(
                    col_28777 = 1
                    and date BETWEEN '${date -6}'
                    and '20200831',
                    col_66240,
                    0
                )
            ) as col_2495,
            sum(
                if(
                    col_28777 = 0
                    and date BETWEEN '${date -6}'
                    and '20200831',
                    col_66240,
                    0
                )
            ) as col_17928,
            sum(
                if(
                    date BETWEEN '${date -6}'
                    and '20200831'
                    and (
                        col_28777 = 0
                        or col_28777 is null
                    ),
                    col_43126,
                    0
                )
            ) as col_30329,
            sum(
                if(
                    date BETWEEN '${date -6}'
                    and '20200831'
                    and col_1241 is not null,
                    col_1241,
                    0
                )
            ) as col_23653,
            col_35211(
                distinct if(
                    date BETWEEN '${date -6}'
                    and '20200831',
                    col_54996,
                    'null'
                )
            ) as col_74744,
            col_35211(
                distinct if(
                    date BETWEEN '${date -6}'
                    and '20200831',
                    col_37410,
                    'null'
                )
            ) as col_6130,
            sum(
                if(
                    date BETWEEN '${date -6}'
                    and '20200831'
                    and col_43126 is not null,
                    col_43126,
                    0
                )
            ) as col_11533,
            col_35211(
                distinct if(
                    col_49298 = 'songli'
                    and col_28777 = 1
                    and col_54996 BETWEEN '${date -6}'
                    and '20200831',
                    col_37410,
                    'null'
                )
            ) as col_33920,
            col_35211(
                distinct if(
                    col_49298 = 'songli'
                    and col_28777 = 0
                    and col_54996 BETWEEN '${date -6}'
                    and '20200831',
                    col_37410,
                    'null'
                )
            ) as col_77518,
            sum(
                if(
                    col_49298 = 'songli'
                    and col_28777 = 1
                    and col_54996 BETWEEN '${date -6}'
                    and '20200831',
                    col_66240,
                    0
                )
            ) as col_78456,
            sum(
                if(
                    col_49298 = 'songli'
                    and col_28777 = 0
                    and col_54996 BETWEEN '${date -6}'
                    and '20200831',
                    col_66240,
                    0
                )
            ) as col_85490,
            col_35211(
                distinct if(
                    col_28777 = 1
                    and date BETWEEN '${date -29}'
                    and '20200831',
                    col_37410,
                    'null'
                )
            ) as col_97239,
            col_35211(
                distinct if(
                    col_28777 = 0
                    and date BETWEEN '${date -29}'
                    and '20200831',
                    col_37410,
                    'null'
                )
            ) as col_13116,
            sum(
                if(
                    col_28777 = 1
                    and date BETWEEN '${date -29}'
                    and '20200831',
                    col_66240,
                    0
                )
            ) as col_23875,
            sum(
                if(
                    col_28777 = 0
                    and date BETWEEN '${date -29}'
                    and '20200831',
                    col_66240,
                    0
                )
            ) as col_28261,
            sum(
                if(
                    date BETWEEN '${date -29}'
                    and '20200831'
                    and (
                        col_28777 = 0
                        or col_28777 is null
                    ),
                    col_43126,
                    0
                )
            ) as col_58584,
            sum(
                if(
                    date BETWEEN '${date -29}'
                    and '20200831'
                    and col_1241 is not null,
                    col_1241,
                    0
                )
            ) as col_81816,
            col_35211(
                distinct if(
                    date BETWEEN '${date -29}'
                    and '20200831',
                    col_54996,
                    'null'
                )
            ) as col_93911,
            col_35211(
                distinct if(
                    date BETWEEN '${date -29}'
                    and '20200831',
                    col_37410,
                    'null'
                )
            ) as col_85586,
            sum(
                if(
                    date BETWEEN '${date -29}'
                    and '20200831'
                    and col_43126 is not null,
                    col_43126,
                    0
                )
            ) as col_82974,
            col_35211(
                distinct if(
                    col_49298 = 'songli'
                    and col_28777 = 1
                    and col_54996 BETWEEN '${date -29}'
                    and '20200831',
                    col_37410,
                    'null'
                )
            ) as col_50317,
            col_35211(
                distinct if(
                    col_49298 = 'songli'
                    and col_28777 = 0
                    and col_54996 BETWEEN '${date -29}'
                    and '20200831',
                    col_37410,
                    'null'
                )
            ) as col_32514,
            sum(
                if(
                    col_49298 = 'songli'
                    and col_28777 = 1
                    and col_54996 BETWEEN '${date -29}'
                    and '20200831',
                    col_66240,
                    0
                )
            ) as col_27828,
            sum(
                if(
                    col_49298 = 'songli'
                    and col_28777 = 0
                    and col_54996 BETWEEN '${date -29}'
                    and '20200831',
                    col_66240,
                    0
                )
            ) as col_22231,
            sum(
                if(
                    date = '20200831'
                    and col_28777 = 1,
                    col_66240,
                    0
                )
            ) as col_90490,
            sum(
                if(
                    date = '20200831'
                    and col_28777 = 0,
                    col_66240,
                    0
                )
            ) as col_27757,
            sum(
                if(
                    date = '20200831'
                    and (
                        col_28777 = 0
                        or col_28777 is null
                    ),
                    col_43126,
                    0
                )
            ) as col_12419,
            sum(
                if(
                    date = '20200831'
                    and col_1241 is not null,
                    col_1241,
                    0
                )
            ) as col_92596,
            sum(
                if(
                    date = '20200831'
                    and col_43126 is not null,
                    col_43126,
                    0
                )
            ) as col_30357,
            sum(
                if(
                    date = '20200831'
                    and col_49298 = 'songli'
                    and col_28777 = 1,
                    col_66240,
                    0
                )
            ) as col_64393,
            sum(
                if(
                    date = '20200831'
                    and col_49298 = 'songli'
                    and col_28777 = 0,
                    col_66240,
                    0
                )
            ) as col_1618,
            col_28543
        from
            tbl_143
        where
            date BETWEEN '${date-29}'
            and '20200831'
            and col_8527 = 10
            and col_30850 = 'zhibo'
            and col_48633 = 1
        group by
            col_76332,
            col_28543
    ) consume
)
select
    a.col_76332,
    c.col_5779,
    c.col_14381,
    c.col_69758,
    c.col_7509,
    c.col_15638,
    c.col_9881,
    c.col_75567,
    c.col_30103,
    c.col_17398,
    COALESCE(b.col_17347, 0) as col_17347,
    COALESCE(b.col_40532, 0) as col_40532,
    COALESCE(b.col_2495, 0) as col_2495,
    COALESCE(b.col_17928, 0) as col_17928,
    COALESCE(b.col_30329, 0) as col_30329,
    COALESCE(b.col_23653, 0) as col_23653,
    COALESCE(b.col_74744, 0) as col_74744,
    COALESCE(b.col_33920, 0) as col_33920,
    COALESCE(b.col_77518, 0) as col_77518,
    COALESCE(
        b.col_78456,
        0
    ) as col_78456,
    COALESCE(
        b.col_85490,
        0
    ) as col_85490,
    COALESCE(b.col_97239, 0) as col_97239,
    COALESCE(b.col_13116, 0) as col_13116,
    COALESCE(b.col_23875, 0) as col_23875,
    COALESCE(b.col_28261, 0) as col_28261,
    COALESCE(b.col_58584, 0) as col_58584,
    COALESCE(b.col_81816, 0) as col_81816,
    COALESCE(b.col_93911, 0) as col_93911,
    COALESCE(b.col_50317, 0) as col_50317,
    COALESCE(b.col_32514, 0) as col_32514,
    COALESCE(
        b.col_27828,
        0
    ) as col_27828,
    COALESCE(
        b.col_22231,
        0
    ) as col_22231,
    COALESCE(a.col_90490, 0) as col_90490,
    COALESCE(a.col_27757, 0) as col_27757,
    COALESCE(a.col_12419, 0) as col_12419,
    COALESCE(a.col_92596, 0) as col_92596,
    COALESCE(
        a.col_64393,
        0
    ) as col_64393,
    COALESCE(
        a.col_1618,
        0
    ) as col_1618,
    COALESCE(col_6130, 0) as col_6130,
    COALESCE(col_11533, 0) as col_11533,
    COALESCE(col_85586, 0) as col_85586,
    COALESCE(col_82974, 0) as col_82974,
    COALESCE(a.col_30357, 0) as col_30357,
    a.col_24229 as col_24229
from
    (
        select
            col_76332,
            sum(col_90490) as col_90490,
            sum(col_27757) as col_27757,
            sum(col_12419) as col_12419,
            sum(col_92596) as col_92596,
            sum(col_64393) as col_64393,
            sum(col_1618) as col_1618,
            sum(col_30357) as col_30357,
            col_24229
        from
            (
                select
                    col_76332,
                    col_90490,
                    col_27757,
                    col_12419,
                    col_92596,
                    col_64393,
                    col_1618,
                    col_30357,
                    col_24229
                from
                    dwm_anchor_income_byapp_df
                where
                    date = '${date-1}'
                    AND col_8527 = 10
                union all
                select
                    col_76332,
                    col_90490,
                    col_27757,
                    col_12419,
                    col_92596,
                    col_64393,
                    col_1618,
                    col_30357,
                    a.col_24229
                from
                    (
                        SELECT
                            *
                        FROM
                            i_date
                    ) a
                    JOIN(
                        SELECT
                            col_28543,
                            col_42096 as col_24229
                        FROM
                            tbl_8538
                        WHERE
                            col_8527 = 10
                    ) b ON a.col_28543 = b.col_28543
            ) a1
        group by
            col_76332,
            col_24229
    ) a
    left outer join i_date b on a.col_76332 = b.col_76332 and a.col_24229=b.col_24229
    left outer join (
        select
            col_76332,
            col_54902 as col_5779,
            col_25960 as col_14381,
            col_40278 as col_69758,
            col_7509,
            col_15638,
            col_58262 as col_9881,
            col_30103,
            col_17398,
            col_75567
        FROM
            tbl_9551
        WHERE
            date = '20200831'
            AND col_8527 = 10
    ) c on a.col_76332 = c.col_76332
    limit 10000

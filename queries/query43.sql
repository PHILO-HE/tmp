select
    x1.col_65263 as col_65263,
    x1.col_57001 as col_57001,
    col_5963,
    col_89703,
    col_17190,
    col_40148,
    col_5835,
    col_65040,
    col_26104,
    coalesce(col_98264, 0) as col_98264,
    col_40862,
    col_29842,
    col_21384,
    col_74015,
    col_77013,
    col_11077,
    col_59514,
    col_89327,
    x1.col_151 as col_151,
    coalesce(x1.col_3859, 0) as col_3859,
    coalesce(x1.col_25960, '') as col_25960,
    coalesce(x1.col_48768, '') as col_48768,
    coalesce(col_61530, '') as col_61530,
    coalesce(age, -1) as age,
    coalesce(col_42250, '') as col_42250,
    col_4479 as is_first_publish,
    col_32393,
    col_99249_col_13174,
    col_7751,
    col_5008,
    col_5008_str,
    col_43631,
    col_55565,
    col_55565_str,
    col_50706,
    col_26901,
    coalesce(col_72074, 0) as col_72074,
    coalesce(col_13467, 0) as col_13467,
    coalesce(vv, 0) as vv,
    coalesce(uv, 0) as uv,
    coalesce(col_85978, 0) as col_85978,
    coalesce(col_28788, 0) as col_28788,
    coalesce(col_10797, 0) as col_10797,
    coalesce(col_69856, 0) as col_69856,
    coalesce(col_78822, 0) as col_78822,
    coalesce(col_11535, 0) as col_11535,
    coalesce(col_38626, 0) as col_38626,
    coalesce(col_82096, 0) as col_82096,
    coalesce(col_42247, 0) as col_42247,
    coalesce(col_67343, 0) as col_67343,
    coalesce(col_21448, 0) as col_21448,
    coalesce(col_52244, 0) as col_52244,
    coalesce(col_91714, 0) as col_91714,
    coalesce(col_67269, 0) as col_67269,
    coalesce(col_38169, 0) as col_38169,
    coalesce(col_62409, 0) as col_62409,
    coalesce(col_16934, 0) as col_16934,
    coalesce(col_40429, 0) as col_40429,
    coalesce(col_91333, 0) as col_91333,
    coalesce(col_39472, 0) as col_39472,
    col_99537,
    concat(
        'https://www.douyin.com/col_6863/video/',
        x1.col_65263,
        '/?mid=',
        col_99537
    ) as col_82415,
    coalesce(col_90212, '') as col_90212,
    coalesce(x5.col_48768, '') as col_99249_col_6079_col_48768,
    coalesce(x5.col_25960, '') as col_99249_col_65997,
    coalesce(x5.col_27171, '') as col_99249_col_6079_col_27171,
    coalesce(x5.col_29408, '') as col_99249_col_6079_col_29408,
    coalesce(x1.col_13174, '') as at_col_13174s,
    coalesce(x1.col_84978, '') as col_84978,
    coalesce(col_56529, '') as col_56529,
    col_79891 as col_79891,
    CASE
        WHEN tab1.col_13174 IS NULL THEN 0
        ELSE 1
    END AS is_tag,
    COALESCE(col_3636, '') AS col_3636,
    col_93285,
    col_29421,
    col_2003,
    coalesce(col_35211er_vv, 0) as col_35211er_vv,
    coalesce(col_35211er_col_38626, 0) as col_35211er_col_38626,
    coalesce(col_35211er_col_42247, 0) as col_35211er_col_42247,
    coalesce(col_35211er_col_21448, 0) as col_35211er_col_21448,
    coalesce(col_35211er_col_88315, 0) as col_35211er_col_88315,
    coalesce(col_35211er_col_59778, 0) as col_35211er_col_59778,
    coalesce(col_35211er_col_17527, 0) as col_35211er_col_17527,
    coalesce(col_35211er_col_14558, 0) as col_35211er_col_14558,
    tab1.col_32436,
    coalesce(col_77075, 0) as col_77075
from(
        select
            col_65263,
            col_57001,
            col_13174 as col_151,
            col_3859 as col_3859,
            col_99537 as col_99537,
            col_23338 as col_5963,
            col_89703,
            col_17190,
            col_18029 as col_40148,
            col_75377 as col_5835,
            col_78874 as col_65040,
            col_69276 as col_26104,
            col_42731 as col_84978,
            col_368 as col_90212,
            col_598 as col_98264,
            col_40862,
            col_29842,
            col_53718 as col_21384,
            col_8394unixcol_24989(col_53718, 'yyyy-MM-dd HH:mm:ss') as col_74015,
            col_77013,
            col_71883 as col_11077,
            col_11077 as col_59514,
            col_89327 as col_89327,
            col_22925 as col_13174,
            col_32393,
            col_90213 as col_99249_col_13174,
            col_7751,
            col_45348 as col_5008,
            col_8394unixcol_24989(col_45348, 'yyyy-MM-dd HH:mm:ss') as col_5008_str,
            col_43631,
            col_33102 as col_55565,
            col_55565 as col_55565_str,
            col_50706 as col_50706,
            col_94067 as col_26901,
            col_31929 as col_48768,
            col_19502 as col_25960,
            col_14427 as col_61530,
            col_44268 as age,
            case
                when (
                    col_56529 = ''
                    or col_56529 is null
                ) then ''
                else concat('http://p3.pstatp.com/col_59507/', col_56529)
            end as col_56529,
            col_79891,
            col_77075,
            col_93285,
            col_29421,
            col_2003
        from
            tbl_3400
        where
            date = '20200831'
    ) x1
    left join(
        select
            col_3859,
            col_42250
        from
            tbl_1472
        where
            date = '20200831'
            and col_61894 = 'zhongguo'
            and col_3859 > 0 
    ) x2 on x1.col_3859 = x2.col_3859
    left join(
        select
            col_65263,
            col_48768,
            col_65997 as col_25960,
            col_27171,
            col_29408,
            col_4479
        from
            tbl_7580
        where
            date = '20200831'
    ) x5 on x1.col_65263 = x5.col_65263
    left join(
        select
            col_65263,
            col_72074,
            col_13467,
            vv,
            uv,
            col_85978,
            col_28788,
            col_10797,
            col_69856,
            col_78822,
            col_11535,
            col_38626,
            col_82096,
            col_42247,
            col_67343,
            col_21448,
            col_52244,
            col_38169,
            col_62409,
            col_91714,
            col_67269
        from
            tbl_9434
        where
            date = '20200831'
    ) x6 on x1.col_65263 = x6.col_65263
    left join(
        select
            col_65263,
            col_16934,
            col_40429,
            col_91333,
            col_39472
        from
            tbl_8820
        where
            date = '20200831'
    ) x7 on x1.col_65263 = x7.col_65263
    LEFT OUTER JOIN (
        SELECT
            col_13174,
            col_3636,
            col_32436
        FROM
            tbl_5297
        WHERE
            date = '20200831'
    ) tab1 ON x1.col_151 = tab1.col_13174
    left outer join (
        select
            col_65263,
            vv as col_35211er_vv,
            col_38626 as col_35211er_col_38626,
            col_42247 as col_35211er_col_42247,
            col_21448 as col_35211er_col_21448,
            col_88315 as col_35211er_col_88315,
            col_59778 as col_35211er_col_59778,
            col_17527 as col_35211er_col_17527,
            col_14558 as col_35211er_col_14558
        from
            tbl_7162
        where
            date = '20200831'
    ) tab2 on x1.col_65263 = tab2.col_65263
limit 10000

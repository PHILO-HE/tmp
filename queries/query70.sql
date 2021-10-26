WITH group_info AS(
    SELECT
    col_78590,
    col_23219,
    col_75157,
    col_47778,
    col_72948,
    col_18854,
    col_64929,
    col_23006,
    col_28120,
    CASE
        WHEN COALESCE(get_json_object(col_28120, '$.device_col_40278'),'unknown') IN ('xg_android','xg_ios') THEN '西瓜APP发文'
        WHEN COALESCE(get_json_object(col_28120, '$.device_col_40278'),'unknown') IN ('toutiao_android','toutiao_ios') THEN '头条APP发文'
        WHEN COALESCE(get_json_object(col_28120, '$.device_col_40278'),'unknown') = 'pc' THEN 'MP后台发文'
        WHEN COALESCE(get_json_object(col_28120, '$.device_col_40278'),'unknown') = 'aweme_sync' THEN '抖音同步'
        ELSE '其他'
    END as col_60596_pgc,
    CASE
        WHEN COALESCE(get_json_object(col_28120, '$.device_col_40278'),'unknown') IN ('xg_android','xg_ios') THEN '西瓜APP发文'
        WHEN COALESCE(get_json_object(col_28120, '$.device_col_40278'),'unknown') IN ('toutiao_android','toutiao_ios') OR get_json_object(col_30873, '$.col_28543') = '13' THEN '头条APP发文'
        WHEN col_84351 = 54 AND get_json_object(col_30873, '$.col_28543') = '24' THEN '头条PC站发文'
        WHEN col_84351 = 73 AND get_json_object(col_30873, '$.col_28543') = '24' THEN 'MP后台发文'
        WHEN get_json_object(get_json_object(col_30873, '$.ugc_business_col_71951'), '$.is_weibo_crawl' ) = 'true' THEN '微博同步发文'
        WHEN COALESCE(get_json_object(col_28120, '$.device_col_40278'),'unknown') = 'aweme_sync' THEN '抖音同步'
        ELSE '其他'
    END as col_60596_ugc,
    col_1711,
    col_39060,
    col_54933,
    col_35236,
    col_30873,
    col_84351,
    CASE
        WHEN col_39060>= col_54933 THEN '横屏视频'
        WHEN col_39060< col_54933 THEN '竖屏视频'
        ELSE '其他'
    end as video_screen_col_50426,
    col_169,
    col_84686
    FROM
     tbl_5076
    WHERE date = '20200831'  AND  col_68653 in ('xigua')
    and col_23006 not in (5,60)
)

select
    col_13174,
    pgc_auth.col_23219,
    col_24229,
    col_53665,
    col_89189,
    col_60596,
    video_screen_col_50426,
    col_35236_col_59516,
    group_col_21470,
    col_16672,
    col_43841,
    col_5963,
    col_92188,
    col_29908,
    col_50765,
    col_90812,
    col_36907,
    col_23075,
    col_73363,
    col_82576,
    col_83430,
    col_65766,
    col_70855,
    COALESCE(col_4899, '') as col_4899,
    COALESCE(col_60513, '') as col_60513,
    COALESCE(col_66217, '') as col_66217,
    COALESCE(col_54763, '') as col_54763,
    col_53496,
    col_59410,
    col_71610,
    COALESCE(col_45563, '') as col_45563,
    COALESCE(col_52067, '') as col_52067,
    col_87242,
    col_54020,
    col_19190,
    col_88673,
    col_51566,
    col_76556,
    col_7455,
    col_9639,
    COALESCE(col_3881 + col_88631, 0) as col_30211,
    COALESCE(col_16907,0) as col_16907,
    COALESCE(col_96341,0) as col_96341,
    COALESCE(col_38191,0) as col_38191,
    COALESCE(col_18505,0) as col_18505,
    COALESCE(col_67829,0) as col_67829,
    COALESCE(col_91265,0) as col_91265,
    COALESCE(col_53258, 0) as col_53258,
    COALESCE(col_18465, 0) as col_18465,
    COALESCE(col_42247, 0) as col_42247,
    COALESCE(col_23844, 0) as col_23844,
    COALESCE(col_21448, 0) as col_21448,
    COALESCE(col_34039, 0) as col_34039,
    COALESCE(col_64887, 0) as col_64887,
    COALESCE(col_4807, 0) as col_4807,
    COALESCE(col_91362, 0) as col_91362,
    COALESCE(col_81519, 0) as col_81519,
    COALESCE(col_33540, '') as col_33540,
    COALESCE(col_90752, '') as col_90752,
    col_65891,
    col_9695,
    col_15384,
    col_895,
    col_73970,
    COALESCE(col_10783, '') as col_10783,
    COALESCE(col_60173, '') as col_60173,
    col_94007,
    col_22585,
    col_87868,
    col_33686,
    col_98731,
    col_34840,
    col_76150,
    col_58804,
    col_37510,
    col_57776,
    col_95987,
    col_39347,
    col_20608,
    col_47050,
    col_42091,
    col_3582,
    col_44834,
    col_32039,
    col_34163,
    col_76330,
    col_90272,
    col_46521,
    col_97260,
    col_71020,
    col_56934,
    col_36978,
    col_69039,
    col_13485,
     pgc_auth.col_46725,
     pgc_auth.col_92331,
     pgc_auth.col_19334,
      pgc_auth.col_5770,
      pgc_auth.col_31337
from
    (
        select
            col_13174,
            col_23219,
            col_16672,
            col_43841,
            col_5963,
            col_92188,
            col_29908,
            col_50765,
            col_90812,
            col_36907,
            col_23075,
            col_73363,
            col_82576,
            col_83430,
            col_65766,
            col_70855,
            col_4899,
            col_60513,
            col_66217,
            col_54763,
            col_3881,
            col_88631,
            col_53496,
            col_59410,
            col_71610,
            col_45563,
            col_52067,
            col_87242,
            col_54020,
            col_19190,
            col_88673,
            col_51566,
            col_76556,
            col_7455,
            col_9639,
            col_16907,
            col_96341,
            col_38191,
            col_18505,
            col_67829,
            col_91265,
            col_33540,
            col_90752,
            col_65891,
            col_9695,
            col_15384,
            col_895,
            col_73970,
            col_10783,
            col_60173,
            col_94007,
            col_22585,
            col_87868,
            col_33686,
            col_98731,
            col_34840,
            col_76150,
            col_58804,
            col_37510,
            col_57776,
            col_20608,
            col_47050,
            col_42091,
            col_3582,
            col_44834,
            col_32039,
            col_34163,
            col_76330,
            col_90272,
            col_46521,
            col_97260,
            col_71020,
            col_56934,
            col_36978,
            col_69039,
            col_13485,
            col_46725,
            col_92331,
            col_19334,
            col_5770,
            col_31337

        from
            tbl_702
        where
            date = '20200831'
    ) pgc_auth
    left join (
        select
            app as col_24229,
            col_53665,
            col_89189,
            col_60596,
            video_screen_col_50426,
            col_35236_col_59516,
            group_col_21470,
            group_prop.col_75157 as col_75157,
            sum(col_53258) as col_53258,
            sum(col_18465) as col_18465,
            sum(col_42247) as col_42247,
            sum(col_23844) as col_23844,
            sum(col_21448) as col_21448,
            sum(col_34039) as col_34039,
            sum(col_64887) as col_64887,
            sum(col_4807) as col_4807,
            sum(col_91362) as col_91362,
            sum(col_81519) as col_81519,
            sum(col_95987) as col_95987,
            sum(col_39347) as col_39347
        from
            (
                select
                    *,
                    CASE
                        WHEN col_81150 = 60021127260 THEN '关注频道'
                        WHEN col_81150 = 6797027941 THEN '西瓜feed频道'
                        WHEN col_81150 = 3431225546 THEN '视频频道'
                        WHEN col_81150 = 94349534457 THEN '头条feed视频内流'
                        WHEN col_81150 = 94349536401 THEN '西瓜横屏频道'
                        WHEN col_24229 = 'video_article' and col_81150 = 82454304325  THEN '西瓜小视频'
                        WHEN  col_81150 in (59161009683, 79953639868, 79953609093, 79953622879, 82454304325, 82454307671)
                            and  col_24229 in ('news_article', 'news_article_lite') THEN '头条小视频'
                        ELSE '其他'
                    END AS col_89189,
                    CASE
                        WHEN col_24229 in ('news_article', 'video_article', 'news_article_lite') THEN col_24229
                        ELSE 'others'
                    END AS app
                from
                    tbl_7081
                where
                    date = '20200831'
            ) pgc_base_impr
            join (
                SELECT
                    col_78590,
                    col_75157,
                    case
                        when col_72948 in (1,2,7) then 1
                        when col_72948=15 then 0
                        when col_72948 in (16, 19, 20, 132) then 2
                        when col_72948 = 21 then 3
                    end as group_col_21470,
                     case
                        when col_1711 = '抖音同步' and
                        SUBSTR(col_169, 1, 10) = SUBSTR(col_84686, 1, 10)
                        then '抖音当日同步'
                        when col_1711 = '抖音同步' and
                        SUBSTR(col_169, 1, 10) <> SUBSTR(col_84686, 1, 10)
                        then '抖音历史同步'
                        else col_1711
                    end as col_60596,
                    CASE
                        WHEN col_39060 >= col_54933 THEN '横屏视频'
                        WHEN col_39060 < col_54933 THEN '竖屏视频'
                    END AS video_screen_col_50426,
                    CASE
                        WHEN col_35236 >= 60 THEN '60s+'
                        WHEN col_35236 < 60
                        and col_35236 > 15 THEN '15-60s'
                        WHEN col_35236 <= 15
                        and col_35236 >= 0 THEN '0-15s'
                        ELSE '其他'
                    END AS col_35236_col_59516
                FROM
                    group_info
            ) group_prop on pgc_base_impr.col_78590 = group_prop.col_78590
        group by
            group_prop.col_75157,
            app,
            col_53665,
            col_89189,
            col_60596,
            video_screen_col_50426,
            col_35236_col_59516,
            group_col_21470
    ) pgc_impr on pgc_auth.col_13174 = pgc_impr.col_75157
limit 10000

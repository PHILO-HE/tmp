SELECT
    app_uv_pv.app AS col_24229,
    col_95600,
    col_95097,
    enter_dau,
    search_dau,
    enter_app_cnt,
    first_col_86457,
    search_col_15440_5s,
    col_86457_5s,
    search_col_15440_10s,
    col_86457_10s,
    search_col_15440_15s,
    col_86457_15s,
    search_col_15440_30s,
    col_86457_30s,
    search_col_15440_60s,
    col_86457_60s,
    avg_first_search_col_24989,
    per_first_search_col_24989
FROM
(
    SELECT
        app,
        COUNT(DISTINCT IF(col_43492 = 'enter_app', col_3859, NULL)) AS enter_dau,
        COUNT(DISTINCT IF(col_43492 = 'first_search', col_3859, NULL)) AS search_dau,
        SUM(IF(col_43492 = 'enter_app', 1, 0)) AS enter_app_cnt,
        SUM(IF(col_43492 = 'first_search', 1, 0)) AS first_col_86457
    FROM
        tbl_552
    WHERE
        date = '20200831'
        AND app in('news_article')
        AND (
            (
                lower(col_30617) in ('ios')
                and col_12611 >= '7.0.4'
            )
            or (
                lower(col_30617) in ('android')
                and col_12611 >= '7.0.3'
            )
        )
        AND col_43492 in('enter_app', 'first_search')
    GROUP BY
        app
) app_uv_pv
LEFT JOIN
(
    SELECT
        app,
        col_19137 ['search_subcol_78413'] AS col_95600,
        'input+sug+历史词' AS col_95097,
        COUNT(
            DISTINCT IF(
                col_19137 ['first_search_col_24989'] <= 5000,
                col_3859,
                null
            )
        ) AS search_col_15440_5s,
        SUM(
            IF(
                col_19137 ['first_search_col_24989'] <= 5000,
                1,
                0
            )
        ) AS col_86457_5s,
        COUNT(
            DISTINCT IF(
                col_19137 ['first_search_col_24989'] <= 10000,
                col_3859,
                NULL
            )
        ) AS search_col_15440_10s,
        SUM(
            IF(
                col_19137 ['first_search_col_24989'] <= 10000,
                1,
                0
            )
        ) AS col_86457_10s,
        COUNT(
            DISTINCT IF(
                col_19137 ['first_search_col_24989'] <= 15000,
                col_3859,
                NULL
            )
        ) AS search_col_15440_15s,
        SUM(
            IF(
                col_19137 ['first_search_col_24989'] <= 15000,
                1,
                0
            )
        ) AS col_86457_15s,
        COUNT(
            DISTINCT IF(
                col_19137 ['first_search_col_24989'] <= 30000,
                col_3859,
                NULL
            )
        ) AS search_col_15440_30s,
        SUM(
            IF(
                col_19137 ['first_search_col_24989'] <= 30000,
                1,
                0
            )
        ) AS col_86457_30s,
        COUNT(
            DISTINCT IF(
                col_19137 ['first_search_col_24989'] <= 60000,
                col_3859,
                NULL
            )
        ) AS search_col_15440_60s,
        SUM(
            IF(
                col_19137 ['first_search_col_24989'] <= 60000,
                1,
                0
            )
        ) AS col_86457_60s,
        AVG(col_19137 ['first_search_col_24989']) AS avg_first_search_col_24989,
        percentile_approx(
            CAST(col_19137 ['first_search_col_24989'] AS DOUBLE),
            0.5
        ) AS per_first_search_col_24989
    FROM
        tbl_552
    where
        date = '20200831'
        AND app IN ('news_article')
        AND (
            (
                LOWER(col_30617) IN ('ios')
                AND col_12611 >= '7.0.4'
            )
            OR (
                LOWER(col_30617) IN ('android')
                AND col_12611 >= '7.0.3'
            )
        )
        AND col_43492 IN('first_search')
        AND col_19137 ['col_95097'] IN ('input', 'sug', 'search_history')
        AND col_19137 ['first_search_col_24989'] > 0
    GROUP BY
        app,
        col_19137 ['search_subcol_78413'],
        'input+sug+历史词'
) search_col_24989
ON app_uv_pv.app = search_col_24989.app

UNION ALL

SELECT
    app_uv_pv.app AS col_24229,
    col_95600,
    col_95097,
    enter_dau,
    search_dau,
    enter_app_cnt,
    first_col_86457,
    search_col_15440_5s,
    col_86457_5s,
    search_col_15440_10s,
    col_86457_10s,
    search_col_15440_15s,
    col_86457_15s,
    search_col_15440_30s,
    col_86457_30s,
    search_col_15440_60s,
    col_86457_60s,
    avg_first_search_col_24989,
    per_first_search_col_24989
FROM
(
    SELECT
        app,
        COUNT(DISTINCT IF(col_43492 = 'enter_app', col_3859, NULL)) AS enter_dau,
        COUNT(DISTINCT IF(col_43492 = 'first_search', col_3859, NULL)) AS search_dau,
        SUM(IF(col_43492 = 'enter_app', 1, 0)) AS enter_app_cnt,
        SUM(IF(col_43492 = 'first_search', 1, 0)) AS first_col_86457
    FROM
        tbl_552
    WHERE
        date = '20200831'
        AND app in('news_article')
        AND (
            (
                lower(col_30617) in ('ios')
                and col_12611 >= '7.0.4'
            )
            or (
                lower(col_30617) in ('android')
                and col_12611 >= '7.0.3'
            )
        )
        AND col_43492 in('enter_app', 'first_search')
    GROUP BY
        app
) app_uv_pv
LEFT JOIN
(
    SELECT
        app,
        col_19137 ['search_subcol_78413'] AS col_95600,
        col_19137['col_95097'] AS col_95097,
        COUNT(
            DISTINCT IF(
                col_19137 ['first_search_col_24989'] <= 5000,
                col_3859,
                null
            )
        ) AS search_col_15440_5s,
        SUM(
            IF(
                col_19137 ['first_search_col_24989'] <= 5000,
                1,
                0
            )
        ) AS col_86457_5s,
        COUNT(
            DISTINCT IF(
                col_19137 ['first_search_col_24989'] <= 10000,
                col_3859,
                NULL
            )
        ) AS search_col_15440_10s,
        SUM(
            IF(
                col_19137 ['first_search_col_24989'] <= 10000,
                1,
                0
            )
        ) AS col_86457_10s,
        COUNT(
            DISTINCT IF(
                col_19137 ['first_search_col_24989'] <= 15000,
                col_3859,
                NULL
            )
        ) AS search_col_15440_15s,
        SUM(
            IF(
                col_19137 ['first_search_col_24989'] <= 15000,
                1,
                0
            )
        ) AS col_86457_15s,
        COUNT(
            DISTINCT IF(
                col_19137 ['first_search_col_24989'] <= 30000,
                col_3859,
                NULL
            )
        ) AS search_col_15440_30s,
        SUM(
            IF(
                col_19137 ['first_search_col_24989'] <= 30000,
                1,
                0
            )
        ) AS col_86457_30s,
        COUNT(
            DISTINCT IF(
                col_19137 ['first_search_col_24989'] <= 60000,
                col_3859,
                NULL
            )
        ) AS search_col_15440_60s,
        SUM(
            IF(
                col_19137 ['first_search_col_24989'] <= 60000,
                1,
                0
            )
        ) AS col_86457_60s,
        AVG(col_19137 ['first_search_col_24989']) AS avg_first_search_col_24989,
        percentile_approx(
            CAST(col_19137 ['first_search_col_24989'] AS DOUBLE),
            0.5
        ) AS per_first_search_col_24989
    FROM
        tbl_552
    where
        date = '20200831'
        AND app IN ('news_article')
        AND (
            (
                LOWER(col_30617) IN ('ios')
                AND col_12611 >= '7.0.4'
            )
            OR (
                LOWER(col_30617) IN ('android')
                AND col_12611 >= '7.0.3'
            )
        )
        AND col_43492 IN('first_search')
        AND col_19137 ['col_95097'] IN ('input', 'sug', 'search_history')
        AND col_19137 ['first_search_col_24989'] > 0
    GROUP BY
        app,
        col_19137 ['search_subcol_78413'],
        col_19137['col_95097']
) search_col_24989
ON app_uv_pv.app = search_col_24989.app
limit 10000

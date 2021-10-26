WITH col_77851_fans_watch AS (

SELECT
    t.col_28543,
    IF(
        t.col_45347 IS NOT NULL,
        t.col_45347,
        'all'
    ) AS col_45347,
    IF(m.col_7509 IS NOT NULL, m.col_7509, -1) AS col_7509,
    COUNT(DISTINCT col_13174) AS fans_col_64839
FROM
    (
        SELECT
            col_28543,
            CONCAT(
                COALESCE(col_60834, ''),
                '_',
                COALESCE(col_80219, '')
            ) as col_45347,
            col_13174,
            col_76332
        FROM
            tbl_8675
        WHERE
            date = '20200831'
            AND col_8527 = 10
            AND col_19617 = 1
            AND col_21167 > 0
        GROUP BY
            col_28543,
            col_13174,
            col_76332,
            CONCAT(
                COALESCE(col_60834, ''),
                '_',
                COALESCE(col_80219, '')
            )
    ) t
    JOIN (
        SELECT
            col_76332,
            col_40278,
            col_7509
        FROM
            tbl_9551
        WHERE
            date = '20200831'
            AND col_8527 = 10
            AND col_82201 <> 9
    ) m ON t.col_76332 = m.col_76332
GROUP BY
    t.col_28543,
    m.col_7509,
    t.col_45347 GROUPING SETS (
        (t.col_28543),
        (t.col_28543, m.col_7509),
        (t.col_28543, t.col_45347),
        (t.col_28543, m.col_7509, t.col_45347)
    )
),
col_77851_fans_consume AS (
    SELECT
        t.col_28543,
        IF(
            t.col_45347 IS NOT NULL,
            t.col_45347,
            'all'
        ) AS col_45347,
        IF(m.col_7509 IS NOT NULL, m.col_7509, -1) AS col_7509,
        COUNT(DISTINCT col_13174) AS fans_consume_ucnt
    FROM
        (
            SELECT
                col_28543,
                CONCAT(
                    COALESCE(col_60834, ''),
                    '_',
                    COALESCE(col_80219, '')
                ) as col_45347,
                col_13174,
                col_76332
            FROM
                tbl_8675
            WHERE
                date = '20200831'
                AND col_8527 = 10
                AND col_19617 = 1
                AND (
                    col_26243 > 0
                    or col_60610 > 0
                )
            GROUP BY
                col_28543,
                col_13174,
                col_76332,
                CONCAT(
                    COALESCE(col_60834, ''),
                    '_',
                    COALESCE(col_80219, '')
                )
        ) t
        JOIN (
            SELECT
                col_76332,
                col_40278,
                col_7509
            FROM
                tbl_9551
            WHERE
                date = '20200831'
                AND col_8527 = 10
                AND col_82201 <> 9
        ) m ON t.col_76332 = m.col_76332
    GROUP BY
        t.col_28543,
        m.col_7509,
        t.col_45347 GROUPING SETS (
            (t.col_28543),
            (t.col_28543, m.col_7509),
            (t.col_28543, t.col_45347),
            (t.col_28543, m.col_7509, t.col_45347)
        )
),
col_77851_watch_retain AS (
    SELECT
        t.col_28543,
        IF(
            t.col_45347 IS NOT NULL,
            t.col_45347,
            'all'
        ) AS col_45347,
        IF(d.col_7509 IS NOT NULL, d.col_7509, -1) AS col_7509,
        COUNT(DISTINCT t.col_3859) AS watch_retain_dcnt
    FROM
        (
            SELECT
                col_28543,
                CONCAT(
                    COALESCE(col_47206 ['col_60834'], ''),
                    '_',
                    COALESCE(col_47206 ['col_80219'], '')
                ) as col_45347,
                col_13174,
                col_3859,
                col_76332
            FROM
                tbl_5474
            WHERE
                date = '${date-1}'
                AND col_8527 = 10
                AND col_58715 = 'livesdk_live_play'
        ) t
        JOIN (
            SELECT
                col_28543,
                col_13174,
                col_3859,
                col_76332
            FROM
                tbl_5474
            WHERE
                date = '20200831'
                AND col_8527 = 10
                AND col_58715 = 'livesdk_live_play'
        ) m ON t.col_28543 = m.col_28543
        AND t.col_3859 = m.col_3859
        JOIN (
            SELECT
                col_76332,
                col_7509
            FROM
                tbl_9551
            WHERE
                date = '20200831'
                AND col_8527 = 10
                AND col_82201 <> 9
        ) d ON t.col_76332 = d.col_76332
    GROUP BY
        t.col_28543,
        d.col_7509,
        t.col_45347 GROUPING SETS (
            (t.col_28543),
            (t.col_28543, d.col_7509),
            (t.col_28543, t.col_45347),
            (t.col_28543, d.col_7509, t.col_45347)
        )
),
col_77851_core_watch AS (
    SELECT
        col_28543,
        IF(
            col_45347 IS NOT NULL,
            col_45347,
            'all'
        ) AS col_45347,
        IF(col_7509 IS NOT NULL, col_7509, -1) AS col_7509,
        COUNT(DISTINCT IF(col_21167 > 0, col_3859, NULL)) AS watch_dcnt
    FROM
        (
            SELECT
                col_28543,
                col_76332,
                col_3859,
                SUM(col_21167) AS col_21167,
                CONCAT(
                    COALESCE(col_60834, ''),
                    '_',
                    COALESCE(col_80219, '')
                ) AS col_45347
            FROM
                tbl_8675
            WHERE
                date = '20200831'
                AND col_8527 = 10
            GROUP BY
                col_28543,
                col_3859,
                col_76332,
                CONCAT(
                    COALESCE(col_60834, ''),
                    '_',
                    COALESCE(col_80219, '')
                )
        ) t
        JOIN (
            SELECT
                col_76332,
                col_40278,
                col_7509
            FROM
                tbl_9551
            WHERE
                date = '20200831'
                AND col_8527 = 10
                AND col_82201 <> 9
        ) m ON t.col_76332 = m.col_76332
    GROUP BY
        col_28543,
        col_7509,
        col_45347 GROUPING SETS(
            (col_28543),
            (col_28543, col_7509),
            (col_28543, col_45347),
            (col_28543, col_7509, col_45347)
        )
),
col_77851_core_col_18027 AS (
    SELECT
        col_28543,
        IF(
            col_45347 IS NOT NULL,
            col_45347,
            'all'
        ) AS col_45347,
        IF(col_7509 IS NOT NULL, col_7509, -1) AS col_7509,
        COUNT(DISTINCT col_3859) AS col_18027_dcnt
    FROM
        (
            SELECT
                col_28543,
                col_76332,
                col_3859,
                CONCAT(
                    COALESCE(col_60834, ''),
                    '_',
                    COALESCE(col_80219, '')
                ) AS col_45347
            FROM
                tbl_8675
            WHERE
                date = '20200831'
                AND col_8527 = 10
                AND col_86559 > 0
            GROUP BY
                col_28543,
                col_3859,
                col_76332,
                CONCAT(
                    COALESCE(col_60834, ''),
                    '_',
                    COALESCE(col_80219, '')
                )
        ) t
        JOIN (
            SELECT
                col_76332,
                col_40278,
                col_7509
            FROM
                tbl_9551
            WHERE
                date = '20200831'
                AND col_8527 = 10
                AND col_82201 <> 9
        ) m ON t.col_76332 = m.col_76332
    GROUP BY
        col_28543,
        col_7509,
        col_45347 GROUPING SETS(
            (col_28543),
            (col_28543, col_7509),
            (col_28543, col_45347),
            (col_28543, col_7509, col_45347)
        )
),
col_77851_core_show AS (
    SELECT
        col_28543,
        IF(
            col_45347 IS NOT NULL,
            col_45347,
            'all'
        ) AS col_45347,
        IF(col_7509 IS NOT NULL, col_7509, -1) AS col_7509,
        COUNT(DISTINCT col_3859) AS show_dcnt
    FROM
        (
            SELECT
                col_28543,
                col_76332,
                col_3859,
                CONCAT(
                    COALESCE(col_60834, ''),
                    '_',
                    COALESCE(col_80219, '')
                ) AS col_45347
            FROM
                tbl_8675
            WHERE
                date = '20200831'
                AND col_8527 = 10
                AND col_34621 > 0
            GROUP BY
                col_28543,
                col_3859,
                col_76332,
                CONCAT(
                    COALESCE(col_60834, ''),
                    '_',
                    COALESCE(col_80219, '')
                )
        ) t
        JOIN (
            SELECT
                col_76332,
                col_40278,
                col_7509
            FROM
                tbl_9551
            WHERE
                date = '20200831'
                AND col_8527 = 10
                AND col_82201 <> 9
        ) m ON t.col_76332 = m.col_76332
    GROUP BY
        col_28543,
        col_7509,
        col_45347 GROUPING SETS(
            (col_28543, col_7509),
            (col_28543, col_45347)
        )
    UNION ALL
    SELECT
        col_28543,
        IF(
            col_45347 IS NOT NULL,
            col_45347,
            'all'
        ) AS col_45347,
        IF(col_7509 IS NOT NULL, col_7509, -1) AS col_7509,
        COUNT(DISTINCT col_3859) AS show_dcnt
    FROM
        (
            SELECT
                col_28543,
                col_76332,
                col_3859,
                CONCAT(
                    COALESCE(col_60834, ''),
                    '_',
                    COALESCE(col_80219, '')
                ) AS col_45347
            FROM
                tbl_8675
            WHERE
                date = '20200831'
                AND col_8527 = 10
                AND col_34621 > 0
            GROUP BY
                col_28543,
                col_3859,
                col_76332,
                CONCAT(
                    COALESCE(col_60834, ''),
                    '_',
                    COALESCE(col_80219, '')
                )
        ) t
        JOIN (
            SELECT
                col_76332,
                col_40278,
                col_7509
            FROM
                tbl_9551
            WHERE
                date = '20200831'
                AND col_8527 = 10
                AND col_82201 <> 9
        ) m ON t.col_76332 = m.col_76332
    GROUP BY
        col_28543,
        col_7509,
        col_45347 GROUPING SETS(
            (col_28543),
            (col_28543, col_7509, col_45347)
        )
),
col_77851_col_64431_core AS (
    SELECT
        col_28543,
        IF(
            col_45347 IS NOT NULL,
            col_45347,
            'all'
        ) AS col_45347,
        IF(col_7509 IS NOT NULL, col_7509, -1) AS col_7509,
        COUNT(DISTINCT col_13174) AS consume_ucnt
    FROM
        (
            SELECT
                col_28543,
                col_76332,
                col_13174,
                CONCAT(
                    COALESCE(col_60834, ''),
                    '_',
                    COALESCE(col_80219, '')
                ) AS col_45347
            FROM
                tbl_8675
            WHERE
                date = '20200831'
                AND col_8527 = 10
                AND (
                    col_26243 > 0
                    or col_60610 > 0
                )
            GROUP BY
                col_28543,
                col_13174,
                col_76332,
                CONCAT(
                    COALESCE(col_60834, ''),
                    '_',
                    COALESCE(col_80219, '')
                )
        ) t
        JOIN (
            SELECT
                col_76332,
                col_40278,
                col_7509
            FROM
                tbl_9551
            WHERE
                date = '20200831'
                AND col_8527 = 10
                AND col_82201 <> 9
        ) m ON t.col_76332 = m.col_76332
    GROUP BY
        col_28543,
        col_7509,
        col_45347 GROUPING SETS(
            (col_28543),
            (col_28543, col_7509),
            (col_28543, col_45347),
            (col_28543, col_7509, col_45347)
        )
)
SELECT
    x.col_28543,
    x.col_7509,
    CASE
        WHEN x.col_7509 = 1 THEN 'putong'
        WHEN x.col_7509 = 2 THEN 'xinxing'
        WHEN x.col_7509 = 3 THEN 'youzhi'
        WHEN x.col_7509 = 4 THEN 'qianyue'
        WHEN x.col_7509 = 5 THEN 'daren'
        WHEN x.col_7509 = 0 THEN 'gonghui'
        WHEN x.col_7509 = 51 THEN 'gonghuiputong'
        WHEN x.col_7509 = 52 THEN 'gonghuiqianyue'
        WHEN x.col_7509 = -1 THEN 'all'
        ELSE 'weizhi'
    END AS col_57410,
    x.col_45347,
    COALESCE(x2.show_dcnt, 0) AS show_dcnt,
    COALESCE(x.watch_dcnt, 0) AS watch_dcnt,
    COALESCE(x3.col_18027_dcnt, 0) AS col_18027_dcnt,
    COALESCE(x1.consume_ucnt, 0) AS consume_ucnt,
    COALESCE(y.fans_col_64839, 0) AS fans_col_64839,
    COALESCE(z.watch_retain_dcnt, 0) AS watch_retain_dcnt,
    COALESCE(y1.fans_consume_ucnt, 0) AS fans_consume_ucnt
FROM
    col_77851_core_watch AS x
    LEFT OUTER JOIN col_77851_col_64431_core x1 ON x.col_28543 = x1.col_28543
    AND x.col_7509 = x1.col_7509
    AND x.col_45347 = x1.col_45347
    LEFT OUTER JOIN col_77851_core_show x2 ON x.col_28543 = x2.col_28543
    AND x.col_7509 = x2.col_7509
    AND x.col_45347 = x2.col_45347
    LEFT OUTER JOIN col_77851_core_col_18027 x3 ON x.col_28543 = x3.col_28543
    AND x.col_7509 = x3.col_7509
    AND x.col_45347 = x3.col_45347
    LEFT OUTER JOIN col_77851_fans_watch y ON x.col_28543 = y.col_28543
    AND x.col_7509 = y.col_7509
    AND x.col_45347 = y.col_45347
    LEFT OUTER JOIN col_77851_fans_consume y1 ON x.col_28543 = y1.col_28543
    AND x.col_7509 = y1.col_7509
    AND x.col_45347 = y1.col_45347
    LEFT OUTER JOIN col_77851_watch_retain z ON x.col_28543 = z.col_28543
    AND x.col_7509 = z.col_7509
    AND x.col_45347 = z.col_45347
limit 10000

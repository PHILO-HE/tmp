SELECT
    basic.col_24229 AS col_24229,
    basic.os AS os,
    basic.col_3859 AS col_3859,
    basic.col_38488 AS col_38488,
    col_14683,
    col_90404,
    col_29931,
    col_30405,
    col_51660,
    col_73936,
    col_79570,
    col_24088,
    col_75147,
    col_31976,
    col_39537,
    device_distinct.col_95566 AS col_95566,
    device_distinct.activation_subclass AS activation_subclass,
    device_distinct.col_14812 AS col_14812,
    col_22639,
    col_87524,
    col_50162,
    col_92954,
    IF(first_search_pv_30s > 0, 1, 0) AS is_first_search_30s
FROM
(
    SELECT
        col_24229,
        os,
        col_3859,
        col_38488,
        col_14683,
        col_90404,
        col_29931,
        col_30405,
        col_51660,
        col_73936,
        col_79570,
        col_24088,
        col_75147,
        col_31976,
        col_39537,
        col_22639,
        col_87524,
        col_50162,
        col_92954
    FROM
        tbl_7107
    WHERE
        date = '20200831'
) basic
LEFT JOIN
(
    SELECT
        col_24229,
        col_3859,
        MAX(col_95566) AS col_95566,
        MAX(activation_subclass) AS activation_subclass,
        MAX(col_14812) AS col_14812
    FROM
        m_device_distinct
    WHERE
        col_77093 = '2020-08-31'
        AND col_24229 in ('news_article','news_article_lite','tt_search_app','video_article')
    GROUP BY
        col_24229,
        col_3859
) device_distinct
ON basic.col_24229 = device_distinct.col_24229
AND basic.col_3859 = device_distinct.col_3859
LEFT JOIN
(
    SELECT
        app,
        col_3859,
        SUM(
            IF(
                col_19137 ['first_search_col_24989'] > 0
                AND col_19137 ['first_search_col_24989'] <= 30000
                AND col_19137 ['col_95097'] IN ('input', 'sug', 'search_history'),
                1,
                0
            )
        ) AS first_search_pv_30s --30s内搜索pv
    FROM
        tbl_552
    WHERE
        date = '20200831'
        AND app IN ('news_article','news_article_lite') 
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
        AND col_43492 IN('enter_app', 'first_search')
    GROUP BY
        app,
        col_3859
) col_43492_log
ON basic.col_24229 = col_43492_log.app
AND CAST(basic.col_3859 AS STRING) = col_43492_log.col_3859
limit 10000

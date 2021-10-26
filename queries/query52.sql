SELECT
    app AS col_24229,
    col_30617 AS os,
    COUNT(
        DISTINCT IF(col_43492 = 'enter_app', col_3859, null)
    ) AS first_search_dau, --有enter_app上报的dau
    COUNT(
        DISTINCT IF(
            col_19137 ['first_search_col_24989'] > 0
            AND col_19137 ['first_search_col_24989'] <= 15000 AND col_19137 ['search_subcol_78413']='synthesis'
            AND col_19137 ['col_95097'] IN ('input', 'sug', 'search_history'),
            col_3859,
            NULL
        )
    ) AS first_col_14948_15s, --15s内搜索uv
    COUNT(
        DISTINCT IF(
            col_19137 ['first_search_col_24989'] > 0
            AND col_19137 ['first_search_col_24989'] <= 30000 AND col_19137 ['search_subcol_78413']='synthesis'
            AND col_19137 ['col_95097'] IN ('input', 'sug', 'search_history'),
            col_3859,
            NULL
        )
    ) AS first_col_14948_30s, --30s内搜索uv
    COUNT(
        DISTINCT IF(
            col_19137 ['first_search_col_24989'] > 0
            AND col_19137 ['first_search_col_24989'] <= 60000 AND col_19137 ['search_subcol_78413']='synthesis'
            AND col_19137 ['col_95097'] IN ('input', 'sug', 'search_history'),
            col_3859,
            NULL
        )
    ) AS first_col_14948_60s --60s内搜索uv
FROM
    tbl_552
WHERE
    date = '20200831'
    AND app IN ('news_article','news_article_lite','tt_search_app') 
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
    col_30617
limit 10000

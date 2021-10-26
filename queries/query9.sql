SELECT
    anchors.col_76332,
    COALESCE(live_douplus_enter_ucnt_7d, 0) AS live_douplus_enter_ucnt_7d,
    COALESCE(live_douplus_enter_ucnt_30d, 0) AS live_douplus_enter_ucnt_30d,
    COALESCE(col_24229, 'aweme') AS col_24229
FROM
    (
        SELECT
            col_76332,
            col_8527
        FROM
            tbl_9551
        where
            date = '20200831'
            and col_8527 = 10
            and col_76332 > 0
            and col_82201 <> 9
    ) anchors
    LEFT JOIN (
        SELECT
            col_76332,
            col_24229,
            SUM(IF(col_50426 = '7d', live_douplus_enter_ucnt, 0)) AS live_douplus_enter_ucnt_7d,
            SUM(IF(col_50426 = '30d', live_douplus_enter_ucnt, 0)) AS live_douplus_enter_ucnt_30d
        FROM
            (
                select
                    col_76332,
                    col_24229,
                    '7d' AS col_50426,
                    live_douplus_enter_ucnt
                from
                    (
                        select
                            col_76332,
                            sum(col_76160 ['dp_live_click_col_95097_cnt']) as live_douplus_enter_ucnt,
                            'aweme' AS col_24229
                        from
                            tbl_1791
                        group by
                            col_76332
                        UNION ALL
                        select
                            col_76332,
                            sum(col_76160 ['hs_live_col_86219']) + sum(col_76160 ['hs_live_click_col_95097_cnt']) as live_douplus_enter_ucnt,
                            'live_stream' AS col_24229
                        from
                            tbl_1791
                        group by
                            col_76332
                    ) a
                UNION ALL
                select
                    col_76332,
                    col_24229,
                    '30d' AS col_50426,
                    live_douplus_enter_ucnt
                from
                    (
                        select
                            col_76332,
                            sum(col_76160 ['dp_live_click_col_95097_cnt']) as live_douplus_enter_ucnt,
                            'aweme' AS col_24229
                        from
                            tbl_1791
                        group by
                            col_76332
                        UNION ALL
                        select
                            col_76332,
                            sum(col_76160 ['hs_live_col_86219']) + sum(col_76160 ['hs_live_click_col_95097_cnt']) as live_douplus_enter_ucnt,
                            'live_stream' AS col_24229
                        from
                            tbl_1791
                        group by
                            col_76332
                    ) a
            ) b
        GROUP BY
            col_76332,
            col_24229
    ) douplus on anchors.col_76332 = douplus.col_76332
limit 10000

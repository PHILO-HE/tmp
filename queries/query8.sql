SELECT
    anchors.col_76332,
    COALESCE(log.col_47496, 0) AS col_47496,
    COALESCE(anchor_bhv.col_55231, 0) AS col_55231,
    COALESCE(anchor_bhv.col_32316_7d, 0) AS col_32316_7d,
    COALESCE(anchor_bhv.col_32316_30d, 0) AS col_32316_30d,
    COALESCE(anchor_bhv.col_45150, 0) AS col_45150,
    COALESCE(anchor_bhv.live_col_18027_anchor_ucnt_7d, 0) AS live_col_18027_anchor_ucnt_7d,
    COALESCE(anchor_bhv.live_col_18027_anchor_ucnt_30d, 0) AS live_col_18027_anchor_ucnt_30d,
    COALESCE(income_di.anchor_live_consume_ucnt_1d, 0) AS anchor_live_consume_ucnt_1d,
    COALESCE(income_df.anchor_live_consume_ucnt_7d, 0) AS anchor_live_consume_ucnt_7d,
    COALESCE(income_df.anchor_live_consume_ucnt_30d, 0) AS anchor_live_consume_ucnt_30d,
    COALESCE(income_di.anchor_live_fan_ticket_1d, 0) AS anchor_live_fan_ticket_1d,
    COALESCE(income_df.anchor_live_fan_ticket_7d, 0) AS anchor_live_fan_ticket_7d,
    COALESCE(income_df.anchor_live_fan_ticket_30d, 0) AS anchor_live_fan_ticket_30d,
    COALESCE(log.live_col_64839_7d, 0) AS live_col_64839_7d,
    COALESCE(log.live_col_64839_30d, 0) AS live_col_64839_30d,
    COALESCE(anchor_bhv.live_col_61125_7d, 0) AS live_col_61125_7d,
    COALESCE(anchor_bhv.live_col_61125_30d, 0) AS live_col_61125_30d,
    COALESCE(anchor_bhv.live_cheat_ucnt_7d, 0) AS live_cheat_ucnt_7d,
    COALESCE(anchor_bhv.live_cheat_ucnt_30d, 0) AS live_cheat_ucnt_30d,
    0 AS is_autocar_anchor
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
    left join (
        SELECT
            col_76332,
            col_8527,
            sum(if(date = '20200831', col_55231, 0)) AS col_55231,
            sum(
                if(
                    date BETWEEN '${date-6}'
                    AND '20200831',
                    col_55231,
                    0
                )
            ) AS col_32316_7d,
            sum(
                if(
                    date BETWEEN '${date-29}'
                    AND '20200831',
                    col_55231,
                    0
                )
            ) AS col_32316_30d,
            sum(
                if(date = '20200831', col_45150, 0)
            ) AS col_45150,
            sum(
                if(
                    date BETWEEN '${date-6}'
                    AND '20200831',
                    col_45150,
                    0
                )
            ) AS live_col_18027_anchor_ucnt_7d,
            sum(
                if(
                    date BETWEEN '${date-29}'
                    AND '20200831',
                    col_45150,
                    0
                )
            ) AS live_col_18027_anchor_ucnt_30d,
            0 AS live_col_61125_7d,
            0 AS live_col_61125_30d,
            sum(
                if(
                    date BETWEEN '${date-6}'
                    AND '20200831',
                    col_81768,
                    0
                )
            ) AS live_cheat_ucnt_7d,
            sum(
                if(
                    date BETWEEN '${date-29}'
                    AND '20200831',
                    col_81768,
                    0
                )
            ) AS live_cheat_ucnt_30d
        FROM
            tbl_2081
        WHERE
            date BETWEEN '${date-29}'
            AND '20200831'
            AND col_8527 = 10
        GROUP BY
            col_76332,
            col_8527
    ) anchor_bhv on anchor_bhv.col_76332 = anchors.col_76332
    AND anchor_bhv.col_8527 = anchors.col_8527
    left join (
        select
            col_76332,
            col_8527,
            sum(
                if(
                    col_47496 > 0,
                    1,
                    0
                )
            ) AS col_47496,
            sum(
                if(
                    live_col_64839_7d > 0,
                    1,
                    0
                )
            ) AS live_col_64839_7d,
            sum(
                if(
                    live_col_64839_30d > 0,
                    1,
                    0
                )
            ) AS live_col_64839_30d
        FROM
            (
                select
                    col_76332,
                    col_8527,
                    col_13174,
                    max(
                        if (
                            date BETWEEN '${date-6}'
                            AND '20200831',
                            1,
                            0
                        )
                    ) AS live_col_64839_7d,
                    max(
                        if (
                            date BETWEEN '${date-29}'
                            AND '20200831',
                            1,
                            0
                        )
                    ) AS live_col_64839_30d,
                    max(
                        if (
                            date = '20200831',
                            1,
                            0
                        )
                    ) AS col_47496
                FROM
                    tbl_4678
                WHERE
                    date BETWEEN '${date-29}'
                    AND '20200831'
                    AND col_8527 = 10
                    AND col_21167 > 0
                GROUP BY
                    col_76332,
                    col_13174,
                    col_8527
            ) a
        GROUP BY
            col_76332,
            col_8527
    ) log on log.col_76332 = anchors.col_76332
    AND log.col_8527 = anchors.col_8527
    left join (
        select
            col_76332,
            col_8527,
            sum(col_86335) AS anchor_live_fan_ticket_1d,
            sum(col_33550) AS anchor_live_consume_ucnt_1d
        from
            tbl_9
        where
            date = '20200831'
            AND col_8527 = 10
        GROUP BY
            col_76332,
            col_8527
    ) income_di on income_di.col_76332 = anchors.col_76332
    AND income_di.col_8527 = anchors.col_8527
    left join (
        select
            col_76332,
            col_8527,
            sum(col_11533) AS anchor_live_fan_ticket_7d,
            sum(col_26765) AS anchor_live_consume_ucnt_7d,
            sum(col_82974) AS anchor_live_fan_ticket_30d,
            sum(col_14464) AS anchor_live_consume_ucnt_30d
        from
            tbl_9829
        where
            date = '20200831'
            AND col_8527 = 10
        GROUP BY
            col_76332,
            col_8527
    ) income_df on income_df.col_76332 = anchors.col_76332
    AND income_df.col_8527 = anchors.col_8527
limit 10000

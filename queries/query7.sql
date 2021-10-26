SELECT
    anchors.col_76332,
    COALESCE(anchor_bhv.col_32316_7d, 0) AS col_32316_7d,
    COALESCE(anchor_bhv.col_32316_30d, 0) AS col_32316_30d,
    COALESCE(anchor_bhv.live_cnt_7d, 0) AS live_cnt_7d,
    COALESCE(anchor_bhv.live_cnt_30d, 0) AS live_cnt_30d,
    COALESCE(watch_log.live_col_64839_7d, 0) AS live_col_64839_7d,
    COALESCE(watch_log.live_col_64839_30d, 0) AS live_col_64839_30d,
    COALESCE(anchor_bhv.live_col_18027_anchor_ucnt_7d, 0) AS live_col_18027_anchor_ucnt_7d,
    COALESCE(anchor_bhv.live_col_18027_anchor_ucnt_30d, 0) AS live_col_18027_anchor_ucnt_30d,
    COALESCE(income_df.anchor_live_fan_ticket_7d, 0) AS anchor_live_fan_ticket_7d,
    COALESCE(income_df.anchor_live_fan_ticket_30d, 0) AS anchor_live_fan_ticket_30d,
    COALESCE(income_df.anchor_live_consume_ucnt_7d, 0) AS anchor_live_consume_ucnt_7d,
    COALESCE(income_df.anchor_live_consume_ucnt_30d, 0) AS anchor_live_consume_ucnt_30d,
    COALESCE(col_31301_log.live_col_31301_ucnt_7d, 0) AS live_col_31301_ucnt_7d,
    COALESCE(col_31301_log.live_col_31301_ucnt_30d, 0) AS live_col_31301_ucnt_30d,
    COALESCE(anchor_bhv.live_col_61125_7d, 0) AS live_col_61125_7d,
    COALESCE(anchor_bhv.live_col_61125_30d, 0) AS live_col_61125_30d,
    COALESCE(anchor_bhv.live_cheat_ucnt_7d, 0) AS live_cheat_ucnt_7d,
    COALESCE(anchor_bhv.live_cheat_ucnt_30d, 0) AS live_cheat_ucnt_30d,
    COALESCE(col_53168_log.live_col_38626_7d, 0) AS live_col_38626_7d,
    COALESCE(col_53168_log.live_col_38626_30d, 0) AS live_col_38626_30d,
    COALESCE(room.live_pause_col_94815_7d, 0) AS live_pause_col_94815_7d,
    COALESCE(room.live_pause_col_94815_30d, 0) AS live_pause_col_94815_30d
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
            sum(
                if(
                    date BETWEEN '20210831'
                    AND '20200831',
                    col_55231,
                    0
                )
            ) AS col_32316_7d,
            sum(
                if(
                    date BETWEEN '20200831'
                    AND '20200831',
                    col_55231,
                    0
                )
            ) AS col_32316_30d,
            sum(
                if(
                    date BETWEEN '20200831'
                    AND '20200831',
                    col_45150,
                    0
                )
            ) AS live_col_18027_anchor_ucnt_7d,
            sum(
                if(
                    date BETWEEN '20200831'
                    AND '20200831',
                    col_45150,
                    0
                )
            ) AS live_col_18027_anchor_ucnt_30d,
            SUM(
                if(
                    date BETWEEN '20200831'
                    AND '20200831',
                    col_96360,
                    0
                )
            ) AS live_cnt_7d,
            SUM(
                if(
                    date BETWEEN '20200831'
                    AND '20200831',
                    col_96360,
                    0
                )
            ) AS live_cnt_30d,
            0 AS live_col_61125_7d,
            0 AS live_col_61125_30d,
            sum(
                if(
                    date BETWEEN '20200831'
                    AND '20200831',
                    col_81768,
                    0
                )
            ) AS live_cheat_ucnt_7d,
            sum(
                if(
                    date BETWEEN '20200831'
                    AND '20200831',
                    col_81768,
                    0
                )
            ) AS live_cheat_ucnt_30d
        FROM
            tbl_2081
        WHERE
            date BETWEEN '20200831'
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
                            date BETWEEN '20200831'
                            AND '20200831',
                            1,
                            0
                        )
                    ) AS live_col_64839_7d,
                    max(
                        if (
                            date BETWEEN '20200831'
                            AND '20200831',
                            1,
                            0
                        )
                    ) AS live_col_64839_30d
                FROM
                    tbl_4678
                WHERE
                    date BETWEEN '20200831'
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
    ) watch_log on watch_log.col_76332 = anchors.col_76332
    AND watch_log.col_8527 = anchors.col_8527
    left join (
        select
            col_76332,
            col_8527,
            sum(live_col_38626_7d) AS live_col_38626_7d,
            sum(live_col_38626_30d) AS live_col_38626_30d
        FROM
            (
                select
                    col_76332,
                    col_8527,
                    col_13174,
                    SUM(
                        if (
                            date BETWEEN '20200831'
                            AND '20200831',
                            col_38311,
                            0
                        )
                    ) AS live_col_38626_7d,
                    SUM(
                        if (
                            date BETWEEN '20200831'
                            AND '20200831',
                            col_38311,
                            0
                        )
                    ) AS live_col_38626_30d
                FROM
                    tbl_4678
                WHERE
                    date BETWEEN '20200831'
                    AND '20200831'
                    AND col_8527 = 10
                    AND col_38311 > 0
                GROUP BY
                    col_76332,
                    col_13174,
                    col_8527
            ) a
        GROUP BY
            col_76332,
            col_8527
    ) col_53168_log on col_53168_log.col_76332 = anchors.col_76332
    AND col_53168_log.col_8527 = anchors.col_8527
    left join (
        select
            col_76332,
            col_8527,
            sum(
                if(
                    live_col_31301_ucnt_7d > 0,
                    1,
                    0
                )
            ) AS live_col_31301_ucnt_7d,
            sum(
                if(
                    live_col_31301_ucnt_30d > 0,
                    1,
                    0
                )
            ) AS live_col_31301_ucnt_30d
        FROM
            (
                select
                    col_76332,
                    col_8527,
                    col_13174,
                    max(
                        if (
                            date BETWEEN '20200831'
                            AND '20200831',
                            1,
                            0
                        )
                    ) AS live_col_31301_ucnt_7d,
                    max(
                        if (
                            date BETWEEN '20200831'
                            AND '20200831',
                            1,
                            0
                        )
                    ) AS live_col_31301_ucnt_30d
                FROM
                    tbl_8675
                WHERE
                    date BETWEEN '20200831'
                    AND '20200831'
                    AND col_8527 = 10
                    AND col_7207 > 0
                GROUP BY
                    col_76332,
                    col_13174,
                    col_8527
            ) a
        GROUP BY
            col_76332,
            col_8527
    ) col_31301_log on col_31301_log.col_76332 = anchors.col_76332
    AND col_31301_log.col_8527 = anchors.col_8527
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
    left join (
        select
            col_76332,
            col_8527,
            sum(col_81594) AS live_pause_col_94815_30d,
            sum(if(date >= '20200831', col_81594, 0)) AS live_pause_col_94815_7d
        from
            tbl_5255
        where
            date between '20200831'
            AND '20200831'
            AND col_8527 = 10
            AND col_81594 > 0
        GROUP BY
            col_76332,
            col_8527
    ) room on room.col_76332 = anchors.col_76332
    AND room.col_8527 = anchors.col_8527
limit 10000

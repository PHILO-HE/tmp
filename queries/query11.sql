SELECT
    room_info.col_63175,
    col_70363,
    col_68298,
    COALESCE(col_32316, 0) AS col_32316,
    COALESCE(income_fan_ticket, 0) AS income_fan_ticket,
    COALESCE(live_col_64839, 0) AS live_col_64839,
    COALESCE(live_col_18027_anchor_ucnt, 0) AS live_col_18027_anchor_ucnt,
    COALESCE(live_consume_ucnt, 0) AS live_consume_ucnt,
    COALESCE(live_col_31301_ucnt, 0) AS live_col_31301_ucnt,
    COALESCE(live_col_61125, 0) AS live_col_61125,
    COALESCE(live_cheat_col_64839, 0) AS live_cheat_col_64839,
    col_76332,
    date AS date,
    10 AS col_8527
FROM
    (
        SELECT
            if(
                col_52825 is null
                or FROM_UNIXTIME(col_52825, 'yyyyMMdd') > '20200831',
                '40001231',
                FROM_UNIXTIME(col_52825, 'yyyyMMdd')
            ) AS date,
            col_63175,
            col_70363,
            col_68298,
            col_41008 AS col_32316,
            col_76332
        FROM
            tbl_5255
        WHERE
            date = '20200831'
            and (
                FROM_UNIXTIME(col_52825, 'yyyyMMdd') = '20200831'
                or (
                    FROM_UNIXTIME(col_74054, 'yyyyMMdd') >= '${date-6}'
                    and col_52825 is null
                )
            )
            and col_8527 = 10
    ) room_info
    LEFT JOIN (
        select
            col_63175,
            sum(col_43126) as income_fan_ticket,
            col_35211(
                distinct if(
                    col_49298 = 'beibaodaoju',
                    cast(
                        get_json_object(col_87332, '$.col_37410') as bigint
                    ),
                    col_37410
                )
            ) as live_consume_ucnt
        from
            tbl_143
        where
            date between '${date-6}'
            AND '20200831'
            and col_30850 = 'zhibo'
            and col_48633 = 1
            and col_8527 = 10
            and col_47507 = 1
        group by
            col_63175
    ) room_income on room_income.col_63175 = room_info.col_63175
    LEFT JOIN (
        select
            col_63175,
            col_35211(distinct col_13174) AS live_col_64839
        from
            tbl_4678
        where
            date between '${date-6}'
            AND '20200831'
            and col_8527 = 10
            and col_21167 > 0
        group by
            col_63175
    ) room_watch on room_watch.col_63175 = room_info.col_63175
    LEFT JOIN (
        select
            col_63175,
            col_35211(distinct col_13174) AS live_col_18027_anchor_ucnt
        from
            tbl_8675
        where
            date between '${date-6}'
            AND '20200831'
            and col_8527 = 10
            and col_91855 > 0
        group by
            col_63175
    ) room_col_18027 on room_col_18027.col_63175 = room_info.col_63175
    LEFT JOIN (
        select
            col_63175,
            col_35211(distinct col_13174) AS live_col_31301_ucnt
        from
            tbl_3396
        where
            date between '${date-6}'
            and '20200831'
            and col_8527 in (0, 1)
            and col_50426 in ('chat', 'audio_chat')
            and col_93313 = 'pass'
        group by
            col_63175
    ) room_col_31301 on room_col_31301.col_63175 = room_info.col_63175
    left join (
        select
            col_63175,
            sum(live_col_61125) as live_col_61125,
            sum(live_cheat_col_64839) as live_cheat_col_64839
        from
            (
                select
                    col_63175 as col_63175,
                    0 as live_col_61125,
                    sum(
                        case
                            when col_26873 -last_col_26873 > 0 then col_26873 -last_col_26873
                            else 0
                        end
                    ) as live_cheat_col_64839
                from
                    (
                        select
                            per_min_info.col_63175,
                            col_67047 as col_67047,
                            col_61125 as col_61125,
                            col_26873 as col_26873,
                            lag(col_61125, 1, 0) over (
                                partition by per_min_info.col_63175
                                col_52468 by
                                    col_67047
                            ) as last_col_61125,
                            lag(col_26873, 1, 0) over (
                                partition by per_min_info.col_63175
                                col_52468 by
                                    col_67047
                            ) as last_col_26873
                        from
                            (
                                select
                                    col_63175,
                                    col_67047,
                                    col_61125,
                                    col_26873
                                FROM
                                    tbl_329
                                where
                                    date between '${date-6}'
                                    AND '20200831'
                                    and col_8527 = 10
                                    and case
                                        when date >= '${date-5}' then 1
                                        when date = '${date-6}'
                                        and col_67047 = unix_col_15250('${DATE-5}', 'yyyy-MM-dd') -60 then 1
                                        else 0
                                    end = 1
                            ) per_min_info
                            inner join (
                                SELECT
                                    col_63175
                                FROM
                                    tbl_5255
                                WHERE
                                    date = '20200831'
                                    and col_8527 = 10
                            ) room_info_inner on per_min_info.col_63175 = room_info_inner.col_63175
                    ) per_min_in
                group by
                    col_63175
            ) inner_per_min
        group by
            col_63175
    ) per_min on room_info.col_63175 = per_min.col_63175
limit 10000

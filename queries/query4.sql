SELECT
    a.col_13174,
    col_54902,
    col_25960,
    col_27171,
    col_21265,
    col_70606,
    register_day,
    col_29408,
    col_23006,
    col_74201,
    col_40216,
    coalesce(is_recharge_active, 0) as is_recharge_active,
    coalesce(is_first_recharge, 0) as is_first_recharge,
    coalesce(is_consume_active, 0) as is_consume_active,
    coalesce(is_first_consume, 0) as is_first_consume,
    0 as is_nabob,
    'null' as nabob_day,
    coalesce(col_64609, -1) as col_64609,
    recharge_success_cnt_1d,
    recharge_success_col_64431_1d,
    recharge_success_deserved_diamond_1d,
    recharge_success_given_diamond_1d,
    recharge_success_receive_diamond_1d,
    col_60610,
    send_gift_room_num_1d,
    send_gift_anchor_num_1d,
    send_gift_diamond_1d,
    barrage_cnt_1d,
    barrage_room_num_1d,
    barrage_anchor_num_1d,
    barrage_diamond_1d,
    consume_cnt_1d,
    consume_room_num_1d,
    consume_anchor_num_1d,
    col_79033_1d,
    consume_return_diamond_1d,
    consume_net_diamond_1d
FROM(
        SELECT
            col_13174,
            sum(recharge_success_cnt_1d) as recharge_success_cnt_1d,
            sum(recharge_success_col_64431_1d) as recharge_success_col_64431_1d,
            sum(recharge_success_deserved_diamond_1d) as recharge_success_deserved_diamond_1d,
            sum(recharge_success_given_diamond_1d) as recharge_success_given_diamond_1d,
            sum(recharge_success_receive_diamond_1d) as recharge_success_receive_diamond_1d,
            sum(col_60610) as col_60610,
            sum(send_gift_room_num_1d) as send_gift_room_num_1d,
            sum(send_gift_anchor_num_1d) as send_gift_anchor_num_1d,
            sum(send_gift_diamond_1d) as send_gift_diamond_1d,
            sum(barrage_cnt_1d) as barrage_cnt_1d,
            sum(barrage_room_num_1d) as barrage_room_num_1d,
            sum(barrage_anchor_num_1d) as barrage_anchor_num_1d,
            sum(barrage_diamond_1d) as barrage_diamond_1d,
            sum(consume_cnt_1d) as consume_cnt_1d,
            sum(consume_room_num_1d) as consume_room_num_1d,
            sum(consume_anchor_num_1d) as consume_anchor_num_1d,
            sum(col_79033_1d) as col_79033_1d,
            sum(consume_return_diamond_1d) as consume_return_diamond_1d,
            sum(col_79033_1d) -sum(consume_return_diamond_1d) as consume_net_diamond_1d
        FROM(
                SELECT
                    col_13174,
                    col_35211(1) as recharge_success_cnt_1d,
                    sum(col_61412) as recharge_success_col_64431_1d,
                    sum(col_31399) as recharge_success_deserved_diamond_1d,
                    sum(col_68723) as recharge_success_given_diamond_1d,
                    sum(col_31399 + col_68723) as recharge_success_receive_diamond_1d,
                    0 as col_60610,
                    0 as send_gift_room_num_1d,
                    0 as send_gift_anchor_num_1d,
                    0 as send_gift_diamond_1d,
                    0 as barrage_cnt_1d,
                    0 as barrage_room_num_1d,
                    0 as barrage_anchor_num_1d,
                    0 as barrage_diamond_1d,
                    0 as consume_cnt_1d,
                    0 as consume_room_num_1d,
                    0 as consume_anchor_num_1d,
                    0 as col_79033_1d,
                    0 as consume_return_diamond_1d
                FROM
                    tbl_3092
                WHERE
                    date = '20200831'
                    AND col_8527 = 10
                    AND col_35545 = '20200831'
                    AND col_2927 = 1
                    and col_38067 <> 0
                GROUP BY
                    col_13174
                UNION ALL
                SELECT
                    col_13174,
                    0 as recharge_success_cnt_1d,
                    0 as recharge_success_col_64431_1d,
                    0 as recharge_success_deserved_diamond_1d,
                    0 as recharge_success_given_diamond_1d,
                    0 as recharge_success_receive_diamond_1d,
                    col_35211(
                        case
                            when col_20047 = 1
                            and col_49298 = '送礼' then 1
                        end
                    ) as col_60610,
                    col_35211(
                        distinct case
                            when col_20047 = 1
                            and col_49298 = '送礼'
                            and y.col_63175 is not null then y.col_63175
                        end
                    ) as send_gift_room_num_1d,
                    col_35211(
                        distinct case
                            when col_20047 = 1
                            and col_49298 = '送礼'
                            and col_76332 is not null then col_76332
                        end
                    ) as send_gift_anchor_num_1d,
                    coalesce(
                        sum(
                            case
                                when col_20047 = 1
                                and col_49298 = '送礼' then col_31399
                            end
                        ),
                        0
                    ) as send_gift_diamond_1d,
                    col_35211(
                        case
                            when col_20047 = 1
                            and col_49298 = '弹幕' then 1
                        end
                    ) as barrage_cnt_1d,
                    col_35211(
                        distinct case
                            when col_20047 = 1
                            and col_49298 = '弹幕'
                            and y.col_63175 is not null then y.col_63175
                        end
                    ) as barrage_room_num_1d,
                    col_35211(
                        distinct case
                            when col_20047 = 1
                            and col_49298 = '弹幕'
                            and col_76332 is not null then col_76332
                        end
                    ) as barrage_anchor_num_1d,
                    coalesce(
                        sum(
                            case
                                when col_20047 = 1
                                and col_49298 = '弹幕' then col_31399
                            end
                        ),
                        0
                    ) as barrage_diamond_1d,
                    col_35211(
                        case
                            when col_20047 = 1 then 1
                        end
                    ) as consume_cnt_1d,
                    col_35211(
                        distinct case
                            when col_20047 = 1
                            and y.col_63175 is not null then y.col_63175
                        end
                    ) as consume_room_num_1d,
                    col_35211(
                        distinct case
                            when col_20047 = 1
                            and col_76332 is not null then col_76332
                        end
                    ) as consume_anchor_num_1d,
                    coalesce(
                        sum(
                            case
                                when col_20047 = 1 then col_31399
                            end
                        ),
                        0
                    ) as col_79033_1d,
                    coalesce(
                        sum(
                            case
                                when col_20047 = 2 then col_31399
                            end
                        ),
                        0
                    ) as consume_return_diamond_1d
                FROM(
                        SELECT
                            col_8527,
                            col_20047,
                            col_49298,
                            col_55183 as col_13174,
                            col_31399,
                            cast(col_88688 as bigint) as col_63175
                        FROM
                            tbl_8681
                        WHERE
                            date = '20200831'
                            AND col_8527 = 10
                            AND col_30850 = '直播'
                            AND col_2111 in (0, 1)
                            AND col_48633 = 1
                            AND col_31399 > 0
                    ) x
                    LEFT OUTER JOIN(
                        SELECT
                            col_8527,
                            col_63175,
                            col_76332
                        FROM
                            tbl_7528
                        WHERE
                            date >= '20181231'
                            AND col_8527 = 10
                    ) y ON x.col_63175 = y.col_63175
                GROUP BY
                    col_13174
            ) t
        GROUP BY
            col_13174
    ) a
    LEFT OUTER JOIN(
        SELECT
            col_13174,
            col_8527,
            col_54902,
            col_25960,
            col_27171,
            col_21265,
            col_70606,
            FROM_UNIXTIME(col_70606, 'yyyyMMdd') as register_day,
            col_29408,
            col_23006,
            col_74201,
            col_40216
        FROM
            tbl_2047
        WHERE
            date = '20200831'
            AND col_8527 = 10
    ) b ON a.col_13174 = b.col_13174
    LEFT OUTER JOIN(
        SELECT
            col_13174,
            col_8527,
            case
                when min(col_81149) = '20200831' then 1
                else 0
            end as is_first_recharge,
            case
                when max(col_49175) = '20200831' then 1
                else 0
            end as is_recharge_active
        FROM
            tbl_4635
        WHERE
            date = '20200831'
            AND action = 'recharge'
            AND col_8527 = 10
        GROUP BY
            col_13174,
            col_8527
    ) c ON a.col_13174 = c.col_13174
    LEFT OUTER JOIN(
        SELECT
            col_13174,
            col_8527,
            case
                when min(col_81149) = '20200831' then 1
                else 0
            end as is_first_consume,
            case
                when max(col_49175) = '20200831' then 1
                else 0
            end as is_consume_active
        FROM
            tbl_4635
        WHERE
            date = '20200831'
            AND action = 'consume'
            AND col_8527 = 10
        GROUP BY
            col_13174,
            col_8527
    ) d ON a.col_13174 = d.col_13174
    LEFT OUTER JOIN(
        SELECT
            col_13174,
            max(col_64609) as col_64609
        FROM
            tbl_7402
        WHERE
            date = '20200831'
            AND col_8527 = 10
        GROUP BY
            col_13174
    ) e ON a.col_13174 = e.col_13174
limit 10000

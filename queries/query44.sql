WITH col_59507_log AS (

SELECT
    col_13174,
    col_41184,
    col_43492,
    col_77546,
    col_45351
from
    tbl_89
where
    date = '20200831'
    AND col_43492 in (
        'enter_tag_detail',
        'favourite_col_99249',
        'col_6863_tag',
        'shoot',
        'cell_show',
        'cell_click',
        'banner_show',
        'banner_click'
    )
)

SELECT
    col_99249_bhv_daily.col_57001,
    coalesce(col_32393, '') as col_32393,
    coalesce(col_13174, 0) as col_13174,
    coalesce(col_23006, -1) as col_23006,
    coalesce(col_77931, 0) as col_77931,
    coalesce(col_19178, '') as col_19178,
    coalesce(col_40552, '') as col_40552,
    coalesce(col_99249_col_9728, -1) as col_9728,
    coalesce(col_26589, 0) as col_26589,
    coalesce(col_98184, '') as col_98184,
    coalesce(col_61332, '') as col_61332,
    coalesce(col_26901, '') as col_26901,
    coalesce(detail_vv, 0) as detail_vv,
    coalesce(detail_uv, 0) as detail_uv,
    coalesce(feed_detail_vv, 0) as feed_detail_vv,
    coalesce(feed_detail_uv, 0) as feed_detail_uv,
    coalesce(fresh_detail_vv, 0) as fresh_detail_vv,
    coalesce(fresh_detail_uv, 0) as fresh_detail_uv,
    coalesce(col_18027_detail_vv, 0) as col_18027_detail_vv,
    coalesce(col_18027_detail_uv, 0) as col_18027_detail_uv,
    coalesce(search_detail_vv, 0) as search_detail_vv,
    coalesce(search_detail_uv, 0) as search_detail_uv,
    coalesce(discol_60653_detail_vv, 0) as discol_60653_detail_vv,
    coalesce(discol_60653_detail_uv, 0) as discol_60653_detail_uv,
    coalesce(message_detail_vv, 0) as message_detail_vv,
    coalesce(message_detail_uv, 0) as message_detail_uv,
    coalesce(col_65687, 0) as col_65687,
    coalesce(col_6863_col_99249_uv, 0) as col_6863_col_99249_uv,
    coalesce(col_66020, 0) as col_66020,
    coalesce(col_6296, 0) as col_6296,
    coalesce(col_4439, 0) as col_4439,
    coalesce(shoot_uv, 0) as shoot_uv,
    coalesce(col_8929, 0) as col_8929,
    coalesce(col_54713, 0) as col_54713,
    coalesce(col_3385, 0) as col_3385,
    coalesce(vv, 0) as vv,
    coalesce(uv, 0) as uv,
    coalesce(col_85978, 0) as col_85978,
    coalesce(col_28788, 0) as col_28788,
    coalesce(col_78822, 0) as col_78822,
    coalesce(col_11535, 0) as col_11535,
    coalesce(col_69856, 0) as col_69856,
    coalesce(col_10797, 0) as col_10797,
    coalesce(col_38626, 0) as col_38626,
    coalesce(col_82096, 0) as col_82096,
    coalesce(col_42247, 0) as col_42247,
    coalesce(col_67343, 0) as col_67343,
    coalesce(col_26995, 0) as col_26995,
    coalesce(col_6863_video_uv, 0) as col_6863_video_uv,
    coalesce(col_38169, 0) as col_38169,
    coalesce(col_62409, 0) as col_62409,
    coalesce(col_91714, 0) as col_91714,
    coalesce(col_67269, 0) as col_67269,
    nvl(banner_col_81323, 0) banner_col_81323,
    nvl(banner_col_47732, 0) banner_col_47732,
    nvl(banner_col_86219, 0) banner_col_86219,
    nvl(banner_click_uv, 0) banner_click_uv,
    nvl(discol_60653y_col_81323, 0) discol_60653y_col_81323,
    nvl(discol_60653y_col_47732, 0) discol_60653y_col_47732,
    nvl(discol_60653y_col_86219, 0) discol_60653y_col_86219,
    nvl(discol_60653y_click_uv, 0) discol_60653y_click_uv,
    coalesce(col_93285, 0) as col_93285,
    col_29421 as col_29421,
    coalesce(col_77075, 0) as col_77075,
    col_26104
FROM
    (
        SELECT
            col_57001,
            sum(detail_vv) as detail_vv,
            sum(detail_uv) as detail_uv,
            sum(feed_detail_vv) as feed_detail_vv,
            sum(feed_detail_uv) as feed_detail_uv,
            sum(fresh_detail_vv) as fresh_detail_vv,
            sum(fresh_detail_uv) as fresh_detail_uv,
            sum(col_18027_detail_vv) as col_18027_detail_vv,
            sum(col_18027_detail_uv) as col_18027_detail_uv,
            sum(search_detail_vv) as search_detail_vv,
            sum(search_detail_uv) as search_detail_uv,
            sum(discol_60653_detail_vv) as discol_60653_detail_vv,
            sum(discol_60653_detail_uv) as discol_60653_detail_uv,
            sum(message_detail_vv) as message_detail_vv,
            sum(message_detail_uv) as message_detail_uv,
            sum(col_66020) as col_66020,
            sum(col_6296) as col_6296,
            sum(col_65687) as col_65687,
            sum(col_6863_col_99249_uv) as col_6863_col_99249_uv,
            sum(col_4439) as col_4439,
            sum(shoot_uv) as shoot_uv,
            sum(col_8929) as col_8929,
            sum(col_54713) as col_54713,
            sum(col_3385) as col_3385,
            sum(vv) as vv,
            sum(uv) as uv,
            sum(col_85978) as col_85978,
            sum(col_28788) as col_28788,
            sum(col_78822) as col_78822,
            sum(col_11535) as col_11535,
            sum(col_69856) as col_69856,
            sum(col_10797) as col_10797,
            sum(col_38626) as col_38626,
            sum(col_82096) as col_82096,
            sum(col_42247) as col_42247,
            sum(col_67343) as col_67343,
            sum(col_26995) as col_26995,
            sum(col_6863_video_uv) as col_6863_video_uv,
            sum(col_38169) as col_38169,
            sum(col_62409) as col_62409,
            sum(col_91714) as col_91714,
            sum(col_67269) as col_67269,
            SUM(banner_col_81323) banner_col_81323,
            SUM(banner_col_47732) banner_col_47732,
            SUM(banner_col_86219) banner_col_86219,
            SUM(banner_click_uv) banner_click_uv,
            SUM(discol_60653y_col_81323) discol_60653y_col_81323,
            SUM(discol_60653y_col_47732) discol_60653y_col_47732,
            SUM(discol_60653y_col_86219) discol_60653y_col_86219,
            SUM(discol_60653y_click_uv) discol_60653y_click_uv
        FROM
            (
                SELECT
                    col_57001,
                    0 as detail_vv,
                    0 as detail_uv,
                    0 as feed_detail_vv,
                    0 as feed_detail_uv,
                    0 as fresh_detail_vv,
                    0 as fresh_detail_uv,
                    0 as col_18027_detail_vv,
                    0 as col_18027_detail_uv,
                    0 as search_detail_vv,
                    0 as search_detail_uv,
                    0 as discol_60653_detail_vv,
                    0 as discol_60653_detail_uv,
                    0 as message_detail_vv,
                    0 as message_detail_uv,
                    0 as col_66020,
                    0 as col_6296,
                    0 as col_65687,
                    0 as col_6863_col_99249_uv,
                    0 as col_4439,
                    0 as shoot_uv,
                    0 banner_col_81323,
                    0 as banner_col_47732,
                    0 banner_col_86219,
                    0 as banner_click_uv,
                    0 discol_60653y_col_81323,
                    0 as discol_60653y_col_47732,
                    0 discol_60653y_col_86219,
                    0 as discol_60653y_click_uv,
                    col_35211(1) as col_8929,
                    0 as col_54713,
                    0 as col_3385,
                    0 as vv,
                    0 as uv,
                    0 as col_85978,
                    0 as col_28788,
                    0 as col_78822,
                    0 as col_11535,
                    0 as col_69856,
                    0 as col_10797,
                    0 as col_38626,
                    0 as col_82096,
                    0 as col_42247,
                    0 as col_67343,
                    0 as col_26995,
                    0 as col_6863_video_uv,
                    0 as col_38169,
                    0 as col_62409,
                    0 as col_91714,
                    0 as col_67269
                from(
                        select
                            col_65263,
                            col_57001
                        from
                            tbl_3400
                        where
                            date = '20200831'
                            and col_57001 > 0
                            AND col_77013 == '20200831' --限定当日投稿，此处计算当日投稿
                        group by
                            col_57001,
                            col_65263
                    ) col_99249_publish_item_bhv
                group by
                    col_57001 --抽取当日有视频消费行为的挑战
                union all
                SELECT
                    col_57001,
                    0 as detail_vv,
                    0 as detail_uv,
                    0 as feed_detail_vv,
                    0 as feed_detail_uv,
                    0 as fresh_detail_vv,
                    0 as fresh_detail_uv,
                    0 as col_18027_detail_vv,
                    0 as col_18027_detail_uv,
                    0 as search_detail_vv,
                    0 as search_detail_uv,
                    0 as discol_60653_detail_vv,
                    0 as discol_60653_detail_uv,
                    0 as message_detail_vv,
                    0 as message_detail_uv,
                    0 as col_66020,
                    0 as col_6296,
                    0 as col_65687,
                    0 as col_6863_col_99249_uv,
                    0 as col_4439,
                    0 as shoot_uv,
                    0 banner_col_81323,
                    0 as banner_col_47732,
                    0 banner_col_86219,
                    0 as banner_click_uv,
                    0 discol_60653y_col_81323,
                    0 as discol_60653y_col_47732,
                    0 discol_60653y_col_86219,
                    0 as discol_60653y_click_uv,
                    0 as col_8929,
                    col_35211(1) as col_54713,
                    0 as col_3385,
                    0 as vv,
                    0 as uv,
                    0 as col_85978,
                    0 as col_28788,
                    0 as col_78822,
                    0 as col_11535,
                    0 as col_69856,
                    0 as col_10797,
                    0 as col_38626,
                    0 as col_82096,
                    0 as col_42247,
                    0 as col_67343,
                    0 as col_26995,
                    0 as col_6863_video_uv,
                    0 as col_38169,
                    0 as col_62409,
                    0 as col_91714,
                    0 as col_67269
                from(
                        select
                            col_13174,
                            col_57001
                        from
                            tbl_3400
                        where
                            date = '20200831'
                            and col_57001 > 0
                            AND col_77013 == '20200831' --限定当日投稿，此处计算当日投稿
                        group by
                            col_13174,
                            col_57001
                    ) col_99249_publish_item_bhv
                group by
                    col_57001 --抽取当日有视频消费行为的挑战
                union all
                SELECT
                    col_57001,
                    0 as detail_vv,
                    0 as detail_uv,
                    0 as feed_detail_vv,
                    0 as feed_detail_uv,
                    0 as fresh_detail_vv,
                    0 as fresh_detail_uv,
                    0 as col_18027_detail_vv,
                    0 as col_18027_detail_uv,
                    0 as search_detail_vv,
                    0 as search_detail_uv,
                    0 as discol_60653_detail_vv,
                    0 as discol_60653_detail_uv,
                    0 as message_detail_vv,
                    0 as message_detail_uv,
                    0 as col_66020,
                    0 as col_6296,
                    0 as col_65687,
                    0 as col_6863_col_99249_uv,
                    0 as col_4439,
                    0 as shoot_uv,
                    0 banner_col_81323,
                    0 as banner_col_47732,
                    0 banner_col_86219,
                    0 as banner_click_uv,
                    0 discol_60653y_col_81323,
                    0 as discol_60653y_col_47732,
                    0 discol_60653y_col_86219,
                    0 as discol_60653y_click_uv,
                    0 as col_8929,
                    0 as col_54713,
                    col_35211(1) as col_3385,
                    0 as vv,
                    0 as uv,
                    0 as col_85978,
                    0 as col_28788,
                    0 as col_78822,
                    0 as col_11535,
                    0 as col_69856,
                    0 as col_10797,
                    0 as col_38626,
                    0 as col_82096,
                    0 as col_42247,
                    0 as col_67343,
                    0 as col_26995,
                    0 as col_6863_video_uv,
                    0 as col_38169,
                    0 as col_62409,
                    0 as col_91714,
                    0 as col_67269
                from(
                        select
                            col_3859,
                            col_57001
                        from
                            tbl_3400
                        where
                            date = '20200831'
                            and col_57001 > 0
                            AND col_77013 == '20200831' --限定当日投稿，此处计算当日投稿
                        group by
                            col_3859,
                            col_57001
                    ) col_99249_publish_item_bhv
                group by
                    col_57001 --抽取当日有视频消费行为的挑战
                UNION ALL
                SELECT
                    col_57001,
                    0 as detail_vv,
                    0 as detail_uv,
                    0 as feed_detail_vv,
                    0 as feed_detail_uv,
                    0 as fresh_detail_vv,
                    0 as fresh_detail_uv,
                    0 as col_18027_detail_vv,
                    0 as col_18027_detail_uv,
                    0 as search_detail_vv,
                    0 as search_detail_uv,
                    0 as discol_60653_detail_vv,
                    0 as discol_60653_detail_uv,
                    0 as message_detail_vv,
                    0 as message_detail_uv,
                    0 as col_66020,
                    0 as col_6296,
                    0 as col_65687,
                    0 as col_6863_col_99249_uv,
                    0 as col_4439,
                    0 as shoot_uv,
                    0 banner_col_81323,
                    0 as banner_col_47732,
                    0 banner_col_86219,
                    0 as banner_click_uv,
                    0 discol_60653y_col_81323,
                    0 as discol_60653y_col_47732,
                    0 discol_60653y_col_86219,
                    0 as discol_60653y_click_uv,
                    0 as col_8929,
                    0 as col_54713,
                    0 as col_3385,
                    sum(vv) as vv,
                    col_35211(
                        case
                            when vv > 0 then col_13174
                        end
                    ) as uv,
                    sum(col_85978) as col_85978,
                    col_35211(
                        case
                            when col_85978 > 0 then col_13174
                        end
                    ) as col_28788,
                    sum(col_78822) as col_78822,
                    col_35211(
                        case
                            when col_78822 > 0 then col_13174
                        end
                    ) as col_11535,
                    cast(sum(col_10797)/1000 as bigint) as col_69856,
                    sum(col_10797) as col_10797,
                    sum(col_38626) as col_38626,
                    col_35211(
                        case
                            when col_38626 > 0 then col_13174
                        end
                    ) as col_82096,
                    sum(col_42247) as col_42247,
                    col_35211(
                        case
                            when col_42247 > 0 then col_13174
                        end
                    ) as col_67343,
                    sum(col_26995) as col_26995,
                    col_35211(
                        case
                            when col_26995 > 0 then col_13174
                        end
                    ) as col_6863_video_uv,
                    sum(col_38169) as col_38169,
                    col_35211(
                        case
                            when col_38169 > 0 then col_13174
                        end
                    ) as col_62409,
                    sum(col_91714) as col_91714,
                    col_35211(
                        case
                            when col_91714 > 0 then col_13174
                        end
                    ) as col_67269
                FROM(
                        SELECT
                            col_13174,
                            cast(col_57001 as bigint) as col_57001,
                            sum(vv) as vv,
                            sum(col_85978) as col_85978,
                            sum(col_78822) as col_78822,
                            sum(col_10797) as col_10797,
                            sum(col_38626) as col_38626,
                            sum(col_42247) as col_42247,
                            sum(col_26995) as col_26995,
                            sum(col_38169) as col_38169,
                            sum(col_91714) as col_91714
                        FROM
                            (
                                SELECT
                                    col_13174,
                                    col_65263,
                                    vv,
                                    col_85978,
                                    col_78822,
                                    col_10797,
                                    col_38626,
                                    col_42247,
                                    col_26995,
                                    col_38169,
                                    col_91714,
                                    col_97887
                                FROM
                                    tbl_1485
                                WHERE
                                    date = '20200831'
                            ) t1 LATERAL VIEW EXPLODE(col_97887) a AS col_57001
                        where
                            cast(col_57001 as bigint) > 0
                        GROUP BY
                            cast(col_57001 as bigint),
                            col_13174
                    ) col_99249_item_consume_bhv
                GROUP BY
                    col_57001
                UNION ALL
                SELECT
                    col_57001,
                    sum(col_96980) as detail_pv,
                    col_35211(
                        case
                            when col_96980 > 0 then col_13174
                        end
                    ) as detail_uv,
                    sum(feed_col_96980) as feed_detail_pv,
                    col_35211(
                        case
                            when feed_col_96980 > 0 then col_13174
                        end
                    ) as feed_detail_uv,
                    sum(fresh_col_96980) as fresh_detail_pv,
                    col_35211(
                        case
                            when fresh_col_96980 > 0 then col_13174
                        end
                    ) as fresh_detail_uv,
                    sum(col_18027_col_96980) as col_18027_detail_pv,
                    col_35211(
                        case
                            when col_18027_col_96980 > 0 then col_13174
                        end
                    ) as col_18027_detail_uv,
                    sum(search_col_96980) as search_detail_pv,
                    col_35211(
                        case
                            when search_col_96980 > 0 then col_13174
                        end
                    ) as search_detail_uv,
                    sum(discol_60653_col_96980) as discol_60653_detail_vv,
                    col_35211(
                        case
                            when discol_60653_col_96980 > 0 then col_13174
                        end
                    ) as discol_60653_detail_uv,
                    sum(message_col_96980) as message_detail_pv,
                    col_35211(
                        case
                            when message_col_96980 > 0 then col_13174
                        end
                    ) as message_detail_uv,
                    sum(favourite_col_55420) as favourite_pv,
                    col_35211(
                        case
                            when favourite_col_55420 > 0 then col_13174
                        end
                    ) as col_6296,
                    sum(col_65687) as col_65687,
                    col_35211(
                        case
                            when col_65687 > 0 then col_13174
                        end
                    ) as col_6863_col_99249_uv,
                    sum(col_4439) as shoot_pv,
                    col_35211(
                        case
                            when col_4439 > 0 then col_13174
                        end
                    ) as shoot_uv,
                    sum(banner_col_81323) banner_col_81323,
                    col_35211(
                        case
                            when banner_col_81323 > 0 then col_13174
                        end
                    ) as banner_col_47732,
                    sum(banner_col_86219) banner_col_86219,
                    col_35211(
                        case
                            when banner_col_86219 > 0 then col_13174
                        end
                    ) as banner_click_uv,
                    sum(discol_60653y_col_81323) discol_60653y_col_81323,
                    col_35211(
                        case
                            when discol_60653y_col_81323 > 0 then col_13174
                        end
                    ) as discol_60653y_col_47732,
                    sum(discol_60653y_col_86219) discol_60653y_col_86219,
                    col_35211(
                        case
                            when discol_60653y_col_86219 > 0 then col_13174
                        end
                    ) as discol_60653y_click_uv,
                    0 as col_8929,
                    0 as col_54713,
                    0 as col_3385,
                    0 as vv,
                    0 as uv,
                    0 as col_85978,
                    0 as col_28788,
                    0 as col_78822,
                    0 as col_11535,
                    0 as col_69856,
                    0 as col_10797,
                    0 as col_38626,
                    0 as col_82096,
                    0 as col_42247,
                    0 as col_67343,
                    0 as col_26995,
                    0 as col_6863_video_uv,
                    0 as col_38169,
                    0 as col_62409,
                    0 as col_91714,
                    0 as col_67269
                FROM(
                        SELECT
                            col_13174,
                            cast(col_41184 as bigint) as col_57001,
                            col_35211(
                                case
                                    when col_43492 = 'enter_tag_detail' then 1
                                end
                            ) as col_96980,
                            col_35211(
                                case
                                    when col_43492 = 'enter_tag_detail'
                                    and col_77546 = 'homepage_hot' then 1
                                end
                            ) as feed_col_96980,
                            col_35211(
                                case
                                    when col_43492 = 'enter_tag_detail'
                                    and col_77546 = 'homepage_fresh' then 1
                                end
                            ) as fresh_col_96980,
                            col_35211(
                                case
                                    when col_43492 = 'enter_tag_detail'
                                    and col_77546 = 'homepage_col_18027' then 1
                                end
                            ) as col_18027_col_96980,
                            col_35211(
                                case
                                    when col_43492 = 'enter_tag_detail'
                                    and (
                                        col_77546 = 'homepage_search_video_board'
                                        or col_77546 = 'search_result'
                                    ) then 1
                                end
                            ) as search_col_96980,
                            col_35211(
                                case
                                    when col_43492 = 'enter_tag_detail'
                                    and (
                                        col_77546 = 'banner'
                                        or col_77546 = 'discol_60653'
                                    ) then 1
                                end
                            ) as discol_60653_col_96980,
                            col_35211(
                                case
                                    when col_43492 = 'enter_tag_detail'
                                    and col_77546 = 'message' then 1
                                end
                            ) as message_col_96980,
                            col_35211(
                                case
                                    when col_43492 = 'favourite_col_99249' then 1
                                end
                            ) as favourite_col_55420,
                            col_35211(
                                case
                                    when col_43492 = 'col_6863_tag' then 1
                                end
                            ) as col_65687,
                            col_35211(
                                case
                                    when col_43492 = 'shoot'
                                    and col_45351 = 'col_99249' then 1
                                end
                            ) as col_4439,
                            col_35211(
                                case
                                    when col_43492 = 'banner_show' then 1
                                end
                            ) banner_col_81323,
                            col_35211(
                                case
                                    when col_43492 = 'banner_click' then 1
                                end
                            ) banner_col_86219,
                            col_35211(
                                case
                                    when col_43492 = 'cell_show'
                                    AND col_77546 = 'discol_60653y' then 1
                                end
                            ) discol_60653y_col_81323,
                            col_35211(
                                case
                                    when col_43492 = 'cell_click'
                                    AND col_77546 = 'discol_60653y' then 1
                                end
                            ) discol_60653y_col_86219
                        FROM
                            col_59507_log
                        WHERE
                            (
                                col_43492 in (
                                    'enter_tag_detail',
                                    'favourite_col_99249',
                                    'col_6863_tag',
                                    'cell_show',
                                    'cell_click',
                                    'banner_show',
                                    'banner_click'
                                )
                                or (
                                    col_43492 = 'shoot'
                                    and col_45351 = 'col_99249'
                                )
                            )
                            AND cast(col_41184 as bigint) > 0 --去掉上报为空值或异常值（如小于等于0）的记录
                        GROUP BY
                            col_13174,
                            col_41184
                    ) col_99249_col_59507_bhv
                GROUP BY
                    col_57001
            ) col_99249_bhv_daily_inner
        GROUP BY
            col_57001
    ) col_99249_bhv_daily
    LEFT OUTER JOIN (
        SELECT
            col_57001,
            col_32393,
            col_13174,
            col_23006,
            col_77931,
            col_19178,
            col_40552,
            case
                when col_40552 = '20200831' then 1
                else 0
            end as col_99249_col_9728,
            col_26589,
            col_98184,
            col_61332,
            col_26901,
            col_93285,
            col_29421,
            col_77075,
            col_26104
        FROM
            tbl_2074
        WHERE
            date = '20200831'
    ) col_99249_info on col_99249_bhv_daily.col_57001 = col_99249_info.col_57001
WHERE
    col_99249_bhv_daily.col_57001 IS NOT NULL
limit 10000

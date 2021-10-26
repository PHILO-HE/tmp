SELECT  tcs_base.col_37938,
        tcs_base.task_id,
        tcs_base.col_15351,
        tcs_base.col_23006,
        tcs_base.col_77931,
        tcs_base.col_43159,
        tcs_base.col_99980,
        tcs_base.business,
        tcs_base.tt_col_9192_key,
        tcs_base.col_9192_key_col_29499,
        tcs_base.review_col_50426,
        tcs_base.review_col_50426_col_29499,
        tcs_base.col_59516,
        tcs_base.vv,
        tcs_base.col_65321,
        tcs_base.tcs_col_51497,
        tcs_base.high_risk_leader,
        tcs_base.high_risk,
        tcs_base.col_31301s,
        tcs_base.col_40641s,
        tcs_base.col_65321_old,
        tcs_base.display_col_23006_old,
        tcs_base.debug_info,
        tcs_base.col_28120,
        col_65321_map.verify_col_23006,
        tcs_col_51497_map.verify_col_51497,
        tcs_base.no_feed,
        tcs_base.project_col_29499,
        tcs_base.col_26444,
        tcs_base.last_col_94526, --20200511修改--开始--添加进审高编队列的打压理由字段
        tcs_base.col_7952, --20200529 新增
        tcs_base.col_42379, --20200817新增
        tcs_base.col_64845 -- 20200818透传
FROM    (


    SELECT
        tcs_base_1.col_37938,
        tcs_base_1.task_id,
        tcs_base_1.col_15351,
        tcs_base_1.col_23006,
        tcs_base_1.col_77931,
        tcs_base_1.col_43159,
        tcs_base_1.col_99980,
        tcs_base_1.business,
        tcs_base_1.tt_col_9192_key,
        tcs_base_1.col_9192_key_col_29499,
        tcs_base_1.review_col_50426,
        tcs_base_1.review_col_50426_col_29499,
        tcs_base_1.col_59516,
        tcs_base_1.vv,
        CASE WHEN tcs_base_1.col_65321 = '6969' THEN '69'
             WHEN tcs_base_1.col_65321 IS NULL THEN get_json_object(col_64845, '$.review_visibility')
             ELSE tcs_base_1.col_65321
        END AS col_65321,
        COALESCE(
            tcs_base_1.tcs_col_51497,
            get_json_object(tcs_base_1.col_64845, '$.fail_col_51497')
        ) AS tcs_col_51497,
        tcs_base_1.high_risk_leader,
        tcs_base_1.high_risk,
        tcs_base_1.col_31301s,
        tcs_base_1.col_40641s,
        tcs_base_1.col_65321_old,
        tcs_base_1.display_col_23006_old,
        tcs_base_1.debug_info,
        tcs_base_1.col_28120,
        tcs_base_1.no_feed,
        tcs_base_1.project_col_29499,
        tcs_base_1.col_26444,
        tcs_base_1.last_col_94526, --20200511修改--开始--添加进审高编队列的打压理由字段
        tcs_base_1.col_7952, --20200529 新增
        tcs_base_1.col_42379, --20200817新增
        tcs_base_1.col_64845 -- 20200818透传
from
        (
            SELECT  tcs.col_37938,
                    tcs.task_id,
                    tcs.col_15351,
                    tcs.col_23006,
                    tcs.col_77931,
                    tcs.col_43159,
                    tcs.col_99980,
                    tcs_cp.business,
                    tcs_cp.col_93080 AS project_col_29499,
                    tcs_cp.tt_col_9192_key,
                    tcs_cp.col_9192_key_col_29499,
                    tcs_cp.review_col_50426,
                    tcs_cp.review_col_50426_col_29499,
                    tcs_cs.col_59516,
                    tcs_cs.vv,
                    get_json_object(col_64845, '$.no_feed') AS no_feed,
                    CASE
                         WHEN tcs_cp.business = 'wtoutiao' AND get_json_object(col_64845, '$.col_65321') = '-999' THEN get_json_object(col_64845, '$.old_visibolity_col_59516')
                         WHEN tcs_cp.business = 'wtoutiao' AND tcs_cp.tt_col_9192_key = 4 AND review_col_50426 = 16 THEN get_json_object(col_64845, '$.high_review_recheck_result')
                         WHEN tcs_cp.business = 'wtoutiao' AND tcs_cp.tt_col_9192_key = 5 THEN get_json_object(col_64845, '$.col_65321') --20200401修改--结束--
                         WHEN tcs_cp.business = 'wtoutiao' AND get_json_object(col_64845, '$.col_65321') = '1215' THEN get_json_object(col_64845, '$.old_col_65321') --20200309修改--结束--
                         WHEN tcs_cp.business = 'wtoutiao' AND tcs_cp.tt_col_9192_key = 1 THEN get_json_object(col_64845, '$.verify_col_23006')
                         WHEN tcs_cp.business = 'wtoutiao' AND tcs_cp.tt_col_9192_key IN (2, 3, 4) THEN COALESCE(
                             get_json_object(col_64845, '$.col_65321'),
                             get_json_object(col_64845, '$.verify_col_23006')
                         ) --问答
                         WHEN tcs_cp.business IN (
                             'wukong_wenda',
                             'wukong_question',
                             'search_answer',
                             'search_question'
                         ) AND get_json_object(col_64845, '$.col_65321') = '-999' THEN get_json_object(col_64845, '$.old_col_65321') --20200309修改--结束--
                         WHEN tcs_cp.business IN (
                             'wukong_wenda',
                             'wukong_question',
                             'search_answer',
                             'search_question'
                         ) AND tcs_cp.tt_col_9192_key = 1 THEN get_json_object(col_64845, '$.pass')
                         WHEN tcs_cp.business = 'wukong_wenda' AND tcs_cp.tt_col_9192_key IN (2, 3) THEN COALESCE(
                             get_json_object(col_64845, '$.col_65321'),
                             get_json_object(col_64845, '$.pass')
                         )
                         WHEN tcs_cp.business = 'wukong_question' AND tcs_cp.tt_col_9192_key IN (2, 4) THEN COALESCE(
                             get_json_object(col_64845, '$.col_65321'),
                             get_json_object(col_64845, '$.display_col_23006')
                         ) --图文/特卖/组图
                         WHEN tcs_cp.business IN ('toutiao_article', 'temai', 'toutiao_gallery') AND (
                             get_json_object(col_64845, '$.col_65321') = '-999' OR get_json_object(col_64845, '$.assert_display_col_23006') = '-999'
                         ) THEN get_json_object(col_64845, '$.old_col_65321')
                         WHEN tcs_cp.business IN ('toutiao_article', 'temai', 'toutiao_gallery') AND tcs_cp.tt_col_9192_key = 3 AND review_col_50426 = 16 THEN get_json_object(col_64845, '$.action')
                         WHEN tcs_cp.business IN ('toutiao_article', 'temai', 'toutiao_gallery') AND tcs_cp.tt_col_9192_key IN (1, 3) THEN get_json_object(col_64845, '$.review_visibility') --20200309修改--结束--
                         WHEN tcs_cp.business IN ('toutiao_article', 'temai', 'toutiao_gallery') AND tcs_cp.tt_col_9192_key = 2 AND get_json_object(col_64845, '$.assert_display_col_23006') = '4294967295' AND review_col_50426 IN (8, 13) THEN 10 --20200309修改--结束--
                         WHEN tcs_cp.business IN ('toutiao_article', 'temai', 'toutiao_gallery') AND tcs_cp.tt_col_9192_key = 2 AND get_json_object(col_64845, '$.assert_display_col_23006') = '44' AND review_col_50426 IN (8, 13) THEN 65
                         WHEN tcs_cp.business IN ('toutiao_article', 'temai', 'toutiao_gallery') AND tcs_cp.tt_col_9192_key = 2 AND get_json_object(col_64845, '$.assert_display_col_23006') = '2013266028' AND review_col_50426 IN (8, 13) THEN 40
                         WHEN tcs_cp.business IN ('toutiao_article', 'temai', 'toutiao_gallery') AND tcs_cp.tt_col_9192_key = 2 AND get_json_object(col_64845, '$.assert_display_col_23006') = '2013301228' AND review_col_50426 IN (8, 13) THEN 20
                         WHEN tcs_cp.business IN ('toutiao_article', 'temai', 'toutiao_gallery') AND tcs_cp.tt_col_9192_key = 2 AND get_json_object(col_64845, '$.assert_display_col_23006') = '0' AND review_col_50426 IN (8, 13) THEN 69
                         WHEN tcs_cp.business IN ('toutiao_article', 'temai', 'toutiao_gallery') AND tcs_cp.tt_col_9192_key = 2 THEN COALESCE(
                             get_json_object(col_64845, '$.col_65321'),
                             get_json_object(col_64845, '$.assert_display_col_23006'),
                             get_json_object(col_64845, '$.review_visibility'),
                             get_json_object(col_64845, '$.old_display_col_23006')
                         )
                         WHEN tcs_cp.business IN ('toutiao_article', 'temai', 'toutiao_gallery') AND tcs_cp.tt_col_9192_key = 4 THEN get_json_object(col_64845, '$.col_65321')
                         WHEN tcs_cp.business IN ('toutiao_article', 'temai', 'toutiao_gallery') AND tcs_cp.tt_col_9192_key = 5 THEN get_json_object(col_64845, '$.review_visibility')
                         WHEN tcs_cp.business IN ('toutiao_article', 'temai', 'toutiao_gallery') AND tcs_cp.tt_col_9192_key = 5 AND (
                             get_json_object(col_64845, '$.assert_display_col_23006') IS NULL OR get_json_object(col_64845, '$.assert_display_col_23006') = '0'
                         ) THEN get_json_object(col_64845, '$.verify_col_23006') --小视频
                         WHEN tcs_cp.business = 'toutiao_shortvideo' AND get_json_object(col_64845, '$.col_65321') = '-999' THEN COALESCE(
                             get_json_object(col_64845, '$.old_display_col_23006'),
                             get_json_object(col_64845, '$.old_col_65321')
                         ) --20200309修改--结束--
                         WHEN tcs_cp.business = 'toutiao_shortvideo' AND tcs_cp.tt_col_9192_key IN (1, 3) THEN get_json_object(col_64845, '$.review_visibility')
                         WHEN tcs_cp.business = 'toutiao_shortvideo' AND tcs_cp.tt_col_9192_key = 2 THEN COALESCE(
                             get_json_object(col_64845, '$.col_65321'),
                             get_json_object(col_64845, '$.assert_display_col_23006'),
                             get_json_object(col_64845, '$.display_col_23006'),
                             get_json_object(col_64845, '$.old_display_col_23006')
                         ) --音频
                         WHEN tcs_cp.business = 'toutiao_audio' AND tcs_cp.tt_col_9192_key IN (1, 3, 5) THEN COALESCE(
                             get_json_object(col_64845, '$.review_visibility'),
                             get_json_object(col_64845, '$.verify_col_23006')
                         )
                         WHEN tcs_cp.business = 'toutiao_audio' AND tcs_cp.tt_col_9192_key = 2 THEN COALESCE(
                             get_json_object(col_64845, '$.col_65321'),
                             get_json_object(col_64845, '$.assert_display_col_23006'),
                             get_json_object(col_64845, '$.old_display_col_23006')
                         ) --小说
                         WHEN tcs_cp.business = 'book_chapter' AND tcs_cp.tt_col_9192_key IN (1, 3, 6, 7) THEN get_json_object(col_64845, '$.review_visibility')
                         WHEN tcs_cp.business = 'book_chapter' AND tcs_cp.tt_col_9192_key = 2 THEN COALESCE(
                             get_json_object(col_64845, '$.col_65321'),
                             get_json_object(col_64845, '$.assert_display_col_23006'),
                             get_json_object(col_64845, '$.old_display_col_23006')
                         )
                         WHEN tcs_cp.business = 'book_chapter' AND tcs_cp.tt_col_9192_key = 5 THEN COALESCE(
                             get_json_object(col_64845, '$.verify_col_23006'),
                             get_json_object(col_64845, '$.review_visibility')
                         ) --视频/专栏
                         WHEN tcs_cp.business = '' AND tcs_cp.tt_col_9192_key IN (1, 3, 4) THEN get_json_object(col_64845, '$.review_visibility')
                         WHEN tcs_cp.business = '' AND tcs_cp.tt_col_9192_key = 2 THEN COALESCE(
                             get_json_object(col_64845, '$.col_65321'),
                             get_json_object(col_64845, '$.assert_display_col_23006'),
                             get_json_object(col_64845, '$.old_display_col_23006')
                         )
                         WHEN tcs_cp.business = '' AND tcs_cp.tt_col_9192_key = 5 THEN get_json_object(col_64845, '$.verify_col_23006') --专栏learning
                         WHEN tcs_cp.business = 'learning' AND tcs_cp.tt_col_9192_key IN (1, 3, 4) THEN get_json_object(col_64845, '$.review_visibility') --when tcs_cp.business='learning' and tcs_cp.tt_col_9192_key in (4)                                                             then coalesce(get_json_object(col_64845,'$.col_65321'),get_json_object(col_64845,'$.assert_display_col_23006'))
                         WHEN tcs_cp.business = 'learning' AND tcs_cp.tt_col_9192_key IN (5) THEN get_json_object(col_64845, '$.verify_col_23006') --转发
                         WHEN tcs_cp.business = 'forward' AND tcs_cp.tt_col_9192_key IN (1, 2) AND get_json_object(col_64845, '$.repost_verify_col_23006') = '6' THEN 69
                         WHEN tcs_cp.business = 'forward' AND tcs_cp.tt_col_9192_key IN (1, 2) AND get_json_object(col_64845, '$.repost_verify_col_23006') = '2' THEN 45
                         WHEN tcs_cp.business = 'forward' AND tcs_cp.tt_col_9192_key IN (1, 2) AND get_json_object(col_64845, '$.repost_verify_col_23006') = '3' THEN 15
                         WHEN tcs_cp.business = 'forward' AND tcs_cp.tt_col_9192_key = 1 AND get_json_object(col_64845, '$.repost_verify_col_23006') = '4' THEN 10
                         WHEN tcs_cp.business = 'forward' AND tcs_cp.tt_col_9192_key = 1 AND get_json_object(col_64845, '$.no_feed') = '1' THEN 1215
                         WHEN tcs_cp.business = 'forward' AND tcs_cp.tt_col_9192_key = 2 AND get_json_object(col_64845, '$.repost_verify_col_23006') IN ('5') THEN 65
                         WHEN tcs_cp.business = 'forward' AND tcs_cp.tt_col_9192_key = 2 AND get_json_object(col_64845, '$.repost_verify_col_23006') IN ('1215') THEN 1215
                         WHEN tcs_cp.business = 'forward' AND tcs_cp.tt_col_9192_key = 2 AND get_json_object(col_64845, '$.repost_verify_col_23006') = '-999' THEN -999
                         WHEN tcs_cp.business = 'forward' AND tcs_cp.tt_col_9192_key = 2 AND get_json_object(col_64845, '$.old_col_65321') = '6' THEN 69
                         WHEN tcs_cp.business = 'forward' AND tcs_cp.tt_col_9192_key = 2 AND get_json_object(col_64845, '$.old_col_65321') = '5' THEN 65
                         WHEN tcs_cp.business = 'forward' AND tcs_cp.tt_col_9192_key = 2 AND get_json_object(col_64845, '$.old_col_65321') = '2' THEN 45
                         WHEN tcs_cp.business = 'forward' AND tcs_cp.tt_col_9192_key = 2 AND get_json_object(col_64845, '$.old_col_65321') = '3' THEN 15
                         WHEN tcs_cp.business = 'forward' AND tcs_cp.tt_col_9192_key = 2 AND get_json_object(col_64845, '$.old_col_65321') = '1215' THEN 1215 --else get_json_object(col_64845, '$.review_visibility') --20200628新增兜底数据
                    END AS col_65321, ---col_50426 =2
                    CASE
                         WHEN tcs_cp.business = 'wtoutiao' AND tcs_cp.tt_col_9192_key IN (4, 5) AND review_col_50426 IN (14, 15) THEN get_json_object(col_64845, '$.audit_choice')
                         WHEN tcs_cp.business = 'wtoutiao' AND tcs_cp.tt_col_9192_key = 4 AND review_col_50426 = 16 THEN get_json_object(col_64845, '$.recheck_skip_col_51497') --20200401修改--
                         WHEN tcs_cp.business = 'wtoutiao' AND tcs_cp.tt_col_9192_key IN (1, 3) THEN COALESCE(
                             get_json_object(col_64845, '$.smallapp_col_51497'),
                             get_json_object(col_64845, '$.self_visible_col_51497'),
                             get_json_object(col_64845, '$.delete_col_51497')
                         )
                         WHEN tcs_cp.business = 'wtoutiao' AND tcs_cp.tt_col_9192_key IN (2, 4) THEN COALESCE(
                             get_json_object(col_64845, '$.feedback'),
                             get_json_object(col_64845, '$.allappsmallrange_col_51497'),
                             get_json_object(col_64845, '$.smallapp_col_51497'),
                             get_json_object(col_64845, '$.self_visible_col_51497')
                         ) --问答
                         WHEN tcs_cp.business = 'wukong_question' AND tcs_cp.tt_col_9192_key = 1 THEN get_json_object(col_64845, '$.col_51497')
                         WHEN tcs_cp.business = 'wukong_question' AND tcs_cp.tt_col_9192_key IN (2, 4) THEN COALESCE(
                             get_json_object(col_64845, '$.feedback'),
                             get_json_object(col_64845, '$.op_col_51497')
                         )
                         WHEN tcs_cp.business = 'wukong_wenda' AND tcs_cp.tt_col_9192_key IN (1, 2, 3, 4) THEN COALESCE(
                             get_json_object(col_64845, '$.feedback'),
                             get_json_object(col_64845, '$.op_col_51497')
                         )
                         WHEN tcs_cp.business IN ('search_answer', 'search_question') AND tcs_cp.tt_col_9192_key = 1 THEN get_json_object(col_64845, '$.op_col_51497') --图文/特卖/组图
                         WHEN tcs_cp.business IN ('toutiao_article', 'temai', 'toutiao_gallery') AND tcs_cp.tt_col_9192_key IN (1, 3, 5) THEN get_json_object(col_64845, '$.fail_col_51497')
                         WHEN tcs_cp.business IN ('toutiao_article', 'temai', 'toutiao_gallery') AND tcs_cp.tt_col_9192_key IN (2, 4) THEN COALESCE(
                             get_json_object(col_64845, '$.feedback'),
                             get_json_object(col_64845, '$.feedback_col_48760')
                         ) --小视频
                         WHEN tcs_cp.business = 'toutiao_shortvideo' AND tcs_cp.tt_col_9192_key IN (1, 3) THEN get_json_object(col_64845, '$.fail_col_51497')
                         WHEN tcs_cp.business = 'toutiao_shortvideo' AND tcs_cp.tt_col_9192_key = 2 THEN COALESCE(
                             get_json_object(col_64845, '$.feedback'),
                             get_json_object(col_64845, '$.feedback_col_48760')
                         ) --音频
                         WHEN tcs_cp.business = 'toutiao_audio' AND tcs_cp.tt_col_9192_key IN (1, 3, 5) THEN get_json_object(col_64845, '$.fail_col_51497')
                         WHEN tcs_cp.business = 'toutiao_audio' AND tcs_cp.tt_col_9192_key = 2 THEN COALESCE(
                             get_json_object(col_64845, '$.feedback'),
                             get_json_object(col_64845, '$.feedback_col_48760')
                         ) --小说
                         WHEN tcs_cp.business = 'book_chapter' AND tcs_cp.tt_col_9192_key IN (1, 3, 5, 6, 7) THEN get_json_object(col_64845, '$.fail_col_51497')
                         WHEN tcs_cp.business = 'book_chapter' AND tcs_cp.tt_col_9192_key = 2 THEN COALESCE(
                             get_json_object(col_64845, '$.feedback'),
                             get_json_object(col_64845, '$.feedback_col_48760')
                         ) --视频/专栏
                         WHEN tcs_cp.business = '' AND tcs_cp.tt_col_9192_key IN (1, 3, 5) THEN get_json_object(col_64845, '$.fail_col_51497')
                         WHEN tcs_cp.business = '' AND tcs_cp.tt_col_9192_key = 2 THEN COALESCE(
                             get_json_object(col_64845, '$.feedback'),
                             get_json_object(col_64845, '$.feedback_col_48760')
                         ) --专栏learning
                         WHEN tcs_cp.business = 'learning' AND tcs_cp.tt_col_9192_key IN (1, 3, 4, 5) THEN get_json_object(col_64845, '$.fail_col_51497')
                         WHEN tcs_cp.business = 'learning' AND tcs_cp.tt_col_9192_key IN (2) THEN COALESCE(
                             get_json_object(col_64845, '$.feedback'),
                             get_json_object(col_64845, '$.feedback_col_48760')
                         ) --转发forward
                         WHEN tcs_cp.business = 'forward' AND tcs_cp.tt_col_9192_key IN (2) THEN COALESCE(
                             get_json_object(col_64845, '$.small_app'),
                             get_json_object(col_64845, '$.allappsmallrange_col_51497'),
                             get_json_object(col_64845, '$.self_visible_col_51497')
                         )
                    END  as tcs_col_51497, ---col_50426 =1
                    get_json_object(col_64845, '$.high_risk_leader') AS high_risk_leader,
                    get_json_object(col_64845, '$.high_risk') AS high_risk,
                    get_json_object(col_31301s, '$.total') AS col_31301s,
                    get_json_object(col_40641s, '$.total_col_40641') AS col_40641s,
                    get_json_object(col_64845, '$.old_col_65321') AS col_65321_old,
                    get_json_object(col_64845, '$.old_display_col_23006') AS display_col_23006_old,
                    debug_info,
                    concat(
                        '{\"group_inner_col_35211\":',
                        COALESCE(group_inner_col_35211, '\"\"'),
                        ',\"trigger_col_50426\":',
                        COALESCE(trigger_col_50426, '\"\"'),
                        ',\"gandalf_risk\":',
                        COALESCE(risk_col_19334, '\"\"'),
                        '}'
                    ) AS col_28120,
                    col_26444,
                    CASE
                         WHEN tcs_cp.business IN('wtoutiao', 'wukong_wenda', 'wukong_question') AND review_col_50426 = 14 THEN get_json_object(tcs.col_7952, '$.last_col_94526') --图文
                         WHEN tcs_cp.business = 'toutiao_article' AND review_col_50426 = 14 THEN get_json_object(tcs.col_7952, '$.col_8394fail_col_51497')
                    END AS last_col_94526,
                    tcs.col_7952, --20200529 添加
                    tcs.col_64845,
                    tcs.col_42379 --20200817新增
            FROM    (
                        SELECT  `_id` AS task_id,
                                CAST(col_37938 AS bigint) AS col_37938,
                                CAST(col_15351 AS bigint) AS col_15351,
                                regexp_replace(
                                    regexp_replace(
                                        regexp_replace(
                                            get_json_object(col_64845, '$.mainForm'),
                                            '\\{"col_29499":"([0-9|a-z|A-Z|_]*)"\\}',
                                            ''
                                        ),
                                        '"col_29499":|\\[|\\]|,"col_48685"| |,',
                                        ''
                                    ),
                                    '\\}\\{',
                                    ','
                                ) AS col_64845,
                                concat(
                                    COALESCE(
                                        split(split(col_7952, '"col_31301s":') [1], '\\}') [0],
                                        '\"\"'
                                    ),
                                    '}'
                                ) AS col_31301s,
                                concat(
                                    COALESCE(
                                        split(split(col_7952, '"col_40641s":') [1], '\\}') [0],
                                        '\"\"'
                                    ),
                                    '}'
                                ) AS col_40641s,
                                get_json_object(col_7952, '$.debug_info') AS debug_info,
                                GET_JSON_OBJECT(col_7952, '$.col_28120_col_71951.group_inner_col_35211') AS group_inner_col_35211,
                                GET_JSON_OBJECT(col_7952, '$.col_28120_col_71951.trigger_col_50426') AS trigger_col_50426,
                                GET_JSON_OBJECT(col_7952, '$.col_12805_col_19334.gandalf_risk') AS risk_col_19334,
                                col_7952,
                                col_23006,
                                col_77931,
                                col_43159,
                                col_99980,
                                col_26444,
                                col_42379 --20200817新增
                        FROM    tbl_3130
                        WHERE
                                date = GREATEST(
                                    date_format(DATE_SUB(CURRENT_DATE(), 3), 'yyyyMMdd'),
                                    '20200831'
                                )
                        AND     substr(col_77931, 1, 10) <= '2020-08-31'
                    ) tcs
            INNER JOIN
                    (
                        SELECT  id,
                                CASE WHEN business IN ('toutiao_article', '5236') THEN 'toutiao_article'
                                     WHEN business IN ('wtoutiao', '6074') THEN 'wtoutiao'
                                     WHEN business IN ('wukong_wenda', '5767') THEN 'wukong_wenda'
                                     WHEN business IN ('wukong_question', '5757') THEN 'wukong_question'
                                     WHEN business IN ('search_answer', '6083') THEN 'search_answer'
                                     WHEN business IN ('search_question', '6075') THEN 'search_question'
                                     WHEN business IN ('temai', '6058') THEN 'temai'
                                     WHEN business IN ('toutiao_gallery', '5119') THEN 'toutiao_gallery'
                                     WHEN business IN ('toutiao_shortvideo', '5552') THEN 'toutiao_shortvideo'
                                     WHEN business IN ('toutiao_audio', '6042') THEN 'toutiao_audio'
                                     WHEN business IN ('book_chapter', '6091') THEN 'book_chapter'
                                     WHEN business IN ('forward', '6066') THEN 'forward'
                                     WHEN business IN ('learning', '6100', '6109') THEN 'learning'
                                     ELSE business
                                END business, --20200628新增融合逻辑
                                tt_col_9192_key,
                                review_col_50426,
                                CASE WHEN tt_col_9192_key = 1 THEN '初审'
                                     WHEN tt_col_9192_key = 2 THEN '复审'
                                     WHEN tt_col_9192_key = 4 THEN '代运营'
                                     WHEN tt_col_9192_key = 3 THEN '专项'
                                     WHEN tt_col_9192_key = 5 THEN '修改'
                                     WHEN tt_col_9192_key = 6 THEN '删除'
                                     WHEN tt_col_9192_key = 7 THEN '回扫'
                                     ELSE tt_col_9192_key
                                END AS col_9192_key_col_29499,
                                CASE WHEN review_col_50426 = 1 THEN '风险先审'
                                     WHEN review_col_50426 = 2 THEN '优质先审'
                                     WHEN review_col_50426 = 3 THEN '先发追审'
                                     WHEN review_col_50426 = 4 THEN '初审召回'
                                     WHEN review_col_50426 = 5 THEN '必杀'
                                     WHEN review_col_50426 = 6 THEN '先发不审'
                                     WHEN review_col_50426 = 7 THEN '普通复审'
                                     WHEN review_col_50426 = 8 THEN '超高展复审'
                                     WHEN review_col_50426 = 9 THEN '标问题'
                                     WHEN review_col_50426 = 10 THEN '推荐'
                                     WHEN review_col_50426 = 11 THEN '标题审核'
                                     WHEN review_col_50426 = 12 THEN '复审不审'
                                     WHEN review_col_50426 = 13 THEN '频道高展复审'
                                     WHEN review_col_50426 = 14 THEN '高编进审'
                                     WHEN review_col_50426 = 15 THEN '高编修改'
                                     WHEN review_col_50426 = 16 THEN '高编运营沟通'
                                     ELSE review_col_50426
                                END AS review_col_50426_col_29499,
                                col_93080
                        FROM    dwd_verify_col_51602_cloud_project
                        WHERE   date = '20200831'
                        AND     hour = '00' --20200628新增数字business
                        AND     business IN (
                                    '6074',
                                    '5767',
                                    '5757',
                                    '6083',
                                    '6075',
                                    '6058',
                                    '5119',
                                    '5552',
                                    '6042',
                                    '6091',
                                    '6066',
                                    '6100',
                                    '6109',
                                    '5236',
                                    'wtoutiao',
                                    'wukong_wenda',
                                    'wukong_question',
                                    'search_answer',
                                    'search_question',
                                    'toutiao_article',
                                    'temai',
                                    'toutiao_gallery',
                                    'toutiao_shortvideo',
                                    'toutiao_audio',
                                    'book_chapter',
                                    'learning',
                                    'forward'
                                )
                    ) tcs_cp
            ON      tcs.col_15351 = tcs_cp.id
            LEFT JOIN
                    (
                        SELECT  CAST(id AS bigint) AS id,
                                LEVEL,
                                get_json_object(col_28120, '$.vv') AS vv
                        FROM    verify_high_risk_case_dict
                        WHERE   date = '20200831'
                    ) tcs_cs
            ON      tcs.col_37938 = tcs_cs.id
        ) tcs_base_1
)  tcs_base


LEFT JOIN
        (
            SELECT  DISTINCT business AS col_68653,
                    tt_col_9192_key AS col_9192_key,
                    col_48685 AS col_23006_id,
                    trim(cn_col_29499) AS verify_col_23006
            FROM    dim_audit_col_51497_col_23006_df
            WHERE   date = '20200831'
            AND     col_50426 = 2
        ) col_65321_map
ON      col_65321_map.col_23006_id = tcs_base.col_65321
AND     col_65321_map.col_68653 = tcs_base.business
AND     col_65321_map.col_9192_key = tcs_base.tt_col_9192_key
LEFT JOIN
        (
            SELECT  DISTINCT business AS col_68653,
                    tt_col_9192_key AS col_9192_key,
                    trim(col_48685) AS col_51497_id,
                    trim(cn_col_29499) AS verify_col_51497
            FROM    dim_audit_col_51497_col_23006_df
            WHERE   date = '20200831'
            AND     col_50426 = 1
        ) tcs_col_51497_map
ON      tcs_col_51497_map.col_51497_id = tcs_base.tcs_col_51497
AND     tcs_col_51497_map.col_68653 = tcs_base.business
AND     tcs_col_51497_map.col_9192_key = tcs_base.tt_col_9192_key
limit 10000

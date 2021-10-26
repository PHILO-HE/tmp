select
    group_ver.col_78590,
    group_ver.col_65263,
    group_ver.col_169,
    group_ver.col_72948,
    group_ver.col_96337,
    case
        when wenda_ans_qu.answer_col_50426_ans = '搜索问答-回答' then wenda_ans_qu.answer_col_50426_qus
        when game.col_78590 is not null then '游戏小视频'
        else coalesce(
            wenda_ans_qu.answer_col_50426_ans,
            qus.question_col_50426,
            group_ver.col_44580
        )
    end as col_44580,
    case
        when wenda_ans_qu.answer_col_50426_ans = '搜索问答-回答' then 'search_answer'
        when wenda_ans_qu.answer_col_50426_ans = '悟空问答-回答' then 'wukong_wenda'
        when qus.question_col_50426 col_53168 '%搜索回答%' then 'search_question'
        when qus.question_col_50426 = '悟空问答-提问' then 'wukong_question'
        else group_ver.col_375
    end as col_375,
    group_ver.uid,
    group_ver.col_23219,
    group_ver.auth_col_50426,
    group_ver.pgc_article_col_59516,
    group_ver.xigua_col_59516,
    group_ver.weitoutiao_col_59516,
    group_ver.wenda_col_59516,
    group_ver.short_video_col_59516,
    if(
        substr(group_ver.psm, 0, 1) = ',',
        substr(group_ver.psm, 2),
        group_ver.psm
    ) as psm,
    group_ver.col_65321,
    group_ver.col_18854
from
    (
        select
            grp.col_78590,
            grp.col_65263,
            grp.col_18026,
            grp.col_169,
            grp.col_72948,
            grp.col_44580,
            grp.col_375,
            grp.uid,
            grp.col_96337,
            grp.col_65321,
            grp.col_18854,
            ath.col_23219,
            ath.auth_col_50426,
            ath.pgc_article_col_59516,
            ath.xigua_col_59516,
            ath.weitoutiao_col_59516,
            ath.wenda_col_59516,
            ath.short_video_col_59516,
            fea.psm
        from
            (
                select
                    col_78590,
                    max(col_65263) as col_65263,
                    if(
                        coalesce(max(col_75157), 0) != 0,
                        CONCAT(max(col_75157), '_', floor(rand() * 10)),
                        ceiling(cast(rand() * -65535 as bigint))
                    ) as join_col_13174,
                    max(col_75157) as uid,
                    max(col_23219) as col_23219,
                    max(col_18026) as col_18026,
                    max(col_169) as col_169,
                    max(col_72948) as col_72948,
                    max(col_44580) as col_44580,
                    max(col_375) as col_375,
                    max(col_96337) as col_96337,
                    max(col_65321) as col_65321,
                    max(col_18854) as col_18854
                from
                    (
                    select 
                        col_78590,
                        if(col_65263 = 0, rand() * -100, col_65263) as col_65263,
                        col_75157,
                        if(col_23219 = 0, rand() * -100, col_23219) as col_23219,
                        col_18026,
                        col_169,
                        col_72948,
                        col_44580,
                        col_375,
                        col_96337,
                        col_65321,
                        col_18854
                    from tbl_4231
                    where date = '20200831' and col_68653<>'xigua'
                    union 
                    select
                        col_78590,
                        if(col_65263 = 0, rand() * -100, col_65263) as col_65263,
                        col_75157,
                        if(col_23219 = 0, rand() * -100, col_23219) as col_23219,
                        col_18026,
                        col_169,
                        col_72948,
                        col_44580,
                        col_375,
                        col_96337,
                        null as col_65321,
                        null as col_18854
                    from dwd_pugc_group_info_searchanswer_df
                    where date = '20200831'
                        ) group_all
                group by
                    col_78590
            ) grp
            left join (
                SELECT
                    col_23219,
                    auth_col_50426,
                    pgc_article_col_59516,
                    xigua_col_59516,
                    weitoutiao_col_59516,
                    wenda_col_59516,
                    short_video_col_59516,
                    col_13174,
                    CONCAT(col_13174, '_', factor2) AS join_col_13174
                from

                (
                select
                    col_23219,
                    auth_col_50426,
                    pgc_article_col_59516,
                    xigua_col_59516,
                    weitoutiao_col_59516,
                    wenda_col_59516,
                    short_video_col_59516,
                    col_13174,
                    '0,1,2,3,4,5,6,7,8,9,10' AS number2
                from
                    dwd_top_col_6079_stats_df
                where
                    date = '20200831'
                ) extend lateral view explode(split(number2, ',')) vt AS factor2
            ) ath on grp.join_col_13174 = ath.join_col_13174
            left join (
                select
                    col_65263,
                    concat_ws(',', COLLECT_set(psm)) as psm
                from
                    (
                        select
                            col_65263,
                            psm
                        from
                            feature_proxy_node_result
                        where
                            date = '20200831'
                            and col_65263 is not null
                            and col_65263 <> ''
                            AND hit = true
                        group by
                            col_65263,
                            psm
                    ) a
                group by
                    col_65263
            ) fea on grp.col_65263 = fea.col_65263
    ) group_ver
    left join (
        select
            *
        from
            dwd_pugc_group_wenda_ans_info_df
        where
            date = '20200831'
    ) wenda_ans_qu on group_ver.col_78590 = wenda_ans_qu.answer_id
    left join (
        select
            qid,
            CASE
                WHEN call_col_95097 = 10
                and get_json_object(col_28120, '$.crawl_col_95097') = 'search' THEN '搜索回答-搬运问答-提问'
                WHEN call_col_95097 = 10
                and get_json_object(col_28120, '$.crawl_col_95097') = 'accucol_3775_search' THEN '搜索回答-精准问答-提问'
                WHEN call_col_95097 = 10
                and get_json_object(col_28120, '$.crawl_col_95097') = 'medical_accucol_3775_search' THEN '搜索回答-医疗问答-提问'
                WHEN call_col_95097 != 10 THEN '悟空问答-提问'
            end question_col_50426
        from
            question_dict
        where
            date = '20200831'
    ) qus on group_ver.col_78590 = qus.qid
    left join (
        SELECT
         cast(ITEM_DICT.col_65263 as bigint) as col_78590
      FROM
         web_article_group_dict AS GROUP_DICT
         JOIN web_article_tbl_6597 AS ITEM_DICT ON ITEM_DICT.col_65263 = GROUP_DICT.col_78590
      WHERE
         GROUP_DICT.col_77931 > 1533052800 --8月1日之后创建的小游戏相关小视频
         AND get_json_object(
            get_json_object(
               get_json_object(ITEM_DICT.col_28120, '$.ugc_business_col_71951'),
               "$.game_info"
            ),
            "$.game_col_50426"
         ) == 2
         AND GROUP_DICT.date = '20200831'
         AND ITEM_DICT.date = '20200831'
         and get_json_object(GROUP_DICT.col_28120, '$.col_72948') IN (16, 19, 21)
      group by cast(ITEM_DICT.col_65263 as bigint)
    ) game on group_ver.col_78590 = game.col_78590
limit 10000

select
    app as col_24229,
    col_13174,
    col_44531,
    concat(col_44531,'-',col_13174) col_95358,
    sum(
        if(
            col_43492 = 'col_76816'
            and col_19137 ['offset'] = 10,
            1,
            0
        )
    ) as uniq_col_86457, --去重搜索量
    col_35211(
        distinct if(
            col_43492 = 'search_result_click',
            col_19137 ['col_38518'],
            null
        )
    ) as click_uniq_col_86457, --有点去重搜索量
    sum(
        if(
            col_43492 = 'col_76816'
            and col_19137 ['offset'] = 10
            and col_19137 ['col_95097'] in(
                'search_bar_outer',
                'search_bar_inner',
                'search_history',
                'recom_search',
                'sug',
                'input',
                'related_search',
                'click_recom',
                'knowledge',
                'search_subtab_switch',
                'shortvideo_dedail',
                'aladdin',
                'words_search',
                'empty_result',
                'xiaoshipin_guide',
                'others_search',
                'voice_search',
                'guide_search'
            ),
            1,
            0
        )
    ) as active_uniq_col_86457, --主动去重搜索量
    col_35211(
        distinct if(
            col_43492 = 'search_result_click'
            and col_19137 ['col_95097'] in(
                'search_bar_outer',
                'search_bar_inner',
                'search_history',
                'recom_search',
                'sug',
                'input',
                'related_search',
                'click_recom',
                'knowledge',
                'search_subtab_switch',
                'shortvideo_dedail',
                'aladdin',
                'words_search',
                'empty_result',
                'xiaoshipin_guide',
                'others_search',
                'voice_search',
                'guide_search'
            ),
            col_19137 ['col_38518'],
            null
        )
    ) as click_active_uniq_col_86457, --有点主动去重搜索量
    sum(
        if(
            col_43492 = 'col_76816'
            and col_19137 ['offset'] = 10
            and col_19137 ['col_95097'] in(
                'article_tag',
                'feed_search',
                'long_shipin',
                'trending_card',
                'trending_list',
                'gallery',
                'weather_search',
                'feed_recom',
                'lottery_col_7675',
                'shortvideo_tag'
            ),
            1,
            0
        )
    ) as passive_uniq_col_86457, --被动去重搜索量
    col_35211(
        distinct if(
            col_43492 = 'search_result_click'
            and col_19137 ['col_95097'] in(
                'article_tag',
                'feed_search',
                'long_shipin',
                'trending_card',
                'trending_list',
                'gallery',
                'weather_search',
                'feed_recom',
                'lottery_col_7675',
                'shortvideo_tag'
            ),
            col_19137 ['col_38518'],
            null
        )
    ) as click_passive_uniq_col_86457, --有点被动去重搜索量
    sum(
        if(
            col_43492 = 'col_76816'
            and col_19137 ['offset'] = 10
            and col_19137 ['col_95097'] in('input', 'sug'),
            1,
            0
        )
    ) as input_suggest_uniq_col_86457, --手动&suggest去重搜索量

    col_35211(
        distinct if(
            col_43492 = 'search_result_click'
            and col_19137 ['col_95097'] in('input', 'sug'),
            col_19137 ['col_38518'],
            null
        )
    ) as click_input_sug_uniq_col_86457, --有点手动输入&suggest去重搜索量
    sum(
        if(
            col_43492 = 'col_76816'
            and col_19137 ['offset'] = 10
            and col_19137 ['search_subcol_78413'] = 'synthesis',
            1,
            0
        )
    ) as synthesis_uniq_col_86457, --综搜去重搜索量
    col_35211(
        distinct if(
            col_43492 = 'search_result_click'
            and col_19137 ['search_subcol_78413'] = 'synthesis',
            col_19137 ['col_38518'],
            null
        )
    ) as click_synthesis_uniq_col_86457, --有点综搜去重搜索量
    sum(
        if(
            col_43492 = 'col_76816'
            and col_19137 ['offset'] = 10
            and col_19137 ['search_subcol_78413'] != 'synthesis',
            1,
            0
        )
    ) as ver_uniq_col_86457, --垂搜去重搜索量
    col_35211(
        distinct if(
            col_43492 = 'search_result_click'
            and col_19137 ['search_subcol_78413'] != 'synthesis',
            col_19137 ['col_38518'],
            null
        )
    ) as click_ver_uniq_col_86457, --有点垂搜去重搜索量
     sum(
                if(col_43492 = 'enter_app'
            and   app = 'news_article'
            and (
                (
                    lower(col_30617) in ('ios')
                    and col_12611 >= '7.0.4'
                )
                or (
                    lower(col_30617) in ('android')
                    and col_12611 >= '7.0.3'
                )
            )
                , 1, 0)
            ) as enter_app_cnt,
    sum(
            if(
                col_43492 = 'first_search'
                and   app = 'news_article'
                and (
                    (
                        lower(col_30617) in ('ios')
                        and col_12611 >= '7.0.4'
                    )
                    or (
                        lower(col_30617) in ('android')
                        and col_12611 >= '7.0.3'
                    )
                )
                and col_19137 ['search_subcol_78413'] = 'synthesis'
                and col_19137 ['col_95097'] in ('input', 'sug', 'search_history')
                and (
                    col_19137 ['first_search_col_24989'] > 0
                    and col_19137 ['first_search_col_24989'] <= 30000
                ),
                1,
                0
            )
        ) as col_86457_30s,
        sum(
        if(
            col_43492 = 'col_76816'
            and col_19137 ['offset'] = 10
            and col_19137 ['col_95097'] in('input', 'sug','search_history'),
            1,
            0
        )
    ) as manual_uniq_col_86457, --手动去重搜索量

    col_35211(
        distinct if(
            col_43492 = 'search_result_click'
            and col_19137 ['col_95097'] in('input', 'sug','search_history'),
            col_19137 ['col_38518'],
            null
        )
    ) as click_manual_uniq_col_86457 --有点手动去重搜索量

from
    tbl_552
where
    date = '20200831'
    and app in ('news_article', 'news_article_lite')
    and col_30617 in ('android', 'ios')
    and col_43492 in('col_76816', 'search_result_click','enter_app', 'first_search')
    and col_44531 in (12, 14)
group by
    app,
    col_13174,
    col_44531
limit 10000

select
    col_44531,
    col_13174,
    col_65378,
    vids,
    ala_src_set,
    col_35211(col_38518) as search_pv,
    col_35211(if(is_click > 0, col_38518, null)) as click_search_pv,
    sum(col_86219) as col_86219,
    col_35211(if(is_ala_click > 0, col_38518, null)) as ala_click_search_pv,
    col_35211(if(is_ala > 0, col_38518, null)) as ala_search_pv,
    sum(ala_col_86219) as ala_col_86219,
    col_35211(if(is_noala_click > 0, col_38518, null)) as noala_click_search_pv,
    col_35211(if(is_noala > 0, col_38518, null)) as noala_search_pv,
    sum(noala_col_86219) as noala_col_86219,
    col_35211(if(is_noala_top1_click > 0, col_38518, null)) as noala_top1_click_search_pv,
    col_35211(if(is_noala_top1 > 0, col_38518, null)) as noala_top1_search_pv,
    sum(noala_top1_col_86219) as noala_top1_col_86219,
    col_35211(if(is_noala_top3_click > 0, col_38518, null)) as noala_top3_click_search_pv,
    col_35211(if(is_noala_top3 > 0, col_38518, null)) as noala_top3_search_pv,
    sum(noala_top3_col_86219) as noala_top3_col_86219,
    col_35211(if(is_noala_top5_click > 0, col_38518, null)) as noala_top5_click_search_pv,
    col_35211(if(is_noala_top5 > 0, col_38518, null)) as noala_top5_search_pv,
    sum(noala_top5_col_86219) as noala_top5_col_86219,
    col_35211(if(is_noala_top10_click > 0, col_38518, null)) as noala_top10_click_search_pv,
    col_35211(if(is_noala_top10 > 0, col_38518, null)) as noala_top10_search_pv,
    sum(noala_top10_col_86219) as noala_top10_col_86219,
    col_35211(if(is_ala_top1_click > 0, col_38518, null)) as ala_top1_click_search_pv,
    col_35211(if(is_ala_top1 > 0, col_38518, null)) as ala_top1_search_pv,
    sum(ala_top1_col_86219) as ala_top1_col_86219,
    col_35211(if(is_ala_top3_click > 0, col_38518, null)) as ala_top3_click_search_pv,
    col_35211(if(is_ala_top3 > 0, col_38518, null)) as ala_top3_search_pv,
    sum(ala_top3_col_86219) as ala_top3_col_86219,
    col_35211(if(is_ala_top5_click > 0, col_38518, null)) as ala_top5_click_search_pv,
    col_35211(if(is_ala_top5 > 0, col_38518, null)) as ala_top5_search_pv,
    sum(ala_top5_col_86219) as ala_top5_col_86219,
    col_35211(if(is_ala_top10_click > 0, col_38518, null)) as ala_top10_click_search_pv,
    col_35211(if(is_ala_top10 > 0, col_38518, null)) as ala_top10_search_pv,
    sum(ala_top10_col_86219) as ala_top10_col_86219,
    col_35211(if(is_noala_col_302581_click > 0, col_38518, null)) as noala_col_302581_click_search_pv,
    col_35211(if(is_noala_col_302581 > 0, col_38518, null)) as noala_col_302581_search_pv,
    sum(noala_col_302581_col_86219) as noala_col_302581_col_86219,
    col_35211(if(is_noala_col_302582_click > 0, col_38518, null)) as noala_col_302582_click_search_pv,
    col_35211(if(is_noala_col_302582 > 0, col_38518, null)) as noala_col_302582_search_pv,
    sum(noala_col_302582_col_86219) as noala_col_302582_col_86219,
    col_35211(if(is_noala_col_302583_click > 0, col_38518, null)) as noala_col_302583_click_search_pv,
    col_35211(if(is_noala_col_302583 > 0, col_38518, null)) as noala_col_302583_search_pv,
    sum(noala_col_302583_col_86219) as noala_col_302583_col_86219,
    col_35211(if(is_noala_col_302584_click > 0, col_38518, null)) as noala_col_302584_click_search_pv,
    col_35211(if(is_noala_col_302584 > 0, col_38518, null)) as noala_col_302584_search_pv,
    sum(noala_col_302584_col_86219) as noala_col_302584_col_86219,
    col_35211(if(is_noala_col_302585_click > 0, col_38518, null)) as noala_col_302585_click_search_pv,
    col_35211(if(is_noala_col_302585 > 0, col_38518, null)) as noala_col_302585_search_pv,
    sum(noala_col_302585_col_86219) as noala_col_302585_col_86219,
    col_35211(if(is_noala_col_302586_click > 0, col_38518, null)) as noala_col_302586_click_search_pv,
    col_35211(if(is_noala_col_302586 > 0, col_38518, null)) as noala_col_302586_search_pv,
    sum(noala_col_302586_col_86219) as noala_col_302586_col_86219,
    col_35211(if(is_noala_col_302587_click > 0, col_38518, null)) as noala_col_302587_click_search_pv,
    col_35211(if(is_noala_col_302587 > 0, col_38518, null)) as noala_col_302587_search_pv,
    sum(noala_col_302587_col_86219) as noala_col_302587_col_86219,
    col_35211(if(is_noala_col_302588_click > 0, col_38518, null)) as noala_col_302588_click_search_pv,
    col_35211(if(is_noala_col_302588 > 0, col_38518, null)) as noala_col_302588_search_pv,
    sum(noala_col_302588_col_86219) as noala_col_302588_col_86219,
    col_35211(if(is_noala_col_302589_click > 0, col_38518, null)) as noala_col_302589_click_search_pv,
    col_35211(if(is_noala_col_302589 > 0, col_38518, null)) as noala_col_302589_search_pv,
    sum(noala_col_302589_col_86219) as noala_col_302589_col_86219,
    col_35211(if(is_noala_col_3025810_click > 0, col_38518, null)) as noala_col_3025810_click_search_pv,
    col_35211(if(is_noala_col_3025810 > 0, col_38518, null)) as noala_col_3025810_search_pv,
    sum(noala_col_3025810_col_86219) as noala_col_3025810_col_86219,
    col_35211(if(is_ala_col_302581_click > 0, col_38518, null)) as ala_col_302581_click_search_pv,
    col_35211(if(is_ala_col_302581 > 0, col_38518, null)) as ala_col_302581_search_pv,
    sum(ala_col_302581_col_86219) as ala_col_302581_col_86219,
    col_35211(if(is_ala_col_302582_click > 0, col_38518, null)) as ala_col_302582_click_search_pv,
    col_35211(if(is_ala_col_302582 > 0, col_38518, null)) as ala_col_302582_search_pv,
    sum(ala_col_302582_col_86219) as ala_col_302582_col_86219,
    col_35211(if(is_ala_col_302583_click > 0, col_38518, null)) as ala_col_302583_click_search_pv,
    col_35211(if(is_ala_col_302583 > 0, col_38518, null)) as ala_col_302583_search_pv,
    sum(ala_col_302583_col_86219) as ala_col_302583_col_86219,
    col_35211(if(is_ala_col_302584_click > 0, col_38518, null)) as ala_col_302584_click_search_pv,
    col_35211(if(is_ala_col_302584 > 0, col_38518, null)) as ala_col_302584_search_pv,
    sum(ala_col_302584_col_86219) as ala_col_302584_col_86219,
    col_35211(if(is_ala_col_302585_click > 0, col_38518, null)) as ala_col_302585_click_search_pv,
    col_35211(if(is_ala_col_302585 > 0, col_38518, null)) as ala_col_302585_search_pv,
    sum(ala_col_302585_col_86219) as ala_col_302585_col_86219,
    col_35211(if(is_ala_col_302586_click > 0, col_38518, null)) as ala_col_302586_click_search_pv,
    col_35211(if(is_ala_col_302586 > 0, col_38518, null)) as ala_col_302586_search_pv,
    sum(ala_col_302586_col_86219) as ala_col_302586_col_86219,
    col_35211(if(is_ala_col_302587_click > 0, col_38518, null)) as ala_col_302587_click_search_pv,
    col_35211(if(is_ala_col_302587 > 0, col_38518, null)) as ala_col_302587_search_pv,
    sum(ala_col_302587_col_86219) as ala_col_302587_col_86219,
    col_35211(if(is_ala_col_302588_click > 0, col_38518, null)) as ala_col_302588_click_search_pv,
    col_35211(if(is_ala_col_302588 > 0, col_38518, null)) as ala_col_302588_search_pv,
    sum(ala_col_302588_col_86219) as ala_col_302588_col_86219,
    col_35211(if(is_ala_col_302589_click > 0, col_38518, null)) as ala_col_302589_click_search_pv,
    col_35211(if(is_ala_col_302589 > 0, col_38518, null)) as ala_col_302589_search_pv,
    sum(ala_col_302589_col_86219) as ala_col_302589_col_86219,
    col_35211(if(is_ala_col_3025810_click > 0, col_38518, null)) as ala_col_3025810_click_search_pv,
    col_35211(if(is_ala_col_3025810 > 0, col_38518, null)) as ala_col_3025810_search_pv,
    sum(ala_col_3025810_col_86219) as ala_col_3025810_col_86219,
    sum(client_show_col_12533) as client_show_col_12533,
    col_24229
from
    (
        select
            col_44531,
            col_13174,
            col_65378,
            vids,
            col_38518,
            sort_array(
                split(
                    concat(
                        concat_ws(
                            ',',
                            collect_set(
                                if(
                                    ala_src is not null
                                    and ala_src != '',
                                    ala_src,
                                    null
                                )
                            )
                        ),
                        ',',
                        concat_ws(
                            ',',
                            collect_set(
                                if(
                                    (
                                        col_24229 in (
                                            'news_article',
                                            'news_article_lite'
                                        )
                                        and ala_src in (
                                            'tv',
                                            'tv_cluster',
                                            'tv_series',
                                            'movie_new',
                                            'movie_new_series',
                                            'movie_cluster',
                                            'variety',
                                            'variety_series',
                                            'documentary',
                                            'documentary_series',
                                            'cartoon',
                                            'cartoon_series',
                                            'col_20040_tag'
                                        )
                                    )
                                    or (
                                        col_24229 in ('video_article')
                                        and ala_src in (
                                            'tv',
                                            'tv_series',
                                            'movie_new',
                                            'movie_new_series',
                                            'variety',
                                            'variety_series',
                                            'documentary',
                                            'documentary_series',
                                            'cartoon',
                                            'cartoon_series',
                                            'col_20040_tag'
                                        )
                                    ),
                                    'fake_long_video_collection',
                                    null
                                )
                            )
                        )
                    ),
                    ','
                )
            ) as ala_src_set,
            sum(client_show_col_12533) as client_show_col_12533,
            max(if(client_col_86219 > 0, 1, 0)) as is_click,
            sum(client_col_86219) as col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType',
                    1,
                    0
                )
            ) as is_ala_click,
            max(
                if(
                    ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType',
                    1,
                    0
                )
            ) as is_ala,
            sum(
                if(
                    ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType',
                    client_col_86219,
                    0
                )
            ) as ala_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and (
                        ala_src is null
                        or ala_src = ''
                    ),
                    1,
                    0
                )
            ) as is_noala_click,
            max(
                if(
                    (
                        ala_src is null
                        or ala_src = ''
                    ),
                    1,
                    0
                )
            ) as is_noala,
            sum(
                if(
                    ala_src is null
                    or ala_src = '',
                    client_col_86219,
                    0
                )
            ) as noala_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 < 1
                    and doc_col_30258 < 1,
                    1,
                    0
                )
            ) as is_noala_top1_click,
            max(
                if(
                    (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 < 1
                    and doc_col_30258 < 1,
                    1,
                    0
                )
            ) as is_noala_top1,
            sum(
                if(
                    (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 < 1
                    and doc_col_30258 < 1,
                    client_col_86219,
                    0
                )
            ) as noala_top1_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 < 3
                    and doc_col_30258 < 3,
                    1,
                    0
                )
            ) as is_noala_top3_click,
            max(
                if(
                    (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 < 3
                    and doc_col_30258 < 3,
                    1,
                    0
                )
            ) as is_noala_top3,
            sum(
                if(
                    (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 < 3
                    and doc_col_30258 < 3,
                    client_col_86219,
                    0
                )
            ) as noala_top3_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 < 5
                    and doc_col_30258 < 5,
                    1,
                    0
                )
            ) as is_noala_top5_click,
            max(
                if(
                    (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 < 5
                    and doc_col_30258 < 5,
                    1,
                    0
                )
            ) as is_noala_top5,
            sum(
                if(
                    (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 < 5
                    and doc_col_30258 < 5,
                    client_col_86219,
                    0
                )
            ) as noala_top5_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 < 10
                    and doc_col_30258 < 10,
                    1,
                    0
                )
            ) as is_noala_top10_click,
            max(
                if(
                    (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 < 10
                    and doc_col_30258 < 10,
                    1,
                    0
                )
            ) as is_noala_top10,
            sum(
                if(
                    (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 < 10
                    and doc_col_30258 < 10,
                    client_col_86219,
                    0
                )
            ) as noala_top10_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 < 1
                    and doc_col_30258 < 1,
                    1,
                    0
                )
            ) as is_ala_top1_click,
            max(
                if(
                    ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 < 1
                    and doc_col_30258 < 1,
                    1,
                    0
                )
            ) as is_ala_top1,
            sum(
                if(
                    ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 < 1
                    and doc_col_30258 < 1,
                    client_col_86219,
                    0
                )
            ) as ala_top1_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 < 3
                    and doc_col_30258 < 3,
                    1,
                    0
                )
            ) as is_ala_top3_click,
            max(
                if(
                    ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 < 3
                    and doc_col_30258 < 3,
                    1,
                    0
                )
            ) as is_ala_top3,
            sum(
                if(
                    ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 < 3
                    and doc_col_30258 < 3,
                    client_col_86219,
                    0
                )
            ) as ala_top3_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 < 5
                    and doc_col_30258 < 5,
                    1,
                    0
                )
            ) as is_ala_top5_click,
            max(
                if(
                    ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 < 5
                    and doc_col_30258 < 5,
                    1,
                    0
                )
            ) as is_ala_top5,
            sum(
                if(
                    ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 < 5
                    and doc_col_30258 < 5,
                    client_col_86219,
                    0
                )
            ) as ala_top5_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 < 10
                    and doc_col_30258 < 10,
                    1,
                    0
                )
            ) as is_ala_top10_click,
            max(
                if(
                    ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 < 10
                    and doc_col_30258 < 10,
                    1,
                    0
                )
            ) as is_ala_top10,
            sum(
                if(
                    ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 < 10
                    and doc_col_30258 < 10,
                    client_col_86219,
                    0
                )
            ) as ala_top10_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 = 0
                    and doc_col_30258 = 0,
                    1,
                    0
                )
            ) as is_noala_col_302581_click,
            max(
                if(
                    (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 = 0
                    and doc_col_30258 = 0,
                    1,
                    0
                )
            ) as is_noala_col_302581,
            sum(
                if(
                    (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 = 0
                    and doc_col_30258 = 0,
                    client_col_86219,
                    0
                )
            ) as noala_col_302581_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 = 1
                    and doc_col_30258 <= 1,
                    1,
                    0
                )
            ) as is_noala_col_302582_click,
            max(
                if(
                    (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 = 1
                    and doc_col_30258 <= 1,
                    1,
                    0
                )
            ) as is_noala_col_302582,
            sum(
                if(
                    (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 = 1
                    and doc_col_30258 <= 1,
                    client_col_86219,
                    0
                )
            ) as noala_col_302582_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 = 2
                    and doc_col_30258 <= 2,
                    1,
                    0
                )
            ) as is_noala_col_302583_click,
            max(
                if(
                    (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 = 2
                    and doc_col_30258 <= 2,
                    1,
                    0
                )
            ) as is_noala_col_302583,
            sum(
                if(
                    (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 = 2
                    and doc_col_30258 <= 2,
                    client_col_86219,
                    0
                )
            ) as noala_col_302583_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 = 3
                    and doc_col_30258 <= 3,
                    1,
                    0
                )
            ) as is_noala_col_302584_click,
            max(
                if(
                    (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 = 3
                    and doc_col_30258 <= 3,
                    1,
                    0
                )
            ) as is_noala_col_302584,
            sum(
                if(
                    (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 = 3
                    and doc_col_30258 <= 3,
                    client_col_86219,
                    0
                )
            ) as noala_col_302584_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 = 4
                    and doc_col_30258 <= 4,
                    1,
                    0
                )
            ) as is_noala_col_302585_click,
            max(
                if(
                    (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 = 4
                    and doc_col_30258 <= 4,
                    1,
                    0
                )
            ) as is_noala_col_302585,
            sum(
                if(
                    (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 = 4
                    and doc_col_30258 <= 4,
                    client_col_86219,
                    0
                )
            ) as noala_col_302585_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 = 5
                    and doc_col_30258 <= 5,
                    1,
                    0
                )
            ) as is_noala_col_302586_click,
            max(
                if(
                    (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 = 5
                    and doc_col_30258 <= 5,
                    1,
                    0
                )
            ) as is_noala_col_302586,
            sum(
                if(
                    (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 = 5
                    and doc_col_30258 <= 5,
                    client_col_86219,
                    0
                )
            ) as noala_col_302586_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 = 6
                    and doc_col_30258 <= 6,
                    1,
                    0
                )
            ) as is_noala_col_302587_click,
            max(
                if(
                    (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 = 6
                    and doc_col_30258 <= 6,
                    1,
                    0
                )
            ) as is_noala_col_302587,
            sum(
                if(
                    (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 = 6
                    and doc_col_30258 <= 6,
                    client_col_86219,
                    0
                )
            ) as noala_col_302587_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 = 7
                    and doc_col_30258 <= 7,
                    1,
                    0
                )
            ) as is_noala_col_302588_click,
            max(
                if(
                    (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 = 7
                    and doc_col_30258 <= 7,
                    1,
                    0
                )
            ) as is_noala_col_302588,
            sum(
                if(
                    (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 = 7
                    and doc_col_30258 <= 7,
                    client_col_86219,
                    0
                )
            ) as noala_col_302588_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 = 8
                    and doc_col_30258 <= 8,
                    1,
                    0
                )
            ) as is_noala_col_302589_click,
            max(
                if(
                    (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 = 8
                    and doc_col_30258 <= 8,
                    1,
                    0
                )
            ) as is_noala_col_302589,
            sum(
                if(
                    (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 = 8
                    and doc_col_30258 <= 8,
                    client_col_86219,
                    0
                )
            ) as noala_col_302589_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 = 9
                    and doc_col_30258 <= 9,
                    1,
                    0
                )
            ) as is_noala_col_3025810_click,
            max(
                if(
                    (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 = 9
                    and doc_col_30258 <= 9,
                    1,
                    0
                )
            ) as is_noala_col_3025810,
            sum(
                if(
                    (
                        ala_src is null
                        or ala_src = ''
                    )
                    and flatten_col_30258 = 9
                    and doc_col_30258 <= 9,
                    client_col_86219,
                    0
                )
            ) as noala_col_3025810_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 = 0
                    and doc_col_30258 = 0,
                    1,
                    0
                )
            ) as is_ala_col_302581_click,
            max(
                if(
                    ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 = 0
                    and doc_col_30258 = 0,
                    1,
                    0
                )
            ) as is_ala_col_302581,
            sum(
                if(
                    ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 = 0
                    and doc_col_30258 = 0,
                    client_col_86219,
                    0
                )
            ) as ala_col_302581_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 = 1
                    and doc_col_30258 <= 1,
                    1,
                    0
                )
            ) as is_ala_col_302582_click,
            max(
                if(
                    ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 = 1
                    and doc_col_30258 <= 1,
                    1,
                    0
                )
            ) as is_ala_col_302582,
            sum(
                if(
                    ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 = 1
                    and doc_col_30258 <= 1,
                    client_col_86219,
                    0
                )
            ) as ala_col_302582_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 = 2
                    and doc_col_30258 <= 2,
                    1,
                    0
                )
            ) as is_ala_col_302583_click,
            max(
                if(
                    ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 = 2
                    and doc_col_30258 <= 2,
                    1,
                    0
                )
            ) as is_ala_col_302583,
            sum(
                if(
                    ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 = 2
                    and doc_col_30258 <= 2,
                    client_col_86219,
                    0
                )
            ) as ala_col_302583_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 = 3
                    and doc_col_30258 <= 3,
                    1,
                    0
                )
            ) as is_ala_col_302584_click,
            max(
                if(
                    ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 = 3
                    and doc_col_30258 <= 3,
                    1,
                    0
                )
            ) as is_ala_col_302584,
            sum(
                if(
                    ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 = 3
                    and doc_col_30258 <= 3,
                    client_col_86219,
                    0
                )
            ) as ala_col_302584_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 = 4
                    and doc_col_30258 <= 4,
                    1,
                    0
                )
            ) as is_ala_col_302585_click,
            max(
                if(
                    ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 = 4
                    and doc_col_30258 <= 4,
                    1,
                    0
                )
            ) as is_ala_col_302585,
            sum(
                if(
                    ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 = 4
                    and doc_col_30258 <= 4,
                    client_col_86219,
                    0
                )
            ) as ala_col_302585_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 = 5
                    and doc_col_30258 <= 5,
                    1,
                    0
                )
            ) as is_ala_col_302586_click,
            max(
                if(
                    ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 = 5
                    and doc_col_30258 <= 5,
                    1,
                    0
                )
            ) as is_ala_col_302586,
            sum(
                if(
                    ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 = 5
                    and doc_col_30258 <= 5,
                    client_col_86219,
                    0
                )
            ) as ala_col_302586_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 = 6
                    and doc_col_30258 <= 6,
                    1,
                    0
                )
            ) as is_ala_col_302587_click,
            max(
                if(
                    ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 = 6
                    and doc_col_30258 <= 6,
                    1,
                    0
                )
            ) as is_ala_col_302587,
            sum(
                if(
                    ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 = 6
                    and doc_col_30258 <= 6,
                    client_col_86219,
                    0
                )
            ) as ala_col_302587_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 = 7
                    and doc_col_30258 <= 7,
                    1,
                    0
                )
            ) as is_ala_col_302588_click,
            max(
                if(
                    ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 = 7
                    and doc_col_30258 <= 7,
                    1,
                    0
                )
            ) as is_ala_col_302588,
            sum(
                if(
                    ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 = 7
                    and doc_col_30258 <= 7,
                    client_col_86219,
                    0
                )
            ) as ala_col_302588_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 = 8
                    and doc_col_30258 <= 8,
                    1,
                    0
                )
            ) as is_ala_col_302589_click,
            max(
                if(
                    ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 = 8
                    and doc_col_30258 <= 8,
                    1,
                    0
                )
            ) as is_ala_col_302589,
            sum(
                if(
                    ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 = 8
                    and doc_col_30258 <= 8,
                    client_col_86219,
                    0
                )
            ) as ala_col_302589_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 = 9
                    and doc_col_30258 <= 9,
                    1,
                    0
                )
            ) as is_ala_col_3025810_click,
            max(
                if(
                    ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 = 9
                    and doc_col_30258 <= 9,
                    1,
                    0
                )
            ) as is_ala_col_3025810,
            sum(
                if(
                    ala_src is not null
                    and ala_src != ''
                    and col_77851_col_50426 = 'AladdinRpcQueryType'
                    and flatten_col_30258 = 9
                    and doc_col_30258 <= 9,
                    client_col_86219,
                    0
                )
            ) as ala_col_3025810_col_86219,
            col_24229
        from
            dwd_impr_ab_search_ala_flatten_di
        where
            date = '20200831'
        group by
            col_44531,
            col_13174,
            col_65378,
            vids,
            col_38518,
            col_24229
    ) ala_set
group by
    col_44531,
    col_13174,
    col_65378,
    vids,
    ala_src_set,
    col_24229
limit 10000

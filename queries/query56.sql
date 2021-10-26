select
    col_44531,
    col_13174,
    col_65378,
    vids,
    ala_src,
    col_35211(if(is_click > 0, col_38518, null)) as click_search_pv,
    col_35211(col_38518) as search_pv,
    sum(col_86219) as col_86219,
    col_35211(if(top1_click_search_pv > 0, col_38518, null)) as top1_click_search_pv,
    col_35211(if(top1_search_pv > 0, col_38518, null)) as top1_search_pv,
    sum(top1_col_86219) as top1_col_86219,
    col_35211(if(top3_click_search_pv > 0, col_38518, null)) as top3_click_search_pv,
    col_35211(if(top3_search_pv > 0, col_38518, null)) as top3_search_pv,
    sum(top3_col_86219) as top3_col_86219,
    col_35211(if(top5_click_search_pv > 0, col_38518, null)) as top5_click_search_pv,
    col_35211(if(top5_search_pv > 0, col_38518, null)) as top5_search_pv,
    sum(top5_col_86219) as top5_col_86219,
    col_35211(if(top10_click_search_pv > 0, col_38518, null)) as top10_click_search_pv,
    col_35211(if(top10_search_pv > 0, col_38518, null)) as top10_search_pv,
    sum(top10_col_86219) as top10_col_86219,
    col_35211(if(col_302581_click_search_pv > 0, col_38518, null)) as col_302581_click_search_pv,
    col_35211(if(col_302581_search_pv > 0, col_38518, null)) as col_302581_search_pv,
    sum(col_302581_col_86219) as col_302581_col_86219,
    col_35211(if(col_302582_click_search_pv > 0, col_38518, null)) as col_302582_click_search_pv,
    col_35211(if(col_302582_search_pv > 0, col_38518, null)) as col_302582_search_pv,
    sum(col_302582_col_86219) as col_302582_col_86219,
    col_35211(if(col_302583_click_search_pv > 0, col_38518, null)) as col_302583_click_search_pv,
    col_35211(if(col_302583_search_pv > 0, col_38518, null)) as col_302583_search_pv,
    sum(col_302583_col_86219) as col_302583_col_86219,
    col_35211(if(col_302584_click_search_pv > 0, col_38518, null)) as col_302584_click_search_pv,
    col_35211(if(col_302584_search_pv > 0, col_38518, null)) as col_302584_search_pv,
    sum(col_302584_col_86219) as col_302584_col_86219,
    col_35211(if(col_302585_click_search_pv > 0, col_38518, null)) as col_302585_click_search_pv,
    col_35211(if(col_302585_search_pv > 0, col_38518, null)) as col_302585_search_pv,
    sum(col_302585_col_86219) as col_302585_col_86219,
    col_35211(if(col_302586_click_search_pv > 0, col_38518, null)) as col_302586_click_search_pv,
    col_35211(if(col_302586_search_pv > 0, col_38518, null)) as col_302586_search_pv,
    sum(col_302586_col_86219) as col_302586_col_86219,
    col_35211(if(col_302587_click_search_pv > 0, col_38518, null)) as col_302587_click_search_pv,
    col_35211(if(col_302587_search_pv > 0, col_38518, null)) as col_302587_search_pv,
    sum(col_302587_col_86219) as col_302587_col_86219,
    col_35211(if(col_302588_click_search_pv > 0, col_38518, null)) as col_302588_click_search_pv,
    col_35211(if(col_302588_search_pv > 0, col_38518, null)) as col_302588_search_pv,
    sum(col_302588_col_86219) as col_302588_col_86219,
    col_35211(if(col_302589_click_search_pv > 0, col_38518, null)) as col_302589_click_search_pv,
    col_35211(if(col_302589_search_pv > 0, col_38518, null)) as col_302589_search_pv,
    sum(col_302589_col_86219) as col_302589_col_86219,
    col_35211(if(col_3025810_click_search_pv > 0, col_38518, null)) as col_3025810_click_search_pv,
    col_35211(if(col_3025810_search_pv > 0, col_38518, null)) as col_3025810_search_pv,
    sum(col_3025810_col_86219) as col_3025810_col_86219,
    col_35211(if(is_show > 0, col_38518, null)) as client_show_search_pv,
    col_24229
from
    (
        select
            col_44531,
            col_13174,
            col_65378,
            vids,
            col_38518,
            ala_src,
            max(if(client_col_86219 > 0, 1, 0)) as is_click,
            max(if(client_col_81323 > 0, 1, 0)) as is_show,
            sum(client_col_86219) as col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and flatten_col_30258 < 1
                    and doc_col_30258 < 1,
                    1,
                    0
                )
            ) as top1_click_search_pv,
            max(
                if(
                    flatten_col_30258 < 1
                    and doc_col_30258 < 1,
                    1,
                    0
                )
            ) as top1_search_pv,
            sum(
                if(
                    flatten_col_30258 < 1
                    and doc_col_30258 < 1,
                    client_col_86219,
                    0
                )
            ) as top1_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and flatten_col_30258 < 3
                    and doc_col_30258 < 3,
                    1,
                    0
                )
            ) as top3_click_search_pv,
            max(
                if(
                    flatten_col_30258 < 3
                    and doc_col_30258 < 3,
                    1,
                    0
                )
            ) as top3_search_pv,
            sum(
                if(
                    flatten_col_30258 < 3
                    and doc_col_30258 < 3,
                    client_col_86219,
                    0
                )
            ) as top3_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and flatten_col_30258 < 5
                    and doc_col_30258 < 5,
                    1,
                    0
                )
            ) as top5_click_search_pv,
            max(
                if(
                    flatten_col_30258 < 5
                    and doc_col_30258 < 5,
                    1,
                    0
                )
            ) as top5_search_pv,
            sum(
                if(
                    flatten_col_30258 < 5
                    and doc_col_30258 < 5,
                    client_col_86219,
                    0
                )
            ) as top5_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and flatten_col_30258 < 10
                    and doc_col_30258 < 10,
                    1,
                    0
                )
            ) as top10_click_search_pv,
            max(
                if(
                    flatten_col_30258 < 10
                    and doc_col_30258 < 10,
                    1,
                    0
                )
            ) as top10_search_pv,
            sum(
                if(
                    flatten_col_30258 < 10
                    and doc_col_30258 < 10,
                    client_col_86219,
                    0
                )
            ) as top10_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and flatten_col_30258 = 0
                    and doc_col_30258 <= 0,
                    1,
                    0
                )
            ) as col_302581_click_search_pv,
            max(
                if(
                    flatten_col_30258 = 0
                    and doc_col_30258 <= 0,
                    1,
                    0
                )
            ) as col_302581_search_pv,
            sum(
                if(
                    flatten_col_30258 = 0
                    and doc_col_30258 <= 0,
                    client_col_86219,
                    0
                )
            ) as col_302581_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and flatten_col_30258 = 1
                    and doc_col_30258 <= 1,
                    1,
                    0
                )
            ) as col_302582_click_search_pv,
            max(
                if(
                    flatten_col_30258 = 1
                    and doc_col_30258 <= 1,
                    1,
                    0
                )
            ) as col_302582_search_pv,
            sum(
                if(
                    flatten_col_30258 = 1
                    and doc_col_30258 <= 1,
                    client_col_86219,
                    0
                )
            ) as col_302582_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and flatten_col_30258 = 2
                    and doc_col_30258 <= 2,
                    1,
                    0
                )
            ) as col_302583_click_search_pv,
            max(
                if(
                    flatten_col_30258 = 2
                    and doc_col_30258 <= 2,
                    1,
                    0
                )
            ) as col_302583_search_pv,
            sum(
                if(
                    flatten_col_30258 = 2
                    and doc_col_30258 <= 2,
                    client_col_86219,
                    0
                )
            ) as col_302583_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and flatten_col_30258 = 3
                    and doc_col_30258 <= 3,
                    1,
                    0
                )
            ) as col_302584_click_search_pv,
            max(
                if(
                    flatten_col_30258 = 3
                    and doc_col_30258 <= 3,
                    1,
                    0
                )
            ) as col_302584_search_pv,
            sum(
                if(
                    flatten_col_30258 = 3
                    and doc_col_30258 <= 3,
                    client_col_86219,
                    0
                )
            ) as col_302584_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and flatten_col_30258 = 4
                    and doc_col_30258 <= 4,
                    1,
                    0
                )
            ) as col_302585_click_search_pv,
            max(
                if(
                    flatten_col_30258 = 4
                    and doc_col_30258 <= 4,
                    1,
                    0
                )
            ) as col_302585_search_pv,
            sum(
                if(
                    flatten_col_30258 = 4
                    and doc_col_30258 <= 4,
                    client_col_86219,
                    0
                )
            ) as col_302585_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and flatten_col_30258 = 5
                    and doc_col_30258 <= 5,
                    1,
                    0
                )
            ) as col_302586_click_search_pv,
            max(
                if(
                    flatten_col_30258 = 5
                    and doc_col_30258 <= 5,
                    1,
                    0
                )
            ) as col_302586_search_pv,
            sum(
                if(
                    flatten_col_30258 = 5
                    and doc_col_30258 <= 5,
                    client_col_86219,
                    0
                )
            ) as col_302586_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and flatten_col_30258 = 6
                    and doc_col_30258 <= 6,
                    1,
                    0
                )
            ) as col_302587_click_search_pv,
            max(
                if(
                    flatten_col_30258 = 6
                    and doc_col_30258 <= 6,
                    1,
                    0
                )
            ) as col_302587_search_pv,
            sum(
                if(
                    flatten_col_30258 = 6
                    and doc_col_30258 <= 6,
                    client_col_86219,
                    0
                )
            ) as col_302587_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and flatten_col_30258 = 7
                    and doc_col_30258 <= 7,
                    1,
                    0
                )
            ) as col_302588_click_search_pv,
            max(
                if(
                    flatten_col_30258 = 7
                    and doc_col_30258 <= 7,
                    1,
                    0
                )
            ) as col_302588_search_pv,
            sum(
                if(
                    flatten_col_30258 = 7
                    and doc_col_30258 <= 7,
                    client_col_86219,
                    0
                )
            ) as col_302588_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and flatten_col_30258 = 8
                    and doc_col_30258 <= 8,
                    1,
                    0
                )
            ) as col_302589_click_search_pv,
            max(
                if(
                    flatten_col_30258 = 8
                    and doc_col_30258 <= 8,
                    1,
                    0
                )
            ) as col_302589_search_pv,
            sum(
                if(
                    flatten_col_30258 = 8
                    and doc_col_30258 <= 8,
                    client_col_86219,
                    0
                )
            ) as col_302589_col_86219,
            max(
                if(
                    client_col_86219 > 0
                    and flatten_col_30258 = 9
                    and doc_col_30258 <= 9,
                    1,
                    0
                )
            ) as col_3025810_click_search_pv,
            max(
                if(
                    flatten_col_30258 = 9
                    and doc_col_30258 <= 9,
                    1,
                    0
                )
            ) as col_3025810_search_pv,
            sum(
                if(
                    flatten_col_30258 = 9
                    and doc_col_30258 <= 9,
                    client_col_86219,
                    0
                )
            ) as col_3025810_col_86219,
            col_24229
        from
            (
                SELECT
                    col_44531,
                    col_13174,
                    col_38518,
                    col_65378,
                    vids,
                    ala_src,
                    natural_col_30258,
                    doc_col_30258,
                    pos_index,
                    col_77851_col_50426,
                    client_col_86219,
                    client_col_81323,
                    flatten_col_30258,
                    client_show_col_12533,
                    col_24229
                FROM
                    dwd_impr_ab_search_ala_flatten_di
                where
                    date = '20200831'
                union all
                SELECT
                    col_44531,
                    col_13174,
                    col_38518,
                    col_65378,
                    vids,
                    'fake_long_video_collection' as ala_src,
                    natural_col_30258,
                    doc_col_30258,
                    pos_index,
                    col_77851_col_50426,
                    client_col_86219,
                    client_col_81323,
                    flatten_col_30258,
                    client_show_col_12533,
                    col_24229
                FROM
                    dwd_impr_ab_search_ala_flatten_di
                where
                    date = '20200831'
                    and (
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
                        )
                    )
            ) all_table
        group by
            col_44531,
            col_13174,
            col_65378,
            vids,
            col_38518,
            ala_src,
            col_24229
    ) arrg_table
group by
    col_44531,
    col_13174,
    col_65378,
    vids,
    ala_src,
    col_24229
limit 10000

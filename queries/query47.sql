select
    col_44531,
    col_13174,
    col_38518,
    col_65378,
    ala_src,
    natural_col_30258,
    doc_col_30258,
    pos_index,
    col_77851_col_50426,
    sum(client_click) as client_col_86219,
    sum(client_show) as client_col_81323,
    (
        (
            row_number() over (
                partition by col_44531,
                col_13174,
                col_38518
                col_52468 by
                    doc_col_30258,
                    pos_index
            )
        ) -1
    ) as flatten_col_30258,
    sum(client_show_col_12533) as client_show_col_12533,
    col_24229
from
    (
        select
            col_44531,
            col_13174,
            col_38518,
            col_65378,
            col_77851_col_50426,
            vids,
            ala_src,
            client_click,
            client_show,
            natural_col_30258,
            doc_col_30258,
            0 as pos_index,
            client_show_col_12533,
            col_24229
        from
            click_through_v3_topic_instance
        where
            date = '20200831'
            and col_38488 = 0
            and col_24229 in (
                'news_article',
                'news_article_lite',
                'video_article'
            )
            and nvl(ala_src, '') not in ('col_64292_cluster', 'movie_cluster')
        union all
        select
            col_44531,
            col_13174,
            col_38518,
            col_65378,
            col_77851_col_50426,
            vids,
            zqm ['ala_src'] as ala_src,
            if(
                zqm ['client_click'] is null
                or zqm ['client_click'] = '',
                0,
                cast(zqm ['client_click'] as int)
            ) as client_click,
            client_show,
            natural_col_30258,
            doc_col_30258,
            if(
                zqm ['pos_index'] is null
                or zqm ['pos_index'] = '',
                0,
                cast(zqm ['pos_index'] as int)
            ) as pos_index,
            client_show_col_12533/size(nest_items) as client_show_col_12533,
            col_24229
        from
            click_through_v3_topic_instance LATERAL VIEW outer explode (nest_items) wq as zqm
        where
            date = '20200831'
            and col_38488 = 0
            and col_24229 in (
                'news_article',
                'news_article_lite',
                'video_article'
            )
            and ala_src in ('col_64292_cluster', 'movie_cluster')
    ) flatten
group by
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
    col_24229
limit 10000

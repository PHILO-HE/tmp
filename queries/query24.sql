select
    1128 as col_28543
,
    business_area
,
    goods_col_64473
,
    col_9154_col_81323
,
    col_9154_show_ucnt
,
    col_9154_col_86219
,
    col_9154_click_ucnt
,
    ec_impressed_cnt
,
    ec_impressed_ucnt
,
    'NULL' as submit_col_52468_page_cnt
,
    'NULL' as submit_col_52468_page_ucnt
from
    (
        select
            2 as business_area
            ,-1 goods_col_64473
            ,sum(    col_87589    ) as     col_9154_col_81323
            ,sum(    col_9154_show_cart_tag_allprd_ucnt_1d    ) as     col_9154_show_ucnt
            ,sum(    col_46814    ) as     col_9154_col_86219
            ,sum(    col_9154_click_cart_tag_allprd_ucnt_1d    ) as     col_9154_click_ucnt
            ,sum(    col_11130                ) as     ec_impressed_cnt
            ,sum(    col_77914_allprd_ucnt_1d                ) as     ec_impressed_ucnt
    from(
            select
                col_13174
                ,sum(col_87589)                   as     col_87589
                ,max(if(    col_87589    >0,1,0)) as     col_9154_show_cart_tag_allprd_ucnt_1d
                ,sum(col_46814)                  as     col_46814
                ,max(if(    col_46814    >0,1,0)) as     col_9154_click_cart_tag_allprd_ucnt_1d
                ,max(col_11130)                             as     col_11130
                ,max(if(    col_11130                >0,1,0)) as     col_77914_allprd_ucnt_1d
            from    tbl_6364
            where   date='20200831'
            and     col_8527=10
            and     col_24229='aweme'
            group   by col_13174
        ) col_15440list

        union all
        select
            1 as business_area,
            -1 goods_col_64473,
            sum(col_9154_col_81323) as col_9154_col_81323,
            sum(col_9154_show_ucnt) as col_9154_show_ucnt,
            sum(col_9154_col_86219) as col_9154_col_86219,
            sum(col_9154_click_ucnt) as col_9154_click_ucnt,
            sum(ec_impressed_cnt) as ec_impressed_cnt,
            sum(ec_impressed_ucnt) as ec_impressed_ucnt
        from(
                select
                    split(col_13174, '@') [1] as col_13174,
                    sum(col_9154_col_81323) as col_9154_col_81323,
                    max(col_9154_show_ucnt) as col_9154_show_ucnt,
                    sum(col_9154_col_86219) as col_9154_col_86219,
                    max(col_9154_click_ucnt) as col_9154_click_ucnt,
                    sum(ec_impressed_cnt) as ec_impressed_cnt,
                    max(ec_impressed_ucnt) as ec_impressed_ucnt
                from(
                        select
                            col_13174,
                            sum(col_9154_col_81323) as col_9154_col_81323,
                            max(col_9154_show_ucnt) as col_9154_show_ucnt,
                            sum(col_9154_col_86219) as col_9154_col_86219,
                            max(col_9154_click_ucnt) as col_9154_click_ucnt,
                            sum(ec_impressed_cnt) as ec_impressed_cnt,
                            max(ec_impressed_ucnt) as ec_impressed_ucnt
                        from(
                                select
                                    concat(floor(rand() * 1000), '@', col_13174) as col_13174,
                                    case
                                        when col_43492 = "col_12026_col_9154_show"
                                        and col_91179 in ('shopping_cart', 'video_cart_tag') then 1
                                        else 0
                                    end as col_9154_col_81323,
                                    case
                                        when col_43492 = "col_12026_col_9154_show"
                                        and col_91179 in ('shopping_cart', 'video_cart_tag') then 1
                                        else 0
                                    end as col_9154_show_ucnt,
                                    case
                                        when col_43492 = "col_12026_col_9154_click" then 1
                                        else 0
                                    end as col_9154_col_86219,
                                    case
                                        when col_43492 = "col_12026_col_9154_click" then 1
                                        else 0
                                    end col_9154_click_ucnt,
                                    case
                                        when (
                                            (
                                                (
                                                    col_43492 = 'enter_col_12026_detail'
                                                    and (
                                                        col_95097_page != 'ec_impressed_page'
                                                        or col_95097_page is NULL
                                                        or col_95097_page = ''
                                                    )
                                                    and col_78590 is not null
                                                    and col_78590 > 0
                                                )
                                                or (col_43492 = 'ec_impressed_page_view')
                                            )
                                            and col_19137 ['col_95097_page'] in (
                                                "homepage_hot",
                                                "homepage_fresh",
                                                "homepage_col_18027",
                                                "others_homepage",
                                                "personal_homepage",
                                                "general_search",
                                                "single_song",
                                                "col_99249",
                                                "discol_60653y",
                                                "ec_impressed_page",
                                                "collection_video",
                                                "ec_seed_page",
                                                "store_page"
                                            )
                                            and col_19137 ['col_8394col_78590'] is not null
                                            and col_78590 > 0
                                        )
                                        or (
                                            col_43492 = "click_col_12026"
                                            and col_91179 = 'slide_card'
                                        ) then 1
                                        else 0
                                    end as ec_impressed_cnt,
                                    case
                                        when (
                                            (
                                                (
                                                    col_43492 = 'enter_col_12026_detail'
                                                    and (
                                                        col_95097_page != 'ec_impressed_page'
                                                        or col_95097_page is NULL
                                                        or col_95097_page = ''
                                                    )
                                                    and col_78590 is not null
                                                    and col_78590 > 0
                                                )
                                                or (col_43492 = 'ec_impressed_page_view')
                                            )
                                            and col_19137 ['col_95097_page'] in (
                                                "homepage_hot",
                                                "homepage_fresh",
                                                "homepage_col_18027",
                                                "others_homepage",
                                                "personal_homepage",
                                                "general_search",
                                                "single_song",
                                                "col_99249",
                                                "discol_60653y",
                                                "ec_impressed_page",
                                                "collection_video",
                                                "ec_seed_page",
                                                "store_page"
                                            )
                                            and col_19137 ['col_8394col_78590'] is not null
                                            and col_78590 > 0
                                        )
                                        or (
                                            col_43492 = "click_col_12026"
                                            and col_91179 = 'slide_card'
                                        ) then 1
                                        else 0
                                    end as ec_impressed_ucnt
                                from(
                                        select
                                            col_13174,
                                            col_43492,
                                            col_19137 ['col_91179'] as col_91179,
                                            col_19137,
                                            coalesce(col_19137 ['col_78590'], col_19137 ['col_8394col_78590']) as col_78590,
                                            col_19137 ['col_95097_page'] as col_95097_page
                                        from
                                            tbl_8490
                                        where   date='20200831'
                                        and     col_8527=10
                                        and     col_24229='aweme'
                                        and     col_53342='core'
                                        and     col_43492 in(
                                                    'col_12026_col_9154_show',
                                                    'col_12026_col_9154_click',
                                                    'enter_col_12026_detail',
                                                    'ec_impressed_page_view',
                                                    'click_col_12026'
                                                )
                                        and coalesce(col_19137 ['col_78590'], col_19137 ['col_8394col_78590']) > 0
                                        and col_19137 ['col_88325'] > 0
                                        and col_19137 ['col_151'] > 0
                                        AND col_19137 ['col_88325'] is not NULL
                                        and col_19137 ['col_151'] is not NULL
                                    ) v3small
                            ) col_15440info
                        group by
                            col_13174
                    ) randcol_15440
                group by
                    split(col_13174, '@') [1]
            ) tmp
    ) tmp
limit 10000

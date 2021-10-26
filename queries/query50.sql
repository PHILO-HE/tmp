with search_info as (
select
    col_3859,
    col_7675,
    col_95097,
    col_28543,
    col_35211(col_38518) col_86457,
    sum(video_col_18465) col_18465
from
    dwa_aweme_search_session_di
where
    date = '20200831'
    and col_38488 = 0
    and  col_28543 in ( 1128,2329)
group by
    col_3859,
    col_7675,
    col_95097,
    col_28543
),
seatch_col_71951 as (
    select
        col_28543,
        '-' col_86506,
        sum(col_86457) col_86457,
        col_35211(distinct col_3859) col_14948,
        sum(col_18465) col_18465 --发现页搜索量
,
        sum(
            case
                when col_7675 in (
                    'aweme_general',
                    'aweme_video',
                    'aweme_col_99249',
                    'aweme_poi',
                    'aweme_col_87630',
                    'aweme_live'
                )
                and col_95097 not in ('video_col_99249', 'video_col_87630')
                or col_95097 in ('discol_60653', 'switch_tab') then col_86457
                else 0
            end
        ) discol_60653_page_col_86457 --创作页搜索量
,
        sum(
            case
                when (
                    col_7675 in ('aweme_col_99249_create', 'aweme_col_87630_create')
                )
                or (col_95097 in ('video_col_99249', 'video_col_87630')) then col_86457
                else 0
            end
        ) create_page_col_86457 --发现页搜索设备数
,
        col_35211(
            distinct case
                when col_7675 in (
                    'aweme_general',
                    'aweme_video',
                    'aweme_col_99249',
                    'aweme_poi',
                    'aweme_col_87630',
                    'aweme_live'
                )
                and col_95097 not in ('video_col_99249', 'video_col_87630')
                or col_95097 in ('discol_60653', 'switch_tab') then col_3859
                else null
            end
        ) discol_60653_page_col_14948 --创作页搜索设备数
,
        col_35211(
            distinct case
                when (
                    col_7675 in ('aweme_col_99249_create', 'aweme_col_87630_create')
                )
                or (col_95097 in ('video_col_99249', 'video_col_87630')) then col_3859
                else NULL
            end
        ) as create_page_col_14948
    from
        search_info
    group by
        col_28543
    union all
    select
        0 as col_28543,
        '-' col_86506,
        sum(col_86457) col_86457,
        col_35211(distinct col_3859) col_14948,
        sum(col_18465) col_18465 --发现页搜索量
,
        sum(
            case
                when col_7675 in (
                    'aweme_general',
                    'aweme_video',
                    'aweme_col_99249',
                    'aweme_poi',
                    'aweme_col_87630',
                    'aweme_live'
                )
                and col_95097 not in ('video_col_99249', 'video_col_87630')
                or col_95097 in ('discol_60653', 'switch_tab') then col_86457
                else 0
            end
        ) discol_60653_page_col_86457 --创作页搜索量
,
        sum(
            case
                when (
                    col_7675 in ('aweme_col_99249_create', 'aweme_col_87630_create')
                )
                or (col_95097 in ('video_col_99249', 'video_col_87630')) then col_86457
                else 0
            end
        ) create_page_col_86457 --发现页搜索设备数
,
        col_35211(
            distinct case
                when col_7675 in (
                    'aweme_general',
                    'aweme_video',
                    'aweme_col_99249',
                    'aweme_poi',
                    'aweme_col_87630',
                    'aweme_live'
                )
                and col_95097 not in ('video_col_99249', 'video_col_87630')
                or col_95097 in ('discol_60653', 'switch_tab') then col_3859
                else null
            end
        ) discol_60653_page_col_14948 --创作页搜索设备数
,
        col_35211(
            distinct case
                when (
                    col_7675 in ('aweme_col_99249_create', 'aweme_col_87630_create')
                )
                or (col_95097 in ('video_col_99249', 'video_col_87630')) then col_3859
                else NULL
            end
        ) as create_page_col_14948
    from
        search_info
),
seatch_general_video_col_71951 as (
    select
        col_28543,
        '-' col_86506,
        col_35211(col_38518) col_86457,
        col_35211(distinct col_3859) col_14948,
        sum(video_col_18465) col_18465 --去重col_77851个数
,
        col_35211(
            distinct case
                when col_95097 in ('normal_search', 'search_sug', 'search_history') then col_77851
            end
        ) unique_col_77851_cnt_general_video --主动搜索次数
,
        col_35211(
            case
                when col_95097 in ('normal_search', 'search_sug', 'search_history') then col_38518
            end
        ) active_col_86457_general_video,
        col_35211(
            distinct case
                when col_95097 in ('normal_search', 'search_sug', 'search_history') then col_3859
            end
        ) active_col_14948_general_video
    from
        dwa_aweme_search_session_di
    where
        date = '20200831'
        and col_7675 in ('aweme_general', 'aweme_video')
        and col_38488 = 0
        and col_28543 in ( 1128,2329)
    group by
        col_28543
    union all
    select
        0 as col_28543,
        '-' col_86506,
        col_35211(col_38518) col_86457,
        col_35211(distinct col_3859) col_14948,
        sum(video_col_18465) col_18465 --去重col_77851个数
,
        col_35211(
            distinct case
                when col_95097 in ('normal_search', 'search_sug', 'search_history') then col_77851
            end
        ) unique_col_77851_cnt_general_video --主动搜索次数
,
        col_35211(
            case
                when col_95097 in ('normal_search', 'search_sug', 'search_history') then col_38518
            end
        ) active_col_86457_general_video,
        col_35211(
            distinct case
                when col_95097 in ('normal_search', 'search_sug', 'search_history') then col_3859
            end
        ) active_col_14948_general_video
    from
        dwa_aweme_search_session_di
    where
        date = '20200831'
        and col_7675 in ('aweme_general', 'aweme_video')
        and col_38488 = 0
        and col_28543 in ( 1128,2329)
),
seatch_general_col_71951 as (
    select
        col_28543,
        '-' col_86506,
        sum(col_86457) col_86457,
        col_35211(distinct col_3859) col_14948,
        sum(col_18465) col_18465
    from
        search_info
    where
        col_7675 = 'aweme_general'
    group by
        col_28543
    union all
    select
        0 as col_28543,
        '-' col_86506,
        sum(col_86457) col_86457,
        col_35211(distinct col_3859) col_14948,
        sum(col_18465) col_18465
    from
        search_info
    where
        col_7675 = 'aweme_general'
),
seatch_video_col_71951 as (
    select
        col_28543,
        '-' col_86506,
        sum(col_86457) col_86457,
        col_35211(distinct col_3859) col_14948,
        sum(col_18465) col_18465
    from
        search_info
    where
        col_7675 = 'aweme_video'
    group by
        col_28543
    union all
    select
        0 as col_28543,
        '-' col_86506,
        sum(col_86457) col_86457,
        col_35211(distinct col_3859) col_14948,
        sum(col_18465) col_18465
    from
        search_info
    where
        col_7675 = 'aweme_video'
),
dau_info as (
    select
        case
            when col_24229 = 'aweme' then 1128
            when col_24229 = 'douyin_lite' then 2329
        end as col_28543,
        '-' col_86506,
        col_35211(distinct col_3859) dau
    from
        m_device_distinct
    where
        col_77093 = '2020-08-31'
        and col_24229 in ('aweme', 'douyin_lite')
        and col_33882 = 0
    group by
        case
            when col_24229 = 'aweme' then 1128
            when col_24229 = 'douyin_lite' then 2329
        end
    union all
    select
        0 as col_28543,
        '-' col_86506,
        col_35211(distinct col_3859) dau
    from
        m_device_distinct
    where
        col_77093 = '2020-08-31'
        and col_24229 in ('aweme', 'douyin_lite')
        and col_33882 = 0
),
video_info as (
    select
        1128 col_28543,
        '-' col_86506,
        sum(vv) vv
    from
        (
            select
                col_65263
            from
                tbl_775
            where
                date = '20200831'
                and col_28543 = 1128
        ) t1
        left outer join (
            select
                col_65263,
                vv
            from
                tbl_9434
            where
                date = '20200831'
        ) t2 on t1.col_65263 = t2.col_65263
    union all
    select
        2329 col_28543,
        '-' col_86506,
        sum(vv) vv
    from
        mds_col_3859_bhv_lite_day   --替换依赖表，20200809
    where
        date = '20200831'
),
all_vv as(
    select
        0 col_28543,
        '-' as col_86506,
        sum(vv) vv
    from
        video_info
    union all
    select
        col_28543,
        col_86506,
        vv
    from
        video_info
)

select
    dau_info.dau dau,
    nvl(seatch_col_71951.col_86457, 0) col_86457_total,
    nvl(seatch_col_71951.col_14948, 0) col_14948_total,
    nvl(seatch_col_71951.col_18465, 0) search_col_18465_total,
    nvl(seatch_general_col_71951.col_86457, 0) col_86457_general,
    nvl(seatch_general_col_71951.col_14948, 0) col_14948_general,
    nvl(seatch_general_col_71951.col_18465, 0) search_col_18465_general,
    nvl(seatch_video_col_71951.col_86457, 0) col_86457_video,
    nvl(seatch_video_col_71951.col_14948, 0) col_14948_video,
    nvl(seatch_video_col_71951.col_18465, 0) search_col_18465_video,
    nvl(seatch_general_video_col_71951.col_86457, 0) col_86457_general_video,
    nvl(seatch_general_video_col_71951.col_14948, 0) col_14948_general_video,
    nvl(seatch_general_video_col_71951.col_18465, 0) search_col_18465_general_video,
    nvl(all_vv.vv, 0) total_col_18465 --去重col_77851个数/主动搜索次数
,
    nvl(
        seatch_general_video_col_71951.unique_col_77851_cnt_general_video,
        0
    ) unique_col_77851_cnt_general_video,
    nvl(
        seatch_general_video_col_71951.active_col_86457_general_video,
        0
    ) active_col_86457_general_video --发现页/创作页搜索量
,
    nvl(seatch_col_71951.discol_60653_page_col_86457, 0) discol_60653_page_col_86457,
    nvl(seatch_col_71951.create_page_col_86457, 0) create_page_col_86457,
    nvl(
        seatch_general_video_col_71951.active_col_14948_general_video,
        0
    ) active_col_14948_general_video --2020.06.21 添加发现页/创作页搜索设备数
,
    nvl(seatch_col_71951.discol_60653_page_col_14948, 0) discol_60653_page_col_14948,
    nvl(seatch_col_71951.create_page_col_14948, 0) create_page_col_14948,
    dau_info.col_28543
from
    dau_info
    left join seatch_col_71951 on dau_info.col_86506 = seatch_col_71951.col_86506
    and dau_info.col_28543 = seatch_col_71951.col_28543
    left join seatch_general_video_col_71951 on dau_info.col_86506 = seatch_general_video_col_71951.col_86506
    and dau_info.col_28543 = seatch_general_video_col_71951.col_28543
    left join seatch_general_col_71951 on dau_info.col_86506 = seatch_general_col_71951.col_86506
    and dau_info.col_28543 = seatch_general_col_71951.col_28543
    left join seatch_video_col_71951 on dau_info.col_86506 = seatch_video_col_71951.col_86506
    and dau_info.col_28543 = seatch_video_col_71951.col_28543
    left join all_vv on dau_info.col_86506 = all_vv.col_86506
    and dau_info.col_28543 = all_vv.col_28543
limit 10000

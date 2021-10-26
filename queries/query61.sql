with all_col_15440 as(
    select
        case    when col_78413='store' and col_8174='排行榜' then '排行榜' end col_30258_board
        ,case   when col_78413='store' and (col_8174='视频' or col_92398='视频') then '小视频/情景剧' end video
        ,case   when col_8174 is not null and col_8174 regexp '^((?!(排行榜|视频|recent_col_69546_popup|书架好书继续读|猜你喜欢)).)*$' then '多书页卡' end more_book_spage
        ,case   when col_78413='store' and col_8174='猜你喜欢' then '无限流' end infinite_flow
        ,case   when col_78413='col_80294'            then '分类' end  col_80294
        ,case   when col_56364 = 'search_result'    then '搜索' end search
        ,case   when col_8174 = 'built_in'       then '内置书' end built_in_book
        ,case   when col_56364 = 'col_69546er_end'       then '书末推荐' end col_69546er_end
        ,case   when col_56364 = 'page_recommend'   then '详情页推荐' end page_recommend
        ,case   when col_78413 = 'store' and (col_8174 col_53168 '%限时福利%' or col_8174 in ('no_col_15440_withdraw', 'no_col_69546_recommend', 'first_launch_recommend')) then '冷启书籍推荐' end cold_col_64292t_books
        ,case   when (col_78413 = 'store' and col_8174 regexp '最新上架') or (col_78413 = 'store' and col_92398 = '最新上架') then '新书页卡' end new_book_page
        ,case   when col_78413 = 'store' and col_8174 = '热门分类·日榜' then '垂类日榜' end vertical_day_list
        ,case   when col_78413 = 'store' and (col_8174 regexp '精选' or  col_8174 regexp '好书') then '垂类页卡' end vertical_page_card
        ,case   when col_78413 = 'store' and col_8174 = '高分佳作' then '高分页卡' end high_paging_card
        ,case   when col_78413 = 'store' and col_8174 regexp '^看过《' then 'history' end history
        ,case   when col_78413 = 'store' and (col_8174 regexp '原创' or col_8174 = '看新书，领取500金币')  then '原创页卡'   end col_84806_page_card
        ,case   when col_92398 = 'hot' and col_78413 = 'col_80294' then '猜你喜欢模块' end  guess_you_col_53168
        ,case   when col_92398 in ('female','male','audio') and col_78413 = 'col_80294' then '男生/女生/有声模块' end female_male_audio
        ,case   when col_56364 = 'player_guess_recommend'  then '听书播放页' end player_guess_recommend
        ,case   when col_78413='store' then '书城整体' end  book_store
        ,case   when col_78413 = 'store' and col_8174 = 'banner' then '书城banner'  end store_banner
        ,case   when col_78413 = 'bookshelf' and col_8174 = 'banner' then '书架运营banner' end bookshelf_banner
        ,case   when col_8174 = 'push' then 'push' end push
        ,case   when col_56364 = 'search_result' then '搜索结果' end search_result
        ,case   when col_78413 = 'goldcoin' and (col_8174 = '看新书，领取500金币'  or col_8174 = '看新书，领取1000金币') then '金币福利页-原创页卡'  end goldcoin_page
        ,col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
        ,sum(col_6137)    col_6137
        ,sum(col_73575)        col_73575
        ,sum(col_82280)   col_82280
        ,sum(col_94074)          col_94074
        ,max(col_81323)          col_81323
    from
        tbl_9820
    where
        dt='20200831'
        and col_24229='novelapp'
    group by
        case    when col_78413='store' and col_8174='排行榜' then '排行榜' end
        ,case   when col_78413='store' and (col_8174='视频' or col_92398='视频') then '小视频/情景剧' end
        ,case   when col_8174 is not null and col_8174 regexp '^((?!(排行榜|视频|recent_col_69546_popup|书架好书继续读|猜你喜欢)).)*$' then '多书页卡' end
        ,case   when col_78413='store' and col_8174='猜你喜欢' then '无限流' end
        ,case   when col_78413='col_80294'            then '分类' end
        ,case   when col_56364 = 'search_result'    then '搜索' end
        ,case   when col_8174 = 'built_in'       then '内置书' end
        ,case   when col_56364 = 'col_69546er_end'       then '书末推荐' end
        ,case   when col_56364 = 'page_recommend'   then '详情页推荐' end
        ,case   when col_78413 = 'store' and (col_8174 col_53168 '%限时福利%' or col_8174 in ('no_col_15440_withdraw', 'no_col_69546_recommend', 'first_launch_recommend')) then '冷启书籍推荐' end
        ,case   when (col_78413 = 'store' and col_8174 regexp '最新上架') or (col_78413 = 'store' and col_92398 = '最新上架') then '新书页卡' end
        ,case   when col_78413 = 'store' and col_8174 = '热门分类·日榜' then '垂类日榜' end
        ,case   when col_78413 = 'store' and (col_8174 regexp '精选' or  col_8174 regexp '好书') then '垂类页卡' end
        ,case   when col_78413 = 'store' and col_8174 = '高分佳作' then '高分页卡' end
        ,case   when col_78413 = 'store' and col_8174 regexp '^看过《' then 'history' end
        ,case   when col_78413 = 'store' and (col_8174 regexp '原创' or col_8174 = '看新书，领取500金币')  then '原创页卡'   end
        ,case   when col_92398 = 'hot' and col_78413 = 'col_80294' then '猜你喜欢模块' end
        ,case   when col_92398 in ('female','male','audio') and col_78413 = 'col_80294' then '男生/女生/有声模块' end
        ,case   when col_56364 = 'player_guess_recommend'  then '听书播放页' end
        ,case   when col_78413='store' then '书城整体' end
        ,case   when col_78413 = 'store' and col_8174 = 'banner' then '书城banner'  end
        ,case   when col_78413 = 'bookshelf' and col_8174 = 'banner' then '书架运营banner' end
        ,case   when col_8174 = 'push' then 'push' end
        ,case   when col_56364 = 'search_result' then '搜索结果' end
        ,case   when col_78413 = 'goldcoin' and (col_8174 = '看新书，领取500金币'  or col_8174 = '看新书，领取1000金币') then '金币福利页-原创页卡'   end
        ,col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
)
,all_module_other as(
    select
        module
        ,col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
        ,col_6137
        ,col_73575
        ,col_82280
        ,col_94074
        ,col_81323
    from
    (
        select
            case when   col_78413 = 'store' and col_8174 is not null
                        and col_8174 regexp '^((?!(排行榜|视频|recent_col_69546_popup|书架好书继续读|猜你喜欢)).)*$' then 'duoshuyeka' else col_8174 end module
            ,col_3859
            ,col_28499
            ,col_19513
            ,col_1611
            ,os
            ,col_61530
            ,col_32622
            ,col_97418
            ,sum(col_6137)    col_6137
            ,sum(col_73575)        col_73575
            ,sum(col_82280)   col_82280
            ,sum(col_94074)          col_94074
            ,max(col_81323)          col_81323
        from
            tbl_9820
        where
            dt='20200831'
            and col_24229='novelapp'
        group by
            case when   col_78413 = 'store' and col_8174 is not null
                        and col_8174 regexp '^((?!(排行榜|视频|recent_col_69546_popup|书架好书继续读|猜你喜欢)).)*$' then 'duoshuyeka' else col_8174 end
            ,col_3859
            ,col_28499
            ,col_19513
            ,col_1611
            ,os
            ,col_61530
            ,col_32622
            ,col_97418
    )t1
    where
        module<>'duoshuyeka'
        and module is not null
        and module<>''
        and module<>'看新书，领取500金币'
        and module<>'热门分类·日榜'
        and module<>'高分佳作'
        and module regexp '^((?!(看过《|最新上架|原创|精选|好书)).)*$'
)
,all_distribution_bit_info as(
    select
        '排行榜' distribution_bit
        ,col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
        ,sum(col_6137)    col_6137
        ,sum(col_73575)        col_73575
        ,sum(col_82280)   col_82280
        ,sum(col_94074)          col_94074
        ,max(col_81323)          col_81323
    from
        all_col_15440
    where
        col_30258_board='排行榜'
    group by
        col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
    union all
    select
        '书城整体' distribution_bit
        ,col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
        ,sum(col_6137)    col_6137
        ,sum(col_73575)        col_73575
        ,sum(col_82280)   col_82280
        ,sum(col_94074)          col_94074
        ,max(col_81323)          col_81323
    from
        all_col_15440
    where
        book_store='书城整体'
    group by
        col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
    union all
    select
        '小视频/情景剧' distribution_bit
        ,col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
        ,sum(col_6137)    col_6137
        ,sum(col_73575)        col_73575
        ,sum(col_82280)   col_82280
        ,sum(col_94074)          col_94074
        ,max(col_81323)          col_81323
    from
        all_col_15440
    where
        video='小视频/情景剧'
    group by
        col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
    union all
    select
        '多书页卡' distribution_bit
        ,col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
        ,sum(col_6137)    col_6137
        ,sum(col_73575)        col_73575
        ,sum(col_82280)   col_82280
        ,sum(col_94074)          col_94074
        ,max(col_81323)          col_81323
    from
        all_col_15440
    where
        more_book_spage='多书页卡'
    group by
        col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
    union all
    select
        '无限流' distribution_bit
        ,col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
        ,sum(col_6137)    col_6137
        ,sum(col_73575)        col_73575
        ,sum(col_82280)   col_82280
        ,sum(col_94074)          col_94074
        ,max(col_81323)          col_81323
    from
        all_col_15440
    where
        infinite_flow='无限流'
    group by
        col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
    union all
    select
        '分类' distribution_bit
        ,col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
        ,sum(col_6137)    col_6137
        ,sum(col_73575)        col_73575
        ,sum(col_82280)   col_82280
        ,sum(col_94074)          col_94074
        ,max(col_81323)          col_81323
    from
        all_col_15440
    where
        col_80294='分类'
    group by
        col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
    union all
    select
        '搜索' distribution_bit
        ,col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
        ,sum(col_6137)    col_6137
        ,sum(col_73575)        col_73575
        ,sum(col_82280)   col_82280
        ,sum(col_94074)          col_94074
        ,max(col_81323)          col_81323
    from
        all_col_15440
    where
        search='搜索'
    group by
        col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
    union all
    select
        '内置书' distribution_bit
        ,col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
        ,sum(col_6137)    col_6137
        ,sum(col_73575)        col_73575
        ,sum(col_82280)   col_82280
        ,sum(col_94074)          col_94074
        ,max(col_81323)          col_81323
    from
        all_col_15440
    where
        built_in_book='内置书'
    group by
        col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
    union all
    select
        '书末推荐' distribution_bit
        ,col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
        ,sum(col_6137)    col_6137
        ,sum(col_73575)        col_73575
        ,sum(col_82280)   col_82280
        ,sum(col_94074)          col_94074
        ,max(col_81323)          col_81323
    from
        all_col_15440
    where
        col_69546er_end='书末推荐'
    group by
        col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
    union all
    select
        '详情页推荐' distribution_bit
        ,col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
        ,sum(col_6137)    col_6137
        ,sum(col_73575)        col_73575
        ,sum(col_82280)   col_82280
        ,sum(col_94074)          col_94074
        ,max(col_81323)          col_81323
    from
        all_col_15440
    where
        page_recommend='详情页推荐'
    group by
        col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
    union all
    select
        '冷启书籍推荐' distribution_bit
        ,col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
        ,sum(col_6137)    col_6137
        ,sum(col_73575)        col_73575
        ,sum(col_82280)   col_82280
        ,sum(col_94074)          col_94074
        ,max(col_81323)          col_81323
    from
        all_col_15440
    where
        cold_col_64292t_books='冷启书籍推荐'
    group by
        col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
    union all
    select
        '新书页卡' distribution_bit
        ,col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
        ,sum(col_6137)    col_6137
        ,sum(col_73575)        col_73575
        ,sum(col_82280)   col_82280
        ,sum(col_94074)          col_94074
        ,max(col_81323)          col_81323
    from
        all_col_15440
    where
        new_book_page='新书页卡'
    group by
        col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
    union all
    select
        '垂类日榜' distribution_bit
        ,col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
        ,sum(col_6137)    col_6137
        ,sum(col_73575)        col_73575
        ,sum(col_82280)   col_82280
        ,sum(col_94074)          col_94074
        ,max(col_81323)          col_81323
    from
        all_col_15440
    where
        vertical_day_list='垂类日榜'
    group by
        col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
    union all
    select
        '垂类页卡' distribution_bit
        ,col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
        ,sum(col_6137)    col_6137
        ,sum(col_73575)        col_73575
        ,sum(col_82280)   col_82280
        ,sum(col_94074)          col_94074
        ,max(col_81323)          col_81323
    from
        all_col_15440
    where
        vertical_page_card='垂类页卡'
    group by
        col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
    union all
    select
        '高分页卡' distribution_bit
        ,col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
        ,sum(col_6137)    col_6137
        ,sum(col_73575)        col_73575
        ,sum(col_82280)   col_82280
        ,sum(col_94074)          col_94074
        ,max(col_81323)          col_81323
    from
        all_col_15440
    where
        high_paging_card='高分页卡'
    group by
        col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
    union all
    select
        'history' distribution_bit
        ,col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
        ,sum(col_6137)    col_6137
        ,sum(col_73575)        col_73575
        ,sum(col_82280)   col_82280
        ,sum(col_94074)          col_94074
        ,max(col_81323)          col_81323
    from
        all_col_15440
    where
        history='history'
    group by
        col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
    union all
    select
        '原创页卡' distribution_bit
        ,col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
        ,sum(col_6137)    col_6137
        ,sum(col_73575)        col_73575
        ,sum(col_82280)   col_82280
        ,sum(col_94074)          col_94074
        ,max(col_81323)          col_81323
    from
        all_col_15440
    where
        col_84806_page_card='原创页卡'
    group by
        col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
    union all
    select
        '猜你喜欢模块' distribution_bit
        ,col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
        ,sum(col_6137)    col_6137
        ,sum(col_73575)        col_73575
        ,sum(col_82280)   col_82280
        ,sum(col_94074)          col_94074
        ,max(col_81323)          col_81323
    from
        all_col_15440
    where
        guess_you_col_53168='猜你喜欢模块'
    group by
        col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
    union all
    select
        '男生/女生/有声模块' distribution_bit
        ,col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
        ,sum(col_6137)    col_6137
        ,sum(col_73575)        col_73575
        ,sum(col_82280)   col_82280
        ,sum(col_94074)          col_94074
        ,max(col_81323)          col_81323
    from
        all_col_15440
    where
        female_male_audio='男生/女生/有声模块'
    group by
        col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
    union all
    select
        '听书播放页' distribution_bit
        ,col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
        ,sum(col_6137)    col_6137
        ,sum(col_73575)        col_73575
        ,sum(col_82280)   col_82280
        ,sum(col_94074)          col_94074
        ,max(col_81323)          col_81323
    from
        all_col_15440
    where
        player_guess_recommend='听书播放页'
    group by
        col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
    union all
    select
        '书城banner' distribution_bit
        ,col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
        ,sum(col_6137)    col_6137
        ,sum(col_73575)        col_73575
        ,sum(col_82280)   col_82280
        ,sum(col_94074)          col_94074
        ,max(col_81323)          col_81323
    from
        all_col_15440
    where
        bookshelf_banner='书城banner'
    group by
        col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
    union all
    select
        'push' distribution_bit
        ,col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
        ,sum(col_6137)    col_6137
        ,sum(col_73575)        col_73575
        ,sum(col_82280)   col_82280
        ,sum(col_94074)          col_94074
        ,max(col_81323)          col_81323
    from
        all_col_15440
    where
        push='push'
    group by
        col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
    union all
    select
        '搜索结果' distribution_bit
        ,col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
        ,sum(col_6137)    col_6137
        ,sum(col_73575)        col_73575
        ,sum(col_82280)   col_82280
        ,sum(col_94074)          col_94074
        ,max(col_81323)          col_81323
    from
        all_col_15440
    where
        search_result='搜索结果'
    group by
        col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
    union all
    select
        '书城banner' distribution_bit
        ,col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
        ,sum(col_6137)    col_6137
        ,sum(col_73575)        col_73575
        ,sum(col_82280)   col_82280
        ,sum(col_94074)          col_94074
        ,max(col_81323)          col_81323
    from
        all_col_15440
    where
        store_banner='书城banner'
    group by
        col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
    union all
    select
        module  distribution_bit
        ,col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
        ,sum(col_6137)    col_6137
        ,sum(col_73575)        col_73575
        ,sum(col_82280)   col_82280
        ,sum(col_94074)          col_94074
        ,max(col_81323)          col_81323
    from
        all_module_other
    group by
        module
        ,col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
    union all
    select
        '金币福利页-原创页卡' distribution_bit
        ,col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
        ,sum(col_6137)    col_6137
        ,sum(col_73575)        col_73575
        ,sum(col_82280)   col_82280
        ,sum(col_94074)          col_94074
        ,max(col_81323)          col_81323
    from
        all_col_15440
    where
        goldcoin_page='金币福利页-原创页卡'
    group by
        col_3859
        ,col_28499
        ,col_19513
        ,col_1611
        ,os
        ,col_61530
        ,col_32622
        ,col_97418
)

select
    distribution_bit
    ,col_3859
    ,col_28499
    ,col_19513
    ,col_1611
    ,os
    ,col_61530
    ,col_32622
    ,col_97418
    ,col_6137
    ,col_73575
    ,col_82280
    ,col_94074
    ,col_81323
from
    all_distribution_bit_info
limit 10000

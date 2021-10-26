 select
    app,
    col_13174,
    col_44531,
    concat(col_44531,'-',col_13174) col_95358,
    sum(if((col_43492='trending_words_show' and col_19137['words_col_95097']='search_bar_outer'),1,0))as bar_outer_guide_show,--搜索框内导流词展现pv
    sum(if((col_43492='trending_words_show' and col_19137['words_col_95097']='search_bar_inner'),1,0))as bar_inner_guide_show,--搜索框外导流词展现pv
    sum(if(col_43492='recom_search_show'or (col_43492='trending_words_show' and col_19137['words_col_95097']='recom_search' and col_19137['col_62609']='1.0'),1,0))as recom_search_guide_show,--猜你想搜导流词展现pv
    sum(if((col_43492='trending_words_show' and col_19137['words_col_95097']='search_history'),1,0))as history_guide_show,--历史导流词展现pv
    sum(if((col_43492='trending_words_show' and col_19137['words_col_95097']='article_tag'),1,0))as article_tag_guide_show,--文章标签导流词展现pv
    sum(if(col_43492='trending_words_show' and col_19137['words_col_95097']in('trending_card','trending_list'),1,0))as trending_guide_show,--热搜榜导流词展现pv
    sum(if(col_43492='trending_words_show' and col_19137['words_col_95097']='related_search',1,0))as related_search_guide_show,--相关搜索导流词展现pv
    sum(if(col_43492='trending_words_show' and col_19137['words_col_95097']='click_recom',1,0))as click_recom_guide_show,--点击推荐导流词点击pv
    sum(if(col_43492='trending_words_show' and col_19137['words_col_95097']='feed_search',1,0))as feed_search_guide_show,--feed搜索导流词展现pv
    sum(if(col_43492='trending_words_show' and col_19137['words_col_95097']='feed_recom',1,0))as feed_recom_guide_show,--feed推荐导流词展现pv
    sum(if(col_43492='trending_words_show' and col_19137['words_col_95097']='xiaoshipin_guide',1,0))as short_video_guide_show,--小视频导流词展现pv
    sum(if(col_43492='trending_words_show' and col_19137['words_col_95097']='long_shipin',1,0))as long_video_guide_show,--长视频导流词展现pv
    sum(if(col_43492='trending_words_show' and col_19137['words_col_95097']='others_search',1,0))as others_serach_guide_show,--其他人还搜导流词展现pv
    sum(if(col_43492='trending_words_show' and col_19137['words_col_95097']='guide_search',1,0))as general_guide_show,--综搜导流词展现pv
    sum(if(col_43492='trending_words_show' and col_19137['words_col_95097']='sug',1,0))as suggest_guide_show,--suggest导流词展现pv
    sum(if(col_43492='trending_words_show' and col_19137['words_col_95097']='knowledge',1,0))as knowledge_guide_show,--知识图谱导流词展现pv

    sum(if(col_43492='trending_words_click' and col_19137['words_col_95097']='search_bar_inner',1,0))as bar_inner_guide_click,--搜索框内导流词点击pv
    sum(if(col_43492='recom_search_click'or (col_43492='trending_words_click' and col_19137['words_col_95097']='recom_search' and col_19137['col_62609']='1.0'),1,0))as recom_search_guide_click,--猜你想搜词点击pv
    sum(if(col_43492='trending_words_click' and col_19137['words_col_95097']='search_history',1,0))as history_guide_click,--历史词点击pv
    sum(if(col_43492='trending_words_click' and col_19137['words_col_95097']='article_tag',1,0))as article_tag_guide_click,--文章标签词点击pv
    sum(if(col_43492='trending_words_click' and col_19137['words_col_95097']in('trending_card','trending_list'),1,0))as trending_guide_click,--热搜榜词点击pv
    sum(if(col_43492='trending_words_click' and col_19137['words_col_95097']='related_search',1,0))as related_search_guide_click,--相关搜索词点击pv
    sum(if(col_43492='trending_words_click' and col_19137['words_col_95097']='click_recom',1,0))as click_recom_guide_click,--点击推荐词点击pv
    sum(if(col_43492='trending_words_click' and col_19137['words_col_95097']='feed_search',1,0))as feed_search_guide_click,--feed页连续浏览词点击pv
    sum(if(col_43492='trending_words_click' and col_19137['words_col_95097']='feed_recom',1,0))as feed_recom_guide_click,--feed页推荐词点击pv
    sum(if(col_43492='trending_words_click' and col_19137['words_col_95097']='xiaoshipin_guide',1,0))as short_video_guide_click,--小视频引导词点击pv
    sum(if(col_43492='trending_words_click' and col_19137['words_col_95097']='long_shipin',1,0))as long_video_guide_click,--长视频导流词点击pv
    sum(if(col_43492='trending_words_click' and col_19137['words_col_95097']='others_search',1,0))as others_serach_guide_click,--其他人还搜词点击pv
    sum(if(col_43492='trending_words_click' and col_19137['words_col_95097']='guide_search',1,0))as general_guide_click,--综搜引导词点击pv
    sum(if(col_43492='trending_words_click' and col_19137['words_col_95097']='sug',1,0))as suggest_guide_click,--sug词点击pv
    sum(if(col_43492='trending_words_click' and col_19137['words_col_95097']='knowledge',1,0))as knowledge_guide_click,--知识图谱点击pv


    sum(if(col_43492='col_76816' and col_19137['offset']=10 and col_19137['col_95097']='search_bar_outer',1,0))as bar_outer_guide_success_click,--搜索框灰词发起搜索pv
    sum(if(col_43492='col_76816' and col_19137['col_95097']in('search_bar_inner','search_bar_outer') and col_19137 ['offset'] = 10,1,0)) as bar_inner_guide_success_click,--搜索框内+灰词发起搜索pv
    sum(if(col_43492='col_76816' and col_19137['col_95097']='recom_search'and col_19137 ['offset'] = 10,1,0)) as recom_search_guide_success_click,--猜你想搜发起搜索pv
    sum(if(col_43492='col_76816' and col_19137['offset']=10 and col_19137['col_95097']='search_history',1,0))as history_guide_success_click,--历史词发起搜索pv
    sum(if(col_43492='col_76816' and col_19137['col_95097']='article_tag'and col_19137 ['offset'] = 10,1,0)) as article_tag_guide_success_click,--文章标签词发起搜索pv
    sum(if(col_43492='col_76816' and col_19137['col_95097']in ('trending_card','trending_list')and col_19137 ['offset'] = 10,1,0)) as trending_guide_success_click,--热搜榜发起搜索pv
    sum(if(col_43492='col_76816' and col_19137['col_95097']='related_search'and col_19137 ['offset'] = 10,1,0)) as related_search_guide_success_click,--相关搜索发起搜索pv
    sum(if(col_43492='col_76816' and col_19137['col_95097']='click_recom'and col_19137 ['offset'] = 10,1,0)) as click_recom_guide_success_click,--点击推荐发起搜索pv
    sum(if(col_43492='col_76816' and col_19137['col_95097']='feed_search'and col_19137 ['offset'] = 10,1,0)) as feed_search_guide_success_click,--feed页连续浏览词发起搜索pv
    sum(if(col_43492='col_76816' and col_19137['col_95097']='feed_recom'and col_19137 ['offset'] = 10,1,0)) as feed_recom_guide_success_click,--feed页推荐词发起搜索pv
    sum(if(col_43492='col_76816' and col_19137['col_95097']='xiaoshipin_guide'and col_19137 ['offset'] = 10,1,0)) as short_video_guide_success_click,--小视频引导词发起搜索pv
    sum(if(col_43492='col_76816' and col_19137['col_95097']='long_shipin'and col_19137 ['offset'] = 10,1,0)) as long_video_guide_success_click,--长视频导流词发起搜索pv
    sum(if(col_43492='col_76816' and col_19137['col_95097']='others_search'and col_19137 ['offset'] = 10,1,0)) as others_serach_guide_success_click,--其他人还搜词发起搜索pv
    sum(if(col_43492='col_76816' and col_19137['col_95097']='guide_search'and col_19137 ['offset'] = 10,1,0)) as general_guide_success_click,--综搜引导词发起搜索pv
    sum(if(col_43492='col_76816' and col_19137['col_95097']='sug'and col_19137 ['offset'] = 10,1,0)) as suggest_guide_success_click,--sug词发起搜索pv
    sum(if(col_43492='col_76816' and col_19137['col_95097']='knowledge'and col_19137 ['offset'] = 10,1,0)) as knowledge_guide_success_click,--知识图谱发起搜索pv

    col_35211(distinct if(col_43492 = 'search_result_click' and col_19137['col_95097']='search_bar_outer',col_19137 ['col_38518'],null)) as bar_outer_guide_result_click,--搜索框灰词有点搜索pv
    col_35211(distinct if(col_43492 = 'search_result_click' and col_19137['col_95097']in('search_bar_inner','search_bar_outer'),col_19137 ['col_38518'],null)) as bar_inner_guide_result_click,--搜索框内+灰词有点搜索pv
    col_35211(distinct if(col_43492 = 'search_result_click' and col_19137['col_95097']='recom_search',col_19137 ['col_38518'],null)) as recom_search_guide_result_click,--猜你想搜有点搜索pv
    col_35211(distinct if(col_43492 = 'search_result_click' and col_19137['col_95097']='search_history',col_19137 ['col_38518'],null)) as history_guide_result_click,--历史词有点搜索pv
    col_35211(distinct if(col_43492 = 'search_result_click' and col_19137['col_95097']='article_tag',col_19137 ['col_38518'],null)) as article_tag_guide_result_click,--文章标签词有点搜索pv
    col_35211(distinct if(col_43492 = 'search_result_click' and col_19137['col_95097']in ('trending_card','trending_list'),col_19137 ['col_38518'],null)) as trending_guide_result_click,--热搜榜有点搜索pv
    col_35211(distinct if(col_43492 = 'search_result_click' and col_19137['col_95097']='related_search',col_19137 ['col_38518'],null)) as related_search_guide_result_click,--相关搜索有点搜索pv
    col_35211(distinct if(col_43492 = 'search_result_click' and col_19137['col_95097']='click_recom',col_19137 ['col_38518'],null))  as click_recom_guide_result_click,--点击推荐有点搜索pv
    col_35211(distinct if(col_43492 = 'search_result_click' and col_19137['col_95097']='feed_search',col_19137 ['col_38518'],null)) as feed_search_guide_result_click,--feed页连续浏览有点搜索pv
    col_35211(distinct if(col_43492 = 'search_result_click' and col_19137['col_95097']='feed_recom',col_19137 ['col_38518'],null)) as feed_recom_guide_result_click,--feed推荐词有点搜索pv
    col_35211(distinct if(col_43492 = 'search_result_click' and col_19137['col_95097']='xiaoshipin_guide',col_19137 ['col_38518'],null)) as short_video_guide_result_click,--小视频引导词有点搜索pv
    col_35211(distinct if(col_43492 = 'search_result_click' and col_19137['col_95097']='long_shipin',col_19137 ['col_38518'],null)) as long_video_guide_result_click,--长视频导流词有点搜索pv
    col_35211(distinct if(col_43492 = 'search_result_click' and col_19137['col_95097']='others_search',col_19137 ['col_38518'],null)) as others_serach_guide_result_click,--其他人还搜词有点搜索pv
    col_35211(distinct if(col_43492 = 'search_result_click' and col_19137['col_95097']='guide_search',col_19137 ['col_38518'],null)) as general_guide_result_click,--综搜引导词有点搜索pv
    col_35211(distinct if(col_43492 = 'search_result_click' and col_19137['col_95097']='sug',col_19137 ['col_38518'],null)) as suggest_guide_result_click,--sug词有点搜索pv
    col_35211(distinct if(col_43492 = 'search_result_click' and col_19137['col_95097']='knowledge',col_19137 ['col_38518'],null)) as knowledge_guide_result_click,--知识图谱有点搜索pv


    sum(if(col_43492 = 'col_95600_enter' and col_19137['search_col_28193']='top_bar',1,0)) as feed_search_bar_click,--feed点框pv
    sum(if(col_43492 = 'col_76816' and col_19137['col_95097']in ('input','sug','search_bar_outer','search_bar_inner','search_history','recom_search') and col_19137['offset'] = 10,1,0)) as bar_search_click,--中间页搜索pv
    max(col_3859) as col_3859,
    sum(if(col_43492 = 'col_95600_enter' and col_19137['search_col_28193'] in ('top_bar','search_bar'),1,0)) as feed_search_inbar_click, --feed进框pv


     col_35211(distinct if(col_43492 = 'search_result_click' and col_19137['col_95097']='trending_tab',col_19137 ['col_38518'],null)) as trending_tab_result_click,--热搜卡有点搜索pv
     sum(if(col_43492='col_76816' and col_19137['col_95097']='trending_tab'and col_19137 ['offset'] = 10,1,0)) as trending_tab_success_click,--热搜卡发起搜索pv
     sum(if(col_43492='trending_words_click' and col_19137['words_col_95097']='trending_tab',1,0))as trending_tab_click,--热搜卡点击pv
     sum(if(col_43492='trending_words_show' and col_19137['words_col_95097']='trending_tab',1,0))as trending_tab_show, --热搜卡导流词展现pv


      col_35211(distinct if(col_43492 = 'search_result_click' and col_19137['col_95097']='input',col_19137 ['col_38518'],null)) as input_result_click,--input有点搜索pv
      sum(if(col_43492='col_76816' and col_19137['col_95097']='input'and col_19137 ['offset'] = 10,1,0)) as input_success_click,--input发起搜索pv
      sum(if(col_43492='trending_words_click' and col_19137['words_col_95097']='input',1,0))as input_click,--input点击pv
      sum(if(col_43492='trending_words_show' and col_19137['words_col_95097']='input',1,0))as input_show --input导流词展现pv
from
    tbl_552
where
    date = '20200831'
    and app in ( 'news_article','news_article_lite')
    and col_30617 in ('android','ios')
    and col_44531 in (12,14)
group by
    app,col_13174,col_44531
limit 10000

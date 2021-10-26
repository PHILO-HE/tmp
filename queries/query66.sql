select
    t1.col_65263
    ,if(t1.col_93080 is null,t3.col_93080,t1.col_93080) col_93080
    ,t1.col_51602
    ,t2.col_28499
    ,t2.col_78590
    ,t2.col_70190
    ,t2.col_40278
    ,t2.col_52468
    ,t2.col_73027
    ,t2.col_49093
    ,t2.col_60106
    ,t2.col_23006 as novel_col_23006
    ,t2.col_28120 as novel_col_28120
    ,get_json_object(t2.col_28120,'$.col_59507_chapter_col_93080') col_59507_chapter_col_93080
from
(
    SELECT
        split(abase_key,':')[1] as col_65263
        ,get_json_object(abase_col_48685,'$.col_93080') as col_93080
        ,get_json_object(abase_col_48685,'$.col_51602') as col_51602
    FROM
        article_col_51602
    where
        date = '20200831'
)t1 inner join
(
    SELECT
        id
        ,col_28499
        ,col_65263
        ,col_23006
        ,col_78590
        ,col_70190
        ,col_40278
        ,col_52468
        ,col_77931
        ,col_86387
        ,col_28120
        ,col_73027
        ,col_95097
        ,col_49093
        ,col_60106
    FROM
        tbl_1835
    where
        dt = '20200831'
)t2 on cast(t1.col_65263 as bigint) = t2.col_65263
inner join
(
    select
        col_65263
        ,col_93080
    from
        web_article_tbl_6597
    where
        date = '20200831'
)t3 on cast(t1.col_65263 as bigint) = t3.col_65263
limit 10000

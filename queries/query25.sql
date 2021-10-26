with pgc_col_78590 as
(
            SELECT
                id,
                col_78590
            from
            (
                SELECT
                    id,
                    col_44131
                FROM tbl_3066
                where date = '20200831'
                 and id >0
            ) y
            join (
                SELECT
                    col_44131,
                    col_78590
                FROM stg_dim_col_87630_meta_song_group_rel_dict
                where date = '20200831'
            ) z on y.col_44131 = z.col_44131
)


select
/*+mapjoin(t3)*/
col_99537,
col_27490,
col_93080,
col_94815,
col_87314,
col_16672,
col_47112,
0   col_36375,
t1.col_74179 as col_74179,
col_72737,
col_34392,
col_9162,
t1.col_94854 as col_94854,
col_3653,
col_86313,
nvl(col_45204, 0) col_45204,
col_18762,
col_69709,
col_24692,
col_56180,
col_86784,
col_22317,
col_97317,
col_24709,
col_60540,
col_27911,
col_28120,
0 col_13257,
col_45309,
col_12924,
upc,
col_85929,
CASE WHEN t1.col_27490 = 'pgc' AND t5.cn_copyright  = 1 AND col_18762 !=0 THEN 1
    WHEN  t1.col_27490 = 'pgc'  THEN 0
   WHEN t1.col_27490 = 'ugc' AND t5.cn_copyright is not null THEN t5.cn_copyright ELSE 1 END col_14125,

CASE WHEN t1.col_27490 = 'pgc' AND t6.cn_copyright is not null THEN 0
    WHEN  t1.col_27490 = 'pgc' AND t6.cn_copyright is null THEN 1 ELSE 1 END col_20812,



 case when t1.col_27490='pgc' then t7.col_78590
       when (t1.col_27490='ugc' and get_json_object(col_28120, '$.meta_col_78590s') is not null ) then 'null'
   end   col_89240

from
(
      select
      id as col_99537,
     'pgc' as col_27490,
     col_93080,
     coalesce(get_json_object(col_28120,'$.col_94815'),get_json_object(col_28120,'$.col_99167'),get_json_object(col_28120,'$.col_66900')) as col_94815,
     col_87314,
     col_6079 as col_16672,
     col_20040 as col_47112,
     col_74179,
     col_94854,
     case when col_74179=25 then cast(get_json_object(col_28120,'$.col_84806_col_87630ian_uid') as bigint)
        when col_74179=26 then cast(get_json_object(col_28120,'$.hotsoon_col_20177') as bigint)
     else cast(get_json_object(col_28120,'$.col_20177') as bigint) end as col_45204,
     col_23006 as col_18762,
     col_77931 as col_69709,
     col_8394unixcol_24989(col_77931,'yyyyMMdd') as col_24692,
     col_86387 as col_56180,
     col_8394unixcol_24989(col_86387,'yyyyMMdd') as col_86784,
     '' as col_22317,
     '' as col_97317,
     col_71091 as  col_24709,
     col_60563 as col_60540,
     col_92183 as col_27911,
     IF(LENGTH(regexp_col_28120ct(col_12924,'^([0-9A-Za-z]+)$',1)) = 12, 1, 0) col_45309,
     col_28120,
       col_12924,
       upc,
     col_45963 col_85929,
     CASE WHEN col_63582 col_53168 '%CN%' AND col_23006 !=0 THEN 1 ELSE 0 END col_14125
        FROM
        (
            SELECT
                *
            FROM
                tbl_6272
            where date='20200831'
             and id >0
        )x LEFT OUTER JOIN
        (
            select col_96330, max(col_71091) col_71091 from tbl_6704 group by col_96330
        )y on x.id = cast(y.col_96330 as bigint)

     union all

     select
     x.id as col_99537,
     'ugc' as col_27490,
     col_93080,
     col_94815,
     col_87314,
     col_6079 as col_16672,
     col_20040 as col_47112,
     col_53155 as col_74179,
     1000 as col_94854,
     case when col_53155=25 then cast(get_json_object(col_28120,'$.col_84806_col_87630ian_uid') as bigint)
     else cast(get_json_object(col_28120,'$.col_20177') as bigint) end as col_45204,
     col_23006 as col_18762,
     col_77931 as col_69709,
     col_8394unixcol_24989(col_77931,'yyyyMMdd') as col_24692,
     col_86387 as col_56180,
     col_8394unixcol_24989(col_86387,'yyyyMMdd') as col_86784,
     col_86762 as col_22317,
     concat('https://p3.pstatp.com/obj/',col_86762) as col_97317,
     '' as  col_24709,
     '' as col_60540,
     '' as col_27911,
     0  AS col_45309,
     col_28120,
     '' col_12924,
     '' upc,
     '' col_85929,
     0  col_14125
     from
     (
            select id,
            col_93080,
            col_94815,
            col_87314,
            col_6079,
            col_20040,
            col_53155,
            col_23006,
            col_77931,
            col_86387,
            col_86762,
            col_28120
            from tbl_8750
            where date='20200831'
             and id >0
     )x
     left outer join
     (
        select id
        from tbl_6272
        where date='20200831'
         and id >0
     )y
     on x.id=y.id
     where y.id is null
)t1

left outer join
(
  select id,col_29499 as col_72737,col_50426 as col_34392,col_23006 as col_9162
  from stg_dim_col_53155_info_dict
  where date='20200831'
)t3
on t1.col_74179=t3.id
left outer join
(
  select id,col_29499 as col_3653,col_23006 as col_86313
  from tbl_5033
  where date='20200831'
)t4
on t1.col_94854=t4.id
LEFT OUTER JOIN
(
    SELECT
        DISTINCT
         id,
         'pgc' as col_50426,
         1 as cn_copyright
    FROM
       ods_col_87630_pgc_clip_col_2239_info
    WHERE
        date = '20200831'
        AND get_json_object(col_2239, '$.1128') col_53168 '%CN%'

    UNION

    SELECT
        DISTINCT
        id,
        'ugc' as col_50426,
        CASE WHEN get_json_object(col_2239, '$.1128') col_53168 '%CN%' THEN 1 ELSE 0 END cn_copyright
    FROM
       tbl_522
    WHERE  date = '20200831'
    and id >0
)t5 ON t1.col_99537 = t5.id AND t1.col_27490 = t5.col_50426
LEFT OUTER JOIN
(
    SELECT
        DISTINCT
         id,
         'pgc' as col_50426,
         1 as cn_copyright
    FROM
       ods_col_87630_pgc_clip_col_2239_info
    WHERE
        date = '20200831'
        AND get_json_object(col_2239, '$.1112') col_53168 '%CN%'
) t6 ON t1.col_99537 = t6.id AND t1.col_27490 = t6.col_50426
left join
(
    select id,col_78590  from pgc_col_78590
)t7  ON t1.col_99537 = t7.id
limit 10000

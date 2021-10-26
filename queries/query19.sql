select
    mask_col_71951.col_62986,
    mask_col_71951.col_80511,
    tbl_5747.col_17160,
    tbl_5747.col_87151,
    rit_col_48143.rit,
    union_rit_site.col_13938,
    union_rit_site.col_20531,
    union_rit_site.col_68867,
    union_rit_site.col_83017,
    union_rit_site.col_5781,
    union_rit_site.col_23219,
    union_rit_site.col_43841,
    union_rit_site.col_53030,
    union_rit_site.col_82943,
    union_rit_site.col_46563,
    mask_col_71951.col_59878,
    mask_col_71951.col_66029,
    mask_col_71951.col_68842,
    mask_col_71951.col_43657,
    mask_col_71951.col_43657_col_59516,
    mask_col_71951.mask_col_5384,
    mask_col_71951.mask_col_85563,
    mask_col_71951.mask_col_47564,
    mask_col_71951.mask_col_50554,
    mask_col_71951.col_48143
from
(
select
    col_62986,
    null as col_80511,
    col_48143,
    col_59878,
    col_66029,
    col_68842,
    col_43657,
    case
        when second_industry_v3.col_5384 is null and first_industry_v3.col_5384 is not null then 1
        when second_industry_v3.col_5384 is not null then 2
        else 0
    end as col_43657_col_59516,
    if(second_industry_v3.col_47564 is not null,second_industry_v3.col_5384,first_industry_v3.col_5384) as mask_col_5384,
    if(second_industry_v3.col_47564 is not null,second_industry_v3.col_85563,first_industry_v3.col_85563) as mask_col_85563,
    if(second_industry_v3.col_47564 is not null,second_industry_v3.col_47564,null) as mask_col_47564,
    if(second_industry_v3.col_47564 is not null,second_industry_v3.col_50554,null) as mask_col_50554
from
    (
        SELECT
            col_62986,
            col_48143,
            col_59878,
            col_66029,
            col_68842,
            col_43657,
            if(
                col_43657 = -1,(col_15250 % 2000) * -1, 
                col_43657
            ) as id
        from
            tbl_7423
        where
            date = '20200831'
            and col_48143 is not null
        group by
            col_62986,
            col_48143,
            col_59878,
            col_66029,
            col_68842,
            col_43657,
            if(
                col_43657 = -1,(col_15250 % 2000) * -1,
                col_43657
            )
    ) mask_col_92272
    left JOIN (
        select
            col_5384,
            col_85563
        from
            tbl_1989
        where
            col_77093 = '20200831'
         group by
            col_5384,
            col_85563
    ) first_industry_v3 on mask_col_92272.id = first_industry_v3.col_5384
    left JOIN (
        select
            col_5384,
            col_85563,
            col_47564,
            col_50554
        from
            tbl_1989
        where
            col_77093 = '20200831'
         group by
         col_5384,
         col_85563,
         col_47564,
         col_50554
    ) second_industry_v3 on mask_col_92272.id = second_industry_v3.col_47564
group by
    col_62986,
    col_48143,
    col_59878,
    col_66029,
    col_68842,
    col_43657,
    case
        when second_industry_v3.col_5384 is null and first_industry_v3.col_5384 is not null then 1
        when second_industry_v3.col_5384 is not null then 2
        else 0
    end,
    if(second_industry_v3.col_47564 is not null,second_industry_v3.col_5384,first_industry_v3.col_5384) ,
    if(second_industry_v3.col_47564 is not null,second_industry_v3.col_85563,first_industry_v3.col_85563) ,
    if(second_industry_v3.col_47564 is not null,second_industry_v3.col_47564,null) ,
    if(second_industry_v3.col_47564 is not null,second_industry_v3.col_50554,null)
union all
SELECT
    col_62986,
    cid as col_80511,
    col_48143,
    col_59878,
    null as col_66029,
    col_68842,
    null as col_43657,
    null as col_43657_col_59516,
    null as mask_col_5384,
    null as mask_col_85563,
    null as mask_col_47564,
    null as mask_col_50554
from
    tbl_4323
where
    date = '20200831'
    and col_48143 is not null
group by
    col_62986,
    cid,
    col_48143,
    col_59878,
    col_68842
) mask_col_71951
left join
(
select
    rit,
    col_48143
from
    tbl_8863
where
    date = '20200831' 
group by
    rit,
    col_48143
) rit_col_48143 on mask_col_71951.col_48143=rit_col_48143.col_48143
left join
(
    select
        rit,
        col_13938,col_20531,col_68867,
        union_rit.col_83017,
        col_5781,
        col_46563,
        col_82943,
        union_rit.col_23219,col_43841,
        col_53030
    from
    (
    select
        rit,
        col_83017,
        col_46563,
        col_23219,
        col_13938,col_20531,col_68867
    from tbl_7925
    where col_77093='20200831'
    )union_rit
    left join
    (
    select
        col_83017,
        col_5781
    from tbl_8491
    where col_77093='20200831'
    )union_site
    on union_rit.col_83017=union_site.col_83017
    left join
    (
      select
            col_23219,col_43841,col_82943,
            col_53030
      from tbl_8639
      where col_77093 =  '20200831'
    )union_media on union_rit.col_23219 = union_media.col_23219
)union_rit_site
on rit_col_48143.rit=union_rit_site.rit
left join
(
 select col_62986,col_30973
 from tbl_4121
 where col_77093 =  '20200831'
)ad_dim on mask_col_71951.col_62986=ad_dim.col_62986
left join
(
 select col_30973,col_17160,col_87151
 from tbl_9883
 where col_77093 =  '20200831'
)tbl_5747 on ad_dim.col_30973=tbl_5747.col_30973
group by
 mask_col_71951.col_62986,
    mask_col_71951.col_80511,
    tbl_5747.col_17160,
    tbl_5747.col_87151,
    rit_col_48143.rit,
    union_rit_site.col_13938,
    union_rit_site.col_20531,
    union_rit_site.col_68867,
    union_rit_site.col_83017,
    union_rit_site.col_5781,
    union_rit_site.col_23219,
    union_rit_site.col_43841,
    union_rit_site.col_53030,
    union_rit_site.col_82943,
    union_rit_site.col_46563,
    mask_col_71951.col_59878,
    mask_col_71951.col_66029,
    mask_col_71951.col_68842,
    mask_col_71951.col_43657,
    mask_col_71951.col_43657_col_59516,
    mask_col_71951.mask_col_5384,
    mask_col_71951.mask_col_85563,
    mask_col_71951.mask_col_47564,
    mask_col_71951.mask_col_50554,
    mask_col_71951.col_48143
limit 10000

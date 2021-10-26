select
    col_50674_ids[0] as col_50674_id,
    component_id_array as component_ids,
    'null' as col_50674_component_ids,
    rit as col_10082,
    col_7182 as col_47217,
    col_45123,
    col_66475,
    col_46144,
    col_17185,
    col_19590,
    col_20500,
    col_62986,
    pre.col_43924 as col_43924,
    col_8954,
    col_37068,
    col_1857,
    col_78788,
    pre.col_17160 as col_17160,
    col_4689,
    if(col_78788 = 'a',case when col_37068 = 1  then col_94642 when  col_37068 = 2 then 2 end, -1) as col_41898_col_95097,
    if(col_46144 = 5,1,0) as col_76859,
    col_5384,
    col_47564,
    col_49580,
    col_95052,
    col_62334,
    sum(col_8818) as col_8818,
    sum(col_71053) as col_71053,
    sum(col_26342) as col_26342,
    sum(col_24913) as col_24913,
    sum(col_65902) as col_65902,
    sum(bid) as bid,
    col_55500
from
(
    select
        split(trim(regexp_replace(col_50674_ids, '\n|\t|\r', '')),',') as col_50674_ids,
        'null' as component_id_array,
        component_ids,
        col_7182,
        rit,
        col_45123,
        col_66475,
        col_46144,
        col_17185,
        col_20500,
        stats_daily.col_62986 as col_62986,
        case when col_37068 = 1 then stats_daily.col_43924 else adx_attr.col_43924 end as col_43924,
        stats_daily.col_19605 as col_19605,
        case when col_37068 = 1 then stats_daily.col_8954 else adx_attr.col_8954 end as col_8954,
        col_37068,
        rit_attr.col_1857 as col_1857,
        rit_attr.col_78788 as col_78788,
        0 as col_4689,
        case when col_37068 = 1 then overture_attr.col_17160 else adx_attr.col_17160 end as col_17160,
        col_49580,
        col_95052,
        col_62334,
        col_8818,
        col_71053,
        col_26342,
        col_24913,
        col_65902,
        bid,
        col_55500
    from
    (
        select
            *
        from dwi_adcol_50674_stats_daily_pre
        where col_77093 = '20200831'
            and size(split(trim(regexp_replace(col_50674_ids, '\n|\t|\r', '')),',')) < 2 
            and (case when (col_50674_ids is null or col_50674_ids = '') then '0' else col_50674_ids end  regexp '^\\d+$' )
            and (case when (component_ids is null or component_ids = '') then '0' else component_ids end  regexp '^(\\d+,?)*(\\d)$' )


    )stats_daily
    left join (
        select
            col_10082,
            col_1857,
            col_78788
        from tbl_4989
        where col_77093 = '20200831'
    )rit_attr on stats_daily.rit = rit_attr.col_10082
    left join (
        select
            col_10082,
            col_1857
        from tbl_4989
        where col_77093 = '20200831'
    )col_7182_attr on stats_daily.col_7182 = col_7182_attr.col_10082
    left join(
        select
            ad.col_62986 as col_62986,
            col_17160,
            coalesce(ad_audit_col_5384,adp_col_5384) as col_49580,
            coalesce(ad_audit_col_47564,adp_col_47564) as col_95052,
            coalesce(ad_audit_col_84401,adp_col_84401) as col_62334,
            col_55500
        from
        (
            select
                col_62986,
                col_30973,
                cast(get_json_object(col_71951, '$.industry_v3') as bigint) as industry_v3,
                col_55500
            from tbl_4121
            where col_77093 = '20200831'
        )ad
        left join (
            select
                col_30973,
                col_17160
            from tbl_8439
            where col_77093 = '20200831'
        )cust_adv_relation on ad.col_30973 = cust_adv_relation.col_30973
        left join(
            select
                col_62986,
                col_5384 as ad_audit_col_5384,
                col_47564 as ad_audit_col_47564,
                col_84401  as ad_audit_col_84401
            from tbl_1989
            where col_77093 = '20200831'
        )ad_audit_industry
        on ad.col_62986 = ad_audit_industry.col_62986
        left join (
            select
                col_43781,
                col_5384 as adp_col_5384,
                col_47564 as adp_col_47564,
                col_84401 as adp_col_84401
            from tbl_2174
        )industry on ad.industry_v3 = industry.col_43781
    )overture_attr on stats_daily.col_62986 = overture_attr.col_62986 and stats_daily.col_37068 = 1
    left join(
        select
            col_8954,
            adx_dsp.col_19605 as col_19605,
            adx_dsp.col_43924 as col_43924,
            col_17160
        from
        (
            select
                col_19605,
                col_8954,
                col_43924
            from tbl_2356
            where col_77093 = '20200831'
        )adx_dsp
        left join (
            select
                col_19605,
                col_17160
            from tbl_8608
            where col_77093 = '20200831'
        )adx_customer on adx_dsp.col_19605 = adx_customer.col_19605
    )adx_attr on stats_daily.col_19605 = adx_attr.col_19605 and stats_daily.col_37068 = 2
) pre
left join
(
    select
        col_43924,
        col_19590,
        col_94642
    from tbl_5371
    where col_77093 = '20200831'
)tbl_5371 on pre.col_43924 = tbl_5371.col_43924
left join (
select 
        col_17160,
        col_5384,
        col_47564
    from tbl_7269
    where col_77093 = '20200831'
)dim_customer on pre.col_17160 = dim_customer.col_17160
group by
    col_50674_ids[0] ,
    component_id_array ,
    'null',
    rit ,
    col_7182 ,
    col_45123,
    col_66475,
    col_46144,
    col_17185,
    col_19590,
    col_20500,
    col_62986,
    pre.col_43924 ,
    col_8954,
    col_37068,
    col_1857,
    col_78788,
    pre.col_17160 ,
    col_4689,
    if(col_78788 = 'a',case when col_37068 = 1  then col_94642 when  col_37068 = 2 then 2 end, -1) ,
    if(col_46144 = 5,1,0),
    col_5384,
    col_47564,
    col_49580,
    col_95052,
    col_62334,
    col_55500
    limit 10000

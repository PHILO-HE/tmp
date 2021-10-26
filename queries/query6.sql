with dim_customer as 
(
select
    col_17160,
    col_87151,
    col_5384,
    col_47564,
    col_43781,
    col_75801,
    col_85563,
    col_50554,
    col_78590,
    coalesce(col_30152,col_87151) similar_col_87151
from
    (
        select
            col_17160,
            col_87151,
            col_5384,
            col_47564,
            col_43781,
            col_75801,
            col_85563,
            col_50554,
            col_12073
        from
            tbl_7269
        where
            col_77093 = '20200831'
    ) crm_customer
    left join (
        select
            col_12073,
            col_78590,
            col_30152
        from
            tbl_5739
        where
            col_77093 = '20200831'
        group by
            col_12073,
            col_78590,
            col_30152
    ) crm_company on crm_customer.col_12073 = crm_company.col_12073
),
adx_attr as (
        select
            col_8954,
            adx_dsp.col_19605,
            adx_dsp.col_43924 as col_43924,
            dsp_customer_relation.col_17160,
            adx_campaign.col_19590,
            dim_customer.col_5384,
            dim_customer.col_47564,
            dim_customer.col_43781,
            dim_customer.col_75801,
            dim_customer.col_85563,
            dim_customer.col_50554,
            dim_customer.col_87151,
            dim_customer.col_78590,
            dim_customer.similar_col_87151,
            adx_dsp.col_30973,
            tbl_5747.col_29396,
            adx_dsp.col_17185
        from
            (
                select
                    col_19605,
                    col_8954,
                    col_43924,
                    col_30973,
                    col_17185
                from
                    tbl_2356
                where
                    col_77093 = '20200831'
            ) adx_dsp
            left join (
                select
                    col_43924,
                    col_19590
                from
                    tbl_3416
                where
                    col_77093 = '20200831'
            ) adx_campaign on adx_dsp.col_43924 = adx_campaign.col_43924
            left join (
                select
                    col_30973,
                    col_29396
                from
                    tbl_5747
                where
                    col_77093 = '20200831'
            ) tbl_5747 on adx_dsp.col_30973 = tbl_5747.col_30973
            left join (
                select
                    col_19605,
                    col_17160
                from
                    tbl_8608
                where
                    col_77093 = '20200831'
            ) dsp_customer_relation on adx_dsp.col_19605 = dsp_customer_relation.col_19605
            left join dim_customer on dsp_customer_relation.col_17160 = dim_customer.col_17160
),
overture_attr as (
        select 
            tbl_4121.col_62986,
            tbl_4121.col_63940,
            tbl_4121.col_76340,
            cust_adv_relation.col_17160,
            tbl_4121.col_77385 as col_30452,
            tbl_4121.col_57175 as col_91732,
            tbl_4121.download_mode,
            tbl_4121.smart_col_82311,
            tbl_4121.is_smart_target,
            tbl_4121.col_42642 as ad_col_42642,
            tbl_4121.col_67650 as col_19147,
            dim_customer.col_5384,
            dim_customer.col_47564,
            dim_customer.col_43781,
            dim_customer.col_75801,
            dim_customer.col_85563,
            dim_customer.col_50554,
            dim_customer.col_87151,
            dim_customer.col_78590,
            dim_customer.similar_col_87151,
            tbl_5371.col_19590,
            if(tbl_5371.col_46144 = 5, 1, 0) as col_76859,
            col_55500,
            tbl_4121.col_30973,
            tbl_5747.col_29396,
            tbl_4121.is_orange_site,
            tbl_4121.col_17422,
            tbl_5371.col_40017,
            tbl_4121.col_17185,
            aggr_col_76542
        from
            (
                select
                    col_62986,
                    col_63940,
                    col_76340,
                    col_30973,
                    col_77385,
                    col_57175,
                    get_json_object(col_71951, '$.download_mode') as download_mode,
                    get_json_object(col_71951, '$.smart_col_82311') as smart_col_82311,
                    case
                        when get_json_object(col_71951, '$.smart_target') col_53168 '%col_24066%' then 1
                        else 0
                    end as is_smart_target,
                    col_42642,
                    col_43924,
                    cast (col_67650 as bigint) col_67650,
                    col_55500,
                    if(trim(col_83017)!= '', 1, 0) as is_orange_site, 
                    col_17422,
                    col_17185
                from
                    tbl_4121
                where
                    col_77093 = '20200831'
            ) tbl_4121
            left join (
                SELECT
                    col_62986,
                    col_24229 as aggr_col_76542
                FROM
                    tbl_5480
                WHERE
                    col_77093 = '20200831'
                  AND coalesce(col_24229, '') <> ''
            ) promo_app on (tbl_4121.col_62986 = promo_app.col_62986)
            left join 
            (
                select
                    col_43924,
                    col_46144,
                    col_19590,
                    col_40017
                from
                    tbl_5371
                where
                    col_77093 = '20200831'
            ) tbl_5371 on tbl_4121.col_43924 = tbl_5371.col_43924
            left join (
                select
                    col_30973,
                    col_29396
                from
                    tbl_5747
                where
                    col_77093 = '20200831'
            ) tbl_5747 on tbl_4121.col_30973 = tbl_5747.col_30973
            left outer join (
                select
                    col_30973,
                    col_17160
                from
                    tbl_8439
                where
                    col_77093 = '20200831'
            ) cust_adv_relation on tbl_4121.col_30973 = cust_adv_relation.col_30973
            left outer join dim_customer on cust_adv_relation.col_17160 = dim_customer.col_17160
),
stats_daily as (
    select
            col_37068,
            col_62986,
            col_19605,
            col_8954,
            col_17185,
            col_45123,
            col_46144,
            derive_col_50098,
            col_20500,
            col_61647,
            rit,
            send_rit,
            col_7182,
            col_82303,
            col_12611,
            col_42388,
            col_69017,
            col_741,
            refresh_col_50426,
            age,
            col_61530,
            col_63464,
            col_19562,
            col_47217,
            is_rta,
            if (stats_daily.col_3859 > 0, 0, 1) as is_did_null,
            col_75731,
            col_12805_identity,
            dragon_col_15440_col_7675,
            sum(col_8818) as col_8818,
            sum(col_71053) as col_71053,
            sum(col_65902) as col_65902,
            sum(col_26342) as col_26342,
            sum(col_24913) as col_24913,
            sum(col_60292) as col_60292,
            sum(col_11412) as col_11412,
            sum(col_17159) as col_17159,
            sum(ectr) as ectr,
            sum(ecvr) as ecvr,
            sum(col_18257) as col_18257,
            sum(col_38043) as col_38043,
            sum(col_25126) as col_25126,
            sum(col_43997) as col_43997,
            sum(recall_ectr) as recall_ectr,
            sum(recall_ecvr) as recall_ecvr,
            sum(sati_ectr) as sati_ectr,
            sum(col_57067) as col_57067,
            sum(col_69250) as col_69250,
            sum(e_col_69250) as e_col_69250,
            sum(sati_ecvr) as sati_ecvr,
            sum(col_44721et_click_open_col_35211) as col_44721et_click_open_col_35211,
            sum(col_44721et_open_success_col_35211) as col_44721et_open_success_col_35211,
            sum(col_44721et_col_17159) as col_44721et_col_17159,
            sum(sdk_col_17159) as sdk_col_17159
        from
            dwi_adengine_stats_daily_pre as stats_daily
        left outer join (
            select
                col_10082,
                col_1857,
                col_24229
            from
                tbl_4989
            where
                col_77093 = '20200831'
            ) rit_attr on stats_daily.rit = rit_attr.col_10082
        left join(
            select
                col_3859,
                col_39052 as dragon_col_15440_col_7675
            from 
                tbl_3578
            where dt = '${date-1}' 
              and col_24229 = 'novelapp' 
            ) dim_col_15440_col_7675 on dim_col_15440_col_7675.col_3859 = cast(stats_daily.col_3859 as bigint)
            and rit_attr.col_1857 = 26       
       where
            col_77093 = '20200831'
       group by
            col_37068,
            col_62986,
            col_19605,
            col_8954,
            col_17185,
            col_45123,
            col_46144,
            derive_col_50098,
            col_20500,
            col_61647,
            rit,
            send_rit,
            col_7182,
            col_82303,
            col_12611,
            col_42388,
            col_69017,
            col_741,
            refresh_col_50426,
            age,
            col_61530,
            col_63464,
            col_19562,
            col_47217,
            is_rta,
            if (stats_daily.col_3859 > 0, 0, 1),
            col_75731,
            col_12805_identity,
            dragon_col_15440_col_7675
)
select 
    if(
        col_37068 = 1,
        stats_daily.col_8954,
        adx_attr.col_8954
    ) as col_8954,
    if(col_37068=1,overture_attr.col_17185,adx_attr.col_17185) as col_17185,
    col_45123,
    col_46144,
    if(
        coalesce(derive_col_50098, 0) in (0, -1),
        col_45123,
        derive_col_50098
    ) as derive_col_50098,
    col_20500,
    col_61647,
    rit as col_10082,
    send_rit,
    col_7182,
    col_82303,
    col_12611,
    case
        when col_7675_attr.col_42388 is not null
        and col_7675_attr.col_25037_col_42250 = 0 then col_7675_attr.col_42388
        when col_7675_attr.col_42388 is not null
        and col_7675_attr.col_25037_col_42250 = 1 then 3189398991 
        else -1
    end col_42388,
    col_69017,
    col_741,
    refresh_col_50426,
    col_76340,
    col_63940,
    if(
        col_37068 = 1,
        overture_attr.col_43781,
        adx_attr.col_43781
    ) as col_43781,
    if(
        col_37068 = 1,
        overture_attr.col_75801,
        adx_attr.col_75801
    ) as col_75801,
    rit_attr.col_1857,
    sum(col_8818) as col_8818,
    sum(col_71053) as col_71053,
    sum(col_65902) as col_65902,
    sum(col_26342) as col_26342,
    sum(col_24913) as col_24913,
    sum(col_60292) as col_60292,
    sum(col_11412) as col_11412,
    sum(col_17159) as col_17159,
    sum(ectr) as ectr, 
    sum(ecvr) as ecvr, 
    sum(col_18257) as col_18257,
    sum(col_38043) as col_38043,
    sum(col_25126) as col_25126,
    sum(col_43997) as col_43997,
    col_37068,
    sum(recall_ectr) as recall_ectr, 
    sum(recall_ecvr) as recall_ecvr, 
    sum(sati_ectr) as sati_ectr, 
    age,
    col_61530,
    if(
        col_37068 = 1,
        overture_attr.col_5384,
        adx_attr.col_5384
    ) as col_5384,
    if(
        col_37068 = 1,
        overture_attr.col_47564,
        adx_attr.col_47564
    ) as col_47564,
    if(
        col_37068 = 1,
        overture_attr.col_17160,
        adx_attr.col_17160
    ) as col_17160,
    col_63464,
    col_19562,
    sum(col_57067) as col_57067,
    sum(col_69250) as col_69250,
    sum(e_col_69250) as e_col_69250,
    stats_daily.col_62986,
    stats_daily.rit,
    if(col_37068 = 1, overture_attr.col_76859, 0) as col_76859, 
    rit_attr.col_24229,
    if(
        col_37068 = 1,
        overture_attr.col_19590,
        adx_attr.col_19590
    ) as col_19590,
    if(
        col_37068 = 1,
        overture_attr.col_85563,
        adx_attr.col_85563
    ) as col_85563,
    if(
        col_37068 = 1,
        overture_attr.col_50554,
        adx_attr.col_50554
    ) as col_50554,
    if(
        col_37068 = 1,
        overture_attr.col_87151,
        adx_attr.col_87151
    ) as col_87151,
    overture_attr.col_30452,
    overture_attr.download_mode,
    overture_attr.col_91732,
    overture_attr.smart_col_82311,
    overture_attr.is_smart_target,
    overture_attr.ad_col_42642,
    stats_daily.col_47217,
    stats_daily.is_rta,
    col_19147,
    sum(sati_ecvr) as sati_ecvr,
    if(
        col_37068 = 1,
        overture_attr.col_30973,
        adx_attr.col_30973
    ) as col_30973,
    if(
        col_37068 = 1,
        overture_attr.col_29396,
        adx_attr.col_29396
    ) as col_29396,
    overture_attr.col_55500,
    overture_attr.is_orange_site,
    aggr_col_76542,
    sum(col_44721et_click_open_col_35211) as col_44721et_click_open_col_35211,
    sum(col_44721et_open_success_col_35211) as col_44721et_open_success_col_35211,
    sum(col_44721et_col_17159) as col_44721et_col_17159,
    sum(sdk_col_17159) as sdk_col_17159,
    col_75731,
    dragon_col_15440_col_7675,
    -1 as distinct_col_71053,
    is_did_null,
    overture_attr.col_17422 as col_17422,
    overture_attr.col_40017 as col_40017,
    if(col_37068=1,overture_attr.col_78590,adx_attr.col_78590) as col_78590,
    if(col_37068=1,overture_attr.similar_col_87151,adx_attr.similar_col_87151) as similar_col_87151,
    col_12805_identity,
    col_78788
from
    stats_daily
    left outer join overture_attr on stats_daily.col_62986 = overture_attr.col_62986
    and stats_daily.col_37068 = 1
    left outer join adx_attr on stats_daily.col_19605 = adx_attr.col_19605
    and stats_daily.col_37068 = 2
    left outer join (
        select
            col_81150 as col_42388,
            0 as col_25037_col_42250 
        from
            tbl_8257
        union all
        select
            id as col_42388,
            1 as col_25037_col_42250 
        from
            tbl_7974
        where
            date = '20200831'
            and col_50426 = 7
    ) col_7675_attr on stats_daily.col_42388 = col_7675_attr.col_42388
    left outer join (
        select
            col_10082,
            col_1857,
            col_24229,
            col_78788
        from
            tbl_4989
        where
            col_77093 = '20200831'
    ) rit_attr on stats_daily.rit = rit_attr.col_10082
    left outer join (
        select
            col_10082,
            col_1857
        from
            tbl_4989
        where
            col_77093 = '20200831'
    ) col_7182_attr on stats_daily.col_7182 = col_7182_attr.col_10082
group by
    if(
        col_37068 = 1,
        stats_daily.col_8954,
        adx_attr.col_8954
    ),
    if(col_37068=1,overture_attr.col_17185,adx_attr.col_17185),
    col_45123,
    col_46144,
    if(
        coalesce(derive_col_50098, 0) in (0, -1),
        col_45123,
        derive_col_50098
    ),
    col_20500,
    col_61647,
    rit,
    send_rit,
    col_7182,
    col_82303,
    col_12611,
    case
        when col_7675_attr.col_42388 is not null
        and col_7675_attr.col_25037_col_42250 = 0 then col_7675_attr.col_42388
        when col_7675_attr.col_42388 is not null
        and col_7675_attr.col_25037_col_42250 = 1 then 3189398991 
        else -1
    end,
    col_69017,
    col_741,
    refresh_col_50426,
    col_76340,
    col_63940,
    if(
        col_37068 = 1,
        overture_attr.col_43781,
        adx_attr.col_43781
    ),
    if(
        col_37068 = 1,
        overture_attr.col_75801,
        adx_attr.col_75801
    ),
    rit_attr.col_1857,
    col_37068,
    age,
    col_61530,
    if(
        col_37068 = 1,
        overture_attr.col_5384,
        adx_attr.col_5384
    ),
    if(
        col_37068 = 1,
        overture_attr.col_47564,
        adx_attr.col_47564
    ),
    if(
        col_37068 = 1,
        overture_attr.col_17160,
        adx_attr.col_17160
    ),
    col_63464,
    col_19562,
    stats_daily.col_62986,
    stats_daily.rit,
    if(col_37068 = 1, overture_attr.col_76859, 0),
    rit_attr.col_24229,
    if(
        col_37068 = 1,
        overture_attr.col_19590,
        adx_attr.col_19590
    ),
    if(
        col_37068 = 1,
        overture_attr.col_85563,
        adx_attr.col_85563
    ),
    if(
        col_37068 = 1,
        overture_attr.col_50554,
        adx_attr.col_50554
    ),
    if(
        col_37068 = 1,
        overture_attr.col_87151,
        adx_attr.col_87151
    ),
    overture_attr.col_30452,
    overture_attr.download_mode,
    overture_attr.col_91732,
    overture_attr.smart_col_82311,
    overture_attr.is_smart_target,
    overture_attr.ad_col_42642,
    stats_daily.col_47217,
    stats_daily.is_rta,
    col_19147,
    if(
        col_37068 = 1,
        overture_attr.col_30973,
        adx_attr.col_30973
    ),
    if(
        col_37068 = 1,
        overture_attr.col_29396,
        adx_attr.col_29396
    ),
    overture_attr.col_55500,
    overture_attr.is_orange_site,
    aggr_col_76542,
    dragon_col_15440_col_7675,
    is_did_null,
    col_75731,
    overture_attr.col_17422,
    overture_attr.col_40017,
    if(col_37068=1,overture_attr.col_78590,adx_attr.col_78590),
    if(col_37068=1,overture_attr.similar_col_87151,adx_attr.similar_col_87151),
    col_12805_identity,
    col_78788
    limit 10000

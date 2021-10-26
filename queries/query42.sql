select
    '2020-08-31' as `col_24989`,
    overture.col_10082,
    overture.col_17185,
    overture.col_8954,
    overture.col_46144,
    overture.col_45123,
    overture.col_43781,
    overture.col_75801,
    overture.col_19590,
    overture.col_1857,
    overture.col_40120,
    if(overture.col_17185 not in (7, 8, 9), null, overture.col_76340) as col_76340,
    if(overture.col_17185 not in (7, 8, 9), null, overture.col_63940) as col_63940,
    sum(overture.col_65902) as overture_col_65902,
    sum(overture.col_75623) as overture_col_8818,
    sum(overture.col_81323) as overture_col_71053,
    sum(overture.col_86219) as overture_col_26342,
    if(overture.col_17185 in (7, 8, 9),sum(overture.col_64237),null) as overture_col_24913,
    sum(overture.col_22924) as overture_col_22924,
    sum(overture.col_53946) as overture_col_53946,
    sum(overture.col_57809) as overture_col_57809,
    sum(overture.col_71220) as overture_col_71220,
    overture.col_5384,
    overture.col_47564,
    overture.col_91732,
    overture.col_30859,
    1 as col_37068,
    overture.col_66475,
    case
        when overture.col_17185 <> 6 or col_97731_stock.col_4684 = 0 then null
        else col_97731_stock.col_4684 end as col_4684,
    col_97731_stock_info.col_91343,
    col_23292.col_23292,
    overture.col_80031,
    overture.col_49580,
    overture.col_95052,
    overture.col_62334,
    overture.col_78788,
    crm_group.col_78590,
    crm_group.col_30152,
    overture.col_87151,
    if(crm_group.col_30152 is not null,crm_group.col_30152,overture.col_87151) as similar_col_87151,
    spu.col_55870,
    customer_industry_info.col_41501,
    customer_industry_info.col_21438,
    'null' as col_19187,
    department.opecol_97023n_col_59227,
    col_42642,
    direct_col_54907man_department.col_17907 as direct_col_54907man_col_17907,
    overture.col_58637,
    overture.col_4689,
    overture.col_30973,
    col_68653,
    col_17410,
    col_33894,
    dou_plus.col_13174,
    if(sum(col_65902)>0,1,0) as is_col_65902,
    csc_col_54907_col_44942,
    overture.col_19562,
    col_7675_col_54907man_department.col_17907 as col_7675_col_54907man_col_17907,
    sum(overture.col_69250) as col_69250,
    overture.col_17422,
    overture.col_40017,
    direct_col_54907man_department.col_87400 as direct_col_54907man_col_87400,
    col_7675_col_54907man_department.col_87400 as col_7675_col_54907man_col_87400,
    overture.col_63464,
    overture.is_app_promotion_ad,
    overture.is_luban,
    overture.ug_col_50426,
    overture.col_19147,
    col_6079ized_webstore_col_28543s,
    if(overture.col_46144=5,1,0) as col_76859,
    ad_attr.dpa_col_40278_col_74464,
    ad_attr.is_direct_dpa,
    if(col_6079ized_webstore_col_28543s is null, 0, 1) as is_webstore_col_6079ized,
    case when aia.col_80511 is not null then 1 else 0 end as col_90555_col_6079ized,
    coalesce(col_96973_col_6079ized, 0) as col_96973_col_6079ized,
    tbl_4121v.col_57164,
    tbl_4121v.col_74478,
    overture.col_17160,
    col_77148,
    ad_component.col_64688,
    ad_component.col_16393,
    ad_component.col_45439,
    col_64569,
    sum(col_53168_col_35211),
    sum(col_96164),
    sum(col_80209_col_35211),
    sum(col_40641_col_35211),
    sum(col_83030),
    sum(col_70860),
    sum(pay_col_35211),
    sum(col_52367_24h),
    col_55500,
    if(add_fan_ad.col_62986 is not null,1,0) as col_26104d_fan_ad,
    col_78970,
    col_86442,
    case when auto_creative.col_80511 is not null then 1 else 0 end as is_use_auto_creative
from
(
    select
        col_10082,
        col_17185,
        col_8954,
        col_46144,
        col_45123,
        col_43781,
        col_75801,
        col_19590,
        col_1857,
        col_40120,
        col_76340,
        col_63940,
        col_65902,
        col_75623,
        col_81323,
        col_86219,
        col_64237,
        col_22924,
        col_53946,
        col_57809,
        col_71220,
        col_5384,
        col_47564,
        col_91732,
        col_30859,
        col_66475,
        col_64309,
        case when col_64309>=0 then col_64309 else (col_75623+col_65902+col_62986+col_17160)*(-1) end as jocol_37521_id,
        col_62986,
        col_80031,
        col_49580,
        col_95052,
        col_62334,
        col_78788,
        col_17160,
        col_87151,
        col_42642,
        col_85591,
        col_90149,
        col_58637,
        col_4689,
        col_68653,
        col_17410,
        col_33894,
        col_30973,
        col_80511,
        col_4684,
        col_19562,
        coalesce(col_76160['col_89807_cnt'],0) as col_69250,
        col_17422,
        col_40017,
        col_63464,
        if(col_46144 = '3', 1, 0) as is_app_promotion_ad,
        if(
            col_46144 = '4'
            AND col_42642 = 12,
            1,
            0
        ) as is_luban,
        case
            when col_8954 = 5
            AND col_87151 col_53168 '%peixiang%' then 1
            when col_8954 = 5
            AND col_87151 not col_53168 '%peixiang%' then 0
            ELSE null
        end as ug_col_50426,
        col_19147,
        col_77148,
        col_64569,
        COALESCE(col_76160 ['dy_col_53168'], 0) as col_53168_col_35211,
        COALESCE(col_76160 ['dy_col_31301'], 0) as col_96164,
        COALESCE(col_76160 ['col_98630'], 0) as col_80209_col_35211,
        COALESCE(col_76160 ['col_69828'], 0) as col_40641_col_35211,
        COALESCE(col_76160 ['active'], 0) as col_83030,
        COALESCE(col_76160 ['active_pay'], 0) as col_70860,
        COALESCE(col_76160 ['game_pay_col_35211'], 0) as pay_col_35211,
        COALESCE(col_76160 ['pay_1d_amount'], 0) as col_52367_24h,
        col_55500,
        col_78970,
        col_86442
    from tbl_1235
    where col_77093="20200831"
)overture
left join
(
    select
        col_64309,
        col_4684,
        col_45448
    from tbl_406
    where col_77093 = '20200831'
)col_97731_stock
on overture.jocol_37521_id = col_97731_stock.col_64309
left join
(
    select
        col_45448,
        col_91343
    from tbl_9015
    where col_77093 = '20200831'
)col_97731_stock_info
on col_97731_stock.col_45448 = col_97731_stock_info.col_45448
left join (
 select
 id
,col_23292
 from tbl_9986
 where col_77093 = '20200831'
 and col_21428='ad'
) col_23292
on overture.col_62986 = col_23292.id
left join
(
    select cast(col_64309 as bigint) as col_64309,col_55870
    from
    tbl_272
    where col_77093 = '20200831'
    and coalesce(col_71015,0)>0
)spu on  overture.col_64309=spu.col_64309
left join
(
    select
        col_17160,
        col_12073,
        col_44942
    from
        tbl_7269
    where
        col_77093 = '20200831'
) crm_customer on overture.col_17160 = crm_customer.col_17160
left join (
    select
        col_44942,
        case
            when col_81258 LIKE '%dakehuxiaoshouzhongxin%' or col_81258 LIKE '%KA%' then 'KA'
            when col_81258 LIKE '%SMB%' then 'SMB'
            when col_81258 LIKE '%LA%' then 'LA'
            when col_81258 LIKE '%qicheyewuzhongxin%' then 'qicheyewuzhongxin'
            ELSE null
        end as opecol_97023n_col_59227
    from
        tbl_1242
    where
        col_77093 = '20200831'
) department on crm_customer.col_44942 = department.col_44942
left join (
    select
        col_12073,
        col_78590
    from
        tbl_5739
    where
        col_77093 =  '20200831'
) crm_company on crm_customer.col_12073 = crm_company.col_12073
left join (
    select
        col_78590,
        col_30152
    from
        tbl_7062
    where
        col_77093 = '20200831'
) crm_group on crm_company.col_78590 = crm_group.col_78590
left join (
    select
        col_77093 as dt,
        col_87151,
        col_41501,
        col_21438,
        col_19187
    from
        tbl_6699
    where
        col_77093 = '20200831'
) customer_industry_info on customer_industry_info.col_87151 = overture.col_87151
left join(
    select
        col_44942,
        col_17907,
        col_87400
    from
        tbl_1242
    where
        col_77093 = '20200831'
) direct_col_54907man_department  on overture.col_85591 =direct_col_54907man_department.col_44942
left join(
    select
        col_44942,
        col_17907,
        col_87400
    from
        tbl_1242
    where
        col_77093 = '20200831'
) col_7675_col_54907man_department on overture.col_90149 =col_7675_col_54907man_department.col_44942
left join
(
    SELECT
        col_30973,
        col_31221 as col_13174
    from tbl_7349
    where col_77093='20200831' and col_52924 in (5 ,10 ,11)
)dou_plus on dou_plus.col_30973=overture.col_30973
left join (
    select
        col_30973 as adv_id,
        col_29282
    from
        tbl_9160
    where
        col_77093 = '20200831'
) relation on overture.col_30973 = relation.adv_id
left join (
    select
        col_13435,
        col_44942
    from
        tbl_2574
    where
        col_77093 = '20200831'
) employee on employee.col_13435 = relation.col_29282
left join (
    select
        col_44942 as csc_col_54907_col_44942,
        col_81258 as csc_col_54907_col_81258
    from
        tbl_1242
    where
        col_77093 = '20200831'
) csc_department on employee.col_44942 = csc_department.csc_col_54907_col_44942
left join(
    SELECT
        col_30973,
        collect_set(col_28543) as  col_6079ized_webstore_col_28543s
    FROM
        (
        SELECT
            row_number() OVER (PARTITION BY col_28543, col_30973 ORDER BY col_86387 DESC) AS col_30258,
            col_30973,
            col_28543
        FROM
            tbl_4198
        WHERE
            col_77093 = '20200831'
            AND
            col_68653 = 2
        ) t
    WHERE
        t.col_30258 = 1
    GROUP BY
        col_30973
) webstore on webstore.col_30973 = overture.col_30973
left join
(
    select
        col_62986,
        get_json_object(col_71951,'$.col_76904') as dpa_col_40278_col_74464,
        get_json_object(col_71951, '$.audience.dpa_local_audience') as is_direct_dpa
    from tbl_4121
    where col_77093 = '20200831'
    and get_json_object(col_71951,'$.col_76904') is not null
)ad_attr on overture.col_62986 = ad_attr.col_62986
left outer join (
    select col_80511, col_96973 as col_96973_col_6079ized
      from tbl_6369
     where col_77093 = '20200831' and col_80511 is not null
     group by col_80511, col_96973
) aia on overture.col_80511 = aia.col_80511
LEFT OUTER JOIN
(
    SELECT
        col_30973,
        col_57164,
        col_74478
    FROM
        tbl_5747
    WHERE
        col_77093='20200831'
) tbl_4121v on tbl_4121v.col_30973 = overture.col_30973
left join 
(
    select 
        col_62986,
        split(col_16393,',') as col_16393,
        col_45439 as col_45439,
        collect_set(cast(col_64688_temp as bigint)) as col_64688 
    from tbl_7044
    lateral view explode(split(col_64688,',')) ad_component_map as col_64688_temp
    where col_77093 = '20200831' 
    group by col_62986,col_16393,col_45439
) ad_component
on overture.col_62986 = ad_component.col_62986
left join (
    select 
        col_62986
    from 
        tbl_9385
    where col_77093='20200831'
)add_fan_ad on add_fan_ad.col_62986=overture.col_62986
left join(
    select
        col_80511
    from
        (
            select
                col_96583
            from
                tbl_5545
            where
                col_77093 ='20200831'
                and col_95097 = 33
        ) a
        inner join (
            select
                col_96583,
                col_80511
            from
                tbl_9276
            where
                col_77093 = '20200831'
        ) b on a.col_96583 = b.col_96583
    group by
         col_80511
) auto_creative on auto_creative.col_80511 = overture.col_80511
group by
    overture.col_10082,
    overture.col_17185,
    overture.col_8954,
    overture.col_46144,
    overture.col_45123,
    overture.col_43781,
    overture.col_75801,
    overture.col_19590,
    overture.col_1857,
    if(overture.col_17185 not in (7, 8, 9), null, overture.col_76340) ,
    if(overture.col_17185 not in (7, 8, 9), null, overture.col_63940),
    overture.col_40120,
    overture.col_5384,
    overture.col_47564,
    overture.col_91732,
    overture.col_30859,
    overture.col_66475,
    case
        when overture.col_17185 <> 6 or col_97731_stock.col_4684 = 0 then null
        else col_97731_stock.col_4684 end,
    col_97731_stock_info.col_91343,
    col_23292.col_23292,
    overture.col_80031,
    overture.col_49580,
    overture.col_95052,
    overture.col_62334,
    overture.col_78788,
    crm_group.col_78590,
    crm_group.col_30152,
    overture.col_87151,
    if(crm_group.col_30152 is not null,crm_group.col_30152,overture.col_87151) ,
    spu.col_55870,
    customer_industry_info.col_41501,
    customer_industry_info.col_21438,
    'null', 
    department.opecol_97023n_col_59227,
    col_42642,
    direct_col_54907man_department.col_17907,
    overture.col_58637,
    overture.col_4689,
    overture.col_30973,
    col_68653,
    col_17410,
    dou_plus.col_13174,
    col_33894,
    csc_col_54907_col_44942,
    overture.col_19562,
    col_7675_col_54907man_department.col_17907,
    col_17422,
    col_40017,
    direct_col_54907man_department.col_87400,
    col_7675_col_54907man_department.col_87400,
    overture.col_63464,
    overture.is_app_promotion_ad,
    overture.is_luban,
    overture.ug_col_50426,
    overture.col_19147,
    col_6079ized_webstore_col_28543s,
    if(overture.col_46144=5,1,0),
    ad_attr.dpa_col_40278_col_74464,
    ad_attr.is_direct_dpa,
    if(col_6079ized_webstore_col_28543s is null, 0, 1),
    case when aia.col_80511 is not null then 1 else 0 end,
    coalesce(col_96973_col_6079ized, 0),
    tbl_4121v.col_57164,
    tbl_4121v.col_74478,
    overture.col_17160,
    col_77148,
    ad_component.col_64688,
    ad_component.col_16393,
    ad_component.col_45439,
    col_64569,
    col_55500,
    if(add_fan_ad.col_62986 is not null,1,0),
    col_78970,
    col_86442,
    case when auto_creative.col_80511 is not null then 1 else 0 end
    limit 10000

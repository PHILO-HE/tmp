SELECT
   col_78590,
   COALESCE(col_24229,'unknown') as col_24229,
   COALESCE(col_53665,'unknown') as col_53665,
   COALESCE(col_19617,0) as col_19617,
   COALESCE(col_15440_col_61530,'unknown') as col_15440_col_61530,
   COALESCE(col_15440_age,'unknown') as col_15440_age,
   COALESCE(provice,'unknown') as provice,
   COALESCE(col_13081,'unknown') as col_13081,
   COALESCE(col_61238,'unknown') as col_61238,
   COALESCE(col_53258,0) as col_53258,
   COALESCE(col_94074,0) as col_94074,
   COALESCE(col_18465,0) as col_18465,
   col_65263,
   COALESCE(col_61894,'unknown') as col_61894,
   COALESCE(col_13081_cn,'unknown') as col_13081_cn,
    col_68653,
    col_75157
FROM(
SELECT
    impression_stats.col_78590 as col_78590,
    col_24229,
    col_53665,
    col_19617,
    col_15440_col_61530,
    col_15440_age,
    provice,
    col_13081,
    col_61238,
    col_65263,
    col_61894,
    col_13081_cn,
    sum(CASE
        WHEN col_68653 in ('xigua_video','short_video') and substr(col_169,1,13) >= '2020-03-24 12' then col_70938
        ELSE col_53258
    END) as col_53258,
    sum(CASE
        WHEN col_68653 in ('xigua_video','short_video') and substr(col_169,1,13) >= '2020-03-24 12' then col_64995
        ELSE col_94074
    END) as col_94074,
    sum(CASE
        WHEN col_68653 in ('xigua_video','short_video') and substr(col_169,1,13) >= '2020-03-24 12' then col_40444
        ELSE col_18465
    END) as col_18465,
    col_68653,
    col_75157
FROM
(
    SELECT
    col_78590,col_53665,col_24229,
    col_13174,col_44531,col_65263,col_19617,
    sum(col_70938) as col_70938,
    sum(col_64995) as col_64995,
    sum(col_40444) as col_40444,
    sum(col_53258) as col_53258,
    sum(col_94074) as col_94074,
    sum(col_18465) as col_18465
    FROM
    tbl_4171
    where date ='20200831'
    group by col_78590,col_53665,col_24229,col_13174,col_44531,col_65263,col_19617
)impression_stats
JOIN
(
    SELECT
    col_78590,
    col_75157,
    col_68653,
    col_169
    FROM
    tbl_4231
    where date ='20200831'
    and col_68653 in ('xigua_video','short_video')
)group_info on impression_stats.col_78590=group_info.col_78590
LEFT JOIN (
        SELECT
            col_13174,
            col_44531,
            col_15440_col_61530,
            col_15440_age,
            col_61238,
            provice,
            col_13081,
            col_61894,
            cn_col_29499 as col_13081_cn
        FROM
            (
                select
                    cast(col_13174 as bigint) as col_13174,
                    cast(col_44531 as bigint) as col_44531,
                    max(col_61530) as col_15440_col_61530,
                    max(age) as col_15440_age,
                    max(col_59987) as col_61238,
                    max(col_31220) as provice,
                    max(col_13081) as col_13081
                FROM
                    tbl_4496
                WHERE
                    date = '20200831'
                    and (
                        col_61530 is not null
                        or age is not null
                        or col_43096 is not null
                        or col_59987 is not null
                        or col_13081 is not null
                    )
                group by
                    cast(col_13174 as bigint),
                    cast(col_44531 as bigint)
            ) a
            LEFT JOIN (
                select
                    DISTINCT col_66825,
                    col_61894
                FROM
                    tbl_8501
                where
                    col_77093 = '2020-08-31'
            ) b on a.provice = b.col_66825
            LEFT JOIN (
                SELECT
                    DISTINCT path,
                    cn_col_29499
                FROM
                    col_80294_tag_dict
                WHERE
                    date = '20200831'
            ) c on a.col_13081 = c.path
    ) col_15440_profile on col_15440_profile.col_13174 = impression_stats.col_13174
    and col_15440_profile.col_44531 = impression_stats.col_44531
    group by
    impression_stats.col_78590,
    col_24229,
    col_53665,
    col_19617,
    col_15440_col_61530,
    col_15440_age,
    provice,
    col_13081,
    col_61238,
    col_65263,
    col_61894,
    col_13081_cn,
    col_68653,
    col_75157
)ex
limit 10000

     select
         id                                              as col_96943,
         col_65643                                       as link_col_81150,
         col_13174                                         as col_76332,
         col_3859                                       as col_3859,
         u1.col_54902                                     as col_54902,
         u1.col_25960                                     as col_25960,
         u1.col_40278                                     as col_40278,
         u1.col_30103                               as col_30103,
         u1.col_17398                             as col_17398,
         col_91680                                           as link_col_91680_col_50426,
         col_28543                                          as col_28543,
         col_18732                                      as link_col_64292t_ts,
         case
           when FROM_UNIXTIME(link.col_18732, 'yyyyMMdd') < '20200831' then UNIX_TIMESTAMP('20200831', 'yyyyMMdd')
           else link.col_18732 end                      as link_col_64292t_ts_etl,
         FROM_UNIXTIME(col_18732)                       as link_col_18732,
         col_76376                                        as link_end_ts,
         case
            when link.col_76376 is null or FROM_UNIXTIME(link.col_76376,'yyyyMMdd')>='${date+1}' then UNIX_TIMESTAMP('${date+1}', 'yyyyMMdd')
            else link.col_76376 end                       as link_end_ts_etl,
         FROM_UNIXTIME(col_76376)                         as link_col_76376,
         case
            when link.col_76376 is null or FROM_UNIXTIME(link.col_76376,'yyyyMMdd')>='${date+1}' then UNIX_TIMESTAMP('${date+1}', 'yyyyMMdd')
            else link.col_76376 end
         -
         case
           when FROM_UNIXTIME(link.col_18732, 'yyyyMMdd') < '20200831' then UNIX_TIMESTAMP('20200831', 'yyyyMMdd')
           else link.col_18732 end                      as link_col_94815_1d,
         col_76376-col_18732                             as link_col_94815_td,
         map(
         'col_96943',col_96943,'col_36416',col_36416,'col_41267',col_41267,'col_50426',col_50426
         )                                               as col_29312,
         col_63175,
         link.col_8527                                    as col_8527
      from
      (
          SELECT
             col_63175,
             id,
             col_65643,
             col_18732,
             if(col_18732 > col_76376, col_18732 + 1,col_76376) as col_76376,
             col_13174,
             col_96943,
             col_3859,
             col_50426,
             col_91680,
             case when col_28543 in (1128,2329,2079) then 1128 when col_28543 in (1112,2081) then 1112 else col_28543 end as col_28543,
             col_36416,
             col_41267,
             case when col_28543 in (1128,2329,2079,1112,2081) then 10 else 3 end as col_8527
          FROM
             tbl_8342
          where date='20200831'
              and col_91680=7
      ) link
      left outer join (
          select
              col_76332,
              col_54902 ,
              col_25960 ,
              col_40278 ,
              col_30103,
              col_17398,
              col_8527
          FROM
              tbl_9551
          WHERE
              date = '20200831'
      ) u1 on link.col_13174 = u1.col_76332 and link.col_8527 = u1.col_8527
      where
      FROM_UNIXTIME(link.col_18732, 'yyyyMMdd') <= '20200831'
      and link.col_65643 > 0
      and (
      link.col_76376 is null or FROM_UNIXTIME(link.col_76376, 'yyyyMMdd') >= '20200831')
    limit 10000

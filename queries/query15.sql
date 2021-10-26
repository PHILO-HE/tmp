select
       anchor_info.col_76332                                  as col_76332
      ,anchor_info.col_54902                                   as col_54902
      ,anchor_info.col_25960                                   as col_25960
      ,anchor_info.col_40278                                   as col_40278
      ,anchor_info.col_7509                                as col_7509
      ,anchor_info.col_57410                           as col_57410
      ,anchor_info.col_75567                                  as col_75567
      ,anchor_info.col_58262                                   as col_58262
      ,anchor_info.col_30103                             as col_30103
      ,anchor_info.col_17398                           as col_17398
      ,mapping_info.col_28543                                    as col_28543
      ,col_18027_info.col_3974                    as col_3974
      ,col_18027_info.col_42413                  as col_42413
      ,case when mapping_info.col_28543 = 1112 then col_18027_info.col_23355_hotsoon
            when mapping_info.col_28543 = 1128 then col_18027_info.col_23355_aweme
            when mapping_info.col_28543 = 2329 then col_18027_info.col_23355_douyin
       end                                                    as col_23355
      ,col_18027_info.col_95897                             as col_95897
      ,case when mapping_info.col_28543 = 1112 then col_18027_info.col_18230_hotsoon
            when mapping_info.col_28543 = 1128 then col_18027_info.col_18230_aweme
            when mapping_info.col_28543 = 2329 then col_18027_info.col_18230_douyin
       end                                                    as col_18230
      ,col_18027_info.col_97469                        as col_97469
      ,col_18027_info.col_69966                      as col_69966
      ,anchor_info.col_82201                            as col_82201
      ,anchor_info.col_76589                       as col_76589
      ,anchor_info.col_7231                        as col_7231
      ,anchor_info.col_64466                   as col_64466
      ,mapping_info.col_24229                                  as col_24229

from  (
       select
              col_76332                                       as col_76332
             ,col_54902                                        as col_54902
             ,col_25960                                        as col_25960
             ,col_40278                                        as col_40278
             ,col_7509                                     as col_7509
             ,col_57410                                as col_57410
             ,col_82201                                 as col_82201
             ,col_76589                            as col_76589
             ,col_7231                             as col_7231
             ,col_64466                        as col_64466
             ,col_75567                                       as col_75567
             ,col_58262                                        as col_58262
             ,col_30103                                  as col_30103
             ,col_17398                                as col_17398
             ,col_8527                                         as col_8527

       from   tbl_9551

       where  date = '20200831'
       and    col_8527 = 10
      ) anchor_info

join
      (
       select
              col_8527                                         as col_8527
             ,col_28543                                          as col_28543
             ,col_42096                                     as col_24229
             ,case when col_28543 in (1112) then 0
                   else 1
              end                                             as sub_col_8527

       from   tbl_8538

       where  col_8527 = 10
      ) mapping_info
on     anchor_info.col_8527 = mapping_info.col_8527

join
      (
       select
              inner_col_18027_info.col_39136                    as col_76332
             ,inner_col_18027_info.col_8527                       as col_8527
             ,inner_col_18027_info.sub_col_8527                   as sub_col_8527
             ,col_35211(
                    case when FROM_UNIXTIME(col_46900, 'yyyyMMdd') = '20200831' and col_23006 = 1 then 1
                         else null
                    end
                   )                                          as col_3974
             ,col_35211(
                    case when FROM_UNIXTIME(col_58886, 'yyyyMMdd') = '20200831' and col_23006 = 0 then 1
                         else null
                    end
                   )                                          as col_42413
             ,col_35211(
                    case when FROM_UNIXTIME(col_46900, 'yyyyMMdd') = '20200831' and new_col_15440.aweme_col_27490 = 1 and col_23006 = 1 then 1
                         else null
                    end
                   )                                          as col_23355_aweme
             ,col_35211(
                    case when FROM_UNIXTIME(col_46900, 'yyyyMMdd') = '20200831' and new_col_15440.douyin_col_27490 = 1 and col_23006 = 1 then 1
                         else null
                    end
                   )                                          as col_23355_douyin
             ,col_35211(
                    case when FROM_UNIXTIME(col_46900, 'yyyyMMdd') = '20200831' and new_col_15440.hotsoon_col_27490 = 1 and col_23006 = 1 then 1
                         else null
                    end
                   )                                          as col_23355_hotsoon
             ,col_35211(
                    case when col_5966 = 1 and col_23006 = 1 then 1
                         else null
                    end
                   )                                          as col_95897
             ,col_35211(
                    case when col_5966 = 1 and new_col_15440.aweme_col_27490 = 1 and col_23006 = 1 then 1
                         else null
                    end
                   )                                          as col_18230_aweme
             ,col_35211(
                    case when col_5966 = 1 and new_col_15440.douyin_col_27490 = 1 and col_23006 = 1 then 1
                         else null
                    end
                   )                                          as col_18230_douyin
             ,col_35211(
                    case when col_5966 = 1 and new_col_15440.hotsoon_col_27490 = 1 and col_23006 = 1 then 1
                         else null
                    end
                   )                                          as col_18230_hotsoon
             ,col_35211(
                    case when col_23006 = 1 then 1
                         else null
                    end
                   )                                          as col_97469
             ,col_35211(
                    case when col_23006 = 0 then 1
                         else null
                    end
                   )                                          as col_69966

       from  (
              select
                     col_39136                               as col_39136
                    ,col_37410                             as col_37410
                    ,col_46900                                as col_46900
                    ,col_58886                                as col_58886
                    ,col_5966                                as col_5966
                    ,col_23006                                   as col_23006
                    ,col_8527                                  as col_8527
                    ,sub_col_8527                              as sub_col_8527

              from   tbl_1965

              where  date = '20200831'
              and    col_8527 = 10
             ) inner_col_18027_info

       left   outer join
             (
              select
                     col_13174                                  as col_13174
                    ,max(
                         case when col_28543 = 1128 then 1
                              else 0
                         end
                        )                                     as aweme_col_27490
                    ,max(
                         case when col_28543 = 2329 then 1
                              else 0
                         end
                        )                                     as douyin_col_27490
                    ,max(
                         case when col_28543 = 1112 then 1
                              else 0
                         end
                        )                                     as hotsoon_col_27490
                    ,col_8527                                  as col_8527
                    ,case when col_28543 in (1128, 2329) then 1
                          else 0
                     end                                      as sub_col_8527

              from   tbl_231

              where  date = '20200831'
              and    action='live_play'
              and    FROM_UNIXTIME(col_62365, 'yyyyMMdd') = '20200831'
              and    col_8527 = 10
              and    col_28543 in (1128, 2329, 1112)

              group  by col_13174
                       ,case when col_28543 in (1128, 2329) then 1
                             else 0
                        end
                       ,col_8527
             ) new_col_15440
       on     inner_col_18027_info.col_37410 = new_col_15440.col_13174
       and    inner_col_18027_info.col_8527 = new_col_15440.col_8527
       and    inner_col_18027_info.sub_col_8527 = new_col_15440.sub_col_8527

       group  by inner_col_18027_info.col_39136, inner_col_18027_info.col_8527, inner_col_18027_info.sub_col_8527
      ) col_18027_info
on     anchor_info.col_76332 = col_18027_info.col_76332
and    anchor_info.col_8527 = col_18027_info.col_8527
and    mapping_info.sub_col_8527 = col_18027_info.sub_col_8527
limit 10000

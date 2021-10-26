select
       col_49509                                                    as ban_id
      ,coalesce(
                case when col_8527 = 0 then get_json_object(col_28120, '$.ban_col_95097')
                     when col_8527 = 1 then get_json_object(col_28120, '$.aweme_col_28120.banSource')
                     when col_8527 = 3 then get_json_object(col_28120, '$.ban_col_95097')

                end
               ,'other'
               )                                                 as ban_col_40278
      ,col_13174                                                   as ban_col_13174
      ,case when col_12667 > 0 and col_12667 not in (107321, 107382, 107383, 109600) then col_12667
            else null
       end                                                       as col_30103
      ,case when col_63175 > 0 then 1
            else 0
       end                                                       as is_living_ban
      ,col_63175                                                   as col_63175
      ,col_77711                                            as col_77711
      ,case when col_23006 = 0 then 0
            when col_23006 = 2 then 1
            else -1
       end                                                       as ban_col_23006
      ,FROM_UNIXTIME(col_77931)                                as col_9382
      ,col_77931                                               as ban_ts
      ,col_9382                                                  as ban_col_94815
      ,FROM_UNIXTIME(col_47583)                               as col_47583
      ,col_47583                                              as expired_ts
      ,col_58262                                                  as ban_col_58262
      ,col_96690                                               as ban_col_51497_cd
      ,coalesce(
                case when col_8527 = 0 then get_json_object(col_28120, '$.col_51497')
                     when col_8527 = 1 then get_json_object(col_28120, '$.aweme_col_28120.col_51497')
                     when col_8527 = 3 then get_json_object(col_28120, '$.col_51497')
                end
               ,''
               )                                                 as ban_col_51497_col_48760
      ,col_69956                                                    as ban_col_69956
      ,col_12407                                          as col_12407
      ,FROM_UNIXTIME(col_45981)                               as col_45981
      ,col_45981                                              as unblock_ts
      ,case when col_28967 > 0 then 1
            else 0
       end                                                       as is_appeal
      ,col_28967                                             as col_28967
      ,case when col_28967 > 0 then
                                        case when col_1444 = 'ban_webcast_appeal_reject_col_9382_notice' then  2
                                             else 1
                                        end
            else 0
       end                                                       as appeal_submit_mode
      ,col_37810                                          as col_37810
      ,case when col_37810 = 1 then col_54125
            else null
       end                                                       as appeal_ban_col_13174
      ,case when col_37810 in (2, 3) then col_54125
            else null
       end                                                       as appeal_faction_col_40278_col_13174
      ,case when col_37810 in (2, 3) then col_12667
            else null
       end                                                       as appeal_faction_col_40278_col_12667
      ,FROM_UNIXTIME(col_90955)                                as col_90955
      ,col_90955                                               as appeal_ts
      ,col_8246                                             as col_8246
      ,col_80981                                           as approval_col_58262
      ,FROM_UNIXTIME(col_28790)                                as approval_col_24989
      ,col_28790                                               as approval_ts
      ,col_94526                                             as approval_col_51497
      ,col_51164                                             as approval_col_69956
      ,map(
           'col_17802'
          ,col_17802
          ,'col_1444'
          ,col_1444
          ,'sub_col_8527'
          ,cast(col_8527 as string)
          )                                                      as col_29312
      ,col_28120                                                     as col_28120
      ,coalesce(col_4558,0)                        as diamond_freeze_col_23006
from  (
       SELECT
              id                                                 as id
             ,col_49509                                             as col_49509
             ,col_8527                                            as col_8527
             ,col_13174                                            as col_13174
             ,col_63175                                            as col_63175
             ,case when col_77931 > 0 then col_77931
                   else null
              end                                                as col_77931
             ,col_77711                                     as col_77711
             ,col_53226                                           as col_53226
             ,col_23006                                             as col_23006
             ,col_58262                                           as col_58262
             ,col_69956                                             as col_69956
             ,col_96690                                        as col_96690
             ,col_17802                                as col_17802
             ,col_9382                                           as col_9382
             ,col_54125                                        as col_54125
             ,case when col_28967 > 0 then
                                               case when col_37810 = 1 and col_13174 = col_54125 then 1
                                                    when col_37810 = 2 and col_12667 in (107321, 107382, 107383, 109600) then 2
                                                    when col_37810 = 2 and col_12667 > 0 and col_12667 not in (107321, 107382, 107383, 109600) then 3
                                                    else -1
                                               end
                   else 0
              end                                                as col_37810
             ,col_8246                                      as col_8246
             ,case when col_90955 > 0 then col_90955
                   else null
              end                                                as col_90955
             ,case when col_28967 = 2 then col_12407
                   else col_80981
              end                                                as col_80981
             ,case when col_28790 > 0 then
                                             case when col_28967 = 2 then col_45981
                                                  else col_28790
                                             end
                   else null
              end                                                as col_28790
             ,col_51164                                      as col_51164
             ,col_12407                                   as col_12407
             ,case when col_45981 > 0 then col_45981
                   else null
              end                                                as col_45981
             ,col_1444                        as col_1444
             ,col_12667                                           as col_12667
             ,col_28120                                              as col_28120
             ,case when col_47583 > 0 then col_47583
                   else null
              end                                                as col_47583
             ,col_94526                                      as col_94526
             ,col_15750                                        as col_15750
             ,coalesce(col_28967, 0)                         as col_28967
             ,col_26589                                        as col_26589
             ,col_4558                             as col_4558
       FROM   tbl_7950

       where  date = '20200831'
       and    col_8527 in (0, 1)
       and    col_53226 = 2
      ) col_15440_ban_info
limit 10000

select
       room_info_di.col_63175                                             as col_63175
      ,room_info_di.col_52318                                          as col_52318
      ,room_info_di.col_3859                                           as col_3859
      ,room_info_di.os                                                  as os
      ,room_info_di.col_94460                                        as col_94460
      ,room_info_di.col_41078                                       as col_41078
      ,room_info_di.col_37774                                           as col_37774
      ,room_info_di.col_7492                                    as col_7492
      ,room_info_di.col_70363                                     as col_70363
      ,room_info_di.col_74054                                       as col_74054
      ,room_info_di.col_68298                                       as col_68298
      ,room_info_di.col_52825                                         as col_52825
      ,room_info_di.col_18854                                     as col_18854
      ,room_info_di.col_76332                                           as col_76332
      ,anchor_info.col_54902                                             as col_54902
      ,anchor_info.col_25960                                             as col_25960
      ,anchor_info.col_40278                                             as col_40278
      ,anchor_info.col_7509                                          as col_7509
      ,anchor_info.col_57410                                     as col_57410
      ,anchor_info.col_82201                                      as col_82201
      ,anchor_info.col_76589                                 as col_76589
      ,anchor_info.col_7231                                  as col_7231
      ,anchor_info.col_64466                             as col_64466
      ,anchor_info.col_75567                                            as col_75567
      ,anchor_info.col_30103                                       as col_30103
      ,anchor_info.col_17398                                     as col_17398
      ,case when room_info_di.col_28543 = app_mapping.col_28543 then 1
            else 0
       end                                                              as col_33894
      ,case when room_info_di.col_28543 = app_mapping.col_28543 and room_info_di.col_55231 > 25*60 then 1
            else 0
       end                                                              as is_25min_valid_live
      ,app_mapping.col_28543                                               as col_28543
      ,case when room_info_di.col_28543 = app_mapping.col_28543 then room_info_di.col_55231
            else 0
       end                                                              as col_55231
      ,coalesce(col_43492_log.col_60570                    , 0)      as col_60570
      ,coalesce(col_43492_log.col_88609                   , 0)      as col_88609
      ,coalesce(col_43492_log.col_6643                   , 0)      as col_6643
      ,coalesce(col_43492_log.col_47496                  , 0)      as col_47496
      ,coalesce(col_43492_log.col_326               , 0)      as col_326
      ,coalesce(col_43492_log.col_54895              , 0)      as col_54895
      ,coalesce(col_43492_log.col_59597              , 0)      as col_59597
      ,coalesce(col_43492_log.col_24916             , 0)      as col_24916
      ,coalesce(col_43492_log.col_7600            , 0)      as col_7600
      ,coalesce(col_43492_log.col_1251           , 0)      as col_1251
      ,coalesce(col_43492_log.col_20758              , 0)      as col_20758
      ,coalesce(col_43492_log.col_77594         , 0)      as col_77594
      ,coalesce(col_43492_log.col_67939       , 0)      as col_67939
      ,coalesce(col_43492_log.col_14869                  , 0)      as col_14869
      ,coalesce(col_43492_log.col_82987                 , 0)      as col_82987
      ,coalesce(col_43492_log.col_44358           , 0)      as col_44358
      ,coalesce(col_43492_log.col_45150          , 0)      as col_45150
      ,coalesce(col_43492_log.col_90004                 , 0)      as col_90004
      ,coalesce(col_43492_log.col_85988                , 0)      as col_85988
      ,coalesce(col_43492_log.col_28079            , 0)      as col_28079
      ,coalesce(col_43492_log.col_95525           , 0)      as col_95525
      ,coalesce(col_43492_log.col_44275          , 0)      as col_44275
      ,coalesce(col_43492_log.col_98634         , 0)      as col_98634
      ,coalesce(col_43492_log.col_95880                   , 0)      as col_95880
      ,coalesce(col_43492_log.col_64840                  , 0)      as col_64840
      ,coalesce(col_43492_log.col_13120              , 0)      as col_13120
      ,coalesce(col_43492_log.col_89109             , 0)      as col_89109
      ,coalesce(col_43492_log.col_15599            , 0)      as col_15599
      ,coalesce(col_43492_log.col_33261           , 0)      as col_33261
      ,coalesce(col_43492_log.col_59343            , 0)      as col_59343
      ,coalesce(col_43492_log.col_71206           , 0)      as col_71206
      ,coalesce(col_43492_log.col_61251       , 0)      as col_61251
      ,coalesce(col_43492_log.col_10108      , 0)      as col_10108
      ,coalesce(col_43492_log.col_98133               , 0)      as col_98133
      ,coalesce(col_43492_log.col_93405              , 0)      as col_93405
      ,coalesce(col_43492_log.col_99187               , 0)      as col_99187
      ,coalesce(col_43492_log.col_49128       , 0)      as col_49128
      ,coalesce(col_43492_log.col_81424          , 0)      as col_81424
      ,coalesce(col_43492_log.col_90904         , 0)      as col_90904
      ,coalesce(col_43492_log.col_32562          , 0)      as col_32562
      ,coalesce(col_43492_log.col_72373  , 0)      as col_72373
      ,coalesce(col_43492_log.col_67748               , 0)      as col_67748
      ,coalesce(col_43492_log.col_16073              , 0)      as col_16073
      ,coalesce(col_43492_log.col_56774               , 0)      as col_56774
      ,coalesce(col_43492_log.col_44522       , 0)      as col_44522
      ,coalesce(col_43492_log.col_7840          , 0)      as col_7840
      ,coalesce(col_43492_log.col_58227         , 0)      as col_58227
      ,coalesce(col_43492_log.col_95551          , 0)      as col_95551
      ,coalesce(col_43492_log.col_42997  , 0)      as col_42997
      ,coalesce(col_43492_log.col_41384, 0)      as col_41384
      ,coalesce(col_43492_log.col_1788, 0)      as col_1788
      ,coalesce(col_43492_log.col_11302, 0)      as col_11302
      ,coalesce(col_43492_log.col_51902, 0)      as col_51902
      ,coalesce(col_43492_log.col_86737, 0)      as col_86737
      ,coalesce(col_43492_log.col_40861, 0)     as col_40861
      ,coalesce(col_43492_log.col_35598, 0)     as col_35598
      ,room_info_di.col_13272                                        as col_13272
      ,coalesce(col_43492_log.col_32609              , 0)  as col_32609
      ,coalesce(col_43492_log.col_39941             , 0)  as col_39941
      ,coalesce(col_43492_log.col_96496      , 0)  as col_96496
      ,coalesce(col_43492_log.col_44402         , 0)  as col_44402
      ,coalesce(col_43492_log.col_1396        , 0)  as col_1396
      ,coalesce(col_43492_log.col_39507 , 0)  as col_39507
      ,coalesce(col_43492_log.col_38888             , 0)  as col_38888
      ,coalesce(col_43492_log.col_87220            , 0)  as col_87220
      ,coalesce(col_43492_log.col_67209     , 0)  as col_67209
      ,coalesce(col_43492_log.col_30158        , 0)  as col_30158
      ,coalesce(col_43492_log.col_44339       , 0)  as col_44339
      ,coalesce(col_43492_log.col_84412, 0)  as col_84412
      ,coalesce(col_43492_log.col_48280, 0)                          as col_48280
      ,coalesce(col_43492_log.col_64576, 0)                         as col_64576
      ,coalesce(col_43492_log.col_57749, 0)                     as col_57749
      ,coalesce(col_43492_log.col_37173, 0)                    as col_37173
      ,coalesce(col_43492_log.col_95915, 0)                      as col_95915
      ,coalesce(col_43492_log.col_23799, 0)                     as col_23799
      ,coalesce(col_43492_log.col_21095, 0)               as col_21095
      ,coalesce(col_43492_log.col_97045, 0)              as col_97045
      ,room_info_di.col_84617                                           as col_84617
      ,coalesce(col_43492_log.live_valid_col_64839_1d, 0)                  as live_valid_col_64839_1d
      ,coalesce(col_43492_log.live_send_anchor_gift_ucnt_1d, 0)             as live_send_anchor_gift_ucnt_1d
      ,coalesce(col_43492_log.live_col_87825, 0)              as live_col_87825
      ,coalesce(col_43492_log.live_col_36580, 0)              as live_col_36580
      ,coalesce(col_43492_log.live_col_86482, 0)      as live_col_86482
      ,coalesce(col_43492_log.live_valid_col_26989, 0)              as live_valid_col_26989
      ,coalesce(col_43492_log.live_valid_col_21167, 0)                   as live_valid_col_21167
      ,coalesce(col_43492_log.col_92876, 0)                    as col_92876
      ,coalesce(col_43492_log.in_room_col_80209_ucnt_1d, 0)                   as in_room_col_80209_ucnt_1d
      ,coalesce(col_43492_log.col_20579, 0)                     as col_20579
      ,coalesce(col_43492_log.col_51082, 0)                    as col_51082
      ,app_mapping.col_24229                                             as col_24229

from  (
       select
              col_76332                                                 as col_76332
             ,col_63175                                                   as col_63175
             ,col_52318                                                as col_52318
             ,col_3859                                                 as col_3859
             ,os                                                        as os
             ,col_94460                                              as col_94460
             ,col_41078                                             as col_41078
             ,col_37774                                                 as col_37774
             ,col_13272                                              as col_13272
             ,col_70363                                           as col_70363
             ,col_74054                                             as col_74054
             ,col_68298                                             as col_68298
             ,col_52825                                               as col_52825
             ,col_84617                                                 as col_84617
             ,col_18854                                           as col_18854
             ,col_16160                                               as col_7492
             ,case when FROM_UNIXTIME(col_52825, 'yyyyMMdd') > '20200831' or col_52825 is null then UNIX_TIMESTAMP('${date+1}', 'yyyyMMdd')
                   else col_52825
              end
              -
              case when FROM_UNIXTIME(col_74054, 'yyyyMMdd') < '20200831' then UNIX_TIMESTAMP('20200831', 'yyyyMMdd')
                   else col_74054
              end                                                       as col_55231
             ,col_8527                                                   as col_8527
             ,col_28543                                                    as col_28543

       from   tbl_7528

       where  date >= '20200831'
       and    FROM_UNIXTIME(col_74054, 'yyyyMMdd') <= '20200831'
       and    col_8527 in (10)
      ) room_info_di

join
      (
       select
              col_8527
             ,col_28543
             ,col_42096                                               as col_24229

       from   tbl_8538

       where  col_8527 = 10
      ) app_mapping
on     room_info_di.col_8527 = app_mapping.col_8527

left   outer join
      (
       select
              col_76332                                                 as col_76332
             ,col_54902                                                  as col_54902
             ,col_25960                                                  as col_25960
             ,col_21265                                             as col_21265
             ,col_70606                                               as col_70606
             ,col_35745                                               as col_35745
             ,col_74201                                               as col_74201
             ,col_40278                                                  as col_40278
             ,col_7509                                               as col_7509
             ,col_57410                                          as col_57410
             ,col_82201                                           as col_82201
             ,col_76589                                      as col_76589
             ,col_7231                                       as col_7231
             ,col_64466                                  as col_64466
             ,col_75567                                                 as col_75567
             ,col_15638                                         as col_15638
             ,col_52297                                           as col_52297
             ,col_18854                                           as col_18854
             ,col_58262                                                  as col_58262
             ,col_30103                                            as col_30103
             ,col_17398                                          as col_17398
             ,col_8527                                                   as col_8527

       from   tbl_9551

       where  date = '20200831'
       and    col_8527 = 10
      ) anchor_info
on     room_info_di.col_76332 = anchor_info.col_76332
and    room_info_di.col_8527 = anchor_info.col_8527

left   outer join
      (
       select
              col_63175                                                   as col_63175
             ,col_8527                                                   as col_8527
             ,col_28543                                                    as col_28543
             ,sum(col_60570)                                     as col_60570
             ,sum(live_show_col_27490)                                       as col_88609
             ,sum(col_6643)                                    as col_6643
             ,sum(live_watch_col_27490)                                      as col_47496
             ,sum(
                  case when col_1611 = 1 then inner_col_43492_log.col_6643
                       else 0
                  end
                 )                                                      as col_326
             ,sum(
                  case when col_1611 = 1 then inner_col_43492_log.live_watch_col_27490
                       else 0
                  end
                 )                                                      as col_54895
             ,sum(
                  case when col_19617 = 1 then inner_col_43492_log.col_6643
                       else 0
                  end
                 )                                                      as col_59597
             ,sum(
                  case when col_19617 = 1 then inner_col_43492_log.live_watch_col_27490
                       else 0
                  end
                 )                                                      as col_24916
             ,sum(
                  case when col_5966 = 1 then inner_col_43492_log.col_6643
                       else 0
                  end
                 )                                                      as col_7600
             ,sum(
                  case when col_5966 = 1 then inner_col_43492_log.live_watch_col_27490
                       else 0
                  end
                 )                                                      as col_1251
             ,sum(inner_col_43492_log.col_20758)               as col_20758

             ,sum(
                  case when col_19617 = 1 then inner_col_43492_log.col_20758
                       else 0
                  end
                 )                                                      as col_77594
             ,sum(
                  case when col_5966 = 1 then inner_col_43492_log.col_20758
                       else 0
                  end
                 )                                                      as col_67939
             ,sum(live_single_watch_than_1_min_col_27490)                    as col_41384
             ,sum(live_single_watch_than_2_min_col_27490)                    as col_1788
             ,sum(live_single_watch_than_3_min_col_27490)                    as col_11302
             ,sum(live_single_watch_than_4_min_col_27490)                    as col_51902
             ,sum(live_single_watch_than_5_min_col_27490)                    as col_86737
             ,sum(live_single_watch_than_10_min_col_27490)                   as col_40861
             ,sum(live_single_watch_than_20_min_col_27490)                   as col_35598
             ,sum(col_14869)                                   as col_14869
             ,sum(live_col_18027_col_27490)                                     as col_82987
             ,sum(col_44358)                            as col_44358
             ,sum(live_col_18027_anchor_col_27490)                              as col_45150
             ,sum(col_90004)                                  as col_90004
             ,sum(live_col_31301_col_27490)                                    as col_85988
             ,sum(
                  case when col_19617 = 1 then inner_col_43492_log.col_90004
                       else 0
                  end
                 )                                                      as col_28079
             ,sum(
                  case when col_19617 = 1 then inner_col_43492_log.live_col_31301_col_27490
                       else 0
                  end
                 )                                                      as col_95525
             ,sum(
                  case when col_5966 = 1 then inner_col_43492_log.col_90004
                       else 0
                  end
                 )                                                      as col_44275
             ,sum(
                  case when col_5966 = 1 then inner_col_43492_log.live_col_31301_col_27490
                       else 0
                  end
                 )                                                      as col_98634
             ,sum(inner_col_43492_log.col_95880)                    as col_95880
             ,sum(inner_col_43492_log.live_col_6863_col_27490)                      as col_64840
             ,sum(
                  case when col_19617 = 1 then inner_col_43492_log.col_95880
                       else 0
                  end
                 )                                                      as col_13120
             ,sum(
                  case when col_19617 = 1 then inner_col_43492_log.live_col_6863_col_27490
                       else 0
                  end
                 )                                                      as col_89109
             ,sum(
                  case when col_5966 = 1 then inner_col_43492_log.col_95880
                       else 0
                  end
                 )                                                      as col_15599
             ,sum(
                  case when col_5966 = 1 then inner_col_43492_log.live_col_6863_col_27490
                       else 0
                  end
                 )                                                      as col_33261
             ,sum(inner_col_43492_log.col_59343)             as col_59343
             ,sum(inner_col_43492_log.live_send_barrage_col_27490)               as col_71206
             ,sum(
                  case when col_19617 = 1 then inner_col_43492_log.col_59343
                       else 0
                  end
                 )                                                      as col_61251
             ,sum(
                  case when col_19617 = 1 then inner_col_43492_log.live_send_barrage_col_27490
                       else 0
                  end
                 )                                                      as col_10108
             ,sum(inner_col_43492_log.col_98133)                as col_98133
             ,sum(inner_col_43492_log.live_send_gift_col_27490)                  as col_93405
             ,sum(inner_col_43492_log.col_99187)                as col_99187
             ,sum(inner_col_43492_log.col_49128)        as col_49128
             ,sum(
                  case when col_19617 = 1 then inner_col_43492_log.col_98133
                       else 0
                  end
                 )                                                      as col_81424
             ,sum(
                  case when col_19617 = 1 then inner_col_43492_log.live_send_gift_col_27490
                       else 0
                  end
                 )                                                      as col_90904
             ,sum(
                  case when col_19617 = 1 then inner_col_43492_log.col_99187
                       else 0
                  end
                 )                                                      as col_32562
             ,sum(
                  case when col_19617 = 1 then inner_col_43492_log.col_49128
                       else 0
                  end
                 )                                                      as col_72373
             ,sum(inner_col_43492_log.col_67748)                as col_67748
             ,sum(inner_col_43492_log.live_send_prop_col_27490)                  as col_16073
             ,sum(inner_col_43492_log.col_56774)                as col_56774
             ,sum(inner_col_43492_log.col_44522)        as col_44522
             ,sum(
                  case when col_19617 = 1 then inner_col_43492_log.col_67748
                       else 0
                  end
                 )                                                      as col_7840
             ,sum(
                  case when col_19617 = 1 then inner_col_43492_log.live_send_prop_col_27490
                       else 0
                  end
                 )                                                      as col_58227
             ,sum(
                  case when col_19617 = 1 then inner_col_43492_log.col_56774
                       else 0
                  end
                 )                                                      as col_95551
             ,sum(
                  case when col_19617 = 1 then inner_col_43492_log.col_44522
                       else 0
                  end
                 )                                                      as col_42997
             ,sum(col_32609)                           as col_32609
             ,sum(live_fans_club_join_col_27490)                             as col_39941
             ,sum(col_96496)                   as col_96496
             ,sum(
                  case when col_19617 = 1 then inner_col_43492_log.col_32609
                       else 0
                  end
                 )                                                      as col_44402
             ,sum(
                  case when col_19617 = 1 then inner_col_43492_log.live_fans_club_join_col_27490
                       else 0
                  end
                 )                                                      as col_1396
             ,sum(
                  case when col_19617 = 1 then inner_col_43492_log.col_96496
                       else 0
                  end
                 )                                                      as col_39507
             ,sum(col_38888)                          as col_38888
             ,sum(live_redcol_52879_send_col_27490)                            as col_87220
             ,sum(col_67209)                  as col_67209
             ,sum(
                  case when col_19617 = 1 then inner_col_43492_log.col_38888
                       else 0
                  end
                 )                                                      as col_30158
             ,sum(
                  case when col_19617 = 1 then inner_col_43492_log.live_redcol_52879_send_col_27490
                       else 0
                  end
                 )                                                      as col_44339
             ,sum(
                  case when col_19617 = 1 then inner_col_43492_log.col_67209
                       else 0
                  end
                 )                                                      as col_84412
             ,sum(col_38311)                                          as col_48280
             ,sum(live_col_53168_col_27490)                                       as col_64576
             ,sum(
                  case when col_19617 = 1 then inner_col_43492_log.col_38311
                       else 0
                  end
                 )                                                      as col_57749
             ,sum(
                  case when col_19617 = 1 then inner_col_43492_log.live_col_53168_col_27490
                       else 0
                  end
                 )                                                      as col_37173
             ,sum(col_16282)                                      as col_95915
             ,sum(col_29232_col_27490)                                        as col_23799
             ,sum(col_81216)                               as col_21095
             ,sum(col_29232_anchor_col_27490)                                 as col_97045
             ,sum(inner_col_43492_log.live_col_87825)         as live_col_87825
             ,sum(inner_col_43492_log.live_send_anchor_gift_col_27490)           as live_send_anchor_gift_ucnt_1d
             ,sum(inner_col_43492_log.live_col_36580)         as live_col_36580
             ,sum(inner_col_43492_log.live_col_86482) as live_col_86482
             ,sum(
                  case when sub_col_8527 = 0 and col_14802 > 0 then 1
                       when sub_col_8527 = 1 and col_42811 > 0 then 1
                       else 0
                  end
                 )                                                      as live_valid_col_64839_1d
             ,sum(
                  case when sub_col_8527 = 0 then col_35716
                       when sub_col_8527 = 1 then col_4030
                       else 0
                  end
                 )                                                      as live_valid_col_26989
             ,sum(
                  case when sub_col_8527 = 0 then col_14802
                       when sub_col_8527 = 1 then col_42811
                       else 0
                  end
                 )                                                      as live_valid_col_21167
             ,sum(col_92876)                               as col_92876
             ,sum(
                  case when col_92876 > 0 then 1
                       else 0
                  end
                 )                                                      as in_room_col_80209_ucnt_1d
             ,sum(
                  case when col_19617 = 1 then col_60570
                       else 0
                  end
                 )                                                      as col_20579
             ,sum(
                  case when col_19617 = 1 then live_show_col_27490
                       else 0
                  end
                 )                                                      as col_51082

       from  (
              select
                     col_63175                                            as col_63175
                    ,col_13174                                            as col_13174
                    ,col_8527                                            as col_8527
                    ,col_28543                                             as col_28543
                    ,max(col_1611)                                   as col_1611
                    ,max(col_19617)                                       as col_19617
                    ,max(col_5966)                                     as col_5966
                    ,sum(col_34621)                                   as col_60570
                    ,max(
                         case when col_34621 > 0 then 1
                              else 0
                         end
                        )                                               as live_show_col_27490
                    ,sum(col_21167)                                  as col_6643
                    ,max(
                         case when col_21167 > 0 then 1
                              else 0
                         end
                        )                                               as live_watch_col_27490
                    ,sum(col_26989)                             as col_20758
                    ,case when max(col_15865) >= 1 * 60 then 1
                          else 0
                     end                                                as live_single_watch_than_1_min_col_27490
                    ,case when max(col_15865) >= 2 * 60 then 1
                          else 0
                     end                                                as live_single_watch_than_2_min_col_27490
                    ,case when max(col_15865) >= 3 * 60 then 1
                          else 0
                     end                                                as live_single_watch_than_3_min_col_27490
                    ,case when max(col_15865) >= 4 * 60 then 1
                          else 0
                     end                                                as live_single_watch_than_4_min_col_27490
                    ,case when max(col_15865) >= 5 * 60 then 1
                          else 0
                     end                                                as live_single_watch_than_5_min_col_27490
                    ,case when max(col_15865) >= 10 * 60 then 1
                          else 0
                     end                                                as live_single_watch_than_10_min_col_27490
                    ,case when max(col_15865) >= 20 * 60 then 1
                          else 0
                     end                                                as live_single_watch_than_20_min_col_27490
                    ,sum(col_86559)                                 as col_14869
                    ,max(
                         case when col_86559 > 0 then 1
                              else 0
                         end
                        )                                               as live_col_18027_col_27490
                    ,sum(col_91855)                          as col_44358
                    ,max(
                         case when col_91855 > 0 then 1
                              else 0
                         end
                        )                                               as live_col_18027_anchor_col_27490
                    ,sum(col_7207)                                as col_90004
                    ,max(
                         case when col_7207 > 0 then 1
                              else 0
                         end
                        )                                               as live_col_31301_col_27490
                    ,sum(col_44220)                                  as col_95880
                    ,max(
                         case when col_44220 > 0 then 1
                              else 0
                         end
                        )                                               as live_col_6863_col_27490
                    ,sum(col_26243)                           as col_59343
                    ,max(
                         case when col_26243 > 0 then 1
                              else 0
                         end
                        )                                               as live_send_barrage_col_27490
                    ,sum(col_60610)                              as col_98133
                    ,max(
                         case when col_60610 > 0 then 1
                              else 0
                         end
                        )                                               as live_send_gift_col_27490
                    ,sum(col_7689)                              as col_99187
                    ,sum(col_696)                      as col_49128
                    ,sum(col_87825)                       as live_col_87825
                    ,max(
                         case when col_87825 > 0 then 1
                              else 0
                         end
                        )                                               as live_send_anchor_gift_col_27490
                    ,sum(col_36580)                       as live_col_36580
                    ,sum(col_86482)               as live_col_86482
                    ,sum(col_79479)                              as col_67748
                    ,max(
                         case when col_79479 > 0 then 1
                              else 0
                         end
                        )                                               as live_send_prop_col_27490
                    ,sum(col_91251)                              as col_56774
                    ,sum(col_81040)                      as col_44522
                    ,sum(col_2090)                         as col_32609
                    ,max(
                         case when col_2090 > 0 then 1
                              else 0
                         end
                        )                                               as live_fans_club_join_col_27490
                    ,sum(col_85898)                 as col_96496
                    ,sum(col_55035)                        as col_38888
                    ,max(
                         case when col_55035 > 0 then 1
                              else 0
                         end
                        )                                               as live_redcol_52879_send_col_27490
                    ,sum(col_18269)                as col_67209
                    ,sum(col_38311)                                   as col_38311
                    ,max(
                         case when col_38311 > 0 then 1
                              else 0
                         end
                        )                                               as live_col_53168_col_27490
                    ,sum(col_16282)                               as col_16282
                    ,max(
                         case when col_16282 > 0 then 1
                              else 0
                         end
                        )                                               as col_29232_col_27490
                    ,sum(col_81216)                        as col_81216
                    ,max(
                         case when col_81216 > 0 then 1
                              else 0
                         end
                        )                                               as col_29232_anchor_col_27490
                    ,max(col_15865)                  as col_15865
                    ,sum(col_14802)                as col_14802
                    ,sum(col_42811)                 as col_42811
                    ,sum(col_35716)           as col_35716
                    ,sum(col_4030)            as col_4030
                    ,sum(col_92876)                        as col_92876
                    ,case when col_28543 = 1112 then 0
                          else 1
                     end                                                as sub_col_8527

              from   tbl_8675

              where  date = '20200831'
              and    col_8527 = 10

              group  by col_63175, col_13174, col_8527, col_28543
             ) inner_col_43492_log

       group  by col_63175, col_8527, col_28543
      ) col_43492_log
on     room_info_di.col_63175 = col_43492_log.col_63175
and    room_info_di.col_8527 = col_43492_log.col_8527
and    app_mapping.col_28543 = col_43492_log.col_28543

where  case when room_info_di.col_28543 <> app_mapping.col_28543 and col_43492_log.col_63175 is null then 0
            else 1
       end = 1
limit 10000

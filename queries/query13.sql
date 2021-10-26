select 
       device_extend.col_13174                                  as col_13174
      ,app_mapping.col_28543                                     as col_28543
      ,app_device_profile.col_91747                       as col_91747                                         
      ,app_device_profile.col_10089                  as col_10089                             
      ,app_device_profile.col_46360                     as col_6211                                
      ,app_device_profile.col_6547                   as col_52593                         
      ,app_device_profile.col_75303                   as col_56879                         
      ,app_device_profile.col_90277                   as col_49206                         
      ,device_profile.col_83852                   as col_22685                         
      ,device_profile.col_60651                  as col_46947
      ,device_profile.col_99338                      as col_57560
      ,device_profile.col_47458                as col_36917
      ,app_device_profile.col_68488               as col_97671
      ,app_device_profile.col_76060              as col_11080
      ,app_device_profile.col_98967                  as col_68023
      ,app_device_profile.col_72437            as col_11300
      ,app_mapping.col_24229                                   as col_24229

from  (
       select 
              col_13174
             ,col_64609
             ,col_24229
             ,col_8527

       from   tbl_7402

       where  date = '20200831'
       and    col_8527 in (10)
      ) device_extend

join
      (
       select
              col_8527
             ,col_28543
             ,col_42096                                               as col_24229

       from   tbl_8538

       where  col_8527 = 10
      ) app_mapping
on     device_extend.col_24229 = app_mapping.col_24229

left   outer JOIN
      (
       select 
              col_3859
             ,col_24229
             ,col_46360
             ,col_90244
             ,col_6547
             ,col_75303
             ,col_90277
             ,col_91747
             ,col_10089
             ,col_68488
             ,col_76060
             ,col_98967
             ,col_72437

       from   tbl_7679

       where  col_77093 = '2020-08-31'
       and    col_24229 in ('aweme', 'live_stream', 'douyin_lite')
      ) app_device_profile
on     device_extend.col_64609 = app_device_profile.col_3859
and    device_extend.col_24229 = app_device_profile.col_24229

left   outer join 
      (
       select 
              col_3859
             ,col_83852
             ,col_60651
             ,col_99338
             ,col_47458

       from   tbl_9318

       where  col_77093 = '2020-08-31'
      ) device_profile
on     device_extend.col_64609 = device_profile.col_3859
limit 10000

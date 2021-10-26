select
       col_15440_info.col_13174                          as col_13174
      ,col_15440_info.col_28543                           as col_28543
      ,case when FROM_UNIXTIME(first_play_ts, 'yyyyMMdd') = '20200831' then 1
            else 0
       end                                        as col_91314
      ,FROM_UNIXTIME(first_play_ts, 'yyyy-MM-dd') as col_57852
      ,FROM_UNIXTIME(first_play_ts)               as col_2426
      ,FROM_UNIXTIME(last_play_ts, 'yyyy-MM-dd')  as col_54159
      ,FROM_UNIXTIME(last_play_ts)                as col_4851
      ,case when FROM_UNIXTIME(first_consume_ts, 'yyyyMMdd') = '20200831' then 1
            else 0
       end                                           as col_90052
      ,FROM_UNIXTIME(first_consume_ts, 'yyyy-MM-dd') as col_50626
      ,FROM_UNIXTIME(first_consume_ts)               as col_52266
      ,FROM_UNIXTIME(last_consume_ts, 'yyyy-MM-dd')  as col_29030
      ,FROM_UNIXTIME(last_consume_ts)                as col_52662
      ,case when FROM_UNIXTIME(first_recharge_ts, 'yyyyMMdd') = '20200831' then 1
            else 0
       end                                            as col_93619
      ,FROM_UNIXTIME(first_recharge_ts, 'yyyy-MM-dd') as col_15757
      ,FROM_UNIXTIME(first_recharge_ts)               as col_90387
      ,FROM_UNIXTIME(last_recharge_ts, 'yyyy-MM-dd')  as col_9676
      ,FROM_UNIXTIME(last_recharge_ts)                as col_28167
      ,app_info.col_24229                              as col_24229

from  (
       select 
              col_13174
             ,col_8527
             ,col_28543
             ,min(first_play_ts)          as first_play_ts
             ,max(last_play_ts)           as last_play_ts
             ,min(first_consume_ts)       as first_consume_ts
             ,max(last_consume_ts)        as last_consume_ts
             ,min(first_recharge_ts)      as first_recharge_ts
             ,max(last_recharge_ts)       as last_recharge_ts
       
       from  (
              select 
                     col_13174
                    ,col_8527
                    ,col_28543
                    ,col_62365      as first_play_ts
                    ,col_1142       as last_play_ts
                    ,null                 as first_consume_ts
                    ,null                 as last_consume_ts
                    ,null                 as first_recharge_ts
                    ,null                 as last_recharge_ts
       
              from   tbl_231
       
              where  date = '20200831'
              and    col_8527 in (10)
              and    action = 'live_play'
       
              union  all 
       
              select 
                     col_13174
                    ,col_8527
                    ,col_28543
                    ,null                 as first_play_ts
                    ,null                 as last_play_ts
                    ,col_69691       as first_consume_ts
                    ,col_66909        as last_consume_ts
                    ,null                 as first_recharge_ts
                    ,null                 as last_recharge_ts
       
              from   tbl_4635
       
              where  date = '20200831'
              and    col_8527 in (10)
              and    action = 'consume'

              union  all 
       
              select 
                     col_13174
                    ,col_8527
                    ,col_28543
                    ,null                 as first_play_ts
                    ,null                 as last_play_ts
                    ,null                 as first_consume_ts
                    ,null                 as last_consume_ts
                    ,col_69691       as first_recharge_ts
                    ,col_66909        as last_recharge_ts
       
              from   tbl_4635
       
              where  date = '20200831'
              and    col_8527 in (10)
              and    action = 'recharge'
             ) inner_col_15440_info
       
       group  by col_13174, col_8527, col_28543
      ) col_15440_info

join
      (
       select
              col_8527
             ,col_28543
             ,col_42096      as col_24229
     
       from   tbl_8538
     
       where  col_8527 in (10)
      ) app_info
on     col_15440_info.col_8527 = app_info.col_8527
and    col_15440_info.col_28543 = app_info.col_28543
limit 10000

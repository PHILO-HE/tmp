select
      t0.col_39136
      ,t0.col_13174
      ,case when t1.col_39136 is not null then 1 else 0 end as is_col_18027
      ,case when t1.col_39136 is not null and col_5966=1 then 1 else 0 end as col_5966
      ,nvl(col_18027_col_77931,0) as col_18027_col_77931
      ,nvl(col_40447,'') as col_40447
      ,nvl(col_50494,'') as col_50494
      ,col_38626
      ,col_42247
      ,col_13217
      ,col_91913
      ,col_10352
      ,col_18456
      ,col_21757
      ,col_10133
      ,col_10687
from
(
select
      col_39136
      ,col_13174
      ,sum(col_38626) as col_38626
      ,sum(col_42247) as col_42247
      ,sum(col_13217) as col_13217
      ,sum(col_91913) as col_91913
      ,sum(col_10352) as col_10352
      ,sum(col_18456) as col_18456
      ,sum(col_21757) as col_21757
      ,sum(col_10133) as col_10133
      ,sum(col_10687) as col_10687
from
(
select
     col_151 as col_39136
     ,col_13174
     ,sum(case when col_43492='col_53168' then 1 else 0 end) as col_38626
     ,sum(case when col_43492='post_col_31301' then 1 else 0 end) as col_42247
     ,0 as col_13217
     ,0 as col_91913
     ,0 as col_10352
     ,0 as col_18456
     ,0 as col_21757
     ,0 as col_10133
     ,0 as col_10687
from tbl_4258
where date='20200831'
and   col_43492 in ('col_53168','post_col_31301')
group by col_151,col_13174

union all

select
     case    when col_43492 in ('enter_personal_detail','add_col_31301_at','add_video_at','send_message_response') then coalesce(cast(col_19137['col_39136'] as bigint), 0)
             when col_43492 = 'post_reply_col_31301' then coalesce(cast(col_19137['reply_uid'] as bigint), 0)
             when col_43492 = 'col_53168_col_31301' then coalesce(cast(col_19137['col_31301_col_13174'] as bigint), 0)
      end as col_39136
     ,col_13174
     ,0 as col_38626
     ,0 as col_42247
     ,sum(case when col_43492='post_reply_col_31301' then 1 else 0 end) as col_13217
     ,sum(case when col_43492='send_message_response' and col_19137['scol_31848']='success' then 1 else 0 end) as col_91913
     ,sum(case when col_43492='enter_personal_detail' then 1 else 0 end) as col_10352
     ,sum(case when col_43492='add_col_31301_at' then 1 else 0 end) as col_18456
     ,sum(case when col_43492='add_video_at' then 1 else 0 end) as col_21757
     ,sum(case when col_43492='col_53168_col_31301' then 1 else 0 end) as col_10133
     ,0 as col_10687
from tbl_2990
where date = '20200831'
and app = 'aweme'
and col_43492 in ('post_reply_col_31301','add_col_31301_at','add_video_at','send_message_response','enter_personal_detail','col_53168_col_31301')
group by case    when col_43492 in ('enter_personal_detail','add_col_31301_at','add_video_at','send_message_response') then coalesce(cast(col_19137['col_39136'] as bigint), 0)
             when col_43492 = 'post_reply_col_31301' then coalesce(cast(col_19137['reply_uid'] as bigint), 0)
             when col_43492 = 'col_53168_col_31301' then coalesce(cast(col_19137['col_31301_col_13174'] as bigint), 0)
         end
         ,col_13174
having (col_13217+col_91913+col_10352+col_18456+col_21757+col_10133)>0

union all

select
      col_39136
      ,col_13174
      ,0 as col_38626
      ,0 as col_42247
      ,0 as col_13217
      ,0 as col_91913
      ,0 as col_10352
      ,0 as col_18456
      ,0 as col_21757
      ,0 as col_10133
      ,sum(case when col_39136 is not null and col_39136<>0 and col_39136<>nvl(col_151,0) then  col_10687 else 0 end) col_10687
from
(
    select
        col_13174
        ,cast(col_19137['col_78590'] as bigint)  as col_78590
        ,cast(col_19137['reply_uid'] as bigint) as col_39136
        ,sum(1) as col_10687
    from tbl_2990
    where date='20200831'
    and app='aweme'
    and col_43492 in('post_reply_col_31301')
    group by col_13174
             ,cast(col_19137['col_78590'] as bigint)
             ,cast(col_19137['reply_uid'] as bigint)
)x1
left outer join
(
    select
        col_65263
        ,col_13174 as col_151
    from
    tbl_8526
    where date = '20200831'
    and col_80253 = 0
)x2
on x1.col_78590=x2.col_65263
group by col_39136
         ,col_13174
)x3
group by col_39136
         ,col_13174
)t0
left outer join
(
    select
         col_37410
         ,col_39136
         ,col_77931 as col_18027_col_77931
         ,col_40447
         ,col_50494
         ,col_5966
   from tbl_1369
   where date='20200831' and col_50426=1
)t1
on t0.col_13174 = t1.col_37410 and t0.col_39136 = t1.col_39136
limit 10000

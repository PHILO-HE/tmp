select
   bid_overture.col_62986,
   bid_overture.col_30973,
   bid_overture.rit,
   bid_overture.col_47217,
   col_17185,
   'null' as  col_61860,
   'null' as col_55071,
   col_8954,
   col_81773,
   col_19590,
   col_1857,
   col_80675,
   bid_overture.col_65902,
   col_22924,
   col_53946,
   col_57809,
   col_81800,
   col_70221,
   col_18796,
   col_17160
 from
 (
     select
         col_62986,
         col_30973,
         rit,
         col_47217,
         col_17185,
         col_8954,
         col_81773,
         col_19590,
         col_1857,
         col_80675,
         col_18796,
        col_65902
     from tbl_3349
     where col_77093 = '20200831' and col_51363 = 'bid'
    and col_65902 > 0
 )bid_overture
 left join
 (
     select
         col_62986,
         rit,
         col_47217,
        col_17160,
         sum(col_65902) as col_65902,
         sum(col_22924) as col_22924,
         sum(col_53946) as col_53946,
         sum(col_57809) as col_57809,
         sum(col_81800) as col_81800,
         sum(col_70221) as col_70221
     from tbl_8586
     where col_77093 = '20200831' and col_51363 = 'bid'
     group by
         col_62986, rit, col_47217, col_17160
 )bid_billing
 on bid_overture.col_62986 = bid_billing.col_62986 and bid_overture.rit = bid_billing.rit
 and bid_overture.col_47217 = bid_billing.col_47217 and bid_overture.col_65902 > 0
 limit 10000

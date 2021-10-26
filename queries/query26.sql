select
   overture_col_97731.col_62986,
   col_30973,
   overture_col_97731.rit,
   overture_col_97731.col_47217,
   col_17185,
   'null' as  col_61860,
   'null' as col_55071,
   col_8954,
   col_81773,
   col_19590,
   col_1857,
   col_80675,
   overture_col_97731.col_65902,
   if(col_80675 = 9, col_97731_billing_rf.col_22924, col_97731_billing.col_22924) as b1,
    if(col_80675 = 9, col_97731_billing_rf.col_53946, col_97731_billing.col_53946) as b2,
    if(col_80675 = 9, col_97731_billing_rf.col_57809, col_97731_billing.col_57809) as b3,
    if(col_80675 = 9, col_97731_billing_rf.col_81800, col_97731_billing.col_81800) as b4,
    if(col_80675 = 9, col_97731_billing_rf.col_70221, col_97731_billing.col_70221) as b5,
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
     where col_77093 = '20200831' and col_51363 = 'col_97731'
    and col_65902 > 0
 )overture_col_97731
 left outer join
 (
   select
      if(topview_ad_attr.col_55598 is not null,topview_ad_attr.col_55598, billing_stat.col_62986) as col_62986,
      col_17160,
      sum(col_65902) as col_65902,
      sum(col_22924) as col_22924,
      sum(col_53946) as col_53946,
      sum(col_57809) as col_57809,
      sum(col_81800) as col_81800,
      sum(col_70221) as col_70221
   from
   (
      select
         col_62986,
         col_65902,
         col_17160,
         col_22924,
         col_53946,
         col_57809,
         col_81800,
         col_70221
   from tbl_8586
   where col_77093 = '20200831' and col_51363 = 'col_97731'
   )billing_stat
   left outer join
   (
      select col_62986,col_55598
      from tbl_6513
      where col_77093 = '20200831'
   )topview_ad_attr on billing_stat.col_62986 = topview_ad_attr.col_62986
   group by if(topview_ad_attr.col_55598 is not null,topview_ad_attr.col_55598, billing_stat.col_62986),col_17160
)col_97731_billing on overture_col_97731.col_62986 = col_97731_billing.col_62986 and overture_col_97731.col_65902 > 0
left outer join
    (
        select
        if(topview_ad_attr.col_55598 is not null,topview_ad_attr.col_55598, billing_stat.col_62986) as col_62986,
        rit,
        col_47217,
        sum(col_65902) as col_65902,
      sum(col_22924) as col_22924,
      sum(col_53946) as col_53946,
      sum(col_57809) as col_57809,
      sum(col_81800) as col_81800,
      sum(col_70221) as col_70221
        from
            (
                select
                    col_62986,
                    rit,
                    col_47217,
                    col_65902,
                    col_17160,
                    col_22924,
                    col_53946,
                    col_57809,
                    col_81800,
                    col_70221
            from tbl_8586
            where col_77093 = '20200831' and col_51363 = 'col_97731'
            ) billing_stat
            left outer join (
                select col_62986,col_55598
                from tbl_6513
                where col_77093 = '20200831'
            )topview_ad_attr on billing_stat.col_62986 = topview_ad_attr.col_62986
        group by if(topview_ad_attr.col_55598 is not null,topview_ad_attr.col_55598, billing_stat.col_62986), rit, col_47217
    )col_97731_billing_rf
    on overture_col_97731.col_62986 = col_97731_billing_rf.col_62986
    and overture_col_97731.rit = col_97731_billing_rf.rit
    and overture_col_97731.col_47217 = col_97731_billing_rf.col_47217
    and col_80675 = 9
    and overture_col_97731.col_65902 >0
    limit 10000

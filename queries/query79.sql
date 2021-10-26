select
  coalesce(col_43492.col_80511,bill.col_80511) as col_80511,
  col_19267,
  coalesce(col_43492.col_62986,bill.col_62986) as col_62986,
  coalesce(col_43492.col_43924,bill.col_43924) as col_43924,
  coalesce(col_43492.col_30973,bill.col_30973) as col_30973,
  coalesce(col_43492.rit,bill.rit) as rit,
  coalesce(col_43492.col_47217,bill.col_47217) as col_47217,
  col_1857,
  col_18796,
  col_67236,
  col_94642,
  col_87160,
  col_63940,
  col_45123,
  col_46144,
  col_17185,
  col_19590,
  ac,
  age,
  col_22314,
  col_95458,
  col_97573,
  col_8954,
  col_61530,
  col_40278,
  col_5832,
  col_77851,
  col_4361,
  col_31334,
  col_31717,
  col_81463,
  ts,
  col_38174,
  col_41724,
  coalesce(col_43492.col_62384,bill.col_62384) as col_62384,
  col_41124,
  col_82734,
  col_38518,
  col_78619,
  col_53342,
  col_65475,
  col_36910,
  col_33175,
  col_42563,
  col_64024,
  col_47965,
  col_3859,
  col_22913,
  coalesce(col_43492.col_54044,bill.col_54044) as col_54044,
  col_47368,
  col_76348,
  col_88151,
  col_95600,
  col_42642,
  col_66475,
  col_68653,
  col_70892,
  col_98186,
  col_84722,
  col_2824,
  col_65245,
  col_95154,
  col_12652,
  col_74456,
  col_74478,
  col_17160,
  col_87151,
  col_10082,
  col_50135,
  col_30258,
  col_37212, --明细事件上的应扣
  coalesce(col_43492.col_75476,0) as col_75476, -- 拆分单元的事件总应扣
  coalesce(bill.col_80564,0) as col_80564, --拆分单元的实扣总消耗
  coalesce(bill.col_3802,0) as col_3802, --拆分单元的实扣返点消耗
  coalesce(bill.col_90564,0) as  col_90564,  --拆分单元的实扣赠款消耗
  coalesce(bill.col_44470,0) as col_44470, --拆分单元的实扣预付消耗
  coalesce(bill.col_5926,0) as col_5926, --拆分单元的实扣授信消耗
  col_26956,
  col_15873,
  col_12117,
  col_43308,
  col_96742,
  col_12611,
  col_61459,
  uid
from
(
    select
      *,
        sum(col_37212)over(partition by concat(col_80511,'-',col_47217,'-',rit,'-',col_62384,'-',col_54044)) as col_75476,
        ROW_NUMBER() OVER(
            PARTITION BY concat(col_80511,'-',col_47217,'-',rit,'-',col_62384,'-',col_54044)
            ORDER BY
                concat(ts,'-',col_64024) col_48760
        ) AS col_30258
    from
    (
    select
      col_80511,
      col_19267,
      col_62986,
      col_43924,
      col_30973,
      rit,
      col_47217,
      col_1857,
      col_18796,
      col_67236,
      col_94642,
      col_87160,
      col_63940,
      col_45123,
      col_46144,
      col_17185,
      col_19590,
      ac,
      age,
      col_22314,
      col_95458,
      col_97573,
      col_8954,
      col_61530,
      col_40278,
      col_5832,
      col_77851,
      col_4361,
      col_31334,
      col_31717,
      col_81463,
      ts,
      col_38174,
      col_41724,
      col_62384,
      col_41124,
      col_82734,
      col_38518,
      col_78619,
      col_53342,
      col_65475,
      col_36910,
      col_33175,
      col_42563,
      col_64024,
      col_47965,
      col_3859,
      col_22913,
      col_54044,
      col_47368,
      col_76348,
      col_88151,
      col_95600,
      col_42642,
      col_66475,
      col_68653,
      col_70892,
      col_98186,
      col_84722,
      col_2824,
      col_65245,
      col_95154,
      col_12652,
      col_74456,
      col_74478,
      col_17160,
      col_87151,
      col_10082,
      col_50135,
      col_37212,
      col_26956,
      col_15873,
      col_12117,
      col_43308,
      col_96742,
      col_12611,
      col_61459,
      uid
    from  tbl_5131
    where  col_77093 = '20200831'
    )col_43492_detail
)col_43492
full outer join
(
    select
        col_80511,
        col_62986,
        col_43924,
        col_30973,
        rit,
        col_47217,
        col_62384,
        col_54044,
        sum(col_65902) as col_80564,  --总的实扣消耗
        sum(if(col_86073=2, col_65902, 0)) as col_3802, --返点消耗
        sum(if(col_86073=3, col_65902, 0)) as col_90564,  --赠款消耗
        sum(if(col_86073=11, col_65902, 0)) as col_44470,--预付消耗
        sum(if(col_86073=12, col_65902, 0)) as col_5926 --授信消耗
    from
    (
      select
        col_80511,
        rit,
        col_47217,
        col_62986,
        col_43924,
        col_30973,
        col_79149,
        col_62384,
        col_54044,
        sum(col_65902) as col_65902
      from tbl_9873
      where col_77093 = '20200831'
      group by
        col_80511,
        rit,
        col_47217,
        col_62986,
        col_43924,
        col_30973,
        col_79149,
        col_62384,
        col_54044
    )bill_detail
    left join
    ( --获取资金池的类型
      select
        col_79149,
        col_86073
      from tbl_4763
      where col_77093='20200831'
    ) capital_pool
    on bill_detail.col_79149=capital_pool.col_79149
    group by
        col_80511,
        col_62986,
        col_43924,
        col_30973,
        rit,
        col_47217,
        col_62384,
        col_54044
)bill
on col_43492.col_80511 = bill.col_80511
and col_43492.col_47217 = bill.col_47217
and col_43492.rit = bill.rit
and col_43492.col_62384 = bill.col_62384
and col_43492.col_54044 = bill.col_54044
limit 10000

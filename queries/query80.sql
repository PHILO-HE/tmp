with col_30258_detail as (
  select
      detail.col_80511,
      col_19267,
      detail.col_62986,
      col_43924,
      col_30973,
      detail.rit,
      detail.col_47217,
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
      detail.col_62384,
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
      detail.col_54044,
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
      col_26956,
      col_15873,
      col_12117,
      col_43308,
      col_96742,
      col_12611,
      col_61459,
      uid,
      col_30258,
      min_col_30258,
      case
          when detail.col_30258 is null then null --没有计费事件，但是有计费的，col_65902_col_50426置NULL，不参与拆分
          when detail.col_30258 is not null and detail.col_30258 = total.min_col_30258 then 1 --要做减法
          when detail.col_30258 is not null and detail.col_30258 != total.min_col_30258 then 2 --直接按比例计算，向下取整
      end as col_65902_col_50426,
      col_37212, --明细事件的应扣消耗
      col_75476, --拆分单元的明细事件的总应扣消耗
      col_80564, --拆分单元的总实扣消耗
      case
          when detail.col_30258 is null then null --没有计费事件，但是有计费的，col_87132置NULL，不参与拆分
          when detail.col_75476 = 0 then 0 --有计费事件，但是拆分单元事件的总应扣消耗为0，则拆分出来的消耗也是0
          else floor(
              (
                  detail.col_37212/detail.col_75476 * detail.col_80564
              )/1000
          ) * 1000 --按应扣比例拆分实扣消耗，向下取整
      end as col_87132,
      detail.col_3802 as col_3802,
      case
          when detail.col_30258 is null then null
          when detail.col_75476 = 0 then 0
          else floor(
              (
                  detail.col_37212/detail.col_75476 * detail.col_3802
              )/1000
          ) * 1000
      end as split_col_53946,
      detail.col_90564 as col_90564,
      case
          when detail.col_30258 is null then null
          when detail.col_75476 = 0 then 0
          else floor(
              (
                  detail.col_37212/detail.col_75476 * detail.col_90564
              )/1000
          ) * 1000
      end as split_col_57809,
      detail.col_44470 as col_44470,
      case
          when detail.col_30258 is null then null
          when detail.col_75476 = 0 then 0
          else floor(
              (
                  detail.col_37212/detail.col_75476 * detail.col_44470
              )/1000
          ) * 1000
      end as split_col_81800,
      detail.col_5926 as col_5926,
      case
          when detail.col_30258 is null then null
          when detail.col_75476 = 0 then 0
          else floor(
              (
                  detail.col_37212/detail.col_75476 * detail.col_5926
              )/1000
          ) * 1000
      end as split_col_70221
  from
      (
          select
              *
          from
              tbl_3461
          where
              col_77093 = '20200831'
      ) detail
      left join (
          select
              col_80511,
              rit,
              col_47217,
              col_62384,
              col_54044,
              coalesce(
                  min(
                      case
                          when col_37212 <> 0 then col_30258
                          else NULL
                      end
                  ),
                  1
              ) as min_col_30258
          from
              tbl_3461
          where
              col_77093 = '20200831'
              and col_30258 is not null --把没有计费事件的计费明细数据筛掉
          group by
              col_80511,
              rit,
              col_47217,
              col_62384,
              col_54044
      ) total on detail.col_80511 = total.col_80511
      and detail.col_47217 = total.col_47217
      and detail.rit = total.rit
      and detail.col_62384 = total.col_62384
      and detail.col_54044 = total.col_54044
)

select
    col_30258_detail.col_80511,
    col_19267,
    col_62986,
    col_43924,
    col_30973,
    col_30258_detail.rit,
    col_30258_detail.col_47217,
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
    col_30258_detail.col_62384,
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
    col_30258_detail.col_54044,
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
    min_col_30258,
    col_37212,
    col_75476,
    col_80564,
    col_65902_col_50426,
    col_87132,
    col_87072,
    case
        when col_65902_col_50426 = 1 then col_80564 -col_87072 --为保证拆分后的消耗与计费实扣一致，用拆分单元总col_65902 减去 拆分单元按比例计算的col_65902和
        when col_65902_col_50426 = 2 then col_87132 --按比例计算的col_65902
        else col_80564 --没有计费事件，但是有计费的，把计费实扣拼进来
    end as col_65902,
    col_3802,
    split_col_53946,
    acc_split_col_53946,
    case
        when col_65902_col_50426 = 1 then col_3802 -acc_split_col_53946
        when col_65902_col_50426 = 2 then split_col_53946
        else col_3802
    end as col_53946,
    col_90564,
    split_col_57809,
    acc_split_col_57809,
    case
        when col_65902_col_50426 = 1 then col_90564 -acc_split_col_57809
        when col_65902_col_50426 = 2 then split_col_57809
        else col_90564
    end as col_57809,
    col_44470,
    split_col_81800,
    acc_split_col_81800,
    case
        when col_65902_col_50426 = 1 then col_44470 -acc_split_col_81800
        when col_65902_col_50426 = 2 then split_col_81800
        else col_44470
    end as col_81800,
    col_5926,
    split_col_70221,
    acc_split_col_70221,
    case
        when col_65902_col_50426 = 1 then col_5926 -acc_split_col_70221
        when col_65902_col_50426 = 2 then split_col_70221
        else col_5926
    end as col_70221,
    col_26956,
    col_15873,
    col_12117,
    col_43308,
    col_96742,
    col_12611,
    col_61459,
    uid
    from
      col_30258_detail
    left join
    (
      select
        col_80511,
        rit,
        col_47217,
        col_62384,
        col_54044,
        sum(
            if(
                (col_30258 is null)
                or (
                    col_30258 is not null
                    and col_30258 = min_col_30258
                )
                or col_75476 = 0,
                0, --没有计费事件，但是有计费的；col_65902_col_50426=2；有计费事件，但是拆分单元事件的总应扣消耗为0；这三种情况的拆分单元累积消耗为0
                floor(
                    (
                        col_37212/col_75476 * col_80564
                    )/1000
                ) * 1000
            )
        ) as col_87072,
        sum(
            if(
                (col_30258 is null)
                or (
                    col_30258 is not null
                    and col_30258 = min_col_30258
                )
                or col_75476 = 0,
                0,
                floor(
                    (
                        col_37212/col_75476 * col_3802
                    )/1000
                ) * 1000
            )
        ) as acc_split_col_53946,
        sum(
            if(
                (col_30258 is null)
                or (
                    col_30258 is not null
                    and col_30258 = min_col_30258
                )
                or col_75476 = 0,
                0,
                floor(
                    (
                        col_37212/col_75476 * col_90564
                    )/1000
                ) * 1000
            )
        ) as acc_split_col_57809,
        sum(
            if(
                (col_30258 is null)
                or (
                    col_30258 is not null
                    and col_30258 = min_col_30258
                )
                or col_75476 = 0,
                0,
                floor(
                    (
                        col_37212/col_75476 * col_44470
                    )/1000
                ) * 1000
            )
        ) as acc_split_col_81800,
        sum(
            if(
                (col_30258 is null)
                or (
                    col_30258 is not null
                    and col_30258 = min_col_30258
                )
                or col_75476 = 0,
                0,
                floor(
                    (
                        col_37212/col_75476 * col_5926
                    )/1000
                ) * 1000
            )
        ) as acc_split_col_70221
    from col_30258_detail
    group by
    col_80511,
    rit,
    col_47217,
    col_62384,
    col_54044
    ) acc
    on col_30258_detail.col_80511 = acc.col_80511
    and col_30258_detail.col_47217 = acc.col_47217
    and col_30258_detail.rit = acc.rit
    and col_30258_detail.col_62384 = acc.col_62384
    and col_30258_detail.col_54044 = acc.col_54044
    limit 10000

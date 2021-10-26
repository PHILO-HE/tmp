select
    a.conversation_id,
    a.col_38230,
    a.col_74464 as feedback_col_44531,
    a.col_13174 as feedback_col_13174,
    b.col_13174 as customer_col_13174,
    b.sso_col_29499 as col_87151,
    b.col_50426 as col_40120,
    b.col_23006 as customer_col_23006,
    a.col_18732 as conversation_col_64292t_ts,
    FROM_UNIXTIME(a.col_18732, 'yyyy-MM-dd HH:mm:ss') as conversation_col_18732,
    a.col_18642 as conversation_ascol_40725,
    FROM_UNIXTIME(a.col_18642, 'yyyy-MM-dd HH:mm:ss') as conversation_col_18642,
    a.col_76376 as conversation_end_ts,
    FROM_UNIXTIME(a.col_76376, 'yyyy-MM-dd HH:mm:ss') as conversation_col_76376,
    a.col_20075,
    a.col_88995,
    a.col_23006 as conversation_col_23006,
    a.col_50426 as conversation_col_50426,
    a.col_3140 as conversation_col_3140,
    a.satisfaction_col_48685,
    a.dissatisfied_col_51497,
    a.col_74464,
    map(
        'sub_col_8527',
        case
            when a.col_74464 = 9 then '1'
            when a.col_74464 = 4
            and a.col_50426 = 5 then '1'
            when a.col_74464 = 4
            and a.col_50426 = 6 then '0'
            else '-1'
        end
    ) as col_29312,
    a.col_28120,
    a.date1 as date,
    10 as col_8527
from
    (
        select
            base.conversation_id,
            base.col_38230,
            base.col_74464,
            base.col_17160,
            base.col_18732,
            base.col_76376,
            base.col_20075,
            base.col_88995,
            base.col_23006,
            base.col_50426,
            base.col_13174,
            base.col_18642,
            base.col_28120,
            base.col_3140,
            base.satisfaction_col_48685,
            base.dissatisfied_col_51497,
            case
                when col_76376 is null
                or col_8394unixcol_24989(col_76376, 'yyyyMMdd') >= date_format(current_date, 'yyyyMMdd') then '40001231'
                else '20200831'
            end as date1
        from(
                select
                    id as conversation_id,
                    col_38230,
                    col_74464,
                    col_17160,
                    col_18732,
                    if(col_76376 < col_18642, col_18642, col_76376) as col_76376,
                    col_20075,
                    col_88995,
                    col_23006,
                    col_50426,
                    col_13174,
                    if(
                        col_18642 < col_18732,
                        col_18732,
                        col_18642
                    ) as col_18642,
                    col_28120,
                    col_3140,
                    cast(
                        get_json_object(col_28120, '$.satisfaction.satisfactionValue') as bigint
                    ) as satisfaction_col_48685,
                    get_json_object(col_28120, '$.satisfaction.dissatisfiedReason') as dissatisfied_col_51497
                from
                    tbl_6401
                where
                    date = date_format(date_sub(current_date, 1), 'yyyyMMdd')
                    and col_74464 in (9, 4)
                    and case
                        when col_74464 = 9
                        and col_50426 in (1, 2) then 1
                        when col_74464 = 4
                        and col_50426 in(5, 6) then 1
                        else 0
                    end = 1
            ) base
        where
            (
                (
                    (
                        col_76376 is null
                        or col_8394unixcol_24989(col_76376, 'yyyyMMdd') >= date_format(current_date, 'yyyyMMdd')
                    )
                    and date_format(date_sub(current_date, 1), 'yyyyMMdd') = '20200831'
                )
                or col_8394unixcol_24989(col_76376, 'yyyyMMdd') = '20200831'
            )
            and to_date(col_8394unixcol_24989(col_18732)) <= date_sub(current_date, 1)
    ) a
    left join (
        select
            id,
            col_50426,
            col_64997 as sso_col_29499,
            col_13174,
            col_23006,
            col_74464
        from
            tbl_1742
        where
            date = '20200831'
            and col_74464 in (9,4)
    ) b on a.col_17160 = b.id
    and a.col_74464 = b.col_74464
    limit 10000

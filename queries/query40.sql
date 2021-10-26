select
    t1.col_37410 as col_37410,
    t1.col_39136 as col_39136,
    t1.col_37410 as col_78795,
    t1.col_39136 as col_129,
    t1.col_50426 as col_50426,
    0 as col_5966,
    coalesce(col_40447, '') as col_40447,
    coalesce(col_77931, 0) as col_77931,
    coalesce(col_19178, '') as col_19178,
    coalesce(col_40552, '') as col_40552,
    case
        when col_40552 = '20200831' then 1
        else 0
    end as col_9728,
    coalesce(col_86387, 0) as col_86387,
    coalesce(col_56494, '') as col_56494,
    coalesce(col_21610, '') as col_21610,
    case
        when col_21610 = '20200831' then 1
        else 0
    end as col_454,
    coalesce(col_50494, '') as col_50494
from
    (
        select
            col_37410,
            col_39136,
            col_50426,
            cast(col_77931 as bigint) as col_77931,
            col_8394unixcol_24989(cast(col_77931 as bigint), 'yyyyMMdd HH:mm:ss') as col_19178,
            col_8394unixcol_24989(cast(col_77931 as bigint), 'yyyyMMdd') as col_40552,
            cast(col_86387 as bigint) as col_86387,
            col_8394unixcol_24989(cast(col_86387 as bigint), 'yyyyMMdd HH:mm:ss') as col_56494,
            col_8394unixcol_24989(cast(col_86387 as bigint), 'yyyyMMdd') as col_21610,
            get_json_object(col_28120, '$.col_40447') as col_40447,
            get_json_object(col_28120, '$.col_50494')   as col_50494
        from
            tbl_2635
        where
            date = '20200831'
            and col_50426 = 1
    ) t1
    left outer join (
        select
            col_37410,
            col_39136,
            col_50426
        from
            tbl_2635
        where
            date = '20200831'
            and col_50426 = 1
        group by
            col_37410,
            col_39136,
            col_50426
    ) t2 on t1.col_37410 = t2.col_39136
    and t1.col_39136 = t2.col_37410
    and t1.col_50426 = t2.col_50426
where
    t2.col_37410 is null
union all
select
    t3.col_37410 as col_37410,
    t3.col_39136 as col_39136,
    case
        when t3.col_37410 <= t3.col_39136 then t3.col_37410
        else t3.col_39136
    end as col_78795,
    case
        when t3.col_37410 <= t3.col_39136 then t3.col_39136
        else t3.col_37410
    end as col_129,
    col_50426,
    1 as mutual,
    coalesce(col_40447, '') as col_40447,
    coalesce(col_77931, 0) as col_77931,
    coalesce(col_19178, '') as col_19178,
    coalesce(col_40552, '') as col_40552,
    case
        when col_40552 = '20200831' then 1
        else 0
    end as col_9728,
    coalesce(col_86387, 0) as col_86387,
    coalesce(col_56494, '') as col_56494,
    coalesce(col_21610, '') as col_21610,
    case
        when col_21610 = '20200831' then 1
        else 0
    end as col_454,
    coalesce(col_50494, '') as col_50494
from
    (
        select
            col_37410,
            col_39136,
            col_50426,
            cast(col_77931 as bigint) as col_77931,
            col_8394unixcol_24989(cast(col_77931 as bigint), 'yyyyMMdd HH:mm:ss') as col_19178,
            col_8394unixcol_24989(cast(col_77931 as bigint), 'yyyyMMdd') as col_40552,
            get_json_object(col_28120, '$.col_40447') as col_40447,
            cast(col_86387 as bigint) as col_86387,
            col_8394unixcol_24989(cast(col_86387 as bigint), 'yyyyMMdd HH:mm:ss') as col_56494,
            col_8394unixcol_24989(cast(col_86387 as bigint), 'yyyyMMdd') as col_21610,
            get_json_object(col_28120, '$.col_50494') as col_50494
        from
            tbl_2635
        where
            date = '20200831'
            and col_50426 = 1
    ) t3
    join (
        select
            col_37410,
            col_39136
        from
            tbl_2635
        where
            date = '20200831'
            and col_50426 = 1
        group by
            col_37410,
            col_39136
    ) t4 on t3.col_37410 = t4.col_39136
    and t3.col_39136 = t4.col_37410
limit 10000

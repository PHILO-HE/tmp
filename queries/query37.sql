select  active_info.col_5419,
        active_info.col_40278,
        active_info.col_64569,
        active_info.col_44432,
        active_info.col_27568,
        active_info.col_7752,
        active_info.rit,
        active_info.col_60857,
        active_info.col_47965,
        active_info.col_80511,
        active_info.vid,
        active_info.col_30973,
        active_info.col_62986,
        active_info.col_62496,
        active_info.col_67965,
        active_info.col_43684,
        active_info.col_58354,
        active_info.col_63464,
        str_to_map (
            concat_ws (
                ',',
                collect_set(
                    concat_ws (
                        ':',
                        coalesce(col_65902_info.col_65902_date, active_info.col_44432),
                        cast(coalesce(col_65902_info.col_65902, 0) as string)
                    )
                )
            )
        ) as col_12206,
        col_65902_info.col_64569 as col_39594,
        active_info.col_19562,
        active_info.col_55004,
        active_info.col_8954,
        active_info.col_63940,
        active_info.col_73538,
        active_info.col_5384,
        active_info.col_47564,
        active_info.col_43924,
        active_info.col_47217,
        active_info.col_23104,
        active_info.col_68746,
        str_to_map (
            concat_ws (
                ',',
                collect_set(
                    concat_ws (
                        ':',
                        coalesce(col_65902_info.col_65902_date, active_info.col_44432),
                        cast(coalesce(col_65902_info.col_71053, 0) as string)
                    )
                )
            )
        ) as col_9481
from    (
            select  col_5419,
                    col_40278,
                    col_64569,
                    col_44432,
                    col_27568,
                    col_7752,
                    rit,
                    col_60857,
                    col_47965,
                    col_80511,
                    vid,
                    col_30973,
                    col_62986,
                    col_62496,
                    col_67965,
                    col_43684,
                    col_58354,
                    col_63464,
                    col_19562,
                    col_55004,
                    col_8954,
                    col_63940,
                    col_73538,
                    col_5384,
                    col_47564,
                    col_43924,
                    col_47217,
                    col_23104,
                    col_68746,
                    col_64569 as join_col_30452
            from    tbl_8260
            where   col_77093 = '20200831'
            and     col_44432 >= '${DATE-59}'
            and     col_44432 <= '2020-08-31'
        ) active_info
left outer join
        (
            select  col_5419,
                    col_40278,
                    col_64569,
                    col_65902,
                    col_71053,
                    FROM_UNIXTIME(UNIX_TIMESTAMP(col_77093, 'yyyyMMdd'), 'yyyy-MM-dd') as col_65902_date,
                    col_64569 as join_col_39594
            from    tbl_1247
            where   col_77093 >= '${date-59}'
            and     col_77093 <= '20200831'
        ) col_65902_info
on      col_65902_info.col_5419 = active_info.col_5419
and     col_65902_info.col_40278 = active_info.col_40278
and     col_65902_info.join_col_39594 = active_info.join_col_30452
group by
        active_info.col_5419,
        active_info.col_40278,
        active_info.col_64569,
        active_info.col_44432,
        active_info.col_27568,
        active_info.col_7752,
        active_info.rit,
        active_info.col_60857,
        active_info.col_47965,
        active_info.col_80511,
        active_info.vid,
        active_info.col_30973,
        active_info.col_62986,
        active_info.col_62496,
        active_info.col_67965,
        active_info.col_43684,
        active_info.col_58354,
        active_info.col_63464,
        col_65902_info.col_64569,
        active_info.col_19562,
        active_info.col_55004,
        active_info.col_8954,
        active_info.col_63940,
        active_info.col_73538,
        active_info.col_5384,
        active_info.col_47564,
        active_info.col_43924,
        active_info.col_47217,
        active_info.col_23104,
        active_info.col_68746
limit 10000

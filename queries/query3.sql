select col_5419,col_40278,col_64569,col_44432,
    col_27568,col_7752,rit,col_60857,col_47965,col_80511,
    vid,col_30973,col_62986,col_62496,col_67965,
    col_43684,col_58354,col_63464,
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
    col_68746
from
(
    select col_5419,col_40278,col_64569,col_27568,
    col_7752,rit,col_60857,col_47965,col_80511,
    vid,col_30973,col_62986,col_62496,col_67965,
    col_43684,col_58354,col_63464,col_44432,
    col_19562,col_55004,
    col_8954,
    col_63940,
    col_73538,
    col_5384,
    col_47564,
    col_43924,
    col_47217,
    col_23104,
    col_68746,
    row_number() over(partition by col_5419,col_40278,col_64569 order by col_44432) as col_30258
    from
    (
        select col_5419,col_40278,col_64569,col_27568,
        col_7752,rit,col_60857,col_47965,col_80511,
        vid,col_30973,col_62986,col_62496,col_67965,
        col_43684,col_58354,col_63464,
        '2020-08-31' as col_44432,
        col_19562,col_55004,
        col_8954,
        col_63940,
        col_73538,
        col_5384,
        col_47564,
        col_43924,
        col_47217,
        col_23104,
        col_68746
        from tbl_7331
        where col_77093 = '20200831'

        union all

        select col_5419,col_40278,col_64569,col_27568,
        col_7752,rit,col_60857,col_47965,col_80511,
        vid,col_30973,col_62986,col_62496,col_67965,
        col_43684,col_58354,col_63464,col_44432,
        col_19562,col_55004,
        col_8954,
        col_63940,
        col_73538,
        col_5384,
        col_47564,
        col_43924,
        col_47217,
        col_23104,
        col_68746
        from tbl_8260
        where col_77093 = '${date-1}'
    )dwi_current
)dwi_all
where col_30258 =1
limit 10000

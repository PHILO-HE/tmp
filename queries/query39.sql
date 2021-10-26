select
    overture.col_62986,
    overture.col_30973,
    overture.rit,
    overture.col_47217,
    tbl_4121.col_17185,
    'null' as col_61860,
    'null' as col_55071,
    tbl_4121.col_8954,
    tbl_4121.col_81773,
    tbl_5371.col_19590,
    tbl_4989_rit.col_1857,
    case
        when tbl_4121.col_42642 in (1,5,6) then 1
        when tbl_4121.col_42642 = 15 then 2
        when tbl_4121.col_42642 = 17 then 3
        when tbl_4989_col_7182.col_78788 = 'sousuoguanggao' then 8
        when overture.col_47217 >= 800000000 and overture.col_47217 <= 1000000000 then  5
        when tbl_4121.col_42642 = 22 then 6
        when tbl_5371.col_40017 = 1 then 9
        else 99
    end as col_80675,
    sum(col_71053) as col_71053,
    sum(col_26342) as col_26342,
    sum(col_24913) as col_24913,
    sum(col_65902) as col_65902,
    sum(col_22924) as col_22924,
    sum(col_53946) as col_53946,
    sum(col_57809) as col_57809,
    0 as col_71220,
    sum(col_81800) as col_81800,
    sum(col_70221) as col_70221,
    sum(col_11540) as col_11540,
    tbl_4989_col_7182.col_1857 as col_18796
from
    (
        select
            col_55598 as col_62986,
            col_30973,
            rit,
            col_70954 as col_43924,
            col_79434 as col_47217,
            case
                when rit >= 800000000 and rit < 900000000 then 800000000
                when rit >= 900000000 and rit < 1000000000 then 900000000
                else rit
            end col_10082,
            case
                when col_79434 >= 800000000 and col_79434 < 900000000 then 800000000
                when col_79434 >= 900000000 and col_79434 < 1000000000 then 900000000
                else col_79434
            end bi_col_7182,
            sum(col_71053) as col_71053,
            sum(col_26342) as col_26342,
            sum(col_24913) as col_24913,
            sum(col_65902) as col_65902,
            sum(col_22924) as col_22924,
            sum(col_53946) as col_53946,
            sum(col_57809) as col_57809,
            sum(col_81800) as col_81800,
            sum(col_70221) as col_70221,
            sum(col_11540) as col_11540
        from tbl_2521
        where col_77093 = '20200831'
        group by col_55598,col_30973,rit,col_70954,col_79434,
        case
            when rit >= 800000000 and rit < 900000000 then 800000000
            when rit >= 900000000 and rit < 1000000000 then 900000000
            else rit
        end,
        case
                when col_79434 >= 800000000 and col_79434 < 900000000 then 800000000
                when col_79434 >= 900000000 and col_79434 < 1000000000 then 900000000
                else col_79434
        end
    )overture
    join
    (
        select
            col_62986,
            col_17185,
            col_8954,
            col_81773,
            col_67236,
            col_42642
        from tbl_4121
        where col_77093 = '20200831'
        and coalesce(col_75216, 0) not in (2, 3,4)
    )tbl_4121
    on overture.col_62986 = tbl_4121.col_62986
    join (
        select col_43924,col_19590,col_40017
        from  tbl_5371
        where col_77093 = '20200831'
        and col_19590 !=1
    )tbl_5371
    on overture.col_43924 = tbl_5371.col_43924
    left outer join
    (
        select col_10082,col_1857
        from tbl_4989
        where col_77093 = '20200831'
    )tbl_4989_rit
    on overture.col_10082 = tbl_4989_rit.col_10082
    left outer join
    (
        select col_10082,col_1857,col_78788
        from tbl_4989
        where col_77093 = '20200831'
    )tbl_4989_col_7182
    on overture.bi_col_7182 = tbl_4989_col_7182.col_10082
group by
    overture.col_62986,
    overture.col_30973,
    overture.rit ,
    overture.col_47217,
    tbl_4121.col_17185,
    tbl_4121.col_8954,
    tbl_4121.col_81773,
    tbl_5371.col_19590,
    tbl_4989_rit.col_1857,
    tbl_4989_col_7182.col_1857,
    case
        when tbl_4121.col_42642 in (1,5,6) then 1
        when tbl_4121.col_42642 = 15 then 2
        when tbl_4121.col_42642 = 17 then 3
        when tbl_4989_col_7182.col_78788 = 'sousuoguanggao' then 8
        when overture.col_47217 >= 800000000 and overture.col_47217 <= 1000000000 then  5
        when tbl_4121.col_42642 = 22 then 6
        when tbl_5371.col_40017 = 1 then 9
        else 99
    end
limit 10000

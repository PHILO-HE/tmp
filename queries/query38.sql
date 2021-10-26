select
    case
        when col_29181 = 1 then 1
        else 0
    end as col_44531,
    case
        when col_80658 = 1 then 1
        else 0
    end as col_80658,
    sum(nospam_col_38169) as nospam_col_38169,
    col_35211(
        case
            when nospam_col_38169 > 0 then 1
        end
    ) as nospam_col_27534,
    sum(nospam_col_82297) as nospam_col_82297,
    col_35211(
        case
            when nospam_col_82297 > 0 then 1
        end
    ) as nospam_col_11291,
    sum(col_38169) as col_38169,
    col_35211(
        case
            when col_38169 > 0 then 1
        end
    ) as col_27534,
    sum(col_82297) as col_82297,
    col_35211(
        case
            when col_82297 > 0 then 1
        end
    ) as col_11291,
    col_35211(
        case
            when nospam_fans_cnt > 0 then 1
        end
    ) as nospam_col_41828,
    col_35211(
        case
            when nospam_fans_cnt_all > 0 then 1
        end
    ) as nospam_col_3962,
    col_35211(
        case
            when fans_cnt > 0 then 1
        end
    ) as col_41828,
    col_35211(
        case
            when fans_cnt_all > 0 then 1
        end
    ) as col_3962,
    col_35211(
        case
            when pair_cnt > 0
            and is_spam = 0 then 1
        end
    ) as nospam_pair_num,
    col_35211(
        case
            when pair_cnt_all > 0
            and is_spam_all = 0 then 1
        end
    ) as nospam_pair_num_all,
    sum(pair_cnt) as pair_cnt,
    col_35211(
        case
            when pair_cnt > 0 then 1
        end
    ) as pair_num,
    sum(pair_cnt_all) as pair_cnt_all,
    col_35211(
        case
            when pair_cnt_all > 0 then 1
        end
    ) as pair_num_all,
    sum(
        case
            when is_spam = 0 then pair_cnt
        end
    ) as nospam_pair_cnt,
    sum(
        case
            when is_spam_all = 0 then pair_cnt_all
        end
    ) as nospam_pair_cnt_all
from
    (
        select
            col_13174,
            sum(nospam_col_38169) as nospam_col_38169,
            sum(nospam_col_82297) as nospam_col_82297,
            sum(nospam_fans_cnt) as nospam_fans_cnt,
            sum(nospam_fans_cnt_all) as nospam_fans_cnt_all,
            sum(col_38169) as col_38169,
            sum(col_82297) as col_82297,
            sum(fans_cnt) as fans_cnt,
            sum(fans_cnt_all) as fans_cnt_all,
            sum(pair_cnt) as pair_cnt,
            sum(pair_cnt_all) as pair_cnt_all,
            max(is_spam) as is_spam,
            max(is_spam_all) as is_spam_all
        from
            (
                select
                    t1.col_37410 as col_13174,
                    case
                        when t2.col_13174 is not null and col_54537='20200831' then 0
                        else col_38169
                    end as nospam_col_38169,
                    case
                        when t2.col_13174 is not null and col_5191>5 then 0
                        else col_82297
                    end as nospam_col_82297,
                    0 as nospam_fans_cnt,
                    0 as nospam_fans_cnt_all,
                    col_38169,
                    col_82297,
                    0 as fans_cnt,
                    0 as fans_cnt_all,
                    0 as pair_cnt,
                    0 as pair_cnt_all,
                    0 as is_spam,
                    0 as is_spam_all
                from
                    (
                        select
                            col_37410,
                            col_35211(1) as col_82297,
                            col_35211(
                                case
                                    when col_8394unixcol_24989(cast(col_77931 as bigint), 'yyyyMMdd') = '20200831' then 1
                                end
                            ) as col_38169
                        from
                            tbl_2635
                        where
                            date = '20200831'
                            and col_50426 = 1
                        group by
                            col_37410
                    ) t1
                    left outer join (
                        select
                            col_13174
                            ,sum(col_5191) as col_5191
                            ,max(col_54537) as col_54537
                        from
                            tbl_6006
                        where
                            date = '20200831'
                            and col_28543 = 1128
                            and col_43492 = 'douyin_col_18027'
                        group by
                            col_13174
                    ) t2 on t1.col_37410 = t2.col_13174
                union all
                select
                    col_39136 as col_13174,
                    0 as nospam_col_38169,
                    0 as nospam_col_82297,
                    col_35211(
                            case
                            when ((tt2.col_13174 is not null and col_54537<>'20200831')
                                  or tt2.col_13174 is null)
                            and col_19617_today = 1 then col_37410
                        end
                    ) as nosapm_fans_cnt,
                    col_35211(
                           case
                            when (tt2.col_13174 is null or (tt2.col_13174 is not null and col_5191<=5)) then col_37410
                        end
                    ) as nospam_fans_cnt_all,
                    0 as col_38169,
                    0 as col_82297,
                    col_35211(
                            case
                            when col_19617_today = 1 then col_37410
                            end
                    ) as fans_cnt,
                    col_35211( col_37410) as fans_cnt_all,
                    0 as pair_cnt,
                    0 as pair_cnt_all,
                    0 as is_spam,
                    0 as is_spam_all
                from
                    (
                        select
                            col_39136,
                            col_37410,
                            case
                                when col_8394unixcol_24989(cast(col_77931 as bigint), 'yyyyMMdd') = '20200831' then 1
                                else 0
                            end as col_19617_today
                        from
                            tbl_2635
                        where
                            date = '20200831'
                            and col_50426 = 1
                    ) tt1
                    left outer join (
                        select
                            col_13174
                            ,sum(col_5191) as col_5191
                            ,max(col_54537) as col_54537
                        from
                            tbl_6006
                        where
                            date = '20200831'
                            and col_28543 = 1128
                            and col_43492 = 'douyin_col_18027'
                        group by
                            col_13174
                    ) tt2 on tt1.col_39136 = tt2.col_13174
                group by
                    col_39136
                union all
                select
                    ttt1.col_13174 as col_13174,
                    0 as nospam_col_38169,
                    0 as nospam_col_82297,
                    0 as nospam_fans_cnt,
                    0 as nospam_fans_cnt_all,
                    0 as col_38169,
                    0 as col_82297,
                    0 as fans_cnt,
                    0 as fans_cnt_all,
                    sum(pair_cnt) as pair_cnt,
                    sum(pair_cnt_all) as pair_cnt_all,
                    max(
                        case
                            when ttt2.col_13174 is not null and col_54537='20200831' then 1
                            else 0
                        end
                    ) as is_spam,
                    max(
                        case
                            when ttt2.col_13174 is not null and col_5191>5  then 1
                            else 0
                        end
                    ) as is_spam_all
                from
                    (
                        select
                            tx1.col_37410 as col_13174,
                            col_35211(tx1.col_39136) as pair_cnt_all,
                            col_35211(
                                   case
                                    when is_col_8394today = 1
                                    or is_to_today = 1 then tx1.col_39136
                                end
                            ) as pair_cnt
                        from
                            (
                                select
                                    col_37410,
                                    col_39136,
                                    case
                                        when col_8394unixcol_24989(cast(col_77931 as bigint), 'yyyyMMdd') = '20200831' then 1
                                        else 0
                                    end as is_col_8394today
                                from
                                    tbl_2635
                                where
                                    date = '20200831'
                                    and col_50426 = 1
                            ) tx1
                            join (
                                select
                                    col_39136,
                                    col_37410,
                                    case
                                        when col_8394unixcol_24989(cast(col_77931 as bigint), 'yyyyMMdd') = '20200831' then 1
                                        else 0
                                    end as is_to_today
                                from
                                    tbl_2635
                                where
                                    date = '20200831'
                                    and col_50426 = 1
                            ) tx2 on tx1.col_37410 = tx2.col_39136
                            and tx1.col_39136 = tx2.col_37410
                        group by
                            tx1.col_37410
                    ) ttt1
                    left outer join (
                        select
                            col_13174
                            ,sum(col_5191) as col_5191
                            ,max(col_54537) as col_54537
                        from
                            tbl_6006
                        where
                            date = '20200831'
                            and col_28543 = 1128
                            and col_43492 = 'douyin_col_18027'
                        group by
                            col_13174
                    ) ttt2 on ttt1.col_13174 = ttt2.col_13174
                group by
                    ttt1.col_13174
            ) t
        group by
            col_13174
    ) x
    left outer join (
        select
            uid,
            max(
                case
                    when tb.col_3859 is not null then 1
                    else 0
                end
            ) as col_80658,
            max(
                case
                    when tc.col_3859 is not null then 1
                    else 0
                end
            ) as col_29181
        from
            (
                select
                    uid,
                    col_3859
                from
                    tbl_5999
                where
                    date = '20200831'
                group by
                    uid,
                    col_3859
            ) ta
            left outer join (
                select
                    col_3859
                from
                    tbl_3131
                where
                    date = '20200831'
                    and col_33882 = 0
                group by
                    col_3859
            ) tb on ta.col_3859 = tb.col_3859
            left outer join (
                select
                    col_3859
                from
                    tbl_3996
                where
                    date >= '${date-6}'
                    and date <= '20200831'
                    and col_73183 = 0
                group by
                    col_3859
            ) tc on ta.col_3859 = tc.col_3859
        group by
            uid
    ) y on x.col_13174 = y.uid
group by
    case
        when col_29181 = 1 then 1
        else 0
    end,
    case
        when col_80658 = 1 then 1
        else 0
    end
limit 10000

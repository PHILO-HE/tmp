SELECT
    col_43492,
    col_3859,
    log.col_13174,
    col_78590,
    col_5963,
    col_99249,
    col_77931,
    col_32912,
    item.col_87630 as col_99537,
    col_94815,
    col_77546,
    item.col_13174 as col_151,
    col_40278,
    col_73453
from
   (select
                    col_43492,
                    col_13174,
                    col_3859,
                    col_78590,
                    col_94815,
                    col_32912,
                    col_77546,
                    col_40278
                from
                    tbl_89
                where
                    `date` = '20200831'
                    and col_43492 in (
                        'col_6863_video',
                        'video_play',
                        'video_play_finish',
                        'col_69856',
                        'col_53168',
                        'col_18027',
                        'post_col_31301'
                      )
   )log LEFT JOIN(
       select
            col_65263,
            col_87630,
            col_5963,
            case
                when col_99249 is not null then 1
                else 0
            end as col_99249,
            col_77931,
            col_13174,
            col_73453
        from
            tbl_8526
        where
            date = '20200831'
            and col_80253 = 0
   )item on log.col_78590 = item.col_65263
limit 10000

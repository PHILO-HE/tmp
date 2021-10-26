SELECT
index.col_78590,
col_75157,
col_65263,
col_53665,col_24229,
CASE
        WHEN col_68653 in ('tuwen','xigua_video','short_video') and substr(col_169,1,13) >= '2020-03-24 12' then col_70938
        WHEN col_68653 in ('weitoutiao') and substr(col_169,1,13) >= '2020-03-25 00' then col_70938
        WHEN col_68653 in ('wenda_question','wenda_answer') and substr(col_169,1,13) >= '2020-03-31 00' then col_70938
        ELSE col_53258
    END as col_53258,
    CASE
        WHEN col_68653 in ('tuwen','xigua_video','short_video') and substr(col_169,1,13) >= '2020-03-24 12' then col_64995
        WHEN col_68653 in ('weitoutiao') and substr(col_169,1,13) >= '2020-03-25 00' then col_64995
        WHEN col_68653 in ('wenda_question','wenda_answer') and substr(col_169,1,13) >= '2020-03-31 00' then col_64995
        ELSE col_94074
    END as col_94074,
    CASE
        WHEN col_68653 in ('tuwen','xigua_video','short_video') and substr(col_169,1,13) >= '2020-03-24 12' then col_40444
        WHEN col_68653 in ('weitoutiao') and substr(col_169,1,13) >= '2020-03-25 00' then col_40444
        WHEN col_68653 in ('wenda_question','wenda_answer') and substr(col_169,1,13) >= '2020-03-31 00' then col_40444
        ELSE col_18465
    END as col_18465,
    col_86860,
    col_95987,
    col_5302,
    col_42247,
    CASE
        WHEN col_68653 in ('tuwen','xigua_video','short_video') and substr(col_169,1,13) >= '2020-03-24 12' then fans_col_70938
        WHEN col_68653 in ('weitoutiao') and substr(col_169,1,13) >= '2020-03-25 00' then fans_col_70938
        WHEN col_68653 in ('wenda_question','wenda_answer') and substr(col_169,1,13) >= '2020-03-31 00' then fans_col_70938
        ELSE col_34039
    END as col_34039,
    CASE
        WHEN col_68653 in ('tuwen','xigua_video','short_video') and substr(col_169,1,13) >= '2020-03-24 12' then fans_col_64995
        WHEN col_68653 in ('weitoutiao') and substr(col_169,1,13) >= '2020-03-25 00' then fans_col_64995
        WHEN col_68653 in ('wenda_question','wenda_answer') and substr(col_169,1,13) >= '2020-03-31 00' then fans_col_64995
        ELSE col_37680
    END as col_37680,
    CASE
        WHEN col_68653 in ('tuwen','xigua_video','short_video') and substr(col_169,1,13) >= '2020-03-24 12' then fans_col_40444
        WHEN col_68653 in ('weitoutiao') and substr(col_169,1,13) >= '2020-03-25 00' then fans_col_40444
        WHEN col_68653 in ('wenda_question','wenda_answer') and substr(col_169,1,13) >= '2020-03-31 00' then fans_col_40444
        ELSE col_64887
    END as col_64887,
    col_99238,
    col_39347,
    col_68653,
    col_72659,
    col_23844,
    col_21448,
    col_72948
FROM
(
    SELECT
    col_78590,col_53665,col_24229,
    sum(col_70938) as col_70938,
    sum(col_64995) as col_64995,
    sum(col_40444) as col_40444,
    sum(col_53258) as col_53258,
    sum(col_94074) as col_94074,
    sum(col_18465) as col_18465,
    sum(col_86860) as col_86860,
    sum(col_95987) as col_95987,
    sum(col_5302) as col_5302,
    sum(col_42247) as col_42247,
    sum(if(col_19617 = 1,col_70938,0)) as fans_col_70938,
    sum(if(col_19617 = 1,col_64995,0)) as fans_col_64995,
    sum(if(col_19617 = 1,col_40444,0)) as fans_col_40444,
    sum(if(col_19617 = 1,col_53258,0)) as col_34039,
    sum(if(col_19617 = 1,col_94074,0)) as col_37680,
    sum(if(col_19617 = 1,col_18465,0)) as col_64887,
    sum(if(col_19617 = 1,col_86860,0)) as col_99238,
    sum(if(col_19617 = 1,col_95987,0)) as col_39347,
    sum(col_72659) as col_72659,
    sum(col_23844) as col_23844,
    sum(col_21448) as col_21448
    FROM
    tbl_4171
    where date ='20200831'
    group by col_78590,col_53665,col_24229
)index
JOIN
(
    SELECT
    col_78590,
    col_75157,
    col_65263,
    col_68653,
    col_169,
    col_72948
    FROM
    tbl_4231
    where date ='20200831'
    and col_68653 in ('tuwen','xigua_video','short_video','wenda_answer','weitoutiao')
)group_info on index.col_78590=group_info.col_78590
limit 10000

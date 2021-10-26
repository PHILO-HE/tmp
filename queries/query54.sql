select
    col_13174,
    col_44531,
    col_46453,
    col_60150,
    col_3859,
    col_74094,
    col_30617,
    col_12611,
    app as col_24229,
    col_19137 ['col_38518'] as col_38518,
    col_19137 ['col_77851'] as col_65378,
    col_19137 ['col_30258'] as col_30258,
    row_number() OVER (
        partition BY col_19137 ['col_38518'],
        col_46453
        ORDER BY
            cast(col_19137 ['col_30258'] as int)
    ) -1 as noala_col_30258,
    col_19137 ['col_77851_col_50426'] as col_77851_col_50426,
    col_19137 ['cell_col_50426'] as cell_col_50426,
    col_19137 ['col_95097'] as col_95097,
    col_19137 ['result_col_50426'] as result_col_50426,
    col_19137 ['host'] as host,
    col_19137 ['search_subcol_78413'] as search_subcol_78413,
    col_35211(col_19137 ['col_38518']) as search_client_show,
    col_35211(
        if(
            col_43492 = 'search_result_click',
            col_19137 ['col_38518'],
            null
        )
    ) as search_client_click
from
    tbl_552
where
    date = '20200831'
    and col_43492 in ('search_result_show', 'search_result_click')
    and col_3859 is not null
    and col_13174 is not null
    and col_13174 != 0
    and (
        col_19137 ['cell_col_50426'] != '26'
        or col_19137 ['cell_col_50426'] is null
    )
group by
    col_13174,
    col_44531,
    col_46453,
    col_60150,
    col_3859,
    col_74094,
    col_30617,
    col_12611,
    app,
    col_19137 ['col_38518'],
    col_19137 ['col_77851'],
    col_19137 ['col_30258'],
    col_19137 ['col_77851_col_50426'],
    col_19137 ['cell_col_50426'],
    col_19137 ['col_95097'],
    col_19137 ['result_col_50426'],
    col_19137 ['host'],
    col_19137 ['search_subcol_78413']
union all
select
    col_13174,
    col_44531,
    col_46453,
    col_60150,
    col_3859,
    col_74094,
    col_30617,
    col_12611,
    app as col_24229,
    col_19137 ['col_38518'] as col_38518,
    col_19137 ['col_77851'] as col_65378,
    col_19137 ['col_30258'] as col_30258,
    99999 as noala_col_30258,
    col_19137 ['col_77851_col_50426'] as col_77851_col_50426,
    col_19137 ['cell_col_50426'] as cell_col_50426,
    col_19137 ['col_95097'] as col_95097,
    col_19137 ['result_col_50426'] as result_col_50426,
    col_19137 ['host'] as host,
    col_19137 ['search_subcol_78413'] as search_subcol_78413,
    col_35211(
        col_19137 ['col_38518']
    ) as search_client_show,
    col_35211(
        if(
            col_43492 = 'search_result_click',
            col_19137 ['col_38518'],
            null
        )
    ) as search_client_click
from
    tbl_552
where
    date = '20200831'
    and col_43492 in ('search_result_show', 'search_result_click')
    and col_3859 is not null
    and col_13174 is not null
    and col_13174 != 0
    and col_19137 ['cell_col_50426'] = '26'
group by
    col_13174,
    col_44531,
    col_46453,
    col_60150,
    col_3859,
    col_74094,
    col_30617,
    col_12611,
    app,
    col_19137 ['col_38518'],
    col_19137 ['col_77851'],
    col_19137 ['col_30258'],
    col_19137 ['col_77851_col_50426'],
    col_19137 ['cell_col_50426'],
    col_19137 ['col_95097'],
    col_19137 ['result_col_50426'],
    col_19137 ['host'],
    col_19137 ['search_subcol_78413']
limit 10000

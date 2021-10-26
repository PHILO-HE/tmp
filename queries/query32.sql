select
  id,
  col_62986,
  col_43924,
  col_55183 as col_30973,
  rit,
  col_7182 as col_47217,
  col_79149,
  col_22924 as col_65902,
  col_8394unixcol_24989(col_77931) as col_77931,
  col_8394unixcol_24989(col_86387) as col_86387,
  col_8394unixcol_24989(col_69194) as col_62384
from tbl_5396
where col_77093='20200831'
union all
select
  null as id,
  col_62986,
  billing.col_43924,
  col_30973,
  rit,
  col_47217,
  col_79149,
  sum(col_65902) as col_65902,
  null as col_77931,
  null as col_86387,
  col_62384
from
(
  select
    *
  from tbl_9873
  where col_77093 = '20200831'
) billing
join
(
  select
    col_43924
  from tbl_5371
  where col_77093='20200831'
  and col_19590 = 1
) campaign
on billing.col_43924 = campaign.col_43924
group by
  col_62986,
  billing.col_43924,
  col_30973,
  rit,
  col_47217,
  col_79149,
  col_62384
limit 10000

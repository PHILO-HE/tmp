select
  id,
  col_80511,
  col_62986,
  billing.col_43924,
  col_30973,
  rit,
  col_47217,
  col_79149,
  col_65902,
  col_62384,
  col_38174,
  col_77931,
  col_86387,
  col_54044
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
  and col_19590 != 1 --过滤掉品牌
) campaign
on billing.col_43924 = campaign.col_43924
limit 10000

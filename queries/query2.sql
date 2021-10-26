select
  id,
  0 as col_80511,  col_62986,
  col_43924,
  col_30973,
  rit,
  col_79149,
  col_65902 as col_22924,
  col_62384 as col_90259,
  col_77931,
  col_86387,
  col_62384 as col_27146,
  col_47217
from tbl_9044
where col_77093='20200831'
union all
select  id,
  col_80511,
  col_62986,
  col_43924,
  col_30973,
  rit,
  col_79149,
  col_65902 as col_22924,
  col_38174 as col_90259,
  col_77931,
  col_86387,
  col_62384 as col_27146,
  col_47217
from tbl_2666
where col_77093='20200831'
limit 10000

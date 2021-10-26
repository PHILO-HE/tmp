select
    col_28499
    ,col_78590
    ,col_3859
    ,col_73575
    ,col_82280
    ,col_94074
    ,col_81323
    ,col_60702
    ,col_93433
    ,col_6137
    ,col_1611
    ,dt col_77093
    ,os
    ,col_6437
    ,col_56458
    ,col_61530
    ,col_32622
    ,null col_80294
    ,col_19513
    ,col_96613
    ,col_88819
    ,col_42954
    ,'novelapp' col_24229
from
    tbl_8556
where
    dt='20200831'
    and col_24229='novelapp'
union all
select
    col_28499
    ,col_78590
    ,col_3859
    ,col_73575
    ,col_82280
    ,col_94074
    ,col_81323
    ,col_60702
    ,col_93433
    ,col_6137
    ,col_1611
    ,col_77093
    ,os
    ,col_6437
    ,col_56458
    ,col_61530
    ,col_32622
    ,col_80294
    ,col_19513
    ,col_96613
    ,col_88819
    ,col_42954
    ,col_24229
from
    tbl_767
where
    dt='${date-1}'
    and col_24229='novelapp'
limit 10000

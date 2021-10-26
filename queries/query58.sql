select
     col_60082
      ,col_88305
      ,col_87675
    ,col_28543
    ,col_12611
    ,col_17204
    ,col_1301
    ,col_96887
    ,col_3859
    ,col_63465
    ,col_49197
    ,col_74094
    ,col_61665
    ,col_47884
    ,col_42106
    ,col_30617
    ,col_63928
    ,col_36834
    ,col_90072
    ,col_1660
    ,col_38134
    ,col_19315
    ,col_67356
    ,col_15029
    ,col_26031
    ,col_30204
    ,col_82772
    ,col_61765
    ,col_74464
    ,col_18315
    ,col_44531
    ,col_13174
    ,col_60150
    ,col_46453
    ,col_24989
    ,col_43492
    ,col_19137
    ,col_55850
    ,col_15440
    ,col_49105
    ,col_9352
    ,col_57400
    ,col_92639
    ,col_24229
 from
     tbl_2990
 where
     date = '20200831'
    and hour = '${hour}'
     and app in ('col_69546ing','novelapp')
    and col_38134 is not null
limit 10000

select
    col_151
    ,col_13174
    ,case when t1.col_39136 is not null then 1 else 0 end as is_col_18027
    ,coalesce(col_40447, '') as col_40447
    ,coalesce(col_18027_col_77931, 0) as col_18027_col_77931
    ,coalesce(col_18027_col_19178, '') as col_18027_col_19178
    ,coalesce(col_18027_col_40552, '') as col_18027_col_40552
    ,coalesce(is_col_18027_today, 0) as is_col_18027_today
    ,coalesce(col_18027_days, 0) as col_18027_days
    ,col_91045
    ,col_92794
    ,vv
    ,col_85978
    ,col_10797
    ,col_46645
    ,col_78822
    ,col_23090
    ,col_38626
    ,col_11494
    ,col_42247
    ,col_49574
    ,col_38169
    ,col_45526
    ,col_26995
    ,col_52536
    ,col_1482
    ,col_4517
    ,col_24605
    ,col_38254
    ,col_76985
    ,col_42672
    ,col_98417
    ,col_57007
    ,col_72466
    ,col_73959
    ,col_91296
    ,col_64110
    ,col_62842
    ,col_34674
    ,col_35775
    ,col_36931
    ,col_83176
    ,col_77831
    ,col_504
    ,col_75866
    ,col_41932
    ,col_69075
    ,col_18666
    ,col_43329
    ,col_16019
    ,col_95008
    ,col_46779
    ,col_22225
    ,col_57919
    ,col_91427
    ,col_44004
    ,col_7245
    ,col_87548
    ,col_65672

    ,col_5338
    ,col_96519
    ,col_98630
    ,col_44738
    ,col_49085
    ,col_29585
    ,col_33194
    ,col_68813
    ,col_32466
    ,col_34188
    ,col_83025
    ,col_48733
    ,col_54502
    ,col_84422
    ,col_7299
    ,col_87981
    ,col_51438
    ,col_13217
    ,col_18456
    ,col_21757
    ,col_77699
    ,col_91913

    ,col_10352
    ,col_11324
    ,col_72659
    ,col_63536
    ,col_82411
    ,col_87554
    ,coalesce(col_50494,'') as col_50494
    ,coalesce(col_5966,0) as col_5966

    ,col_33135
    ,col_28312
    ,col_95799
    ,col_22321
    ,col_57464
    ,col_73437
    ,col_80575
    ,col_37268
    ,col_14570
    ,col_83013
    ,col_27610
    ,col_69044
    ,col_71401
    ,col_47617
    ,col_59882
    ,col_10133
    ,col_57842
    ,col_78021
    ,col_19928
    ,col_93321
    ,col_54608
    ,col_70600
    ,col_98140
    ,col_17510
    ,col_96279
    ,col_71756
    ,col_17787
    ,col_37019
    ,col_14595
    ,col_7401
    ,col_17424
    ,col_21370
    ,col_98183
    ,col_27572
    ,col_54643
    ,col_29119
    ,col_79668
    ,col_5092
    ,col_64127
    ,col_9849

    ,col_18060
    ,col_33071
    ,col_1897
    ,col_90410

    ,col_40807
    ,col_49579
    ,col_44965
    ,col_45028

    ,col_57087
    ,col_10687
from
(
  select
       nvl(col_151,0) as col_151
       ,col_13174
       ,sum(vv) as vv
       ,sum(col_85978) as col_85978
       ,sum(col_35775) as col_35775
       ,sum(col_36931) as col_36931
       ,sum(col_83176) as col_83176
       ,sum(col_10797) as col_10797
       ,sum(col_46645) as col_46645
       ,sum(col_77831) as col_77831
       ,sum(col_504) as col_504
       ,sum(col_75866) as col_75866
       ,sum(col_78822) as col_78822
       ,sum(col_23090) as col_23090
       ,sum(col_41932) as col_41932
       ,sum(col_69075) as col_69075
       ,sum(col_18666) as col_18666
       ,sum(col_38626) as col_38626
       ,sum(col_11494) as col_11494
       ,sum(col_43329) as col_43329
       ,sum(col_16019) as col_16019
       ,sum(col_95008) as col_95008
       ,sum(col_42247) as col_42247
       ,sum(col_49574) as col_49574
       ,sum(col_46779) as col_46779
       ,sum(col_22225) as col_22225
       ,sum(col_57919) as col_57919
       ,sum(col_38169) as col_38169
       ,sum(col_45526) as col_45526
       ,sum(col_91427) as col_91427
       ,sum(col_44004) as col_44004
       ,sum(col_26995) as col_26995
       ,sum(col_52536) as col_52536
       ,sum(col_7245) as col_7245
       ,sum(col_87548) as col_87548
       ,sum(col_65672) as col_65672
       ,sum(col_91045) as col_91045
       ,sum(col_92794) as col_92794
       ,sum(col_1482) as col_1482
       ,sum(col_4517) as col_4517
       ,sum(col_24605) as col_24605
       ,sum(col_38254) as col_38254
       ,sum(col_76985) as col_76985
       ,sum(col_42672) as col_42672
       ,sum(col_98417) as col_98417
       ,sum(col_57007) as col_57007
       ,sum(col_72466) as col_72466
       ,sum(col_73959) as col_73959
       ,sum(col_91296) as col_91296
       ,sum(col_64110) as col_64110
       ,sum(col_62842) as col_62842
       ,sum(col_34674) as col_34674

       ,sum(col_5338) as col_5338
       ,sum(col_96519) as col_96519
       ,sum(col_98630) as col_98630
       ,sum(col_44738) as col_44738
       ,sum(col_49085) as col_49085
       ,sum(col_29585) as col_29585
       ,sum(col_33194) as col_33194
       ,sum(col_68813) as col_68813
       ,sum(col_32466) as col_32466
       ,sum(col_34188) as col_34188
       ,sum(col_83025) as col_83025
       ,sum(col_48733) as col_48733
       ,sum(col_54502) as col_54502
       ,sum(col_84422) as col_84422
       ,sum(col_7299) as col_7299
       ,sum(col_87981) as col_87981
       ,sum(col_51438) as col_51438
       ,sum(col_13217) as col_13217
       ,sum(col_18456) as col_18456
       ,sum(col_21757) as col_21757
       ,sum(col_77699) as col_77699
       ,sum(col_91913) as col_91913

        ,sum(col_10352) as col_10352
        ,sum(col_11324) as col_11324
        ,sum(col_72659) as col_72659
        ,sum(col_63536) as col_63536
        ,sum(col_82411) as col_82411
        ,sum(col_87554) as col_87554

        ,sum(col_33135) as col_33135
        ,sum(col_28312) as col_28312
        ,sum(col_95799) as col_95799
        ,sum(col_22321) as col_22321
        ,sum(col_57464) as col_57464
        ,sum(col_73437) as col_73437
        ,sum(col_80575) as col_80575

        ,sum(col_37268) as col_37268
        ,sum(col_14570)  as col_14570
        ,sum(col_83013) as col_83013
        ,sum(col_27610) as col_27610
        ,sum(col_69044) as col_69044

        ,sum(col_71401) as col_71401
        ,sum(col_47617) as col_47617
        ,sum(col_59882) as col_59882
        ,sum(col_10133) as col_10133
        ,sum(col_57842) as col_57842
        ,sum(col_78021) as col_78021
        ,sum(col_19928) as col_19928

        ,sum(col_93321) as col_93321
        ,sum(col_54608) as col_54608
        ,sum(col_70600) as col_70600
        ,sum(col_98140) as col_98140
        ,sum(col_17510) as col_17510
        ,sum(col_96279) as col_96279
        ,sum(col_71756) as col_71756
        ,sum(col_17787) as col_17787
        ,sum(col_37019) as col_37019
        ,sum(col_14595) as col_14595
        ,sum(col_7401) as col_7401
        ,sum(col_17424) as col_17424
        ,sum(col_21370) as col_21370
        ,sum(col_98183) as col_98183
        ,sum(col_27572) as col_27572
        ,sum(col_54643) as col_54643
        ,sum(col_29119) as col_29119

        ,sum(col_79668) as col_79668
        ,sum(col_5092) as col_5092
        ,sum(col_64127) as col_64127
        ,sum(col_9849) as col_9849

        ,sum(col_18060) as col_18060
        ,sum(col_33071) as col_33071
        ,sum(col_1897) as col_1897
        ,sum(col_90410) as col_90410

        ,sum(col_40807) as col_40807
        ,sum(col_49579) as col_49579
        ,sum(col_44965) as col_44965
        ,sum(col_45028) as col_45028

        ,sum(col_57087) as col_57087
        ,sum(col_10687) col_10687
   from
   (
   select
         col_13174
         ,col_151
         ,vv
         ,col_85978
         ,col_35775
         ,col_36931
         ,col_83176
         ,col_87554
         ,col_10797
         ,col_46645
         ,col_77831
         ,col_504
         ,col_75866
         ,col_78822
         ,col_23090
         ,col_41932
         ,col_69075
         ,col_18666
         ,col_54608
         ,col_38626
         ,col_11494
         ,col_43329
         ,col_16019
         ,col_95008
         ,col_93321
         ,col_42247
         ,col_49574
         ,col_46779
         ,col_22225
         ,col_57919
         ,col_70600
         ,col_38169
         ,col_45526
         ,col_91427
         ,col_44004
         ,col_37019
         ,col_26995
         ,col_52536
         ,col_7245
         ,col_87548
         ,col_65672
         ,col_17510
         ,col_11324
         ,col_1482
         ,col_4517
         ,col_24605
         ,col_38254
         ,col_76985
         ,col_42672
         ,col_98417
         ,col_57007
         ,col_72466
         ,col_73959
         ,col_91296
         ,col_64110
         ,col_62842
         ,col_34674

         ,0 as col_5338
         ,0 as col_96519
         ,0 as col_98630
         ,0 as col_44738
         ,0 as col_72659
         ,0 as col_63536
         ,0 as col_82411
         ,0 as col_95799
         ,0 as col_22321
         ,0 as col_57464
         ,0 as col_73437
         ,0 as col_80575
         ,0 as col_37268
         ,0 as col_14570
         ,0 as col_83013
         ,0 as col_27610
         ,0 as col_69044
         ,0 as col_71401
         ,0 as col_47617
         ,0 as col_59882
         ,0 as col_98140
         ,0 as col_96279
         ,0 as col_71756
         ,0 as col_17787
         ,0 as col_14595
         ,0 as col_7401
         ,0 as col_17424
         ,0 as col_21370
         ,0 as col_98183
         ,0 as col_27572
         ,0 as col_54643
         ,0 as col_29119
         ,0 as col_79668
         ,0 as col_5092
         ,0 as col_64127
         ,0 as col_9849
         ,0 as col_18060
         ,0 as col_33071
         ,0 as col_1897
         ,0 as col_90410
         ,0 as col_40807
         ,0 as col_49579
         ,0 as col_44965
         ,0 as col_45028

         ,0 as col_91045
         ,0 as col_92794
         ,0 as col_49085
         ,0 as col_29585
         ,0 as col_33194
         ,0 as col_68813
         ,0 as col_32466
         ,0 as col_34188
         ,0 as col_83025
         ,0 as col_48733
         ,0 as col_54502
         ,0 as col_84422
         ,0 as col_7299
         ,0 as col_87981
         ,0 as col_51438
         ,0 as col_13217
         ,0 as col_18456
         ,0 as col_21757
         ,0 as col_77699
         ,0 as col_91913
         ,0 as col_10352
         ,0 as col_33135
         ,0 as col_28312
         ,0 as col_10133
         ,0 as col_57842
         ,0 as col_78021
         ,0 as col_19928
         ,col_57087
         ,0 as col_10687
from tbl_9464
where date='20200831'

union all

select
     col_13174
     ,col_151
     ,0 as vv
     ,0 as col_85978
     ,0 as col_35775
     ,0 as col_36931
     ,0 as col_83176
     ,0 as col_87554
     ,0 as col_10797
     ,0 as col_46645
     ,0 as col_77831
     ,0 as col_504
     ,0 as col_75866
     ,0 as col_78822
     ,0 as col_23090
     ,0 as col_41932
     ,0 as col_69075
     ,0 as col_18666
     ,0 as col_54608
     ,0 as col_38626
     ,0 as col_11494
     ,0 as col_43329
     ,0 as col_16019
     ,0 as col_95008
     ,0 as col_93321
     ,0 as col_42247
     ,0 as col_49574
     ,0 as col_46779
     ,0 as col_22225
     ,0 as col_57919
     ,0 as col_70600
     ,0 as col_38169
     ,0 as col_45526
     ,0 as col_91427
     ,0 as col_44004
     ,0 as col_37019
     ,0 as col_26995
     ,0 as col_52536
     ,0 as col_7245
     ,0 as col_87548
     ,0 as col_65672
     ,0 as col_17510
     ,0 as col_11324
     ,0 as col_1482
     ,0 as col_4517
     ,0 as col_24605
     ,0 as col_38254
     ,0 as col_76985
     ,0 as col_42672
     ,0 as col_98417
     ,0 as col_57007
     ,0 as col_72466
     ,0 as col_73959
     ,0 as col_91296
     ,0 as col_64110
     ,0 as col_62842
     ,0 as col_34674
     ,col_5338
     ,col_96519
     ,col_98630
     ,col_44738
     ,col_72659
     ,col_63536
     ,col_82411
     ,col_95799
     ,col_22321
     ,col_57464
     ,col_73437
     ,col_80575
     ,col_37268
     ,col_14570
     ,col_83013
     ,col_27610
     ,col_69044
     ,col_71401
     ,col_47617
     ,col_59882
     ,col_98140
     ,col_96279
     ,col_71756
     ,col_17787
     ,col_14595
     ,col_7401
     ,col_17424
     ,col_21370
     ,col_98183
     ,col_27572
     ,col_54643
     ,col_29119
     ,col_79668
     ,col_5092
     ,col_64127
     ,col_9849
     ,col_18060
     ,col_33071
     ,col_1897
     ,col_90410
     ,col_40807
     ,col_49579
     ,col_44965
     ,col_45028

     ,0 as col_91045
     ,0 as col_92794
     ,0 as col_49085
     ,0 as col_29585
     ,0 as col_33194
     ,0 as col_68813
     ,0 as col_32466
     ,0 as col_34188
     ,0 as col_83025
     ,0 as col_48733
     ,0 as col_54502
     ,0 as col_84422
     ,0 as col_7299
     ,0 as col_87981
     ,0 as col_51438
     ,0 as col_13217
     ,0 as col_18456
     ,0 as col_21757
     ,0 as col_77699
     ,0 as col_91913
     ,0 as col_10352
     ,0 as col_33135
     ,0 as col_28312
     ,0 as col_10133
     ,0 as col_57842
     ,0 as col_78021
     ,0 as col_19928

     ,0 as col_57087
     ,0 as col_10687
from tbl_6508
where date='20200831'

union all

select
     col_13174
     ,col_39136 as col_151
     ,0 as vv
     ,0 as col_85978
     ,0 as col_35775
     ,0 as col_36931
     ,0 as col_83176
     ,0 as col_87554
     ,0 as col_10797
     ,0 as col_46645
     ,0 as col_77831
     ,0 as col_504
     ,0 as col_75866
     ,0 as col_78822
     ,0 as col_23090
     ,0 as col_41932
     ,0 as col_69075
     ,0 as col_18666
     ,0 as col_54608
     ,0 as col_38626
     ,0 as col_11494
     ,0 as col_43329
     ,0 as col_16019
     ,0 as col_95008
     ,0 as col_93321
     ,0 as col_42247
     ,0 as col_49574
     ,0 as col_46779
     ,0 as col_22225
     ,0 as col_57919
     ,0 as col_70600
     ,0 as col_38169
     ,0 as col_45526
     ,0 as col_91427
     ,0 as col_44004
     ,0 as col_37019
     ,0 as col_26995
     ,0 as col_52536
     ,0 as col_7245
     ,0 as col_87548
     ,0 as col_65672
     ,0 as col_17510
     ,0 as col_11324
     ,0 as col_1482
     ,0 as col_4517
     ,0 as col_24605
     ,0 as col_38254
     ,0 as col_76985
     ,0 as col_42672
     ,0 as col_98417
     ,0 as col_57007
     ,0 as col_72466
     ,0 as col_73959
     ,0 as col_91296
     ,0 as col_64110
     ,0 as col_62842
     ,0 as col_34674

     ,0 as col_5338
     ,0 as col_96519
     ,0 as col_98630
     ,0 as col_44738
     ,0 as col_72659
     ,0 as col_63536
     ,0 as col_82411
     ,0 as col_95799
     ,0 as col_22321
     ,0 as col_57464
     ,0 as col_73437
     ,0 as col_80575
     ,0 as col_37268
     ,0 as col_14570
     ,0 as col_83013
     ,0 as col_27610
     ,0 as col_69044
     ,0 as col_71401
     ,0 as col_47617
     ,0 as col_59882
     ,0 as col_98140
     ,0 as col_96279
     ,0 as col_71756
     ,0 as col_17787
     ,0 as col_14595
     ,0 as col_7401
     ,0 as col_17424
     ,0 as col_21370
     ,0 as col_98183
     ,0 as col_27572
     ,0 as col_54643
     ,0 as col_29119
     ,0 as col_79668
     ,0 as col_5092
     ,0 as col_64127
     ,0 as col_9849
     ,0 as col_18060
     ,0 as col_33071
     ,0 as col_1897
     ,0 as col_90410
     ,0 as col_40807
     ,0 as col_49579
     ,0 as col_44965
     ,0 as col_45028

     ,col_91045
     ,col_92794
     ,col_49085
     ,col_29585
     ,col_33194
     ,col_68813
     ,col_32466
     ,col_34188
     ,col_83025
     ,col_48733
     ,col_54502
     ,col_84422
     ,col_7299
     ,col_87981
     ,col_51438
     ,col_13217
     ,col_18456
     ,col_21757
     ,col_77699
     ,col_91913
     ,col_10352
     ,col_33135
     ,col_28312
     ,col_10133
     ,col_57842
     ,col_78021
     ,col_19928

     ,0 as col_57087
     ,col_10687
from tbl_1285
where date='20200831'
)t
group by nvl(col_151,0)
        ,col_13174
)t0
left outer join
(
   select
         col_37410
         ,col_39136
         ,col_77931 as col_18027_col_77931
         ,col_8394unixcol_24989(col_77931, 'yyyy-MM-dd HH:mm:ss') as col_18027_col_19178
         ,col_40552 as col_18027_col_40552
         ,col_9728 as is_col_18027_today
         ,datediff(col_8394unixcol_24989(col_77931, 'yyyy-MM-dd'), '2020-08-31') as col_18027_days
         ,col_40447
         ,col_50494
         ,col_5966
   from tbl_1369
   where date='20200831' and col_50426=1
)t1
on t0.col_13174=t1.col_37410 and t0.col_151=t1.col_39136
limit 10000

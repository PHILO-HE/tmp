select
    col_13174,
    col_65263,
    coalesce(os, '') as os,
    coalesce(col_151, 0) as col_151,
    col_49266,
    coalesce(col_5835, 0) as col_5835,
    coalesce(col_5963, 0) as col_5963,
    col_12338_id,
    col_29842,
    coalesce(col_89703, 0) as col_89703,
    col_17190,
    coalesce(col_74015, '') as col_74015,
    coalesce(col_21384, 0) as col_21384,
    coalesce(col_57001, 0) as col_57001,
    coalesce(col_99537, 0) as col_99537,
    coalesce(vv, 0) as vv,
    coalesce(col_10797/1000, 0) as col_69856,
    coalesce(col_10797, 0) as col_10797,
    coalesce(col_78822, 0) as col_78822,
    coalesce(col_85978, 0) as col_85978,
    coalesce(col_38626, 0) as col_38626,
    coalesce(col_42247, 0) as col_42247,
    coalesce(col_38169, 0) as col_38169,
    coalesce(col_91714, 0) as col_91714,
    coalesce(col_26995, 0) as col_26995,
    coalesce(col_8929, 0) as col_8929,
    coalesce(col_78749, 0) as col_78749,
    coalesce(col_30796, 0) as col_30796,
    coalesce(col_98630, 0) as col_98630,
    coalesce(col_1096, 0) as col_1096,
    coalesce(col_55420, 0) as col_55420,
    coalesce(col_4439, 0) as col_4439,
    coalesce(col_23090, 0) as col_23090,
    coalesce(col_11494, 0) as col_11494,
    coalesce(col_49574, 0) as col_49574,
    coalesce(col_45526, 0) as col_45526,
    coalesce(col_46074, 0) as col_46074,
    coalesce(col_52536, 0) as col_52536,
    coalesce(col_34269, 0) as col_34269,
    coalesce(col_27544, 0) as col_27544,
    coalesce(col_96519, 0) as col_96519,
    coalesce(col_17326, 0) as col_17326,
    coalesce(col_15117, 0) as col_15117,
    coalesce(col_26104, 0) as col_26104,
    coalesce(col_84978, '') as col_84978,
    coalesce(col_35775, 0) as col_35775,
    coalesce(col_41753, 0) as col_41753,
    coalesce(col_37219, 0) as col_37219,
    coalesce(col_32286, 0) as col_32286,
    coalesce(col_30887, 0) as col_30887,
    coalesce(col_61937, 0) as col_61937,
    coalesce(col_8674, 0) as col_8674,
    coalesce(col_1537, 0) as col_1537,
    coalesce(col_10270, 0) as col_10270,
    if(
        coalesce(col_99249_str, '') = '',
        array(),
        split(col_99249_str, ',')
    ) as col_97887,
    coalesce(col_37155, 0) as col_37155,
    coalesce(col_95779, 0) as col_95779,
    COALESCE(col_90212, '') as col_19189
from
    (
        select
            coalesce(col_13174, 0) as col_13174,
            coalesce(col_65263, 0) as col_65263,
            max(os) as os,
            max(col_49266) as col_49266,
            sum(vv) as vv,
            sum(col_10797) as col_10797,
            sum(col_78822) as col_78822,
            sum(col_85978) as col_85978,
            sum(col_38626) as col_38626,
            sum(col_42247) as col_42247,
            sum(col_38169) as col_38169,
            sum(col_91714) as col_91714,
            sum(col_26995) as col_26995,
            sum(col_8929) as col_8929,
            sum(col_78749) as col_78749,
            sum(col_30796) as col_30796,
            sum(col_98630) as col_98630,
            sum(col_1096) as col_1096,
            sum(col_55420) as col_55420,
            sum(col_4439) as col_4439,
            sum(col_23090) as col_23090,
            sum(col_11494) as col_11494,
            sum(col_49574) as col_49574,
            sum(col_45526) as col_45526,
            sum(col_46074) as col_46074,
            sum(col_52536) as col_52536,
            sum(col_34269) as col_34269,
            sum(col_27544) as col_27544,
            sum(col_96519) as col_96519,
            sum(col_17326) as col_17326,
            sum(col_15117) as col_15117,
            sum(col_35775) as col_35775,
            sum(col_41753) as col_41753,
            sum(col_37219) as col_37219,
            sum(col_32286) as col_32286,
            sum(col_30887) as col_30887,
            sum(col_61937) as col_61937,
            sum(col_8674) as col_8674,
            sum(col_1537) as col_1537,
            sum(col_10270) as col_10270,
            sum(col_37155) as col_37155,
            sum(in_out_col_26995) as col_95779
        from
            (
                select
                    col_13174,
                    case
                        when col_78590 > 0 then col_78590
                        when col_78590 <= 0 then 0
                    end as col_65263,
                    max(
                        case
                            when col_30617 = 'ios' then 'ios'
                            else 'android'
                        end
                    ) as os,
                    max(
                        case
                            when col_43980 = 1 then 1
                            else 0
                        end
                    ) as col_49266,
                    sum(
                        case
                            when col_43492 = 'video_play' then 1
                        end
                    ) as vv,
                    sum(
                        case
                            when col_43492 = 'col_69856'
                            and col_94815 > 0
                            and col_94815 < 86400000 then col_94815
                        end
                    ) as col_10797,
                    sum(
                        case
                            when col_43492 = 'video_play_finish' then 1
                        end
                    ) as col_78822,
                    sum(
                        case
                            when col_43492 = 'video_play'
                            and col_77546 = 'homepage_hot' then 1
                        end
                    ) as col_85978,
                    sum(
                        case
                            when col_43492 = 'col_53168' then 1
                        end
                    ) as col_38626,
                    sum(
                        case
                            when col_43492 = 'post_col_31301' then 1
                        end
                    ) as col_42247,
                    sum(
                        case
                            when col_43492 = 'col_18027' then 1
                        end
                    ) as col_38169,
                    sum(
                        case
                            when col_43492 = 'download' then 1
                        end
                    ) as col_91714,
                    sum(
                        case
                            when col_43492 = 'col_6863_video'
                            and not col_40278 in(
                                'chat',
                                'chat_merge',
                                'chat_head',
                                'chat_list',
                                'chat_forward',
                                'localSave',
                                'recol_15440Sticker',
                                'delete',
                                ''
                            ) then 1
                        end
                    ) as col_26995,
                    0 as col_8929,
                    
                    sum(
                        case
                            when col_43492 = 'click_col_31301_button' then 1
                        end
                    ) as col_78749,
                    sum(
                        case
                            when col_43492 = 'enter_personal_detail' then 1
                        end
                    ) as col_30796,
                    sum(
                        case
                            when col_43492 = 'col_80209' then 1
                        end
                    ) as col_98630,
                    sum(
                        case
                            when col_43492 = 'enter_col_87630_detail' then 1
                        end
                    ) as col_1096,
                    sum(
                        case
                            when col_43492 = 'col_99249_click' then 1
                        end
                    ) as col_55420,
                    sum(
                        case
                            when col_43492 = 'shoot' then 1
                        end
                    ) as col_4439,
                    sum(
                        case
                            when col_43492 = 'video_play_finish'
                            and col_77546 = 'homepage_hot' then 1
                        end
                    ) as col_23090,
                    sum(
                        case
                            when col_43492 = 'col_53168'
                            and col_77546 = 'homepage_hot' then 1
                        end
                    ) as col_11494,
                    sum(
                        case
                            when col_43492 = 'post_col_31301'
                            and col_77546 = 'homepage_hot' then 1
                        end
                    ) as col_49574,
                    sum(
                        case
                            when col_43492 = 'col_18027'
                            and col_77546 = 'homepage_hot' then 1
                        end
                    ) as col_45526,
                    sum(
                        case
                            when col_43492 = 'download'
                            and col_77546 = 'homepage_hot' then 1
                        end
                    ) as col_46074,
                    sum(
                        case
                            when col_43492 = 'col_6863_video'
                            and not col_40278 in(
                                'chat',
                                'chat_merge',
                                'chat_head',
                                'chat_list',
                                'chat_forward',
                                'localSave',
                                'recol_15440Sticker',
                                'delete',
                                ''
                            )
                            and col_77546 = 'homepage_hot' then 1
                        end
                    ) as col_52536,
                    sum(
                        case
                            when col_43492 = 'click_col_31301_button'
                            and col_77546 = 'homepage_hot' then 1
                        end
                    ) as col_34269,
                    sum(
                        case
                            when col_43492 = 'enter_personal_detail'
                            and col_77546 = 'homepage_hot' then 1
                        end
                    ) as col_27544,
                    sum(
                        case
                            when col_43492 = 'col_80209'
                            and col_77546 = 'homepage_hot' then 1
                        end
                    ) as col_96519,
                    sum(
                        case
                            when col_43492 = 'enter_col_87630_detail'
                            and col_77546 = 'homepage_hot' then 1
                        end
                    ) as col_17326,
                    sum(
                        case
                            when col_43492 = 'col_99249_click'
                            and col_77546 = 'homepage_hot' then 1
                        end
                    ) as col_15117,
                    sum(
                        case
                            when col_43492 = 'video_play'
                            and col_77546 = 'homepage_col_18027' then 1
                        end
                    ) as col_35775,
                    sum(
                        case
                            when col_43492 = 'video_play'
                            and col_77546 = 'homepage_fresh' then 1
                        end
                    ) as col_41753,
                    sum(
                        case
                            when col_43492 = 'video_play'
                            and col_77546 = 'others_homepage' then 1
                        end
                    ) as col_37219,
                    sum(
                        case
                            when col_43492 = 'video_play'
                            and col_77546 = 'col_99249' then 1
                        end
                    ) as col_32286,
                    sum(
                        case
                            when col_43492 = 'col_69856'
                            and col_77546 = 'col_99249'
                            and col_94815 > 0
                            and col_94815 < 86400000 then col_94815
                        end
                    ) as col_30887,
                    sum(
                        case
                            when col_43492 = 'col_53168'
                            and col_77546 = 'col_99249' then 1
                        end
                    ) as col_61937,
                    sum(
                        case
                            when col_43492 = 'post_col_31301'
                            and col_77546 = 'col_99249' then 1
                        end
                    ) as col_8674,
                    sum(
                        case
                            when col_43492 = 'col_6863_video'
                            and not col_40278 in(
                                'chat',
                                'chat_merge',
                                'chat_head',
                                'chat_list',
                                'chat_forward',
                                'localSave',
                                'recol_15440Sticker',
                                'delete',
                                ''
                            )
                            and col_77546 = 'col_99249' then 1
                        end
                    ) as col_1537,
                    sum(
                        case
                            when col_43492 = 'shoot'
                            and col_77546 = 'col_99249' then 1
                        end
                    ) as col_10270,
                    sum(
                        case
                            when col_43492 = 'col_6863_video' then 1
                        end
                    ) as in_out_col_26995,
                    sum(
                        case
                            when col_43492 = 'col_6863_video'
                            and col_77546 = 'homepage_hot' then 1
                        end
                    ) as in_out_col_52536,
                    sum(
                        case
                            when col_43492 = 'col_6863_video'
                            and col_77546 = 'col_99249' then 1
                        end
                    ) as in_out_col_1537,
                    sum(if(col_43492='shoot' and col_45351 in('single_song', 'prop_page', 'prop_reuse', 'col_99249'),1,0)) as col_37155
                from
                    tbl_89
                where
                    date = '20200831'
                    and (
                        col_43492 in(
                            'video_play',
                            'col_69856',
                            'video_play_finish',
                            'col_53168',
                            'post_col_31301',
                            'col_18027',
                            'download',
                            'click_col_31301_button',
                            'col_80209',
                            'enter_col_87630_detail',
                            'col_99249_click',
                            'shoot',
                            'col_6863_video',
                            'shoot'
                        )
                        or (
                            col_43492 = 'enter_personal_detail'
                            and col_80219 in('click_head', 'click_col_31301_head')
                        )
                    )
                group by
                    col_13174,
                    col_78590
                union all
                select
                    col_13174,
                    id as col_65263,
                    '' as os,
                    0 as col_49266,
                    0 as vv,
                    0 as col_10797,
                    0 as col_78822,
                    0 as col_85978,
                    0 as col_38626,
                    0 as col_42247,
                    0 as col_38169,
                    0 as col_91714,
                    0 as col_26995,
                    1 as col_8929,
                    0 as col_78749,
                    0 as col_30796,
                    0 as col_98630,
                    0 as col_1096,
                    0 as col_55420,
                    0 as col_4439,
                    0 as col_23090,
                    0 as col_11494,
                    0 as col_49574,
                    0 as col_45526,
                    0 as col_46074,
                    0 as col_52536,
                    0 as col_34269,
                    0 as col_27544,
                    0 as col_96519,
                    0 as col_17326,
                    0 as col_15117,
                    0 as col_35775,
                    0 as col_41753,
                    0 as col_37219,
                    0 as col_32286,
                    0 as col_30887,
                    0 as col_61937,
                    0 as col_8674,
                    0 as col_1537,
                    0 as col_10270,
                    0 as in_out_col_26995,
                    0 as in_out_col_52536,
                    0 as in_out_col_1537,
                    0 as col_37155
                from
                    tbl_6941
                where
                    date = '20200831'
                    and col_8394unixcol_24989(cast(col_77931 as bigint), 'yyyyMMdd') = '20200831'
                group by
                    col_13174,
                    id
            ) x
        group by
            coalesce(col_13174, 0),
            coalesce(col_65263, 0)
    ) t1
    left outer join (
        select
            id,
            get_json_object(col_28120, '$.col_84806') as col_5835,
            col_13174 as col_151,
            col_5963,
            get_json_object(col_28120, '$.col_41184') as col_12338_id,
            get_json_object(col_51602, '$.col_94815') as col_29842,
            get_json_object(col_28120, '$.col_3775') as col_17190,
            col_23006 as col_89703,
            col_8394unixcol_24989(cast(col_77931 as bigint), 'yyyyMMdd HH:mm:ss') as col_74015,
            cast(col_77931 as bigint) as col_21384,
            get_json_object(col_51602, '$.col_99249[0]') as col_57001,
            get_json_object(col_51602, '$.col_87630') as col_99537,
            case
                when get_json_object(col_28120, '$.col_26104') = 1 then 1
                else 0
            end as col_26104,
            get_json_object(col_28120, '$.col_84978') as col_84978,
            regexp_replace(
                get_json_object(col_51602, '$.col_99249'),
                '\\\[|\\\]',
                ''
            ) as col_99249_str,
            coalesce(get_json_object(col_28120, '$.col_72628'), '') as col_90212
        from
            tbl_6941
        where
            date = '20200831'
    ) t2 on t1.col_65263 = t2.id
limit 10000

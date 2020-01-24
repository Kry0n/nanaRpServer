Config = {}

Config.Animations = {

	{
		name  = 'festives',
		label = '歡樂的',
		items = {
			{label = "抽菸", type = "scenario", data = {anim = "WORLD_HUMAN_SMOKING"}},
			{label = "撥放音樂", type = "scenario", data = {anim = "WORLD_HUMAN_MUSICIAN"}},
			{label = "DJ", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@dj", anim = "dj"}},
			{label = "喝啤酒", type = "scenario", data = {anim = "WORLD_HUMAN_DRINKING"}},
			{label = "派對", type = "scenario", data = {anim = "WORLD_HUMAN_PARTYING"}},
			{label = "空氣吉他", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@air_guitar", anim = "air_guitar"}},
			{label = "跳舞", type = "anim", data = {lib = "anim@mp_player_intcelebrationfemale@air_shagging", anim = "air_shagging"}},
			{label = "搖滾", type = "anim", data = {lib = "mp_player_int_upperrock", anim = "mp_player_int_rock"}},
			-- {label = "Mekka en joint", type = "scenario", data = {anim = "WORLD_HUMAN_SMOKING_POT"}},
			{label = "喝醉", type = "anim", data = {lib = "amb@world_human_bum_standing@drunk@idle_a", anim = "idle_a"}},
			{label = "Spy", type = "anim", data = {lib = "oddjobs@taxi@tie", anim = "vomit_outside"}},
		}
	},

	{
		name  = 'greetings',
		label = '打招呼',
		items = {
			{label = "歡迎", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_hello"}},
			{label = "你好", type = "anim", data = {lib = "mp_common", anim = "givetake1_a"}},
			{label = "握手", type = "anim", data = {lib = "mp_ped_interaction", anim = "handshake_guy_a"}},
			{label = "黑幫", type = "anim", data = {lib = "mp_ped_interaction", anim = "hugs_guy_a"}},
			{label = "軍事問候", type = "anim", data = {lib = "mp_player_int_uppersalute", anim = "mp_player_int_salute"}},
		}
	},

	{
		name  = 'work',
		label = '工作',
		items = {
			{label = "可疑：去警察局", type = "anim", data = {lib = "random@arrests@busted", anim = "idle_c"}},
			{label = "抓魚", type = "scenario", data = {anim = "world_human_stand_fishing"}},
			{label = "警方調查", type = "anim", data = {lib = "amb@code_human_police_investigate@idle_b", anim = "idle_f"}},
			{label = "警察：在廣播上講話", type = "anim", data = {lib = "random@arrests", anim = "generic_radio_chatter"}},
			{label = "警察：交通", type = "scenario", data = {anim = "WORLD_HUMAN_CAR_PARK_ATTENDANT"}},
			{label = "警察：雙筒望遠鏡", type = "scenario", data = {anim = "WORLD_HUMAN_BINOCULARS"}},
			{label = "農業：收穫", type = "scenario", data = {anim = "world_human_gardener_plant"}},
			{label = "技師：修理引擎", type = "anim", data = {lib = "mini@repair", anim = "fixing_a_ped"}},
			{label = "醫生：觀察", type = "scenario", data = {anim = "CODE_HUMAN_MEDIC_KNEEL"}},
			{label = "計程車：與客戶交談", type = "anim", data = {lib = "oddjobs@taxi@driver", anim = "leanover_idle"}},
			{label = "計程車：封面", type = "anim", data = {lib = "oddjobs@taxi@cyi", anim = "std_hand_off_ps_passenger"}},
			{label = "美食：提供購物", type = "anim", data = {lib = "mp_am_hold_up", anim = "purchase_beerbox_shopkeeper"}},
			{label = "調酒師：賺個機會", type = "anim", data = {lib = "mini@drinking", anim = "shots_barman_b"}},
			{label = "記者：拍張照片", type = "scenario", data = {anim = "WORLD_HUMAN_PAPARAZZI"}},
			{label = "做筆記", type = "scenario", data = {anim = "WORLD_HUMAN_CLIPBOARD"}},
			{label = "使用錘子", type = "scenario", data = {anim = "WORLD_HUMAN_HAMMERING"}},
			{label = "做圓", type = "scenario", data = {anim = "WORLD_HUMAN_BUM_FREEWAY"}},
			{label = "雕像", type = "scenario", data = {anim = "WORLD_HUMAN_HUMAN_STATUE"}},
		}
	},

	{
		name  = 'humors',
		label = '幽默',
		items = {
			{label = "祝賀", type = "scenario", data = {anim = "WORLD_HUMAN_CHEERING"}},
			{label = "大", type = "anim", data = {lib = "mp_action", anim = "thanks_male_06"}},
			{label = "指點", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_point"}},
			{label = "過來", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_come_here_soft"}}, 
			{label = "來吧", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_bring_it_on"}},
			{label = "來對我說", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_me"}},
			{label = "我知道了，該死", type = "anim", data = {lib = "anim@am_hold_up@male", anim = "shoplift_high"}},
			{label = "筋疲力盡", type = "scenario", data = {lib = "amb@world_human_jog_standing@male@idle_b", anim = "idle_d"}},
			{label = "我很討厭", type = "scenario", data = {lib = "amb@world_human_bum_standing@depressed@idle_a", anim = "idle_a"}},
			{label = "捂臉", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@face_palm", anim = "face_palm"}},
			{label = "冷靜點 ", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_easy_now"}},
			{label = "我做了什麼?", type = "anim", data = {lib = "oddjobs@assassinate@multi@", anim = "react_big_variations_a"}},
			{label = "害怕", type = "anim", data = {lib = "amb@code_human_cower_stand@male@react_cowering", anim = "base_right"}},
			{label = "戰鬥?", type = "anim", data = {lib = "anim@deathmatch_intros@unarmed", anim = "intro_male_unarmed_e"}},
			{label = "不可能的!", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_damn"}},
			{label = "擁抱", type = "anim", data = {lib = "mp_ped_interaction", anim = "kisses_guy_a"}},
			{label = "榮耀之指", type = "anim", data = {lib = "mp_player_int_upperfinger", anim = "mp_player_int_finger_01_enter"}},
			{label = "波", type = "anim", data = {lib = "mp_player_int_upperwank", anim = "mp_player_int_wank_01"}},
			{label = "自殺", type = "anim", data = {lib = "mp_suicide", anim = "pistol"}},
		}
	},

	{
		name  = 'sports',
		label = '運動',
		items = {
			{label = "柔肌", type = "anim", data = {lib = "amb@world_human_muscle_flex@arms_at_side@base", anim = "base"}},
			{label = "重棒", type = "anim", data = {lib = "amb@world_human_muscle_free_weights@male@barbell@base", anim = "base"}},
			{label = "俯地挺身", type = "anim", data = {lib = "amb@world_human_push_ups@male@base", anim = "base"}},
			{label = "仰臥起坐", type = "anim", data = {lib = "amb@world_human_sit_ups@male@base", anim = "base"}},
			{label = "瑜珈", type = "anim", data = {lib = "amb@world_human_yoga@male@base", anim = "base_a"}},
		}
	},

	{
		name  = 'misc',
		label = '休閒',
		items = {
			{label = "喝咖啡", type = "anim", data = {lib = "amb@world_human_aa_coffee@idle_a", anim = "idle_a"}},
			{label = "坐", type = "anim", data = {lib = "anim@heists@prison_heistunfinished_biztarget_idle", anim = "target_idle"}},
			{label = "精益", type = "scenario", data = {anim = "world_human_leaning"}},
			{label = "躺在你的背上", type = "scenario", data = {anim = "WORLD_HUMAN_SUNBATHE_BACK"}},
			{label = "趴在肚子上", type = "scenario", data = {anim = "WORLD_HUMAN_SUNBATHE"}},
			{label = "清潔東西", type = "scenario", data = {anim = "world_human_maid_clean"}},
			{label = "準備吃", type = "scenario", data = {anim = "PROP_HUMAN_BBQ"}},
			{label = "性姿勢", type = "anim", data = {lib = "mini@prostitutes@sexlow_veh", anim = "low_car_bj_to_prop_female"}},
			{label = "拍照", type = "scenario", data = {anim = "world_human_tourist_mobile"}},
			{label = "聽門", type = "anim", data = {lib = "mini@safe_cracking", anim = "idle_base"}}, 
		}
	},

	{
		name  = 'attitudem',
		label = '態度',
		items = {
			{label = "自信的M", type = "attitude", data = {lib = "move_m@confident", anim = "move_m@confident"}},
			{label = "自信的K", type = "attitude", data = {lib = "move_f@heels@c", anim = "move_f@heels@c"}},
			{label = "沮喪的M", type = "attitude", data = {lib = "move_m@depressed@a", anim = "move_m@depressed@a"}},
			{label = "沮喪的K", type = "attitude", data = {lib = "move_f@depressed@a", anim = "move_f@depressed@a"}},
			{label = "業務", type = "attitude", data = {lib = "move_m@business@a", anim = "move_m@business@a"}},
			{label = "Modig", type = "attitude", data = {lib = "move_m@brave@a", anim = "move_m@brave@a"}},
			{label = "胡亂", type = "attitude", data = {lib = "move_m@casual@a", anim = "move_m@casual@a"}},
			{label = "膽大", type = "attitude", data = {lib = "move_m@fat@a", anim = "move_m@fat@a"}},
			{label = "行家", type = "attitude", data = {lib = "move_m@hipster@a", anim = "move_m@hipster@a"}},
			{label = "破損", type = "attitude", data = {lib = "move_m@injured", anim = "move_m@injured"}},
			{label = "匆忙", type = "attitude", data = {lib = "move_m@hurry@a", anim = "move_m@hurry@a"}},
			{label = "無家可歸", type = "attitude", data = {lib = "move_m@hobo@a", anim = "move_m@hobo@a"}},
			{label = "遺憾", type = "attitude", data = {lib = "move_m@sad@a", anim = "move_m@sad@a"}},
			{label = "肌肉", type = "attitude", data = {lib = "move_m@muscle@a", anim = "move_m@muscle@a"}},
			{label = "震驚", type = "attitude", data = {lib = "move_m@shocked@a", anim = "move_m@shocked@a"}},
			{label = "蒙蔽", type = "attitude", data = {lib = "move_m@shadyped@a", anim = "move_m@shadyped@a"}},
			{label = "安靜", type = "attitude", data = {lib = "move_m@buzzed", anim = "move_m@buzzed"}},
			{label = "按", type = "attitude", data = {lib = "move_m@hurry_butch@a", anim = "move_m@hurry_butch@a"}},
			{label = "錢", type = "attitude", data = {lib = "move_m@money", anim = "move_m@money"}},
			{label = "快", type = "attitude", data = {lib = "move_m@quick", anim = "move_m@quick"}},
			{label = "食人者", type = "attitude", data = {lib = "move_f@maneater", anim = "move_f@maneater"}},
			{label = "粗暴", type = "attitude", data = {lib = "move_f@sassy", anim = "move_f@sassy"}},	
			{label = "傲慢", type = "attitude", data = {lib = "move_f@arrogant@a", anim = "move_f@arrogant@a"}},
		}
	},

	{
		name  = 'porn',
		label = '性動作',
		items = {
			{label = "1", type = "anim", data = {lib = "oddjobs@towing", anim = "m_blow_job_loop"}},
			{label = "2", type = "anim", data = {lib = "oddjobs@towing", anim = "f_blow_job_loop"}},
			{label = "3", type = "anim", data = {lib = "mini@prostitutes@sexlow_veh", anim = "low_car_sex_loop_player"}},
			{label = "4", type = "anim", data = {lib = "mini@prostitutes@sexlow_veh", anim = "low_car_sex_loop_female"}},
			{label = "5", type = "anim", data = {lib = "mp_player_int_uppergrab_crotch", anim = "mp_player_int_grab_crotch"}},
			{label = "6", type = "anim", data = {lib = "mini@strip_club@idles@stripper", anim = "stripper_idle_02"}},
			{label = "7", type = "scenario", data = {anim = "WORLD_HUMAN_PROSTITUTE_HIGH_CLASS"}},
			{label = "8", type = "anim", data = {lib = "mini@strip_club@backroom@", anim = "stripper_b_backroom_idle_b"}},
			{label = "9", type = "anim", data = {lib = "mini@strip_club@lap_dance@ld_girl_a_song_a_p1", anim = "ld_girl_a_song_a_p1_f"}},
			{label = "10", type = "anim", data = {lib = "mini@strip_club@private_dance@part2", anim = "priv_dance_p2"}},
			{label = "11", type = "anim", data = {lib = "mini@strip_club@private_dance@part3", anim = "priv_dance_p3"}},
		}
	}
}

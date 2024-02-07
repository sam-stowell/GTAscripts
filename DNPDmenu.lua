--[[
██████╗ ██╗██╗   ██╗███████╗██████╗ ██████╗ ███████╗████████╗███████╗███████╗    
██╔══██╗██║██║   ██║██╔════╝██╔══██╗██╔══██╗██╔════╝╚══██╔══╝██╔════╝██╔════╝    
██║  ██║██║██║   ██║█████╗  ██████╔╝██████╔╝█████╗     ██║   █████╗  ███████╗    
██║  ██║██║╚██╗ ██╔╝██╔══╝  ██╔══██╗██╔═══╝ ██╔══╝     ██║   ██╔══╝  ╚════██║    
██████╔╝██║ ╚████╔╝ ███████╗██║  ██║██║     ███████╗   ██║   ███████╗███████║    
╚═════╝ ╚═╝  ╚═══╝  ╚══════╝╚═╝  ╚═╝╚═╝     ╚══════╝   ╚═╝   ╚══════╝╚══════╝                                   
                                                                                 
██████╗ ███╗   ██╗██████╗ ██████╗     ███╗   ███╗███████╗███╗   ██╗██╗   ██╗     
██╔══██╗████╗  ██║██╔══██╗██╔══██╗    ████╗ ████║██╔════╝████╗  ██║██║   ██║     
██║  ██║██╔██╗ ██║██████╔╝██║  ██║    ██╔████╔██║█████╗  ██╔██╗ ██║██║   ██║     
██║  ██║██║╚██╗██║██╔═══╝ ██║  ██║    ██║╚██╔╝██║██╔══╝  ██║╚██╗██║██║   ██║     
██████╔╝██║ ╚████║██║     ██████╔╝    ██║ ╚═╝ ██║███████╗██║ ╚████║╚██████╔╝     
╚═════╝ ╚═╝  ╚═══╝╚═╝     ╚═════╝     ╚═╝     ╚═╝╚══════╝╚═╝  ╚═══╝ ╚═════╝      
                                                                                 ]--

require_game_build(3095) -- GTA Ov1.68
require("scripts/ucrequire")

--[[

██╗   ██╗██╗  ████████╗     ██████╗ ██████╗ ███╗   ██╗████████╗██████╗  ██████╗ ██╗     ██╗     ███████╗██████╗ 
██║   ██║██║  ╚══██╔══╝    ██╔════╝██╔═══██╗████╗  ██║╚══██╔══╝██╔══██╗██╔═══██╗██║     ██║     ██╔════╝██╔══██╗
██║   ██║██║     ██║       ██║     ██║   ██║██╔██╗ ██║   ██║   ██████╔╝██║   ██║██║     ██║     █████╗  ██████╔╝
██║   ██║██║     ██║       ██║     ██║   ██║██║╚██╗██║   ██║   ██╔══██╗██║   ██║██║     ██║     ██╔══╝  ██╔══██╗
╚██████╔╝███████╗██║       ╚██████╗╚██████╔╝██║ ╚████║   ██║   ██║  ██║╚██████╔╝███████╗███████╗███████╗██║  ██║
 ╚═════╝ ╚══════╝╚═╝        ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚══════╝╚══════╝╚═╝  ╚═╝

]]--
go_up = 16
go_down = 17
go_forward = 38
go_back = 40
turn_left = 37
turn_right = 39
dec_speed = 109
inc_speed = 107
local levels
fmC2020 = script("fm_mission_controller_2020") fmC = script("fm_mission_controller") PlayerIndex = stats.get_int("MPPLY_LAST_MP_CHAR") mpx = PlayerIndex if PlayerIndex == 0 then mpx = "MP0_" else mpx = "MP1_" end xox_00 = 1 xox_01 = 1 xox_0 = 1 xox_1 = 1 xox_2 = 1 xox_3 = 1 xox_4 = 1 xox_5 = 1 xox_6 = 1 xox_7 = 1 xox_8 = 1 xox_9 = 1 xox_10 = 1 xox_11 = 1 xox_12 = 1 xox_13 = 1 xox_14 = 1 xox_15 = 1 xox_16 = 1 xox_17 = 1 xox_18 = 1 xox_19 = 1 xox_20 = 1 xox_21 = 1 xox_22 = 1 xox_23 = 1 xox_24 = 1 xox_25 = 1 xox_26 = 1 xox_27 = 1 xox_28 = 1 xox_29 = 1 xox_30 = 1 xox_31 = 1 xox_32 = 1 xox_33 = 1 xox_34 = 1 xox_35 = 1 xox_36 = 1 xox_37 = 1 e0 = false e1 = false e2 = false e3 = false e4 = false e5 = false e6 = false e7 = false e8 = false e9 = false e10 = false e11 = false e12 = false e13 = false e14 = false e15 = false e16 = false e17 = false e18 = false e19 = false e20 = false e21 = false e22 = false e23 = false e24 = false e25 = false e26 = false e27 = false e28 = false e29 = false e30 = false e31 = false e32 = false e33 = false e34 = false e35 = false e36 = false e37 = false e38 = false e39 = false e40 = false e41 = false e42 = false e43 = false e44 = false e45 = false e46 = false e47 = false e48 = false e49 = false e50 = false e51 = false e52 = false e53 = false
function TP(x, y, z, yaw, roll, pitch) if localplayer:is_in_vehicle() then localplayer:get_current_vehicle():set_position(x, y, z) localplayer:get_current_vehicle():set_rotation(yaw, roll, pitch) else localplayer:set_position(x, y, z) localplayer:set_rotation(yaw, roll, pitch) end end mainMenu = menu.add_submenu("\u{272F}".."\u{272F}".." DNPD Menu 1.68".."\u{272F}".."\u{272F}") modelMenu = mainMenu:add_submenu("Self") modelMenu:add_action("Fast Run and Reload", function() stats.set_int(mpx .. "CHAR_ABILITY_1_UNLCK", -1) stats.set_int(mpx .. "CHAR_ABILITY_2_UNLCK", -1) stats.set_int(mpx .. "CHAR_ABILITY_3_UNLCK", -1) stats.set_int(mpx .. "CHAR_FM_ABILITY_1_UNLCK", -1) stats.set_int(mpx .. "CHAR_FM_ABILITY_2_UNLCK", -1) stats.set_int(mpx .. "CHAR_FM_ABILITY_3_UNLCK", -1) globals.set_int(1575015, 1) globals.set_int(APQF, 1) sleep(0.2) globals.set_int(APQF, 0) end) modelMenu:add_action("Reset Fast Run n Reload", function() stats.set_int(mpx .. "CHAR_ABILITY_1_UNLCK", 0) stats.set_int(mpx .. "CHAR_ABILITY_2_UNLCK", 0) stats.set_int(mpx .. "CHAR_ABILITY_3_UNLCK", 0) stats.set_int(mpx .. "CHAR_FM_ABILITY_1_UNLCK", 0) stats.set_int(mpx .. "CHAR_FM_ABILITY_2_UNLCK", 0) stats.set_int(mpx .. "CHAR_FM_ABILITY_3_UNLCK", 0) globals.set_int(1575015, 1) globals.set_int(APQF, 1) sleep(0.2) globals.set_int(APQF, 0) end) modelMenu:add_action("Max all Stats", function() stats.set_int(mpx .. "SCRIPT_INCREASE_DRIV", 100) stats.set_int(mpx .. "SCRIPT_INCREASE_FLY", 100) stats.set_int(mpx .. "SCRIPT_INCREASE_LUNG", 100) stats.set_int(mpx .. "SCRIPT_INCREASE_SHO", 100) stats.set_int(mpx .. "SCRIPT_INCREASE_STAM", 100) stats.set_int(mpx .. "SCRIPT_INCREASE_STL", 100) stats.set_int(mpx .. "SCRIPT_INCREASE_STRN", 100) end) modelMenu:add_action("Get all Weapons n Upgrades (Temporary)", function() stats.set_int(mpx .. "CHAR_WEAP_ADDON_1_UNLCK", -1) stats.set_int(mpx .. "CHAR_WEAP_ADDON_2_UNLCK", -1) stats.set_int(mpx .. "CHAR_WEAP_ADDON_3_UNLCK", -1) stats.set_int(mpx .. "CHAR_WEAP_ADDON_4_UNLCK", -1) stats.set_int(mpx .. "CHAR_WEAP_FREE", -1) stats.set_int(mpx .. "CHAR_WEAP_FREE2", -1) stats.set_int(mpx .. "CHAR_FM_WEAP_FREE", -1) stats.set_int(mpx .. "CHAR_FM_WEAP_FREE2", -1) stats.set_int(mpx .. "CHAR_FM_WEAP_FREE3", -1) stats.set_int(mpx .. "CHAR_FM_WEAP_FREE4", -1) stats.set_int(mpx .. "CHAR_WEAP_PURCHASED", -1) stats.set_int(mpx .. "CHAR_WEAP_PURCHASED2", -1) stats.set_int(mpx .. "WEAPON_PICKUP_BITSET", -1) stats.set_int(mpx .. "WEAPON_PICKUP_BITSET2", -1) stats.set_int(mpx .. "CHAR_FM_WEAP_UNLOCKED", -1) stats.set_int(mpx .. "NO_WEAPONS_UNLOCK", -1) stats.set_int(mpx .. "NO_WEAPON_MODS_UNLOCK", -1) stats.set_int(mpx .. "NO_WEAPON_CLR_MOD_UNLOCK", -1) stats.set_int(mpx .. "CHAR_KIT_FM_PURCHASE", -1) stats.set_int(mpx .. "CHAR_WEAP_FM_PURCHASE", -1) stats.set_int(mpx .. "CHAR_WEAP_FM_PURCHASE2", -1) stats.set_int(mpx .. "CHAR_WEAP_FM_PURCHASE3", -1) stats.set_int(mpx .. "CHAR_WEAP_FM_PURCHASE4", -1) stats.set_int(mpx .. "WEAP_FM_ADDON_PURCH", -1) for i = 2, 19 do stats.set_int(mpx .. "WEAP_FM_ADDON_PURCH"..i, -1) end for l = 2, 41 do stats.set_int(mpx .. "CHAR_KIT_FM_PURCHASE"..l, -1) end globals.set_int(1575015, 1) globals.set_int(1575015, 1) globals.set_int(APQF, 1) sleep(0.2) globals.set_int(APQF, 0) end) modelMenu:add_action("Refill Inv and Armor", function()	stats.set_int(mpx .. "NO_BOUGHT_YUM_SNACKS", 30) stats.set_int(mpx .. "NO_BOUGHT_HEALTH_SNACKS", 15) stats.set_int(mpx .. "NO_BOUGHT_EPIC_SNACKS", 5) stats.set_int(mpx .. "NUMBER_OF_CHAMP_BOUGHT", 5) stats.set_int(mpx .. "NUMBER_OF_ORANGE_BOUGHT", 11) stats.set_int(mpx .. "NUMBER_OF_BOURGE_BOUGHT", 10) stats.set_int(mpx .. "CIGARETTES_BOUGHT", 20) stats.set_int(mpx .. "MP_CHAR_ARMOUR_1_COUNT", 10) stats.set_int(mpx .. "MP_CHAR_ARMOUR_2_COUNT", 10) stats.set_int(mpx .. "MP_CHAR_ARMOUR_3_COUNT", 10) stats.set_int(mpx .. "MP_CHAR_ARMOUR_4_COUNT", 10) stats.set_int(mpx .. "MP_CHAR_ARMOUR_5_COUNT", 10) stats.set_int(mpx .. "BREATHING_APPAR_BOUGHT", 20) end) modelMenu:add_action("Refill Inv x1000", function() stats.set_int(mpx .. "NO_BOUGHT_YUM_SNACKS", 1000) stats.set_int(mpx .. "NO_BOUGHT_HEALTH_SNACKS", 1000) stats.set_int(mpx .. "NO_BOUGHT_EPIC_SNACKS", 1000) stats.set_int(mpx .. "NUMBER_OF_CHAMP_BOUGHT", 1000) stats.set_int(mpx .. "NUMBER_OF_ORANGE_BOUGHT", 1000) stats.set_int(mpx .. "NUMBER_OF_BOURGE_BOUGHT", 1000) stats.set_int(mpx .. "CIGARETTES_BOUGHT", 1000) stats.set_int(mpx .. "MP_CHAR_ARMOUR_1_COUNT", 1000) stats.set_int(mpx .. "MP_CHAR_ARMOUR_2_COUNT", 1000) stats.set_int(mpx .. "MP_CHAR_ARMOUR_3_COUNT", 1000) stats.set_int(mpx .. "MP_CHAR_ARMOUR_4_COUNT", 1000) stats.set_int(mpx .. "MP_CHAR_ARMOUR_5_COUNT", 1000) stats.set_int(mpx .. "BREATHING_APPAR_BOUGHT", 1000) end) modelMenu:add_action("Change Gender", function() stats.set_int(mpx.."ALLOW_GENDER_CHANGE", 52) globals.set_int(281050, 0) end) modelMenu:add_action("Add Badsport", function() stats.set_int("MPPLY_BADSPORT_MESSAGE", -1) stats.set_int("MPPLY_BECAME_BADSPORT_NUM", -1) stats.set_float("MPPLY_OVERALL_BADSPORT", 60000) stats.set_bool("MPPLY_CHAR_IS_BADSPORT", true) globals.set_int(1575015, 0) globals.set_int(APQF, 1) sleep(0.2) globals.set_int(APQF, 0) end) modelMenu:add_action("Remove Badsport", function() stats.set_int("MPPLY_BADSPORT_MESSAGE", 0) stats.set_int("MPPLY_BECAME_BADSPORT_NUM", 0) stats.set_float("MPPLY_OVERALL_BADSPORT", 0) stats.set_bool("MPPLY_CHAR_IS_BADSPORT", false) globals.set_int(1575015, 1) globals.set_int(APQF, 1) sleep(0.2) globals.set_int(APQF, 0) end) local enable = false local speed = 2 local function up() if not enable then return end local newpos = localplayer:get_position() + vector3(0,0,speed) if not localplayer:is_in_vehicle() then localplayer:set_position(newpos) else vehicle=localplayer:get_current_vehicle() vehicle:set_position(newpos) end end local function down() if not enable then return end local newpos = localplayer:get_position() + vector3(0,0,speed * -1) if not localplayer:is_in_vehicle() then localplayer:set_position(newpos) else vehicle=localplayer:get_current_vehicle() vehicle:set_position(newpos) end end local function forward() if not enable then return end local dir = localplayer:get_heading() local newpos = localplayer:get_position() + (dir * speed) if not localplayer:is_in_vehicle() then localplayer:set_position(newpos) else vehicle=localplayer:get_current_vehicle() vehicle:set_position(newpos) end end local function backward() if not enable then return end local dir = localplayer:get_heading() local newpos = localplayer:get_position() + (dir * speed * -1) if not localplayer:is_in_vehicle() then localplayer:set_position(newpos) else vehicle=localplayer:get_current_vehicle() vehicle:set_position(newpos) end end local function turnleft() if not enable then return end local dir = localplayer:get_rotation() if not localplayer:is_in_vehicle() then localplayer:set_rotation(dir + vector3(0.25,0,0)) else vehicle=localplayer:get_current_vehicle() vehicle:set_rotation(dir + vector3(0.25,0,0)) end end local function turnright() if not enable then return end local dir = localplayer:get_rotation() if not localplayer:is_in_vehicle() then localplayer:set_rotation(dir + vector3(0.25 * -1,0,0)) else vehicle=localplayer:get_current_vehicle() vehicle:set_rotation(dir + vector3(0.25 * -1,0,0)) end end local function increasespeed() speed = speed + 1 end local function decreasespeed() speed = speed - 1 end local up_hotkey local down_hotkey local forward_hotkey local backward_hotkey local turnleft_hotkey local turnright_hotkey local increasespeed_hotkey local decreasespeed_hotkey local function NoClip(e) if not localplayer then return end if e then localplayer:set_freeze_momentum(true) localplayer:set_no_ragdoll(true) localplayer:set_config_flag(292,true) up_hotkey = menu.register_hotkey(go_up, up) down_hotkey = menu.register_hotkey(go_down, down) forward_hotkey = menu.register_hotkey(go_forward, forward) backward_hotkey = menu.register_hotkey(go_back, backward) turnleft_hotkey = menu.register_hotkey(turn_left, turnleft) turnright_hotkey = menu.register_hotkey(turn_right, turnright) increasespeed_hotkey = menu.register_hotkey(inc_speed, increasespeed) decreasespeed_hotkey = menu.register_hotkey(dec_speed, decreasespeed) else localplayer:set_freeze_momentum(false) localplayer:set_no_ragdoll(false) localplayer:set_config_flag(292,false) menu.remove_hotkey(up_hotkey) menu.remove_hotkey(down_hotkey) menu.remove_hotkey(forward_hotkey) menu.remove_hotkey(backward_hotkey) menu.remove_hotkey(turnleft_hotkey) menu.remove_hotkey(turnright_hotkey) menu.remove_hotkey(increasespeed_hotkey) menu.remove_hotkey(decreasespeed_hotkey) end end modelMenu:add_toggle("NoClip", function() return enable end, function() enable = not enable NoClip(enable) end) modelMenu:add_int_range("NoClip Speed", 1, 1, 10, function() return speed end, function(i) speed = i end)

-- NoClip enable/disable hotkey below

menu.register_hotkey(111, 
	function() enable = not enable NoClip(enable) end)
-------------------------------------------------

pedMenu = modelMenu:add_submenu("Change Player Model")
local PedModelAnimal = {}
PedModelAnimal[joaat("a_c_cat_01")] = "Cat" 
PedModelAnimal[joaat("a_c_chimp")] = "Chimp Black"
PedModelAnimal[joaat("a_c_chop")] = "Chop"
PedModelAnimal[joaat("a_c_cow")] = "Cow"
PedModelAnimal[joaat("a_c_coyote")] = "Coyote"
PedModelAnimal[joaat("a_c_deer")] = "Deer"
PedModelAnimal[joaat("a_c_husky")] = "Husky"
PedModelAnimal[joaat("a_c_mtlion")] = "Mountian Lion"
PedModelAnimal[joaat("a_c_panther")] = "Panther"
PedModelAnimal[joaat("a_c_pig")] = "Pig"
PedModelAnimal[joaat("a_c_poodle")] = "Poodle"
PedModelAnimal[joaat("a_c_pug")] = "Pug"
PedModelAnimal[joaat("a_c_rabbit_01")] = "Rabbit"
PedModelAnimal[joaat("a_c_rat")] = "Rat"
PedModelAnimal[joaat("a_c_retriever")] = "Retriever"
PedModelAnimal[joaat("a_c_rhesus")] = "Rhesus Monkey"
PedModelAnimal[joaat("a_c_rottweiler")] = "Rottweiler"
PedModelAnimal[joaat("a_c_shepherd")] = "Shepherd"
PedModelAnimal[joaat("a_c_westy")] = "Westy"
local PedModelSeaAnimal = {}
PedModelSeaAnimal[joaat("a_c_dolphin")] = "Dolphin"
PedModelSeaAnimal[joaat("a_c_fish")] = "Fish"
PedModelSeaAnimal[joaat("a_c_stingray")] = "Sting Ray"
PedModelSeaAnimal[joaat("a_c_sharktiger")] = "Tiger Shark"
PedModelSeaAnimal[joaat("a_c_humpback")] = "Humpback"
PedModelSeaAnimal[joaat("a_c_sharkhammer")] = "Hammer Shark"
PedModelSeaAnimal[joaat("a_c_killerwhale")] = "Killer Whale"
local PedModelBird = {}
PedModelBird[joaat("a_c_seagull")] = "Seagull"
PedModelBird[joaat("a_c_pigeon")] = "Pigeon"
PedModelBird[joaat("a_c_crow")] = "Crow"
PedModelBird[joaat("a_c_hen")] = "Hen"
PedModelBird[joaat("a_c_cormorant")] = "Cormorant"
PedModelBird[joaat("a_c_chickenhawk")] = "Hawk Eagle"
local PedModel1 = {}
PedModel1[joaat("player_one")] = "Franklin"
PedModel1[joaat("player_two")] = "Trevor"
PedModel1[joaat("player_zero")] = "Michael"
PedModel1[joaat("a_f_m_beach_01")] = "a_f_m_beach_01"
PedModel1[joaat("a_f_m_bevhill")] = "a_f_m_bevhill"
PedModel1[joaat("a_f_m_bevhills_02")] = "Ponsonbys Cashier"
PedModel1[joaat("a_f_m_bodybuild_01")] =  "a_f_m_bodybuild_01"
PedModel1[joaat("a_f_m_business_02")] = "a_f_m_business_02"
PedModel1[joaat("a_f_m_downtown_01")] = "a_f_m_downtown_01"
PedModel1[joaat("a_f_m_eastsa_01")] = "a_f_m_eastsa_01"
PedModel1[joaat("a_f_m_eastsa_02")] = "a_f_m_eastsa_02"
PedModel1[joaat("a_f_m_fatbla_01")] = "a_f_m_fatbla_01"
PedModel1[joaat("a_f_m_fatcult_01")] = "a_f_m_fatcult_01"
PedModel1[joaat("a_f_m_fatwhite_01")] = "a_f_m_fatwhite_01"
PedModel1[joaat("a_f_m_ktown_01")] = "a_f_m_ktown_01"
PedModel1[joaat("a_f_m_ktown_02")] = "a_f_m_ktown_02"
PedModel1[joaat("a_f_m_prolhost_01")] = "a_f_m_prolhost_01"
PedModel1[joaat("a_f_m_salton_01")] = "a_f_m_salton_01"
PedModel1[joaat("a_f_m_skidrow_01")] = "a_f_m_skidrow_01"
PedModel1[joaat("a_f_m_soucent_01")] = "a_f_m_soucent_01"
PedModel1[joaat("a_f_m_soucent_02")] = "a_f_m_soucent_02"
PedModel1[joaat("a_f_m_soucentmc_01")] = "a_f_m_soucentmc_01"
PedModel1[joaat("a_f_m_tourist_01")] = "a_f_m_tourist_01"
PedModel1[joaat("a_f_m_tramp_01")] = "a_f_m_tramp_01"
PedModel1[joaat("a_f_m_trampbeac_01")] = "a_f_m_trampbeac_01"
PedModel1[joaat("a_f_o_genstreet_01")] = "a_f_o_genstreet_01"
PedModel1[joaat("a_f_o_indian_01")] = "a_f_o_indian_01"
PedModel1[joaat("a_f_o_ktown_01")] = "a_f_o_ktown_01"
PedModel1[joaat("a_f_o_salton_01")] = "a_f_o_salton_01"
PedModel1[joaat("a_f_o_soucent_01")] = "a_f_o_soucent_01"
PedModel1[joaat("a_f_o_soucent_02")] = "a_f_o_soucent_02"
PedModel1[joaat("a_f_y_beach_01")] = "a_f_y_beach_01"
PedModel1[joaat("a_f_y_beach_02")] = "a_f_y_beach_02"
PedModel1[joaat("a_f_y_bevhills_01")] = "a_f_y_bevhills_01"
PedModel1[joaat("a_f_y_bevhills_02")] = "a_f_y_bevhills_02"
PedModel1[joaat("a_f_y_bevhills_03")] = "a_f_y_bevhills_03"
PedModel1[joaat("a_f_y_bevhills_04")] = "a_f_y_bevhills_04"
PedModel1[joaat("a_f_y_bevhills_05")] = "a_f_y_bevhills_05"
PedModel1[joaat("a_f_y_business_01")] = "a_f_y_business_01"
PedModel1[joaat("a_f_y_business_02")] = "a_f_y_business_02"
PedModel1[joaat("a_f_y_business_03")] = "a_f_y_business_03"
PedModel1[joaat("a_f_y_business_04")] = "a_f_y_business_04"
PedModel1[joaat("a_f_y_clubcust_01")] = "a_f_y_clubcust_01"
PedModel1[joaat("a_f_y_clubcust_02")] = "a_f_y_clubcust_02"
PedModel1[joaat("a_f_y_clubcust_03")] = "a_f_y_clubcust_03"
PedModel1[joaat("a_f_y_clubcust_04")] = "a_f_y_clubcust_04"
PedModel1[joaat("a_f_y_eastsa_01")] = "a_f_y_eastsa_01"
PedModel1[joaat("a_f_y_eastsa_02")] = "a_f_y_eastsa_02"
PedModel1[joaat("a_f_y_eastsa_03")] = "a_f_y_eastsa_03"
PedModel1[joaat("a_f_y_epsilon_01")] = "a_f_y_epsilon_01"
PedModel1[joaat("a_f_y_femaleagent")] = "a_f_y_femaleagent"
PedModel1[joaat("a_f_y_fitness_01")] = "a_f_y_fitness_01"
PedModel1[joaat("a_f_y_fitness_02")] = "a_f_y_fitness_02"
PedModel1[joaat("a_f_y_gencaspat_01")] = "a_f_y_gencaspat_01"
PedModel1[joaat("a_f_y_genhot_01")] = "a_f_y_genhot_01"
PedModel1[joaat("a_f_y_golfer_01")] = "a_f_y_golfer_01"
PedModel1[joaat("a_f_y_hiker_01")] = "a_f_y_hiker_01"
PedModel1[joaat("a_f_y_hippie_01")] = "a_f_y_hippie_01"
PedModel1[joaat("a_f_y_hipster_01")] = "a_f_y_hipster_01"
PedModel1[joaat("a_f_y_hipster_02")] = "Binco Cashier"
PedModel1[joaat("a_f_y_hipster_03")] = "a_f_y_hipster_03"
PedModel1[joaat("a_f_y_hipster_04")] = "a_f_y_hipster_04"
PedModel1[joaat("a_f_y_indian_01")] = "a_f_y_indian_01"
PedModel1[joaat("a_f_y_juggalo_01")] = "a_f_y_juggalo_01"
PedModel1[joaat("a_f_y_runner_01")] = "a_f_y_runner_01"
PedModel1[joaat("a_f_y_rurmeth_01")] = "a_f_y_rurmeth_01"
PedModel1[joaat("a_f_y_scdressy_01")] = "a_f_y_scdressy_01"
PedModel1[joaat("a_f_y_skater_01")] = "a_f_y_skater_01"
PedModel1[joaat("a_f_y_smartcaspat_01")] = "a_f_y_smartcaspat_01"
PedModel1[joaat("a_f_y_soucent_01")] = "a_f_y_soucent_01"
PedModel1[joaat("a_f_y_soucent_02")] = "a_f_y_soucent_02"
PedModel1[joaat("a_f_y_soucent_03")] = "a_f_y_soucent_03"
PedModel1[joaat("a_f_y_tennis_01")] = "a_f_y_tennis_01"
PedModel1[joaat("a_f_y_topless_01")] = "a_f_y_topless_01"
PedModel1[joaat("a_f_y_tourist_01")] = "a_f_y_tourist_01"
PedModel1[joaat("a_f_y_tourist_02")] = "a_f_y_tourist_02"
PedModel1[joaat("a_f_y_vinewood_01")] = "a_f_y_vinewood_01"
PedModel1[joaat("a_f_y_vinewood_02")] = "a_f_y_vinewood_02"
PedModel1[joaat("a_f_y_vinewood_03")] = "a_f_y_vinewood_03"
PedModel1[joaat("a_f_y_vinewood_04")] = "a_f_y_vinewood_04"
PedModel1[joaat("a_f_y_yoga_01")] = "a_f_y_yoga_01"
PedModel1[joaat("a_m_m_acult_01")] = "a_m_m_acult_01"
PedModel1[joaat("a_m_m_afriamer_01")] = "a_m_m_afriamer_01"
PedModel1[joaat("a_m_m_beach_01")] = "a_m_m_beach_01"
PedModel1[joaat("a_m_m_beach_02")] = "a_m_m_beach_02"
PedModel1[joaat("a_m_m_bevhills_01")] = "a_m_m_bevhills_01"
PedModel1[joaat("a_m_m_bevhills_02")] = "a_m_m_bevhills_02"
PedModel1[joaat("a_m_m_business_01")] = "a_m_m_business_01"
PedModel1[joaat("a_m_m_eastsa_01")] = "a_m_m_eastsa_01"
PedModel1[joaat("a_m_m_eastsa_02")] = "a_m_m_eastsa_02"
PedModel1[joaat("a_m_m_farmer_01")] = "a_m_m_farmer_01"
PedModel1[joaat("a_m_m_fatlatin_01")] = "a_m_m_fatlatin_01"
PedModel1[joaat("a_m_m_genfat_01")] = "a_m_m_genfat_01"
PedModel1[joaat("a_m_m_genfat_02")] = "a_m_m_genfat_02"
PedModel1[joaat("a_m_m_golfer_01")] = "a_m_m_golfer_01"
PedModel1[joaat("a_m_m_hasjew_01")] = "a_m_m_hasjew_01"
PedModel1[joaat("a_m_m_hillbilly_01")] = "a_m_m_hillbilly_01"
PedModel1[joaat("a_m_m_hillbilly_02")] = "a_m_m_hillbilly_02"
PedModel1[joaat("a_m_m_indian_01")] = "a_m_m_indian_01"
PedModel1[joaat("a_m_m_ktown_01")] = "a_m_m_ktown_01"
PedModel1[joaat("a_m_m_malibu_01")] = "a_m_m_malibu_01"
PedModel1[joaat("a_m_m_mexcntry_01")] = "a_m_m_mexcntry_01"
PedModel1[joaat("a_m_m_mexlabor_01")] = "a_m_m_mexlabor_01"
PedModel1[joaat("a_m_m_mlcrisis_01")] = "a_m_m_mlcrisis_01"
PedModel1[joaat("a_m_m_og_boss_01")] = "a_m_m_og_boss_01"
PedModel1[joaat("a_m_m_paparazzi_01")] = "a_m_m_paparazzi_01"
PedModel1[joaat("a_m_m_polynesian_01")] = "a_m_m_polynesian_01"
PedModel1[joaat("a_m_m_prolhost_01")] = "a_m_m_prolhost_01"
PedModel1[joaat("a_m_m_rurmeth_01")] = "a_m_m_rurmeth_01"
PedModel1[joaat("a_m_m_salton_01")] = "a_m_m_salton_01"
PedModel1[joaat("a_m_m_salton_02")] = "a_m_m_salton_02"
PedModel1[joaat("a_m_m_salton_03")] = "a_m_m_salton_03"
PedModel1[joaat("a_m_m_salton_04")] = "a_m_m_salton_04"
PedModel1[joaat("a_m_m_skater_01")] = "a_m_m_skater_01"
PedModel1[joaat("a_m_m_skidrow_01")] = "a_m_m_skidrow_01"
PedModel1[joaat("a_m_m_socenlat_01")] = "a_m_m_socenlat_01"
PedModel1[joaat("a_m_m_soucent_01")] = "a_m_m_soucent_01"
PedModel1[joaat("a_m_m_soucent_02")] = "a_m_m_soucent_02"
PedModel1[joaat("a_m_m_soucent_03")] = "a_m_m_soucent_03"
PedModel1[joaat("a_m_m_soucent_04")] = "a_m_m_soucent_04"
PedModel1[joaat("a_m_m_stlat_02")] = "a_m_m_stlat_02"
PedModel1[joaat("a_m_m_tennis_01")] = "a_m_m_tennis_01"
PedModel1[joaat("a_m_m_tourist_01")] = "a_m_m_tourist_01"
PedModel1[joaat("a_m_m_tramp_01")] = "a_m_m_tramp_01"
PedModel1[joaat("a_m_m_trampbeac_01")] = "a_m_m_trampbeac_01"
PedModel1[joaat("a_m_m_tranvest_01")] = "a_m_m_tranvest_01"
PedModel1[joaat("a_m_m_tranvest_02")] = "a_m_m_tranvest_02"
PedModel1[joaat("a_m_o_acult_01")] = "a_m_o_acult_01"
PedModel1[joaat("a_m_o_acult_02")] = "a_m_o_acult_02"
PedModel1[joaat("a_m_o_beach_01")] = "a_m_o_beach_01"
PedModel1[joaat("a_m_o_beach_02")] = "a_m_o_beach_02"
PedModel1[joaat("a_m_o_genstreet_01")] = "a_m_o_genstreet_01"
PedModel1[joaat("a_m_o_ktown_01")] = "a_m_o_ktown_01"
PedModel1[joaat("a_m_o_salton_01")] = "a_m_o_salton_01"
PedModel1[joaat("a_m_o_soucent_01")] = "a_m_o_soucent_01"
PedModel1[joaat("a_m_o_soucent_02")] = "a_m_o_soucent_02"
PedModel1[joaat("a_m_o_soucent_03")] = "a_m_o_soucent_03"
PedModel1[joaat("a_m_o_tramp_01")] = "a_m_o_tramp_01"
PedModel1[joaat("a_m_y_acult_01")] = "a_m_y_acult_01"
PedModel1[joaat("a_m_y_acult_02")] = "a_m_y_acult_02"
PedModel1[joaat("a_m_y_beach_01")] = "a_m_y_beach_01"
PedModel1[joaat("a_m_y_beach_02")] = "a_m_y_beach_02"
PedModel1[joaat("a_m_y_beach_03")] = "a_m_y_beach_03"
PedModel1[joaat("a_m_y_beach_04")] = "a_m_y_beach_04"
PedModel1[joaat("a_m_y_beachvesp_01")] = "a_m_y_beachvesp_01"
PedModel1[joaat("a_m_y_beachvesp_02")] = "a_m_y_beachvesp_02"
PedModel1[joaat("a_m_y_bevhills_01")] = "a_m_y_bevhills_01"
PedModel1[joaat("a_m_y_bevhills_02")] = "a_m_y_bevhills_02"
PedModel1[joaat("a_m_y_breakdance_01")] = "a_m_y_breakdance_01"
PedModel1[joaat("a_m_y_busicas_01")] = "a_m_y_busicas_01"
PedModel1[joaat("a_m_y_business_01")] = "a_m_y_business_01"
PedModel1[joaat("a_m_y_business_02")] = "a_m_y_business_02"
PedModel1[joaat("a_m_y_business_03")] = "a_m_y_business_03"
PedModel1[joaat("a_m_y_clubcust_01")] = "a_m_y_clubcust_01"
PedModel1[joaat("a_m_y_clubcust_02")] = "a_m_y_clubcust_02"
PedModel1[joaat("a_m_y_clubcust_03")] = "a_m_y_clubcust_03"
PedModel1[joaat("a_m_y_clubcust_04")] = "a_m_y_clubcust_04"
PedModel1[joaat("a_m_y_cyclist_01")] = "a_m_y_cyclist_01"
PedModel1[joaat("a_m_y_dhill_01")] = "a_m_y_dhill_01"
PedModel1[joaat("a_m_y_downtown_01")] = "a_m_y_downtown_01"
PedModel1[joaat("a_m_y_eastsa_01")] = "a_m_y_eastsa_01"
PedModel1[joaat("a_m_y_eastsa_02")] = "a_m_y_eastsa_02"
PedModel1[joaat("a_m_y_epsilon_01")] = "a_m_y_epsilon_01"
PedModel1[joaat("a_m_y_epsilon_02")] = "a_m_y_epsilon_02"
PedModel1[joaat("a_m_y_gay_01")] = "a_m_y_gay_01"
PedModel1[joaat("a_m_y_gay_02")] = "a_m_y_gay_02"
PedModel1[joaat("a_m_y_gencaspat_01")] = "a_m_y_gencaspat_01"
PedModel1[joaat("a_m_y_genstreet_01")] = "a_m_y_genstreet_01"
PedModel1[joaat("a_m_y_genstreet_02")] = "a_m_y_genstreet_02"
PedModel1[joaat("a_m_y_golfer_01")] = "a_m_y_golfer_01"
PedModel1[joaat("a_m_y_hasjew_01")] = "a_m_y_hasjew_01"
PedModel1[joaat("a_m_y_hiker_01")] = "a_m_y_hiker_01"
PedModel1[joaat("a_m_y_hippy_01")] = "a_m_y_hippy_01"
PedModel1[joaat("a_m_y_hipster_01")] = "a_m_y_hipster_01"
PedModel1[joaat("a_m_y_hipster_02")] = "a_m_y_hipster_02"
PedModel1[joaat("a_m_y_hipster_03")] = "a_m_y_hipster_03"
PedModel1[joaat("a_m_y_indian_01")] = "a_m_y_indian_01"
PedModel1[joaat("a_m_y_jetski_01")] = "a_m_y_jetski_01"
PedModel1[joaat("a_m_y_juggalo_01")] = "a_m_y_juggalo_01"
PedModel1[joaat("a_m_y_ktown_01")] = "a_m_y_ktown_01"
PedModel1[joaat("a_m_y_ktown_02")] = "a_m_y_ktown_02"
PedModel1[joaat("a_m_y_latino_01")] = "a_m_y_latino_01"
PedModel1[joaat("a_m_y_methhead_01")] = "a_m_y_methhead_01"
PedModel1[joaat("a_m_y_mexthug_01")] = "a_m_y_mexthug_01"
PedModel1[joaat("a_m_y_motox_01")] = "a_m_y_motox_01"
PedModel1[joaat("a_m_y_motox_02")] = "a_m_y_motox_02"
PedModel1[joaat("a_m_y_musclbeac_01")] = "a_m_y_musclbeac_01"
PedModel1[joaat("a_m_y_musclbeac_02")] = "a_m_y_musclbeac_02"
PedModel1[joaat("a_m_y_polynesian_01")] = "a_m_y_polynesian_01"
PedModel1[joaat("a_m_y_roadcyc_01")] = "a_m_y_roadcyc_01"
PedModel1[joaat("a_m_y_runner_01")] = "a_m_y_runner_01"
PedModel1[joaat("a_m_y_runner_02")] = "a_m_y_runner_02"
PedModel1[joaat("a_m_y_salton_01")] = "a_m_y_salton_01"
PedModel1[joaat("a_m_y_skater_01")] = "a_m_y_skater_01"
PedModel1[joaat("a_m_y_skater_02")] = "a_m_y_skater_02"
PedModel1[joaat("a_m_y_smartcaspat_01")] = "a_m_y_smartcaspat_01"
PedModel1[joaat("a_m_y_soucent_01")] = "a_m_y_soucent_01"
PedModel1[joaat("a_m_y_soucent_02")] = "a_m_y_soucent_02"
PedModel1[joaat("a_m_y_soucent_03")] = "a_m_y_soucent_03"
PedModel1[joaat("a_m_y_soucent_04")] = "a_m_y_soucent_04"
PedModel1[joaat("a_m_y_stbla_01")] = "a_m_y_stbla_01"
PedModel1[joaat("a_m_y_stbla_02")] = "a_m_y_stbla_02"
PedModel1[joaat("a_m_y_stlat_01")] = "a_m_y_stlat_01"
PedModel1[joaat("a_m_y_stwhi_01")] = "a_m_y_stwhi_01"
PedModel1[joaat("a_m_y_stwhi_02")] = "a_m_y_stwhi_02"
PedModel1[joaat("a_m_y_sunbathe_01")] = "a_m_y_sunbathe_01"
PedModel1[joaat("a_m_y_surfer_01")] = "a_m_y_surfer_01"
PedModel1[joaat("a_m_y_vindouche_01")] = "a_m_y_vindouche_01"
PedModel1[joaat("a_m_y_vinewood_01")] = "a_m_y_vinewood_01"
PedModel1[joaat("a_m_y_vinewood_02")] = "a_m_y_vinewood_02"
PedModel1[joaat("a_m_y_vinewood_03")] = "a_m_y_vinewood_03"
PedModel1[joaat("a_m_y_vinewood_04")] = "a_m_y_vinewood_04"
PedModel1[joaat("a_m_y_yoga_01")] = "a_m_y_yoga_01"
PedModel1[joaat("cs_amandatownley")] = "Amanda"
PedModel1[joaat("cs_andreas")] = "cs_andreas"
PedModel1[joaat("cs_ashley")] = "cs_ashley"
PedModel1[joaat("cs_bankman")] = "cs_bankman"
PedModel1[joaat("cs_barry")] = "cs_barry"
PedModel1[joaat("cs_beverly")] = "cs_beverly"
PedModel1[joaat("cs_brad")] = "cs_brad"
PedModel1[joaat("cs_bradcadaver")] = "cs_bradcadaver"
PedModel1[joaat("cs_carbuyer")] = "cs_carbuyer"
PedModel1[joaat("cs_casey")] = "cs_casey"
PedModel1[joaat("cs_chengsr")] = "cs_chengsr"
PedModel1[joaat("cs_chrisformage")] = "cs_chrisformage"
PedModel1[joaat("cs_clay")] = "cs_clay"
PedModel1[joaat("cs_dale")] = "cs_dale"
PedModel1[joaat("Dave Norton")] = "cs_davenorton"
PedModel1[joaat("cs_debra")] = "cs_debra"
PedModel1[joaat("cs_denise")] = "cs_denise"
PedModel1[joaat("cs_devin")] = "cs_devin"
PedModel1[joaat("cs_dom")] = "cs_dom"
PedModel1[joaat("cs_dreyfuss")] = "cs_dreyfuss"
PedModel1[joaat("cs_drfriedlander")] = "Isiah Friedlander"
PedModel1[joaat("cs_fabien")] = "cs_fabien"
PedModel1[joaat("cs_fbisuit_01")] = "cs_fbisuit_01"
PedModel1[joaat("cs_floyd")] = "cs_floyd"
PedModel1[joaat("cs_guadalope")] = "cs_guadalope"
PedModel1[joaat("cs_gurk")] = "cs_gurk"
PedModel1[joaat("cs_hunter")] = "cs_hunter"
PedModel1[joaat("cs_janet")] = "cs_janet"
PedModel1[joaat("cs_jewelass")] = "cs_jewelass"
PedModel1[joaat("cs_jimmyboston")] = "cs_jimmyboston"
PedModel1[joaat("cs_jimmydisanto")] = "cs_jimmydisanto"
PedModel1[joaat("cs_jimmydisanto2")] = "cs_jimmydisanto2"
PedModel1[joaat("cs_joeminuteman")] = "cs_joeminuteman"
PedModel1[joaat("cs_johnnyklebitz")] = "cs_johnnyklebitz"
PedModel1[joaat("cs_josef")] = "cs_josef"
PedModel1[joaat("cs_josh")] = "cs_josh"
PedModel1[joaat("cs_karen_daniels")] = "cs_karen_daniels"
PedModel1[joaat("cs_lamardavis")] = "cs_lamardavis"
PedModel1[joaat("cs_lazlow")] = "Lazlow 1"
PedModel1[joaat("cs_lazlow_2")] = "cs_lazlow_2"
PedModel1[joaat("cs_lestercrest")] = "cs_lestercrest"
PedModel1[joaat("cs_lestercrest_2")] = "cs_lestercrest_2"
PedModel1[joaat("cs_lestercrest_3")] = "cs_lestercrest_3"
PedModel1[joaat("cs_lifeinvad_01")] = "cs_lifeinvad_01"
PedModel1[joaat("cs_magenta")] = "cs_magenta"
PedModel1[joaat("cs_manuel")] = "cs_manuel"
PedModel1[joaat("cs_marnie")] = "cs_marnie"
PedModel1[joaat("cs_martinmadrazo")] = "cs_martinmadrazo"
PedModel1[joaat("cs_maryann")] = "cs_maryann"
PedModel1[joaat("cs_michelle")] = "cs_michelle"
PedModel1[joaat("cs_milton")] = "cs_milton"
PedModel1[joaat("cs_molly")] = "cs_molly"
PedModel1[joaat("cs_movpremf_01")] = "cs_movpremf_01"
PedModel1[joaat("cs_movpremmale")] = "cs_movpremmale"
PedModel1[joaat("cs_mrk")] = "cs_mrk"
PedModel1[joaat("cs_mrs_thornhill")] = "cs_mrs_thornhill"
PedModel1[joaat("cs_mrsphillips")] = "cs_mrsphillips"
PedModel1[joaat("cs_natalia")] = "cs_natalia"
PedModel1[joaat("cs_nervousron")] = "cs_nervousron"
PedModel1[joaat("cs_nigel")] = "cs_nigel"
PedModel1[joaat("cs_old_man1a")] = "cs_old_man1a"
PedModel1[joaat("cs_old_man2")] = "cs_old_man2"
PedModel1[joaat("cs_omega")] = "cs_omega"
PedModel1[joaat("cs_orleans")] = "cs_orleans"
PedModel1[joaat("cs_paper")] = "cs_paper"
PedModel1[joaat("cs_patricia")] = "cs_patricia"
PedModel1[joaat("cs_patricia_02")] = "cs_patricia_02"
PedModel1[joaat("cs_priest")] = "cs_priest"
PedModel1[joaat("cs_prolsec_02")] = "cs_prolsec_02"
PedModel1[joaat("cs_russiandrunk")] = "cs_russiandrunk"
PedModel1[joaat("cs_siemonyetarian")] = "cs_siemonyetarian"
PedModel1[joaat("cs_solomon")] = "cs_solomon"
PedModel1[joaat("cs_stevehains")] = "Steven Haines"
PedModel1[joaat("cs_stretch")] = "Stretch"
PedModel1[joaat("cs_tanisha")] = "cs_tanisha"
PedModel1[joaat("cs_taocheng")] = "Tao Cheng"
PedModel1[joaat("cs_taocheng2")] = "cs_taocheng2"
PedModel1[joaat("cs_taostranslator")] = "cs_taostranslator"
PedModel1[joaat("cs_taostranslator2")] = "cs_taostranslator2"
PedModel1[joaat("cs_tenniscoach")] = "cs_tenniscoach"
PedModel1[joaat("cs_terry")] = "cs_terry"
PedModel1[joaat("cs_tom")] = "cs_tom"
PedModel1[joaat("cs_tomepsilon")] = "cs_tomepsilon"
PedModel1[joaat("cs_tracydisanto")] = "cs_tracydisanto"
PedModel1[joaat("cs_wade")] = "cs_wade"
PedModel1[joaat("cs_zimbor")] = "cs_zimbor"
PedModel1[joaat("csb_abigail")] = "Abigail"
PedModel1[joaat("csb_agatha")] = "csb_agatha"
PedModel1[joaat("csb_agent")] = "csb_agent"
PedModel1[joaat("csb_alan")] = "csb_alan"
PedModel1[joaat("csb_anita")] = "csb_anita"
PedModel1[joaat("csb_anton")] = "csb_anton"
PedModel1[joaat("csb_ary")] = "csb_ary"
PedModel1[joaat("csb_avery")] = "csb_avery"
PedModel1[joaat("csb_avon")] = "csb_avon"
PedModel1[joaat("csb_ballasog")] = "csb_ballasog"
PedModel1[joaat("csb_bogdan")] = "csb_bogdan"
PedModel1[joaat("csb_bride")] = "csb_bride"
PedModel1[joaat("csb_brucie2")] = "csb_brucie2"
PedModel1[joaat("csb_bryony")] = "csb_bryony"
PedModel1[joaat("csb_burgerdrug")] = "csb_burgerdrug"
PedModel1[joaat("csb_car3guy1")] = "csb_car3guy1"
PedModel1[joaat("csb_car3guy2")] = "csb_car3guy2"
PedModel1[joaat("csb_celeb_01")] = "csb_celeb_01"
PedModel1[joaat("csb_chef")] = "csb_chef"
PedModel1[joaat("csb_chef2")] = "csb_chef2"
PedModel1[joaat("csb_chin_goon")] = "csb_chin_goon"
PedModel1[joaat("csb_cletus")] = "csb_cletus"
PedModel1[joaat("csb_cop")] = "csb_cop"
PedModel1[joaat("csb_customer")] = "csb_customer"
PedModel1[joaat("csb_denise_friend")] = "csb_denise_friend"
PedModel1[joaat("csb_dix")] = "csb_dix"
PedModel1[joaat("csb_djblamadon")] = "csb_djblamadon"
PedModel1[joaat("csb_englishdave")] = "English Dave"
PedModel1[joaat("csb_englishdave_02")] = "csb_englishdave_02"
PedModel1[joaat("csb_fos_rep")] = "csb_fos_rep"
PedModel1[joaat("csb_g")] = "Gerald 2"
PedModel1[joaat("csb_georginacheng")] = "csb_georginacheng"
PedModel1[joaat("csb_groom")] = "csb_groom"
PedModel1[joaat("csb_grove_str_dlr")] = "csb_grove_str_dlr"
PedModel1[joaat("csb_gustavo")] = "Gustavo"
PedModel1[joaat("csb_hao")] = "Hao"
PedModel1[joaat("csb_helmsmanpavel")] = "Pavel"
PedModel1[joaat("csb_huang")] = "csb_huang"
PedModel1[joaat("csb_hugh")] = "csb_hugh"
PedModel1[joaat("csb_imran")] = "csb_imran"
PedModel1[joaat("csb_isldj_00")] = "csb_isldj_00"
PedModel1[joaat("csb_isldj_01")] = "csb_isldj_01"
PedModel1[joaat("csb_isldj_02")] = "csb_isldj_02"
PedModel1[joaat("csb_isldj_03")] = "csb_isldj_03"
PedModel1[joaat("csb_isldj_04")] = "csb_isldj_04"
PedModel1[joaat("csb_jackhowitzer")] = "csb_jackhowitzer"
PedModel1[joaat("csb_janitor")] = "csb_janitor"
PedModel1[joaat("csb_jio")] = "Jimmy Iovine"
PedModel1[joaat("csb_juanstrickler")] = "csb_juanstrickler"
PedModel1[joaat("csb_maude")] = "csb_maude"
PedModel1[joaat("csb_miguelmadrazo")] = "csb_miguelmadrazo"
PedModel1[joaat("csb_mjo")] = "DJ Pooh"
PedModel1[joaat("csb_money")] = "Avi Schwartzman"
PedModel1[joaat("csb_mp_agent14")] = "csb_mp_agent14"
PedModel1[joaat("csb_mrs_r")] = "Mrs Rackman"
PedModel1[joaat("csb_mweather")] = "csb_mweather"
PedModel1[joaat("csb_ortega")] = "csb_ortega"
PedModel1[joaat("csb_oscar")] = "csb_oscar"
PedModel1[joaat("csb_paige")] = "csb_paige"
PedModel1[joaat("csb_popov")] = "csb_popov"
PedModel1[joaat("csb_porndudes")] = "csb_porndudes"
PedModel1[joaat("csb_prologuedriver")] = "csb_prologuedriver"
PedModel1[joaat("csb_prolsec")] = "csb_prolsec"
PedModel1[joaat("csb_ramp_gang")] = "csb_ramp_gang"
PedModel1[joaat("csb_ramp_hic")] = "csb_ramp_hic"
PedModel1[joaat("csb_ramp_hipster")] = "csb_ramp_hipster"
PedModel1[joaat("csb_ramp_marine")] = "csb_ramp_marine"
PedModel1[joaat("csb_ramp_mex")] = "csb_ramp_mex"
PedModel1[joaat("csb_rashcosvki")] = "csb_rashcosvki"
PedModel1[joaat("csb_reporter")] = "csb_reporter"
PedModel1[joaat("csb_roccopelosi")] = "csb_roccopelosi"
PedModel1[joaat("csb_screen_writer")] = "csb_screen_writer"
PedModel1[joaat("csb_sol")] = "csb_sol"
PedModel1[joaat("csb_sss")] = "csb_sss"
PedModel1[joaat("csb_stripper_01")] = "csb_stripper_01"
PedModel1[joaat("csb_stripper_02")] = "csb_stripper_02"
PedModel1[joaat("csb_talcc")] = "csb_talcc"
PedModel1[joaat("csb_talmm")] = "csb_talmm"
PedModel1[joaat("csb_thornton")] = "csb_thornton"
PedModel1[joaat("csb_tomcasino")] = "csb_tomcasino"
PedModel1[joaat("csb_tonya")] = "csb_tonya"
PedModel1[joaat("csb_tonyprince")] = "csb_tonyprince"
PedModel1[joaat("csb_trafficwarden")] = "csb_trafficwarden"
PedModel1[joaat("csb_undercover")] = "csb_undercover"
PedModel1[joaat("csb_vagspeak")] = "csb_vagspeak"
PedModel1[joaat("csb_vincent")] = "csb_vincent"
PedModel1[joaat("csb_vincent_2")] = "Vincent 2"
PedModel1[joaat("csb_wendy")] = "csb_wendy"
PedModel1[joaat("g_f_importexport_01")] = "g_f_importexport_01"
PedModel1[joaat("g_f_y_ballas_01")] = "g_f_y_ballas_01"
PedModel1[joaat("g_f_y_families_01")] = "g_f_y_families_01"
PedModel1[joaat("g_f_y_lost_01")] = "g_f_y_lost_01"
PedModel1[joaat("g_f_y_vagos_01")] = "g_f_y_vagos_01"
PedModel1[joaat("g_m_importexport_01")] = "g_m_importexport_01"
PedModel1[joaat("g_m_m_armboss_01")] = "g_m_m_armboss_01"
PedModel1[joaat("g_m_m_armgoon_01")] = "g_m_m_armgoon_01"
PedModel1[joaat("g_m_m_armlieut_01")] = "g_m_m_armlieut_01"
PedModel1[joaat("g_m_m_cartelguards_01")] = "g_m_m_cartelguards_01"
PedModel1[joaat("g_m_m_cartelguards_02")] = "g_m_m_cartelguards_02"
PedModel1[joaat("g_m_m_casrn_01")] = "g_m_m_casrn_01"
PedModel1[joaat("g_m_m_chemwork_01")] = "g_m_m_chemwork_01"
PedModel1[joaat("g_m_m_chiboss_01")] = "g_m_m_chiboss_01"
PedModel1[joaat("g_m_m_chicold_01")] = "g_m_m_chicold_01"
PedModel1[joaat("g_m_m_chigoon_01")] = "g_m_m_chigoon_01"
PedModel1[joaat("g_m_m_chigoon_02")] = "g_m_m_chigoon_02"
PedModel1[joaat("g_m_m_korboss_01")] = "g_m_m_korboss_01"
PedModel1[joaat("g_m_m_mexboss_01")] = "g_m_m_mexboss_01"
PedModel1[joaat("g_m_m_mexboss_02")] = "g_m_m_mexboss_02"
PedModel1[joaat("g_m_y_armgoon_02")] = "g_m_y_armgoon_02"
PedModel1[joaat("g_m_y_azteca_01")] = "g_m_y_azteca_01"
PedModel1[joaat("g_m_y_ballaeast_01")] = "g_m_y_ballaeast_01"
PedModel1[joaat("g_m_y_ballaorig_01")] = "g_m_y_ballaorig_01"
PedModel1[joaat("g_m_y_ballasout_01")] = "g_m_y_ballasout_01"
PedModel1[joaat("g_m_y_famca_01")] = "g_m_y_famca_01"
PedModel1[joaat("g_m_y_famdnf_01")] = "g_m_y_famdnf_01"
PedModel1[joaat("g_m_y_famfor_01")] = "g_m_y_famfor_01"
PedModel1[joaat("g_m_y_korean_01")] = "g_m_y_korean_01"
PedModel1[joaat("g_m_y_korean_02")] = "g_m_y_korean_02"
PedModel1[joaat("g_m_y_korlieut_01")] = "g_m_y_korlieut_01"
PedModel1[joaat("g_m_y_lost_01")] = "g_m_y_lost_01"
PedModel1[joaat("g_m_y_lost_02")] = "g_m_y_lost_02"
PedModel1[joaat("g_m_y_lost_03")] = "g_m_y_lost_03"
PedModel1[joaat("g_m_y_mexgang_01")] = "g_m_y_mexgang_01"
PedModel1[joaat("g_m_y_mexgoon_01")] = "g_m_y_mexgoon_01"
PedModel1[joaat("g_m_y_mexgoon_02")] = "g_m_y_mexgoon_02"
PedModel1[joaat("g_m_y_mexgoon_03")] = "g_m_y_mexgoon_03"
PedModel1[joaat("g_m_y_pologoon_01")] = "g_m_y_pologoon_01"
PedModel1[joaat("g_m_y_pologoon_02")] = "g_m_y_pologoon_02"
PedModel1[joaat("g_m_y_salvaboss_01")] = "g_m_y_salvaboss_01"
PedModel1[joaat("g_m_y_salvagoon_01")] = "g_m_y_salvagoon_01"
PedModel1[joaat("g_m_y_salvagoon_02")] = "g_m_y_salvagoon_02"
PedModel1[joaat("g_m_y_salvagoon_03")] = "g_m_y_salvagoon_03"
PedModel1[joaat("g_m_y_strpunk_01")] = "g_m_y_strpunk_01"
PedModel1[joaat("g_m_y_strpunk_02")] = "g_m_y_strpunk_02"
PedModel1[joaat("hc_driver")] = "hc_driver"
PedModel1[joaat("hc_gunman")] = "hc_gunman"
PedModel1[joaat("hc_hacker")] = "hc_hacker"
PedModel1[joaat("ig_abigail")] = "Abigail"
PedModel1[joaat("ig_agatha")] = "Agatha"
PedModel1[joaat("ig_agent")] = "Agent"
PedModel1[joaat("ig_amandatownley")] = "Amanda 1"
PedModel1[joaat("ig_andreas")] = "Andreas"
PedModel1[joaat("ig_ary")] = "Ary"
PedModel1[joaat("ig_ashley")] = "Ashley"
PedModel1[joaat("ig_avery")] = "Avery"
PedModel1[joaat("ig_avon")] = "Avon Hertz"
PedModel1[joaat("ig_ballasog")] = "Ballas Chilli D"
PedModel1[joaat("ig_bankman")] = "Bankman"
PedModel1[joaat("ig_barry")] = "Barry"
PedModel1[joaat("ig_benny")] = "Benny"
PedModel1[joaat("ig_bestmen")] = "Bestmen"
PedModel1[joaat("ig_beverly")] = "Beverly"
PedModel1[joaat("ig_brad")] = "Brad"
PedModel1[joaat("ig_bride")] = "ig_bride"
PedModel1[joaat("ig_brucie2")] = "Brucie 2"
PedModel1[joaat("ig_car3guy1")] = "ig_car3guy1"
PedModel1[joaat("ig_car3guy2")] = "ig_car3guy2"
PedModel1[joaat("ig_casey")] = "Casey"
PedModel1[joaat("ig_celeb_01")] = "ig_celeb_01"
PedModel1[joaat("ig_chef")] = "ig_chef"
PedModel1[joaat("ig_chef2")] = "ig_chef2"
PedModel1[joaat("ig_chengsr")] = "Cheng Sr"
PedModel1[joaat("ig_chrisformage")] = "Cris Formage"
PedModel1[joaat("ig_clay")] = "Clay Simons"
PedModel1[joaat("ig_claypain")] = "Claypain"
PedModel1[joaat("ig_cletus")] = "Cletus"
PedModel1[joaat("ig_dale")] = "Dale"
PedModel1[joaat("ig_davenorton")] = "Dave Norton"
PedModel1[joaat("ig_denise")] = "Denise"
PedModel1[joaat("ig_devin")] = "Devin"
PedModel1[joaat("ig_dix")] = "dix"
PedModel1[joaat("ig_djblamadon")] = "djblamadon"
PedModel1[joaat("ig_djblamrupert")] = "Rupert Murray"
PedModel1[joaat("ig_djblamryanh")] = "djblamryanh"
PedModel1[joaat("ig_djblamryans")] = "djblamryans"
PedModel1[joaat("ig_djdixmanager")] = "djdixmanager"
PedModel1[joaat("ig_djgeneric_01")] = "djgeneric_01"
PedModel1[joaat("ig_djsolfotios")] = "djsolfotios"
PedModel1[joaat("ig_djsoljakob")] = "Jakob Grunert"
PedModel1[joaat("ig_djsolmanager")] = "djsolmanager"
PedModel1[joaat("ig_djsolmike")] = "djsolmike"
PedModel1[joaat("ig_djsolrobt")] = "djsolrobt"
PedModel1[joaat("ig_djtalaurelia")] = "djtalaurelia"
PedModel1[joaat("ig_djtalignazio")] = "djtalignazio"
PedModel1[joaat("ig_dom")] = "Dom"
PedModel1[joaat("ig_dreyfuss")] = "dreyfuss"
PedModel1[joaat("ig_drfriedlander")] = "drfriedlander"
PedModel1[joaat("ig_englishdave")] = "englishdave"
PedModel1[joaat("ig_englishdave_02")] = "englishdave_02"
PedModel1[joaat("ig_fabien")] = "fabien"
PedModel1[joaat("ig_fbisuit_01")] = "fbisuit_01"
PedModel1[joaat("ig_floyd")] = "floyd"
PedModel1[joaat("ig_g")] = "Gerald"
PedModel1[joaat("ig_georginacheng")] = "georginacheng"
PedModel1[joaat("ig_groom")] = "groom"
PedModel1[joaat("ig_gustavo")] = "gustavo"
PedModel1[joaat("ig_hao")] = "hao"
PedModel1[joaat("ig_helmsmanpavel")] = "helmsmanpavel"
PedModel1[joaat("ig_huang")] = "huang"
PedModel1[joaat("ig_hunter")] = "hunter"
PedModel1[joaat("ig_isldj_00")] = "isldj_00"
PedModel1[joaat("ig_isldj_01")] = "isldj_01"
PedModel1[joaat("ig_isldj_02")] = "isldj_02"
PedModel1[joaat("ig_isldj_03")] = "isldj_03"
PedModel1[joaat("ig_isldj_04")] = "Moodyman"
PedModel1[joaat("ig_isldj_04_d_01")] = "isldj_04_d_01"
PedModel1[joaat("ig_isldj_04_d_02")] = "isldj_04_d_02"
PedModel1[joaat("ig_isldj_04_e_01")] = "isldj_04_e_01"
PedModel1[joaat("ig_jackie")] = "jackie"
PedModel1[joaat("ig_janet")] = "janet"
PedModel1[joaat("ig_jay_norris")] = "jay_norris"
PedModel1[joaat("ig_jewelass")] = "jewelass"
PedModel1[joaat("ig_jimmyboston")] = "jimmyboston"
PedModel1[joaat("ig_jimmyboston_02")] = "jimmyboston_02"
PedModel1[joaat("ig_jimmydisanto")] = "jimmydisanto"
PedModel1[joaat("ig_jimmydisanto2")] = "Jimmy 2"
PedModel1[joaat("ig_jio")] = "jio"
PedModel1[joaat("ig_joeminuteman")] = "joeminuteman"
PedModel1[joaat("ig_johnnyklebitz")] = "johnnyklebitz"
PedModel1[joaat("ig_josef")] = "josef"
PedModel1[joaat("ig_josh")] = "josh"
PedModel1[joaat("ig_juanstrickler")] = "juanstrickler"
PedModel1[joaat("ig_karen_daniels")] = "karen_daniels"
PedModel1[joaat("ig_kaylee")] = "kaylee"
PedModel1[joaat("ig_kerrymcintosh")] = "kerrymcintosh"
PedModel1[joaat("ig_kerrymcintosh_02")] = "kerrymcintosh_02"
PedModel1[joaat("ig_lacey_jones_02")] = "lacey_jones_02"
PedModel1[joaat("ig_lamardavis")] = "lamardavis"
PedModel1[joaat("ig_lazlow")] = "lazlow"
PedModel1[joaat("ig_lazlow_2")] = "Lazlow 2"
PedModel1[joaat("ig_lestercrest")] = "lestercrest"
PedModel1[joaat("ig_lestercrest_2")] = "lestercrest_2"
PedModel1[joaat("ig_lestercrest_3")] = "lestercrest_3"
PedModel1[joaat("ig_lifeinvad_01")] = "lifeinvad_01"
PedModel1[joaat("ig_lifeinvad_02")] = "lifeinvad_02"
PedModel1[joaat("ig_magenta")] = "magenta"
PedModel1[joaat("ig_malc")] = "malc"
PedModel1[joaat("ig_manuel")] = "manuel"
PedModel1[joaat("ig_marnie")] = "marnie"
PedModel1[joaat("ig_maryann")] = "Mary Ann"
PedModel1[joaat("ig_maude")] = "Maude"
PedModel1[joaat("ig_michelle")] = "Michelle"
PedModel1[joaat("ig_miguelmadrazo")] = "Miguel Madrazo"
PedModel1[joaat("ig_milton")] = "Milton"
PedModel1[joaat("ig_mjo")] = "DJ Pooh"
PedModel1[joaat("ig_molly")] = "molly"
PedModel1[joaat("ig_money")] = "Avi Schwartzman 1"
PedModel1[joaat("ig_mp_agent14")] = "mp_agent14"
PedModel1[joaat("ig_mrk")] = "mrk"
PedModel1[joaat("ig_mrs_thornhill")] = "mrs_thornhill"
PedModel1[joaat("ig_mrsphillips")] = "Mrs Phillips"
PedModel1[joaat("ig_natalia")] = "natalia"
PedModel1[joaat("ig_nervousron")] = "nervousron"
PedModel1[joaat("ig_nigel")] = "nigel"
PedModel1[joaat("ig_old_man1a")] = "old_man1a"
PedModel1[joaat("ig_old_man2")] = "old_man2"
PedModel1[joaat("ig_oldrichguy")] = "oldrichguy"
PedModel1[joaat("ig_omega")] = "omega"
PedModel1[joaat("ig_oneil")] = "oneil"
PedModel1[joaat("ig_orleans")] = "orleans"
PedModel1[joaat("ig_ortega")] = "ortega"
PedModel1[joaat("ig_paige")] = "paige"
PedModel1[joaat("ig_paper")] = "paper"
PedModel1[joaat("ig_patricia")] = "patricia"
PedModel1[joaat("ig_patricia_02")] = "patricia_02"
PedModel1[joaat("ig_pilot")] = "pilot"
PedModel1[joaat("ig_popov")] = "popov"
PedModel1[joaat("ig_priest")] = "priest"
PedModel1[joaat("ig_prolsec_02")] = "prolsec_02"
PedModel1[joaat("ig_ramp_gang")] = "ramp_gang"
PedModel1[joaat("ig_ramp_hic")] = "ramp_hic"
PedModel1[joaat("ig_ramp_hipster")] = "ramp_hipster"
PedModel1[joaat("ig_ramp_mex")] = "ramp_mex"
PedModel1[joaat("ig_rashcosvki")] = "Rashcosvki"
PedModel1[joaat("ig_roccopelosi")] = "roccopelosi"
PedModel1[joaat("ig_russiandrunk")] = "russiandrunk"
PedModel1[joaat("ig_sacha")] = "sacha"
PedModel1[joaat("ig_screen_writer")] = "screen_writer"
PedModel1[joaat("ig_siemonyetarian")] = "siemonyetarian"
PedModel1[joaat("ig_sol")] =	 "sol"
PedModel1[joaat("ig_solomon")] = "Solomon"
PedModel1[joaat("ig_sss")] =	 "Scott Storch"
PedModel1[joaat("ig_stevehains")] = "Steven Haines"
PedModel1[joaat("ig_stretch")] = "Harold 'Stretch' Joseph"
PedModel1[joaat("ig_talcc")] = "talcc"
PedModel1[joaat("ig_talina")] = "talina"
PedModel1[joaat("ig_talmm")] = "talmm"
PedModel1[joaat("ig_tanisha")] = "tanisha"
PedModel1[joaat("ig_taocheng")] = "taocheng"
PedModel1[joaat("ig_taocheng2")] = "taocheng2"
PedModel1[joaat("ig_taostranslator")] = "taostranslator"
PedModel1[joaat("ig_taostranslator2")] = "taostranslator2"
PedModel1[joaat("ig_tenniscoach")] = "tenniscoach"
PedModel1[joaat("ig_terry")] = "Terry Thorpe"
PedModel1[joaat("ig_thornton")] = "Thornton Duggan"
PedModel1[joaat("ig_tomcasino")] = "tomcasino"
PedModel1[joaat("ig_tomepsilon")] = "tomepsilon"
PedModel1[joaat("ig_tonya")] = "tonya"
PedModel1[joaat("ig_tonyprince")] = "tonyprince"
PedModel1[joaat("ig_tracydisanto")] = "tracydisanto"
PedModel1[joaat("ig_trafficwarden")] = "trafficwarden"
PedModel1[joaat("ig_tylerdix")] = "tylerdix"
PedModel1[joaat("ig_tylerdix_02")] = "tylerdix_02"
PedModel1[joaat("ig_vagspeak")] = "Vagspeak"
PedModel1[joaat("ig_vincent")] = "Vincent"
PedModel1[joaat("ig_vincent_2")] = "Vincent 2"
PedModel1[joaat("ig_wade")] = "Wade"
PedModel1[joaat("ig_wendy")] = "Wendy"
PedModel1[joaat("ig_zimbor")] = "Zimbor"
PedModel1[joaat("mp_f_bennymech_01")] = "mp_f_bennymech_01"
PedModel1[joaat("mp_f_boatstaff_01")] = "mp_f_boatstaff_01"
PedModel1[joaat("mp_f_cardesign_01")] = "mp_f_cardesign_01"
PedModel1[joaat("mp_f_chbar_01")] = "mp_f_chbar_01"
PedModel1[joaat("mp_f_cocaine_01")] = "mp_f_cocaine_01"
PedModel1[joaat("mp_f_counterfeit_01")] = "mp_f_counterfeit_01"
PedModel1[joaat("mp_f_deadhooker")] = "mp_f_deadhooker"
PedModel1[joaat("mp_f_execpa_01")] = "mp_f_execpa_01"
PedModel1[joaat("mp_f_execpa_02")] = "mp_f_execpa_02"
PedModel1[joaat("mp_f_forgery_01")] = "mp_f_forgery_01"
PedModel1[joaat("mp_f_helistaff_01")] = "mp_f_helistaff_01"
PedModel1[joaat("mp_f_meth_01")] = "mp_f_meth_01"
PedModel1[joaat("mp_f_misty_01")] = "mp_f_misty_01"
PedModel1[joaat("mp_f_stripperlite")] = "Nikki"
PedModel1[joaat("mp_f_weed_01")] = "mp_f_weed_01"
PedModel1[joaat("mp_g_m_pros_01")] = "mp_g_m_pros_01"
PedModel1[joaat("mp_headtargets")] = "mp_headtargets"
PedModel1[joaat("mp_m_avongoon")] = "mp_m_avongoon"
PedModel1[joaat("mp_m_boatstaff_01")] = "mp_m_boatstaff_01"
PedModel1[joaat("mp_m_bogdangoon")] = "mp_m_bogdangoon"
PedModel1[joaat("mp_m_claude_01")] = "mp_m_claude_01"
PedModel1[joaat("mp_m_cocaine_01")] = "mp_m_cocaine_01"
PedModel1[joaat("mp_m_counterfeit_01")] = "mp_m_counterfeit_01"
PedModel1[joaat("mp_m_exarmy_01")] = "mp_m_exarmy_01"
PedModel1[joaat("mp_m_execpa_01")] = "mp_m_execpa_01"
PedModel1[joaat("mp_m_famdd_01")] = "mp_m_famdd_01"
PedModel1[joaat("mp_m_fibsec_01")] = "mp_m_fibsec_01"
PedModel1[joaat("mp_m_forgery_01")] = "mp_m_forgery_01"
PedModel1[joaat("mp_m_g_vagfun_01")] = "mp_m_g_vagfun_01"
PedModel1[joaat("mp_m_marston_01")] = "mp_m_marston_01"
PedModel1[joaat("mp_m_meth_01")] = "mp_m_meth_01"
PedModel1[joaat("mp_m_niko_01")] = "mp_m_niko_01"
PedModel1[joaat("mp_m_securoguard_01")] = "mp_m_securoguard_01"
PedModel1[joaat("mp_m_shopkeep_01")] = "mp_m_shopkeep_01"
PedModel1[joaat("mp_m_waremech_01")] = "mp_m_waremech_01"
PedModel1[joaat("mp_m_weapexp_01")] = "mp_m_weapexp_01"
PedModel1[joaat("mp_m_weapwork_01")] = "mp_m_weapwork_01"
PedModel1[joaat("mp_m_weed_01")] = "mp_m_weed_01"
PedModel1[joaat("mp_s_m_armoured_01")] = "mp_s_m_armoured_01"
PedModel1[joaat("s_f_m_fembarber")] = "s_f_m_fembarber"
PedModel1[joaat("s_f_m_maid_01")] = "s_f_m_maid_01"
PedModel1[joaat("s_f_m_shop_high")] = "s_f_m_shop_high"
PedModel1[joaat("s_f_m_sweatshop_01")] = "s_f_m_sweatshop_01"
PedModel1[joaat("s_f_y_airhostess_01")] = "s_f_y_airhostess_01"
PedModel1[joaat("s_f_y_bartender_01")] = "s_f_y_bartender_01"
PedModel1[joaat("s_f_y_baywatch_01")] = "s_f_y_baywatch_01"
PedModel1[joaat("s_f_y_beachbarstaff_01")] = "s_f_y_beachbarstaff_01"
PedModel1[joaat("s_f_y_casino_01")] = "s_f_y_casino_01"
PedModel1[joaat("s_f_y_clubbar_01")] = "s_f_y_clubbar_01"
PedModel1[joaat("s_f_y_clubbar_02")] = "s_f_y_clubbar_02"
PedModel1[joaat("s_f_y_cop_01")] = "s_f_y_cop_01"
PedModel1[joaat("s_f_y_factory_01")] = "s_f_y_factory_01"
PedModel1[joaat("s_f_y_hooker_01")] = "s_f_y_hooker_01"
PedModel1[joaat("s_f_y_hooker_02")] = "s_f_y_hooker_02"
PedModel1[joaat("s_f_y_hooker_03")] = "s_f_y_hooker_03"
PedModel1[joaat("s_f_y_migrant_01")] = "s_f_y_migrant_01"
PedModel1[joaat("s_f_y_movprem_01")] = "s_f_y_movprem_01"
PedModel1[joaat("s_f_y_ranger_01")] = "s_f_y_ranger_01"
PedModel1[joaat("s_f_y_scrubs_01")] = "s_f_y_scrubs_01"
PedModel1[joaat("s_f_y_sheriff_01")] = "s_f_y_sheriff_01"
PedModel1[joaat("s_f_y_shop_low")] = "s_f_y_shop_low"
PedModel1[joaat("s_f_y_shop_mid")] = "s_f_y_shop_mid"
PedModel1[joaat("s_f_y_stripper_01")] = "s_f_y_stripper_01"
PedModel1[joaat("s_f_y_stripper_02")] = "s_f_y_stripper_02"
PedModel1[joaat("s_f_y_stripperlite")] = "s_f_y_stripperlite"
PedModel1[joaat("s_f_y_sweatshop_01")] = "s_f_y_sweatshop_01"
PedModel1[joaat("s_m_m_ammucountry")] = "s_m_m_ammucountry"
PedModel1[joaat("s_m_m_armoured_01")] = "s_m_m_armoured_01"
PedModel1[joaat("s_m_m_armoured_02")] = "s_m_m_armoured_02"
PedModel1[joaat("s_m_m_autoshop_01")] = "s_m_m_autoshop_01"
PedModel1[joaat("s_m_m_autoshop_02")] = "s_m_m_autoshop_02"
PedModel1[joaat("s_m_m_bouncer_01")] = "s_m_m_bouncer_01"
PedModel1[joaat("s_m_m_bouncer_02")] = "s_m_m_bouncer_02"
PedModel1[joaat("s_m_m_ccrew_01")] = "s_m_m_ccrew_01"
PedModel1[joaat("s_m_m_chemsec_01")] = "s_m_m_chemsec_01"
PedModel1[joaat("s_m_m_ciasec_01")] = "s_m_m_ciasec_01"
PedModel1[joaat("s_m_m_cntrybar_01")] = "s_m_m_cntrybar_01"
PedModel1[joaat("s_m_m_dockwork_01")] = "s_m_m_dockwork_01"
PedModel1[joaat("s_m_m_doctor_01")] = "s_m_m_doctor_01"
PedModel1[joaat("s_m_m_drugprocess_01")] = "s_m_m_drugprocess_01"
PedModel1[joaat("s_m_m_fiboffice_01")] = "s_m_m_fiboffice_01"
PedModel1[joaat("s_m_m_fiboffice_02")] = "s_m_m_fiboffice_02"
PedModel1[joaat("s_m_m_fibsec_01")] = "s_m_m_fibsec_01"
PedModel1[joaat("s_m_m_fieldworker_01")] = "s_m_m_fieldworker_01"
PedModel1[joaat("s_m_m_gaffer_01")] = "s_m_m_gaffer_01"
PedModel1[joaat("s_m_m_gardener_01")] = "s_m_m_gardener_01"
PedModel1[joaat("s_m_m_gentransport")] = "s_m_m_gentransport"
PedModel1[joaat("s_m_m_hairdress_01")] = "s_m_m_hairdress_01"
PedModel1[joaat("s_m_m_highsec_01")] = "s_m_m_highsec_01"
PedModel1[joaat("s_m_m_highsec_02")] = "s_m_m_highsec_02"
PedModel1[joaat("s_m_m_highsec_03")] = "s_m_m_highsec_03"
PedModel1[joaat("s_m_m_highsec_04")] = "s_m_m_highsec_04"
PedModel1[joaat("s_m_m_janitor")] = "s_m_m_janitor"
PedModel1[joaat("s_m_m_lathandy_01")] = "s_m_m_lathandy_01"
PedModel1[joaat("s_m_m_lifeinvad_01")] = "s_m_m_lifeinvad_01"
PedModel1[joaat("s_m_m_linecook")] = "s_m_m_linecook"
PedModel1[joaat("s_m_m_lsmetro_01")] = "s_m_m_lsmetro_01"
PedModel1[joaat("s_m_m_mariachi_01")] = "s_m_m_mariachi_01"
PedModel1[joaat("s_m_m_marine_01")] = "s_m_m_marine_01"
PedModel1[joaat("s_m_m_marine_02")] = "s_m_m_marine_02"
PedModel1[joaat("s_m_m_migrant_01")] = "s_m_m_migrant_01"
PedModel1[joaat("s_m_m_movalien_01")] = "s_m_m_movalien_01"
PedModel1[joaat("s_m_m_movprem_01")] = "s_m_m_movprem_01"
PedModel1[joaat("s_m_m_movspace_01")] = "s_m_m_movspace_01"
PedModel1[joaat("s_m_m_paramedic_01")] = "s_m_m_paramedic_01"
PedModel1[joaat("s_m_m_pilot_01")] = "s_m_m_pilot_01"
PedModel1[joaat("s_m_m_pilot_02")] = "s_m_m_pilot_02"
PedModel1[joaat("s_m_m_postal_01")] = "s_m_m_postal_01"
PedModel1[joaat("s_m_m_postal_02")] = "s_m_m_postal_02"
PedModel1[joaat("s_m_m_prisguard_01")] = "s_m_m_prisguard_01"
PedModel1[joaat("s_m_m_scientist_01")] = "s_m_m_scientist_01"
PedModel1[joaat("s_m_m_security_01")] = "s_m_m_security_01"
PedModel1[joaat("s_m_m_snowcop_01")] = "s_m_m_snowcop_01"
PedModel1[joaat("s_m_m_strperf_01")] = "s_m_m_strperf_01"
PedModel1[joaat("s_m_m_strpreach_01")] = "s_m_m_strpreach_01"
PedModel1[joaat("s_m_m_strvend_01")] = "s_m_m_strvend_01"
PedModel1[joaat("s_m_m_trucker_01")] = "s_m_m_trucker_01"
PedModel1[joaat("s_m_m_ups_01")] = "s_m_m_ups_01"
PedModel1[joaat("s_m_m_ups_02")] = "s_m_m_ups_02"
PedModel1[joaat("s_m_o_busker_01")] = "s_m_o_busker_01"
PedModel1[joaat("s_m_y_airworker")] = "s_m_y_airworker"
PedModel1[joaat("s_m_y_ammucity_01")] = "s_m_y_ammucity_01"
PedModel1[joaat("s_m_y_armymech_01")] = "s_m_y_armymech_01"
PedModel1[joaat("s_m_y_autopsy_01")] = "s_m_y_autopsy_01"
PedModel1[joaat("s_m_y_barman_01")] = "s_m_y_barman_01"
PedModel1[joaat("s_m_y_baywatch_01")] = "s_m_y_baywatch_01"
PedModel1[joaat("s_m_y_blackops_01")] = "s_m_y_blackops_01"
PedModel1[joaat("s_m_y_blackops_02")] = "s_m_y_blackops_02"
PedModel1[joaat("s_m_y_blackops_03")] = "s_m_y_blackops_03"
PedModel1[joaat("s_m_y_busboy_01")] = "s_m_y_busboy_01"
PedModel1[joaat("s_m_y_casino_01")] = "s_m_y_casino_01"
PedModel1[joaat("s_m_y_chef_01")] = "s_m_y_chef_01"
PedModel1[joaat("s_m_y_clown_01")] = "s_m_y_clown_01"
PedModel1[joaat("s_m_y_clubbar_01")] = "s_m_y_clubbar_01"
PedModel1[joaat("s_m_y_construct_01")] = "s_m_y_construct_01"
PedModel1[joaat("s_m_y_construct_02")] = "s_m_y_construct_02"
PedModel1[joaat("s_m_y_cop_01")] = "s_m_y_cop_01"
PedModel1[joaat("s_m_y_dealer_01")] = "s_m_y_dealer_01"
PedModel1[joaat("s_m_y_devinsec_01")] = "s_m_y_devinsec_01"
PedModel1[joaat("s_m_y_dockwork_01")] = "s_m_y_dockwork_01"
PedModel1[joaat("s_m_y_doorman_01")] = "s_m_y_doorman_01"
PedModel1[joaat("s_m_y_dwservice_01")] = "s_m_y_dwservice_01"
PedModel1[joaat("s_m_y_dwservice_02")] = "s_m_y_dwservice_02"
PedModel1[joaat("s_m_y_factory_01")] = "s_m_y_factory_01"
PedModel1[joaat("s_m_y_fireman_01")] = "s_m_y_fireman_01"
PedModel1[joaat("s_m_y_garbage")] = "s_m_y_garbage"
PedModel1[joaat("s_m_y_grip_01")] = "s_m_y_grip_01"
PedModel1[joaat("s_m_y_hwaycop_01")] = "s_m_y_hwaycop_01"
PedModel1[joaat("s_m_y_marine_01")] = "s_m_y_marine_01"
PedModel1[joaat("s_m_y_marine_02")] = "s_m_y_marine_02"
PedModel1[joaat("s_m_y_marine_03")] = "s_m_y_marine_03"
PedModel1[joaat("s_m_y_mime")] = "s_m_y_mime"
PedModel1[joaat("s_m_y_pestcont_01")] = "s_m_y_pestcont_01"
PedModel1[joaat("s_m_y_pilot_01")] = "s_m_y_pilot_01"
PedModel1[joaat("s_m_y_prismuscl_01")] = "s_m_y_prismuscl_01"
PedModel1[joaat("s_m_y_prisoner_01")] = "s_m_y_prisoner_01"
PedModel1[joaat("s_m_y_ranger_01")] = "s_m_y_ranger_01"
PedModel1[joaat("s_m_y_robber_01")] = "s_m_y_robber_01"
PedModel1[joaat("s_m_y_sheriff_01")] = "s_m_y_sheriff_01"
PedModel1[joaat("s_m_y_shop_mask")] = "s_m_y_shop_mask"
PedModel1[joaat("s_m_y_strvend_01")] = "s_m_y_strvend_01"
PedModel1[joaat("s_m_y_swat_01")] = "s_m_y_swat_01"
PedModel1[joaat("s_m_y_uscg_01")] = "s_m_y_uscg_01"
PedModel1[joaat("s_m_y_valet_01")] = "s_m_y_valet_01"
PedModel1[joaat("s_m_y_waiter_01")] = "s_m_y_waiter_01"
PedModel1[joaat("s_m_y_waretech_01")] = "s_m_y_waretech_01"
PedModel1[joaat("s_m_y_westsec_01")] = "s_m_y_westsec_01"
PedModel1[joaat("s_m_y_westsec_02")] = "s_m_y_westsec_02"
PedModel1[joaat("s_m_y_winclean_01")] = "s_m_y_winclean_01"
PedModel1[joaat("s_m_y_xmech_01")] = "s_m_y_xmech_01"
PedModel1[joaat("s_m_y_xmech_02")] = "s_m_y_xmech_02"
PedModel1[joaat("s_m_y_xmech_02_mp")] = "s_m_y_xmech_02_mp"
PedModel1[joaat("u_f_m_casinocash_01")] = "u_f_m_casinocash_01"
PedModel1[joaat("u_f_m_casinoshop_01")] = "u_f_m_casinoshop_01"
PedModel1[joaat("u_f_m_corpse_01")] = "u_f_m_corpse_01"
PedModel1[joaat("u_f_m_debbie_01")] = "u_f_m_debbie_01"
PedModel1[joaat("u_f_m_drowned_01")] = "u_f_m_drowned_01"
PedModel1[joaat("u_f_m_miranda")] = "u_f_m_miranda"
PedModel1[joaat("u_f_m_miranda_02")] = "u_f_m_miranda_02"
PedModel1[joaat("u_f_m_promourn_01")] = "u_f_m_promourn_01"
PedModel1[joaat("u_f_o_carol")] = "u_f_o_carol"
PedModel1[joaat("u_f_o_eileen")] = "u_f_o_eileen"
PedModel1[joaat("u_f_o_moviestar")] = "u_f_o_moviestar"
PedModel1[joaat("u_f_o_prolhost_01")] = "u_f_o_prolhost_01"
PedModel1[joaat("u_f_y_beth")] = "u_f_y_beth"
PedModel1[joaat("u_f_y_bikerchic")] = "u_f_y_bikerchic"
PedModel1[joaat("u_f_y_comjane")] = "u_f_y_comjane"
PedModel1[joaat("u_f_y_corpse_01")] = "u_f_y_corpse_01"
PedModel1[joaat("u_f_y_corpse_02")] = "u_f_y_corpse_02"
PedModel1[joaat("u_f_y_danceburl_01")] = "u_f_y_danceburl_01"
PedModel1[joaat("u_f_y_dancelthr_01")] = "u_f_y_dancelthr_01"
PedModel1[joaat("u_f_y_dancerave_01")] = "u_f_y_dancerave_01"
PedModel1[joaat("u_f_y_hotposh_01")] = "u_f_y_hotposh_01"
PedModel1[joaat("u_f_y_jewelass_01")] = "u_f_y_jewelass_01"
PedModel1[joaat("u_f_y_lauren")] = "u_f_y_lauren"
PedModel1[joaat("u_f_y_mistress")] = "u_f_y_mistress"
PedModel1[joaat("u_f_y_poppymich")] = "u_f_y_poppymich"
PedModel1[joaat("u_f_y_poppymich_02")] = "u_f_y_poppymich_02"
PedModel1[joaat("u_f_y_princess")] = "u_f_y_princess"
PedModel1[joaat("u_f_y_spyactress")] = "u_f_y_spyactress"
PedModel1[joaat("u_f_y_taylor")] = "u_f_y_taylor"
PedModel1[joaat("u_m_m_aldinapoli")] = "u_m_m_aldinapoli"
PedModel1[joaat("u_m_m_bankman")] = "u_m_m_bankman"
PedModel1[joaat("u_m_m_bikehire_01")] = "u_m_m_bikehire_01"
PedModel1[joaat("u_m_m_blane")] = "u_m_m_blane"
PedModel1[joaat("u_m_m_curtis")] = "u_m_m_curtis"
PedModel1[joaat("u_m_m_doa_01")] = "u_m_m_doa_01"
PedModel1[joaat("u_m_m_edtoh")] = "u_m_m_edtoh"
PedModel1[joaat("u_m_m_fibarchitect")] = "u_m_m_fibarchitect"
PedModel1[joaat("u_m_m_filmdirector")] = "u_m_m_filmdirector"
PedModel1[joaat("u_m_m_glenstank_01")] = "u_m_m_glenstank_01"
PedModel1[joaat("u_m_m_griff_01")] = "u_m_m_griff_01"
PedModel1[joaat("u_m_m_jesus_01")] = "u_m_m_jesus_01"
PedModel1[joaat("u_m_m_jewelsec_01")] = "u_m_m_jewelsec_01"
PedModel1[joaat("u_m_m_jewelthief")] = "u_m_m_jewelthief"
PedModel1[joaat("u_m_m_markfost")] = "u_m_m_markfost"
PedModel1[joaat("u_m_m_prolsec_01")] = "u_m_m_prolsec_01"
PedModel1[joaat("u_m_m_promourn_01")] = "u_m_m_promourn_01"
PedModel1[joaat("u_m_m_rivalpap")] = "u_m_m_rivalpap"
PedModel1[joaat("u_m_m_spyactor")] = "u_m_m_spyactor"
PedModel1[joaat("u_m_m_streetart_01")] = "u_m_m_streetart_01"
PedModel1[joaat("u_m_m_vince")] = "u_m_m_vince"
PedModel1[joaat("u_m_m_willyfist")] = "u_m_m_willyfist"
PedModel1[joaat("u_m_o_dean")] = "u_m_o_dean"
PedModel1[joaat("u_m_o_filmnoir")] = "u_m_o_filmnoir"
PedModel1[joaat("u_m_o_finguru_01")] = "u_m_o_finguru_01"
PedModel1[joaat("u_m_o_taphillbilly")] = "u_m_o_taphillbilly"
PedModel1[joaat("u_m_o_tramp_01")] = "u_m_o_tramp_01"
PedModel1[joaat("u_m_y_abner")] = "u_m_y_abner"
PedModel1[joaat("u_m_y_antonb")] = "u_m_y_antonb"
PedModel1[joaat("u_m_y_babyd")] = "u_m_y_babyd"
PedModel1[joaat("u_m_y_baygor")] = "u_m_y_baygor"
PedModel1[joaat("u_m_y_burgerdrug_01")] = "u_m_y_burgerdrug_01"
PedModel1[joaat("u_m_y_caleb")] = "u_m_y_caleb"
PedModel1[joaat("u_m_y_cyclist_01")] = "u_m_y_cyclist_01"
PedModel1[joaat("u_m_y_dancerave_01")] = "u_m_y_dancerave_01"
PedModel1[joaat("u_m_y_fibmugger_01")] = "u_m_y_fibmugger_01"
PedModel1[joaat("u_m_y_gabriel")] = "u_m_y_gabriel"
PedModel1[joaat("u_m_y_guido_01")] = "u_m_y_guido_01"
PedModel1[joaat("u_m_y_gunvend_01")] = "u_m_y_gunvend_01"
PedModel1[joaat("u_m_y_hippie_01")] = "u_m_y_hippie_01"
PedModel1[joaat("u_m_y_imporage")] = "u_m_y_imporage"
PedModel1[joaat("u_m_y_juggernaut_01")] = "u_m_y_juggernaut_01"
PedModel1[joaat("u_m_y_justin")] = "u_m_y_justin"
PedModel1[joaat("u_m_y_mani")] = "u_m_y_mani"
PedModel1[joaat("u_m_y_militarybum")] = "u_m_y_militarybum"
PedModel1[joaat("u_m_y_paparazzi")] = "u_m_y_paparazzi"
PedModel1[joaat("u_m_y_party_01")] = "u_m_y_party_01"
PedModel1[joaat("u_m_y_pogo_01")] = "u_m_y_pogo_01"
PedModel1[joaat("u_m_y_prisoner_01")] = "u_m_y_prisoner_01"
PedModel1[joaat("u_m_y_proldriver_01")] = "u_m_y_proldriver_01"
PedModel1[joaat("u_m_y_rsranger_01")] = "Space Ranger"
PedModel1[joaat("u_m_y_sbike")] = "u_m_y_sbike"
PedModel1[joaat("u_m_y_smugmech_01")] = "u_m_y_smugmech_01"
PedModel1[joaat("u_m_y_staggrm_01")] = "u_m_y_staggrm_01"
PedModel1[joaat("u_m_y_tattoo_01")] = "u_m_y_tattoo_01"
PedModel1[joaat("u_m_y_ushi")] = "u_m_y_ushi"
PedModel1[joaat("u_m_y_zombie_01")] = "u_m_y_zombie_01"
local PedSelf = {}
PedSelf[joaat("mp_m_freemode_01")] = "Male"
PedSelf[joaat("mp_f_freemode_01")] = "Female"
local animal_hash = joaat("a_c_cat_01")
local ped_hash = joaat("player_one")
local bird_hash = joaat("a_c_seagull")
local sea_hash = joaat("a_c_dolphin")
local self_hash = joaat("mp_m_freemode_01")
pedMenu:add_array_item("Set Delay First", {"1", "2", "3", "4", "5", "6", "7", "8"}, function() return xox_31 end, function(value) xox_31 = value if value == 1 then duFF = 0.01 elseif value == 2 then duFF = 0.05 elseif value == 3 then duFF = 0.08 elseif value == 4 then duFF = 0.1 elseif value == 5 then duFF = 0.15 elseif value == 6 then duFF = 0.2 elseif value == 7 then duFF = 0.25 else duFF = 0.3 end end) pedMenu:add_action("---", function() end)
pedMenu:add_array_item("Normal Skin", PedSelf, function() return self_hash end, function(value) self_hash = value globals.set_int(AC4, 1) globals.set_int(EBD12, value) sleep(duFF) globals.set_int(AC4, 0) end)
pedMenu:add_array_item("Animals", PedModelAnimal, function() return animal_hash end, function(value) animal_hash = value globals.set_int(AC4, 1) globals.set_int(EBD12, value) sleep(duFF) globals.set_int(AC4, 0) end)
pedMenu:add_array_item("Peds", PedModel1, function() return ped_hash end, function(value) ped_hash = value globals.set_int(AC4, 1) globals.set_int(EBD12, value) sleep(duFF) globals.set_int(AC4, 0) end) 
pedMenu:add_array_item("Birds", PedModelBird, function() return bird_hash end, function(value) bird_hash = value globals.set_int(AC4, 1) globals.set_int(EBD12, value) sleep(duFF) globals.set_int(AC4, 0) end)
pedMenu:add_array_item("Sea Animals", PedModelSeaAnimal, function() return sea_hash end, function(value) sea_hash = value globals.set_int(AC4, 1) globals.set_int(EBD12, value) sleep(duFF) globals.set_int(AC4, 0) end)
pedMenu:add_action("Become Bigfoot", function()	globals.set_int(AC4, 1) globals.set_int(EBD12, -1389097126) sleep(duFF) globals.set_int(AC4, 0) end)
pedMenu:add_action("      ---[Change delay if not working]---", function() end)
repMenu = modelMenu:add_submenu("View Reports")
repMenu:add_bare_item("", function() return "Griefing:".. (string.format("%03d", stats.get_int("MPPLY_GRIEFING"))) end, function() end, function()end, function() return end)
repMenu:add_bare_item("", function() return "Exploits:".. (string.format("%03d", stats.get_int("MPPLY_EXPLOITS"))) end, function() end, function()end, function()end)
repMenu:add_bare_item("", function() return "Bug Exploits:".. (string.format("%03d", stats.get_int("MPPLY_GAME_EXPLOITS"))) end, function() end, function()end, function()end)
repMenu:add_bare_item("", function() return "Text Chat:Annoying Me:".. (string.format("%03d", stats.get_int("MPPLY_TC_ANNOYINGME"))) end, function() end, function()end, function()end)
repMenu:add_bare_item("", function() return "Text Chat:Using Hate Speech:".. (string.format("%03d", stats.get_int("MPPLY_TC_HATE"))) end, function() end, function()end, function()end)
repMenu:add_bare_item("", function() return "Voice Chat:Annoying Me:".. (string.format("%03d", stats.get_int("MPPLY_VC_ANNOYINGME"))) end, function() end, function()end, function()end)
repMenu:add_bare_item("", function() return "Voice Chat:Using Hate Speech:".. (string.format("%03d", stats.get_int("MPPLY_VC_HATE"))) end, function() end, function()end, function()end)
repMenu:add_bare_item("", function() return "Offensive Language:".. (string.format("%03d", stats.get_int("MPPLY_OFFENSIVE_LANGUAGE"))) end, function() end, function()end, function()end)
repMenu:add_bare_item("", function() return "Offensive Tagplate:".. (string.format("%03d", stats.get_int("MPPLY_OFFENSIVE_TAGPLATE"))) end, function() end, function()end, function()end)
repMenu:add_bare_item("", function() return "Offensive Content:".. (string.format("%03d", stats.get_int("MPPLY_OFFENSIVE_UGC"))) end, function() end, function()end, function()end)
repMenu:add_bare_item("", function() return "Bad Crew Name:".. (string.format("%03d", stats.get_int("MPPLY_BAD_CREW_NAME"))) end, function() end, function()end, function()end)
repMenu:add_bare_item("", function() return "Bad Crew Motto:".. (string.format("%03d", stats.get_int("MPPLY_BAD_CREW_MOTTO"))) end, function() end, function()end, function()end)
repMenu:add_bare_item("", function() return "Bad Crew Status:".. (string.format("%03d", stats.get_int("MPPLY_BAD_CREW_STATUS"))) end, function() end, function()end, function()end)
repMenu:add_bare_item("", function() return "Bad Crew Emblem:".. (string.format("%03d", stats.get_int("MPPLY_BAD_CREW_EMBLEM"))) end, function() end, function()end, function()end)
repMenu:add_bare_item("", function() return "Friendly:".. (string.format("%03d", stats.get_int("MPPLY_FRIENDLY"))) end, function() end, function()end, function()end)
repMenu:add_bare_item("", function() return "Helpful:".. (string.format("%03d", stats.get_int("MPPLY_HELPFUL"))) end, function() end, function()end, function()end)
OnlMenu = mainMenu:add_submenu("Online")
OnlMenu:add_int_range("Set Rank (Correction)", 1, 0, 8000, function() end, function(value) stats.set_int(mpx .. "CHAR_SET_RP_GIFT_ADMIN", levels[value]) sleep(2) globals.set_int(EBD19, 1) globals.set_int(APQF, 1) sleep(0.2) globals.set_int(APQF, 0) end) 
OnlMenu:add_array_item("Online Session", {"Join Public", "Start New Public", "Invite Only", "Closed Crew Session", "Crew Session", "Closed Friend Session", "Find Friend Session", "Solo Session", "Leave Online"}, function() return xox_00 end, function(value) xox_00 = value if value == 1 then globals.set_int(EBD19, 0) globals.set_int(APQF, 1) sleep(0.2) globals.set_int(APQF, 0) elseif value == 2 then globals.set_int(EBD19, 1) globals.set_int(APQF, 1) sleep(0.2) globals.set_int(APQF, 0) elseif value == 3 then globals.set_int(EBD19, 11) globals.set_int(APQF, 1) sleep(0.2) globals.set_int(APQF, 0) elseif value == 4 then globals.set_int(EBD19, 2) globals.set_int(APQF, 1) sleep(0.2) globals.set_int(APQF, 0) elseif value == 5 then globals.set_int(EBD19, 3) globals.set_int(APQF, 1) sleep(0.2) globals.set_int(APQF, 0) elseif value == 6 then globals.set_int(EBD19, 6) globals.set_int(APQF, 1) sleep(0.2) globals.set_int(APQF, 0) elseif value == 7 then globals.set_int(EBD19, 9) globals.set_int(APQF, 1) sleep(0.2) globals.set_int(APQF, 0) elseif value == 8 then globals.set_int(EBD19, 8) globals.set_int(APQF, 1) sleep(0.2) globals.set_int(APQF, 0) elseif value == 9 then globals.set_int(EBD19, -1) globals.set_int(APQF, 1) sleep(0.2) globals.set_int(APQF, 0) end end)
OnlMenu:add_array_item("Request Services", {"M.O.C", "Avenger", "TerrorByte", "Kosatka", "Dinghy", "Ballistic Armor"}, function() return xox_01 end, function(v) if v == 1 then globals.set_int(XM6+ 925, 1) elseif v == 2 then globals.set_int(XM6+ 933, 1) elseif v == 3 then globals.set_int(XM6+ 937, 1) elseif v == 4 then globals.set_int(XM6+ 954, 1) elseif v == 5 then globals.set_int(XM6+ 966, 1) else globals.set_int(XM6+ 886, 1) end xox_01 = v end)
OnlMenu:add_action("Bypass Transaction error", function() if globals.get_int(4536679) == 20 or globals.get_int(4536679) == 4 then globals.set_int(4536673, 0) end end)
OnlMenu:add_action("Complete Objectives", function() stats.set_int(mpx .. "COMPLETEDAILYOBJ", 100) stats.set_int(mpx .. "COMPLETEDAILYOBJTOTAL", 100) stats.set_int(mpx .. "TOTALDAYCOMPLETED", 100) stats.set_int(mpx .. "TOTALWEEKCOMPLETED", 400) stats.set_int(mpx .. "TOTALMONTHCOMPLETED", 1800) stats.set_int(mpx .. "CONSECUTIVEDAYCOMPLETED", 30) stats.set_int(mpx .. "CONSECUTIVEWEEKCOMPLETED", 4) stats.set_int(mpx .. "CONSECUTIVEMONTHCOMPLETE", 1) stats.set_int(mpx .. "COMPLETEDAILYOBJSA", 100) stats.set_int(mpx .. "COMPLETEDAILYOBJTOTALSA", 100) stats.set_int(mpx .. "TOTALDAYCOMPLETEDSA", 100) stats.set_int(mpx .. "TOTALWEEKCOMPLETEDSA", 400) stats.set_int(mpx .. "TOTALMONTHCOMPLETEDSA", 1800) stats.set_int(mpx .. "CONSECUTIVEDAYCOMPLETEDSA", 30) stats.set_int(mpx .. "CONSECUTIVEWEEKCOMPLETEDSA", 4) stats.set_int(mpx .. "CONSECUTIVEMONTHCOMPLETESA", 1) stats.set_int(mpx .. "AWD_DAILYOBJCOMPLETEDSA", 100) stats.set_int(mpx .. "AWD_DAILYOBJCOMPLETED", 100) stats.set_bool(mpx .. "AWD_DAILYOBJMONTHBONUS", true) stats.set_bool(mpx .. "AWD_DAILYOBJWEEKBONUS", true) stats.set_bool(mpx .. "AWD_DAILYOBJWEEKBONUSSA", true) stats.set_bool(mpx .. "AWD_DAILYOBJMONTHBONUSSA", true) end) 
OnlMenu:add_action("Nightclub Popularity", function() stats.set_int(mpx .. "CLUB_POPULARITY", 1000) end)
OnlMenu:add_action("LSCM Prize Ride", function() stats.set_bool(mpx .. "CARMEET_PV_CHLLGE_CMPLT", true) stats.set_bool(mpx .. " CARMEET_PV_CLMED", false) end)
OnlMenu:add_action("Trigger Alien Egg Mission", function() stats.set_int(mpx.."LFETIME_BIKER_BUY_COMPLET5",1200) stats.set_int(mpx.."LFETIME_BIKER_BUY_UNDERTA5",1200) globals.set_int(XM6+ 5225 + 344, 20) end)
OnlMenu:add_action("Reset Casino Chip Purchase", function() stats.set_int("MPPLY_CASINO_CHIPS_PUR_GD", 0) stats.set_int("MPPLY_CASINO_CHIPS_PURTIM", 0) end)
OnlMenu:add_action("Reset Casino Chip Wins (Risky!!)", function() stats.set_int("MPPLY_CASINO_CHIPS_WON_GD", 0) stats.set_int("MPPLY_CASINO_CHIPS_WONTIM", 0) end)
OnlMenu:add_action("Get Visitor Bonus Again", function() stats.set_int("MPPLY_CHIPS_COL_TIME", 0) globals.set_int(EBD19, 1) globals.set_int(APQF, 1) sleep(0.2) globals.set_int(APQF, 0) end)
OnlMenu:add_action("Skip Lamar Missions", function() stats.set_bool(mpx .. "LOW_FLOW_CS_DRV_SEEN", true) stats.set_bool(mpx .. "LOW_FLOW_CS_TRA_SEEN", true) stats.set_bool(mpx .. "LOW_FLOW_CS_FUN_SEEN", true) stats.set_bool(mpx .. "LOW_FLOW_CS_PHO_SEEN", true) stats.set_bool(mpx .. "LOW_FLOW_CS_FIN_SEEN", true) stats.set_bool(mpx .. "LOW_BEN_INTRO_CS_SEEN", true) stats.set_int(mpx .. "LOWRIDER_FLOW_COMPLETE", 4) stats.set_int(mpx .. "LOW_FLOW_CURRENT_PROG", 9) stats.set_int(mpx .. "LOW_FLOW_CURRENT_CALL", 9) stats.set_int(mpx .. "LOW_FLOW_CS_HELPTEXT", 66) end) OnlMenu:add_action("Skip Yacht Missions", function() stats.set_int(mpx .. "YACHT_MISSION_PROG", 0) stats.set_int(mpx .. "YACHT_MISSION_FLOW", 21845) stats.set_int(mpx .. "CASINO_DECORATION_GIFT_1", -1) end)
OnlMenu:add_action("Skip ULP Missions", function() stats.set_int(mpx .. "ULP_MISSION_PROGRESS", 127) stats.set_int(mpx .. "ULP_MISSION_CURRENT", 0) end)
OnlMenu:add_action("CEO/MC Money Clutter", function() stats.set_int(mpx .. "LIFETIME_BUY_COMPLETE", 1000) stats.set_int(mpx .. "LIFETIME_BUY_UNDERTAKEN", 1000) stats.set_int(mpx .. "LIFETIME_SELL_COMPLETE", 1000) stats.set_int(mpx .. "LIFETIME_SELL_UNDERTAKEN", 1000) stats.set_int(mpx .. "LIFETIME_CONTRA_EARNINGS", 20000000) stats.set_int(mpx .. "LIFETIME_BIKER_BUY_COMPLET", 1000) stats.set_int(mpx .. "LIFETIME_BIKER_BUY_UNDERTA", 1000) stats.set_int(mpx .. "LIFETIME_BIKER_SELL_COMPLET", 1000) stats.set_int(mpx .. "LIFETIME_BIKER_SELL_UNDERTA", 1000) stats.set_int(mpx .. "LIFETIME_BIKER_BUY_COMPLET1", 1000) stats.set_int(mpx .. "LIFETIME_BIKER_BUY_UNDERTA1", 1000) stats.set_int(mpx .. "LIFETIME_BIKER_SELL_COMPLET1", 1000) stats.set_int(mpx .. "LIFETIME_BIKER_SELL_UNDERTA1", 1000) stats.set_int(mpx .. "LIFETIME_BIKER_BUY_COMPLET2", 1000) stats.set_int(mpx .. "LIFETIME_BIKER_BUY_UNDERTA2", 1000) stats.set_int(mpx .. "LIFETIME_BIKER_SELL_COMPLET2", 1000) stats.set_int(mpx .. "LIFETIME_BIKER_SELL_UNDERTA2", 1000) stats.set_int(mpx .. "LIFETIME_BIKER_BUY_COMPLET3", 1000) stats.set_int(mpx .. "LIFETIME_BIKER_BUY_UNDERTA3", 1000) stats.set_int(mpx .. "LIFETIME_BIKER_SELL_COMPLET3", 1000) stats.set_int(mpx .. "LIFETIME_BIKER_SELL_UNDERTA3", 1000) stats.set_int(mpx .. "LIFETIME_BIKER_BUY_COMPLET4", 1000) stats.set_int(mpx .. "LIFETIME_BIKER_BUY_UNDERTA4", 1000) stats.set_int(mpx .. "LIFETIME_BIKER_SELL_COMPLET4", 1000) stats.set_int(mpx .. "LIFETIME_BIKER_SELL_UNDERTA4", 1000) stats.set_int(mpx .. "LIFETIME_BIKER_BUY_COMPLET5", 1000) stats.set_int(mpx .. "LIFETIME_BIKER_BUY_UNDERTA5", 1000) stats.set_int(mpx .. "LIFETIME_BIKER_SELL_COMPLET5", 1000) stats.set_int(mpx .. "LIFETIME_BIKER_SELL_UNDERTA5", 1000) stats.set_int(mpx .. "LIFETIME_BKR_SELL_EARNINGS0", 20000000) stats.set_int(mpx .. "LIFETIME_BKR_SELL_EARNINGS1", 20000000) stats.set_int(mpx .. "LIFETIME_BKR_SELL_EARNINGS2", 20000000) stats.set_int(mpx .. "LIFETIME_BKR_SELL_EARNINGS3", 20000000) stats.set_int(mpx .. "LIFETIME_BKR_SELL_EARNINGS4", 20000000) stats.set_int(mpx .. "LIFETIME_BKR_SELL_EARNINGS5", 20000000) stats.set_int(mpx .. "LFETIME_IE_EXPORT_COMPLETED", 1000) stats.set_int(mpx .. "LFETIME_IE_MISSION_EARNINGS", 20000000) stats.set_int(mpx .. "LFETIME_HANGAR_EARNINGS", 20000000) stats.set_int(mpx .. "BKR_PROD_STOP_COUT_S1_0", 500) stats.set_int(mpx .. "BKR_PROD_STOP_COUT_S2_0", 500) stats.set_int(mpx .. "BKR_PROD_STOP_COUT_S3_0", 500) stats.set_int(mpx .. "LIFETIME_BKR_SELL_UNDERTABC", 500) stats.set_int(mpx .. "LIFETIME_BKR_SELL_COMPLETBC", 500) stats.set_int(mpx .. "LFETIME_BIKER_BUY_UNDERTA1", 500) stats.set_int(mpx .. "LFETIME_BIKER_BUY_COMPLET1", 500) stats.set_int(mpx .. "LFETIME_BIKER_SELL_UNDERTA1", 500) stats.set_int(mpx .. "LFETIME_BIKER_SELL_COMPLET1", 500) stats.set_int(mpx .. "LIFETIME_BKR_SEL_UNDERTABC1", 500) stats.set_int(mpx .. "LIFETIME_BKR_SEL_COMPLETBC1", 500) stats.set_int(mpx .. "BKR_PROD_STOP_COUT_S1_1", 500) stats.set_int(mpx .. "BKR_PROD_STOP_COUT_S2_1", 500) stats.set_int(mpx .. "BKR_PROD_STOP_COUT_S3_1", 500) stats.set_int(mpx .. "LFETIME_BIKER_BUY_UNDERTA2", 500) stats.set_int(mpx .. "LFETIME_BIKER_BUY_COMPLET2", 500) stats.set_int(mpx .. "LFETIME_BIKER_SELL_UNDERTA2", 500) stats.set_int(mpx .. "LFETIME_BIKER_SELL_COMPLET2", 500) stats.set_int(mpx .. "LIFETIME_BKR_SEL_UNDERTABC2", 500) stats.set_int(mpx .. "LIFETIME_BKR_SEL_COMPLETBC2", 500) stats.set_int(mpx .. "BKR_PROD_STOP_COUT_S1_2", 500) stats.set_int(mpx .. "BKR_PROD_STOP_COUT_S2_2", 500) stats.set_int(mpx .. "BKR_PROD_STOP_COUT_S3_2", 500) stats.set_int(mpx .. "LFETIME_BIKER_BUY_UNDERTA3", 500) stats.set_int(mpx .. "LFETIME_BIKER_BUY_COMPLET3", 500) stats.set_int(mpx .. "LFETIME_BIKER_SELL_UNDERTA3", 500) stats.set_int(mpx .. "LFETIME_BIKER_SELL_COMPLET3", 500) stats.set_int(mpx .. "LIFETIME_BKR_SEL_UNDERTABC3", 500) stats.set_int(mpx .. "LIFETIME_BKR_SEL_COMPLETBC3", 500) stats.set_int(mpx .. "BKR_PROD_STOP_COUT_S1_3", 500) stats.set_int(mpx .. "BKR_PROD_STOP_COUT_S2_3", 500) stats.set_int(mpx .. "BKR_PROD_STOP_COUT_S3_3", 500) stats.set_int(mpx .. "LFETIME_BIKER_BUY_UNDERTA4", 500) stats.set_int(mpx .. "LFETIME_BIKER_BUY_COMPLET4", 500) stats.set_int(mpx .. "LFETIME_BIKER_SELL_UNDERTA4", 500) stats.set_int(mpx .. "LFETIME_BIKER_SELL_COMPLET4", 500) stats.set_int(mpx .. "LIFETIME_BKR_SEL_UNDERTABC4", 500) stats.set_int(mpx .. "LIFETIME_BKR_SEL_COMPLETBC4", 500) stats.set_int(mpx .. "BKR_PROD_STOP_COUT_S1_4", 500) stats.set_int(mpx .. "BKR_PROD_STOP_COUT_S2_4", 500) stats.set_int(mpx .. "BKR_PROD_STOP_COUT_S3_4", 500) stats.set_int(mpx .. "LFETIME_BIKER_BUY_UNDERTA5", 500) stats.set_int(mpx .. "LFETIME_BIKER_BUY_COMPLET5", 500) stats.set_int(mpx .. "LIFETIME_BKR_SEL_UNDERTABC5", 500) stats.set_int(mpx .. "LIFETIME_BKR_SEL_COMPLETBC5", 500) stats.set_int(mpx .. "LFETIME_BIKER_SELL_UNDERTA5", 500) stats.set_int(mpx .. "LFETIME_BIKER_SELL_COMPLET5", 500) stats.set_int(mpx .. "BUNKER_UNITS_MANUFAC", 500) stats.set_int(mpx .. "LFETIME_HANGAR_BUY_UNDETAK", 500) stats.set_int(mpx .. "LFETIME_HANGAR_BUY_COMPLET", 500) stats.set_int(mpx .. "LFETIME_HANGAR_SEL_UNDETAK", 500) stats.set_int(mpx .. "LFETIME_HANGAR_SEL_COMPLET", 500) stats.set_int(mpx .. "LFETIME_HANGAR_EARN_BONUS", 1598746) stats.set_int(mpx .. "RIVAL_HANGAR_CRATES_STOLEN", 500) stats.set_int(mpx .. "LFETIME_IE_STEAL_STARTED", 500) stats.set_int(mpx .. "LFETIME_IE_EXPORT_STARTED", 500) stats.set_int(mpx .. "AT_FLOW_IMPEXP_NUM", 500) globals.set_int(APQF, 1) sleep(0.2) globals.set_int(APQF, 0) end)
OnlMenu:add_toggle("Enable Peyote", function() return globals.get_boolean(CASL) end, function(v) globals.set_boolean(CASL, v) globals.set_boolean(CSP13, v) end)
heistMenu = mainMenu:add_submenu("Heists") cayoPericoMenu = heistMenu:add_submenu("Cayo Perico Heist") cayoPericoMenu:add_array_item("Presets", {"H.Panther Only", "H.PinkD Only", "H.B.Bonds Only", "H.R.Necklace Only", "H.Tequila Only", "N.Panther Only", "N.PinkD Only", "N.B.Bonds Only", "N.R.Necklace Only", "N.Tequila Only"}, function() return xox_15 end, function(v) if v == 1 then stats.set_int(mpx.."H4_PROGRESS", 131055) stats.set_int(mpx.."H4_MISSIONS", 65535) stats.set_int(mpx.."H4CNF_TARGET", 5) stats.set_int(mpx.."H4CNF_WEAPONS", 2) stats.set_int(mpx.."H4CNF_UNIFORM", -1) stats.set_int(mpx.."H4CNF_TROJAN", 5) stats.set_int(mpx.."H4LOOT_GOLD_C", 0) stats.set_int(mpx.."H4LOOT_GOLD_C_SCOPED", 0) stats.set_int(mpx.."H4LOOT_PAINT", 0) stats.set_int(mpx.."H4LOOT_PAINT_SCOPED", 0) stats.set_int(mpx.."H4LOOT_PAINT_V", 403500) stats.set_int(mpx.."H4LOOT_CASH_I", 0) stats.set_int(mpx.."H4LOOT_CASH_C", 0) stats.set_int(mpx.."H4LOOT_WEED_I", 0) stats.set_int(mpx.."H4LOOT_COKE_I", 0) elseif v == 2 then stats.set_int(mpx.."H4_PROGRESS", 131055) stats.set_int(mpx.."H4_MISSIONS", 65535) stats.set_int(mpx.."H4CNF_TARGET", 3) stats.set_int(mpx.."H4CNF_WEAPONS", 2) stats.set_int(mpx.."H4CNF_UNIFORM", -1) stats.set_int(mpx.."H4CNF_TROJAN", 5) stats.set_int(mpx.."H4LOOT_GOLD_C", 0) stats.set_int(mpx.."H4LOOT_GOLD_C_SCOPED", 0) stats.set_int(mpx.."H4LOOT_PAINT", 0) stats.set_int(mpx.."H4LOOT_PAINT_SCOPED", 0) stats.set_int(mpx.."H4LOOT_CASH_I", 0) stats.set_int(mpx.."H4LOOT_CASH_C", 0) stats.set_int(mpx.."H4LOOT_WEED_I", 0) stats.set_int(mpx.."H4LOOT_COKE_I", 0) elseif v == 3 then stats.set_int(mpx.."H4_PROGRESS", 131055) stats.set_int(mpx.."H4_MISSIONS", 65535) stats.set_int(mpx.."H4CNF_TARGET", 2) stats.set_int(mpx.."H4CNF_WEAPONS", 2) stats.set_int(mpx.."H4CNF_UNIFORM", -1) stats.set_int(mpx.."H4CNF_TROJAN", 5) stats.set_int(mpx.."H4LOOT_GOLD_C", 0) stats.set_int(mpx.."H4LOOT_GOLD_C_SCOPED", 0) stats.set_int(mpx.."H4LOOT_PAINT", 0) stats.set_int(mpx.."H4LOOT_PAINT_SCOPED", 0) stats.set_int(mpx.."H4LOOT_CASH_I", 0) stats.set_int(mpx.."H4LOOT_CASH_C", 0) stats.set_int(mpx.."H4LOOT_WEED_I", 0) stats.set_int(mpx.."H4LOOT_COKE_I", 0) elseif v == 4 then stats.set_int(mpx.."H4_PROGRESS", 131055) stats.set_int(mpx.."H4_MISSIONS", 65535) stats.set_int(mpx.."H4CNF_TARGET", 1) stats.set_int(mpx.."H4CNF_WEAPONS", 2) stats.set_int(mpx.."H4CNF_UNIFORM", -1) stats.set_int(mpx.."H4CNF_TROJAN", 5) stats.set_int(mpx.."H4LOOT_GOLD_C", 0) stats.set_int(mpx.."H4LOOT_GOLD_C_SCOPED", 0) stats.set_int(mpx.."H4LOOT_PAINT", 0) stats.set_int(mpx.."H4LOOT_PAINT_SCOPED", 0) stats.set_int(mpx.."H4LOOT_CASH_I", 0) stats.set_int(mpx.."H4LOOT_CASH_C", 0) stats.set_int(mpx.."H4LOOT_WEED_I", 0) stats.set_int(mpx.."H4LOOT_COKE_I", 0) elseif v == 5 then stats.set_int(mpx.."H4_PROGRESS", 131055) stats.set_int(mpx.."H4_MISSIONS", 65535) stats.set_int(mpx.."H4CNF_TARGET", 0) stats.set_int(mpx.."H4CNF_WEAPONS", 2) stats.set_int(mpx.."H4CNF_UNIFORM", -1) stats.set_int(mpx.."H4CNF_TROJAN", 5) stats.set_int(mpx.."H4LOOT_GOLD_C", 0) stats.set_int(mpx.."H4LOOT_GOLD_C_SCOPED", 0) stats.set_int(mpx.."H4LOOT_PAINT", 0) stats.set_int(mpx.."H4LOOT_PAINT_SCOPED", 0) stats.set_int(mpx.."H4LOOT_CASH_I", 0) stats.set_int(mpx.."H4LOOT_CASH_C", 0) stats.set_int(mpx.."H4LOOT_WEED_I", 0) stats.set_int(mpx.."H4LOOT_COKE_I", 0) elseif v == 6 then stats.set_int(mpx.."H4_PROGRESS", 126823) stats.set_int(mpx.."H4_MISSIONS", 65535) stats.set_int(mpx.."H4CNF_TARGET", 5) stats.set_int(mpx.."H4CNF_WEAPONS", 2) stats.set_int(mpx.."H4CNF_UNIFORM", -1) stats.set_int(mpx.."H4CNF_TROJAN", 5) stats.set_int(mpx.."H4LOOT_GOLD_C", 0) stats.set_int(mpx.."H4LOOT_GOLD_C_SCOPED", 0) stats.set_int(mpx.."H4LOOT_PAINT", 0) stats.set_int(mpx.."H4LOOT_PAINT_SCOPED", 0) stats.set_int(mpx.."H4LOOT_CASH_I", 0) stats.set_int(mpx.."H4LOOT_CASH_C", 0) stats.set_int(mpx.."H4LOOT_WEED_I", 0) stats.set_int(mpx.."H4LOOT_COKE_I", 0) elseif v == 7 then stats.set_int(mpx.."H4_PROGRESS", 126823) stats.set_int(mpx.."H4_MISSIONS", 65535) stats.set_int(mpx.."H4CNF_TARGET", 3) stats.set_int(mpx.."H4CNF_WEAPONS", 2) stats.set_int(mpx.."H4CNF_UNIFORM", -1) stats.set_int(mpx.."H4CNF_TROJAN", 5) stats.set_int(mpx.."H4LOOT_GOLD_C", 0) stats.set_int(mpx.."H4LOOT_GOLD_C_SCOPED", 0) stats.set_int(mpx.."H4LOOT_PAINT", 0) stats.set_int(mpx.."H4LOOT_PAINT_SCOPED", 0) stats.set_int(mpx.."H4LOOT_CASH_I", 0) stats.set_int(mpx.."H4LOOT_CASH_C", 0) stats.set_int(mpx.."H4LOOT_WEED_I", 0) stats.set_int(mpx.."H4LOOT_COKE_I", 0) elseif v == 8 then stats.set_int(mpx.."H4_PROGRESS", 126823) stats.set_int(mpx.."H4_MISSIONS", 65535) stats.set_int(mpx.."H4CNF_TARGET", 2) stats.set_int(mpx.."H4CNF_WEAPONS", 2) stats.set_int(mpx.."H4CNF_UNIFORM", -1) stats.set_int(mpx.."H4CNF_TROJAN", 5) stats.set_int(mpx.."H4LOOT_GOLD_C", 0) stats.set_int(mpx.."H4LOOT_GOLD_C_SCOPED", 0) stats.set_int(mpx.."H4LOOT_PAINT", 0) stats.set_int(mpx.."H4LOOT_PAINT_SCOPED", 0) stats.set_int(mpx.."H4LOOT_CASH_I", 0) stats.set_int(mpx.."H4LOOT_CASH_C", 0) stats.set_int(mpx.."H4LOOT_WEED_I", 0) stats.set_int(mpx.."H4LOOT_COKE_I", 0) elseif v == 9 then stats.set_int(mpx.."H4_PROGRESS", 126823) stats.set_int(mpx.."H4_MISSIONS", 65535) stats.set_int(mpx.."H4CNF_TARGET", 1) stats.set_int(mpx.."H4CNF_WEAPONS", 2) stats.set_int(mpx.."H4CNF_UNIFORM", -1) stats.set_int(mpx.."H4CNF_TROJAN", 5) stats.set_int(mpx.."H4LOOT_GOLD_C", 0) stats.set_int(mpx.."H4LOOT_GOLD_C_SCOPED", 0) stats.set_int(mpx.."H4LOOT_PAINT", 0) stats.set_int(mpx.."H4LOOT_PAINT_SCOPED", 0) stats.set_int(mpx.."H4LOOT_PAINT_V", 403500) stats.set_int(mpx.."H4LOOT_CASH_I", 0) stats.set_int(mpx.."H4LOOT_CASH_C", 0) stats.set_int(mpx.."H4LOOT_WEED_I", 0) stats.set_int(mpx.."H4LOOT_COKE_I", 0) elseif v == 10 then stats.set_int(mpx.."H4_PROGRESS", 126823) stats.set_int(mpx.."H4_MISSIONS", 65535) stats.set_int(mpx.."H4CNF_TARGET", 0) stats.set_int(mpx.."H4CNF_WEAPONS", 2) stats.set_int(mpx.."H4CNF_UNIFORM", -1) stats.set_int(mpx.."H4CNF_TROJAN", 5) stats.set_int(mpx.."H4LOOT_GOLD_C", 0) stats.set_int(mpx.."H4LOOT_GOLD_C_SCOPED", 0) stats.set_int(mpx.."H4LOOT_PAINT", 0) stats.set_int(mpx.."H4LOOT_PAINT_SCOPED", 0) stats.set_int(mpx.."H4LOOT_CASH_I", 0) stats.set_int(mpx.."H4LOOT_CASH_C", 0) stats.set_int(mpx.."H4LOOT_WEED_I", 0) end xox_15 = v end)
cayoPericoMenu:add_array_item("Primary Target", {"Tequila", "Ruby Necklace", "Bearer Bonds", "Pink Diamond", "Panther Statue"}, function() return xox_0 end, function(value) xox_0 = value if value == 1 then stats.set_int(mpx .. "H4CNF_TARGET", 0) elseif value == 2 then stats.set_int(mpx .. "H4CNF_TARGET", 1) elseif value == 3 then stats.set_int(mpx .. "H4CNF_TARGET", 2) elseif value == 4 then stats.set_int(mpx .. "H4CNF_TARGET", 3) elseif value == 5 then stats.set_int(mpx .. "H4CNF_TARGET", 5) end end)
StMenu = cayoPericoMenu:add_submenu("Secondary Targets") StMenu:add_array_item("All Compound Storages", {"Gold", "Paintings", "Cocaine", "Weed", "Cash"}, function() return xox_1 end, function(value) if value == 1 then stats.set_int(mpx .. "H4LOOT_GOLD_C", -1) stats.set_int(mpx .. "H4LOOT_GOLD_C_SCOPED", -1) elseif value == 2 then stats.set_int(mpx .. "H4LOOT_PAINT", -1) stats.set_int(mpx .. "H4LOOT_PAINT_SCOPED", -1) stats.set_int(mpx .. "H4LOOT_PAINT_V", 403500) elseif value == 3 then stats.set_int(mpx .. "H4LOOT_COKE_C", -1) stats.set_int(mpx .. "H4LOOT_COKE_C_SCOPED", -1) elseif value == 4 then stats.set_int(mpx .. "H4LOOT_WEED_C", -1) stats.set_int(mpx .. "H4LOOT_WEED_C_SCOPED", -1) elseif value == 5 then stats.set_int(mpx .. "H4LOOT_CASH_C", -1) stats.set_int(mpx .. "H4LOOT_CASH_C_SCOPED", -1) end xox_1 = value end)
StMenu:add_array_item("All Island Storages", {"Gold", "Cocaine", "Weed", "Cash"}, function() return xox_2 end, function(value) if value == 1 then stats.set_int(mpx .. "H4LOOT_GOLD_I", -1) stats.set_int(mpx .. "H4LOOT_GOLD_I_SCOPED", -1) elseif value == 2 then stats.set_int(mpx .. "H4LOOT_COKE_I", -1) stats.set_int(mpx .. "H4LOOT_COKE_I_SCOPED", -1) elseif value == 3 then stats.set_int(mpx .. "H4LOOT_WEED_I", -1) stats.set_int(mpx .. "H4LOOT_WEED_I_SCOPED", -1) elseif value == 4 then stats.set_int(mpx .. "H4LOOT_CASH_I", -1) stats.set_int(mpx .. "H4LOOT_CASH_I_SCOPED", -1) end xox_2 = value end) 
cayoPericoMenu:add_array_item("Weapons", {"Aggressor", "Conspirator", "Crackshot", "Saboteur", "Marksman"}, function() return xox_3 end, function(value) if value == 1 then stats.set_int(mpx .. "H4CNF_WEAPONS", 1) elseif value == 2 then stats.set_int(mpx .. "H4CNF_WEAPONS", 2) elseif value == 3 then stats.set_int(mpx .. "H4CNF_WEAPONS", 3) elseif value == 4 then stats.set_int(mpx .. "H4CNF_WEAPONS", 4) elseif value == 5 then stats.set_int(mpx .. "H4CNF_WEAPONS", 5) end xox_3 = value end)
cayoPericoMenu:add_array_item("Approach Vehicles", {"Kosatka", "Alkonost", "Velum", "Stealth Annihilator", "Patrol Boat", "Longfin", "All Vehicles"}, function() return xox_4 end, function(value) if value == 1 then stats.set_int(mpx .. "H4_MISSIONS", 65283) elseif value == 2 then stats.set_int(mpx .. "H4_MISSIONS", 65413) elseif value == 3 then stats.set_int(mpx .. "H4_MISSIONS", 65289) elseif value == 4 then stats.set_int(mpx .. "H4_MISSIONS", 65425) elseif value == 5 then stats.set_int(mpx .. "H4_MISSIONS", 65313) elseif value == 6 then stats.set_int(mpx .. "H4_MISSIONS", 65345) elseif value == 7 then stats.set_int(mpx .. "H4_MISSIONS", 65535) end xox_4 = value end)	
cayoPericoMenu:add_array_item("Difficulty", {"Normal", "Hard"}, function() return xox_5 end, function(value) if value == 1 then stats.set_int(mpx .. "H4_PROGRESS", 126823) elseif value == 2 then stats.set_int(mpx .. "H4_PROGRESS", 131055) end xox_5 = value end)
cayoPericoMenu:add_action("       ---> Complete Preps - Finale <---", function() stats.set_int(mpx .. "H4CNF_UNIFORM", -1) stats.set_int(mpx .. "H4CNF_GRAPPEL", -1) stats.set_int(mpx .. "H4CNF_TROJAN", 5) stats.set_int(mpx .. "H4CNF_WEP_DISRP", 3) stats.set_int(mpx .. "H4CNF_ARM_DISRP", 3) stats.set_int(mpx .. "H4CNF_HEL_DISRP", 3) end)
cayoPericoMenu:add_action("All POI", function() stats.set_int(mpx .. "H4CNF_BS_GEN", -1) stats.set_int(mpx .. "H4CNF_BS_ENTR", 63) stats.set_int(mpx .. "H4CNF_APPROACH", -1) end) cayoPericoMenu:add_action("---", function() end)
cayoPericoMenu:add_action("Instant Finish $$", function() fmC2020:set_int(BS11, 51338752) fmC2020:set_int(RLC4, 50) end) --Local_42279.f_1375[1] & Local_42279.f_1
cayoPericoMenu:add_action("(Wait 5 secs to use after cutscene)", function() end)cayoPericoMenu:add_action("---", function() end) local function npcC(e) if not localplayer then return end if e then globals.set_float(CD2, 0) globals.set_float(ALV1, 0) else globals.set_float(CD2, -0.1) globals.set_float(ALV1, -0.02) end end cayoPericoMenu:add_toggle("Remove Pavel n Fencing Cut", function() return e28 end, function() e28 = not e28 npcC(e28) end) local function Cctv(e) if not localplayer then return end if e then menu.remove_cctvs() else menu.remove_cctvs(nil) end end
cayoPericoMenu:add_toggle("Remove CCTV", function() return e6 end, function() e6 = not e6 Cctv(e6) end) cayoPericoMenu:add_action("Skip Drainage cut", function() if fmC2020:is_active() then if fmC2020:get_int(RSD1) >= 3 or fmC2020:get_int(RSD1) <= 6 then fmC2020:set_int(RSD1, 6) end end end) cayoPericoMenu:add_action("Bypass Fingerprint Cloner ", function() if fmC2020 and fmC2020:is_active() then if fmC2020:get_int(CP4) == 4 then fmC2020:set_int(CP4, 5) end end end)
cayoPericoMenu:add_action("Quick Plasma Cutter", function() fmC2020:set_float(NIH6, 99.9) end) cayoPericoMenu:add_int_range("Cayo Lifes - Self", 1.0, 1, 10, function() return fmC2020:get_int(MS2) end, function(life) if fmC2020 and fmC2020:is_active() then fmC2020:set_int(MS2, life) end end) cayoPericoMenu:add_action("Kill mission npcs", function() menu.kill_all_mission_peds() end) cayoPericoMenu:add_action("Kill all npcs", function() menu.kill_all_npcs() end) cayoPericoMenu:add_action("---", function() end)
cayoPericoMenu:add_int_range("Real Take", 289700, 100000, 8691000, function() return fmC2020:get_int(IS3) end, function(v) fmC2020:set_int(IS3, v) end)
cayoPericoMenu:add_array_item("TP's Scope Out", {"Communications Tower", "Control Tower", "Power Station", "Bolt Cutters #1", "Bolt Cutters #2", "Bolt Cutters #3", "Bolt Cutters #4", "Bolt Cutters #5", "Bolt Cutters #6", "Bolt Cutters #7", "Bolt Cutters #8", "Bolt Cutters #9", "Bolt Cutters #10", "Bolt Cutters #11", "Bolt Cutters #12", "Bolt Cutters #13", "Bolt Cutters #14", "Bolt Cutters #15", "Cutting Powder #1", "Cutting Powder #2", "Cutting Powder #3", "Grappling Hook #1", "Grappling Hook #2", "Grappling Hook #3", "Grappling Hook #4", "Grappling Hook #5", "Grappling Hook #6", "Grappling Hook #7", "Grappling Hook #8", "Grappling Hook #9", "Grappling Hook #10", "Guard Clothes #1", "Guard Clothes #2", "Guard Clothes #3", "Guard Clothes #4", "Guard Clothes #5", "Guard Clothes #6", "Guard Clothes #7", "Signal Box #1", "Signal Box #2", "Signal Box #3", "Supply Truck #1", "Supply Truck #2", "Supply Truck #3", "Supply Truck #4", "Water Tower #1 (North Dock)", "Water Tower #2 (Main Dock)"}, function()
return xox_6 end, function(value)
if value == 1 then TP(5266.797363, -5427.772461, 139.746445, -0.943473, 0.000000, -0.000000)
elseif value == 2 then TP(4350.219238, -4577.410645, 2.899095, -1.119934, -0.000000, 0.000000)
elseif value == 3 then TP(4478.291992, -4580.129883, 4.258523, -2.885009, -0.000000, 0.000000)
elseif value == 4 then TP(5097.452637, -4620.177734, 1.193875, -2.592525, -0.000000, 0.000000)
elseif value == 5 then TP(4880.295898, -5112.941406, 1.053022, 1.313561, -0.000346, 0.000020)
elseif value == 6 then TP(4537.624512, -4542.424805, 3.546365, 1.941974, 0.000004, -0.000007)
elseif value == 7 then TP(5466.320801, -5230.169922, 25.993027, 2.763307, -0.000000, 0.000000)
elseif value == 8 then TP(4075.548828, -4663.984863, 2.994547, -2.552265, -0.000000, 0.000000)
elseif value == 9 then TP(4522.588867, -4509.868652, 3.188455, -2.631163, -0.000000, 0.000000)
elseif value == 10 then TP(4506.013672, -4656.211914, 10.579565, -0.049160, -0.000000, 0.000000)
elseif value == 11 then TP(4803.885742, -4317.895020, 6.201560, -0.422076, -0.000000, 0.000000)
elseif value == 12 then TP(5071.072266, -4639.869629, 2.112077, 0.523910, 0.000000, -0.000000)
elseif value == 13 then TP(5179.191895, -4669.967285, 5.832691, -2.465155, -0.000000, 0.000000)
elseif value == 14 then TP(5214.377441, -5126.496582, 4.925748, -1.519287, -0.000000, 0.000000)
elseif value == 15 then TP(4954.719727, -5180.171875, 2.966018, -2.558609, -0.000000, 0.000000)
elseif value == 16 then TP(4903.507812, -5345.524414, 8.850177, 2.197429, -0.000000, 0.000000)
elseif value == 17 then TP(4756.349609, -5539.995605, 17.625168, 2.077786, -0.000000, 0.000000)
elseif value == 18 then TP(5365.069336, -5438.819824, 47.831707, 0.996262, -0.000000, 0.000000)
elseif value == 19 then TP(5404.111328, -5171.486328, 30.132875, -0.749873, -0.000000, 0.000000)
elseif value == 20 then TP(5214.664551, -5131.837402, 4.938407, -1.654735, -0.000000, 0.000000)
elseif value == 21 then TP(4924.137695, -5271.690918, 4.351841, -2.826915, -0.000000, 0.000000)
elseif value == 22 then TP(4901.115723, -5332.090820, 27.841076, -0.469437, -0.000000, 0.000000)
elseif value == 23 then TP(4882.464355, -4487.831543, 8.713233, 1.552495, -0.000000, 0.000000)
elseif value == 24 then TP(5609.771484, -5653.084473, 8.651618, -2.502223, -0.000000, 0.000000)
elseif value == 25 then TP(5125.838379, -5095.626953, 0.893209, 2.800476, -0.000000, 0.000000)
elseif value == 26 then TP(4529.709961, -4700.855957, 3.120182, 2.906318, -0.000000, 0.000000)
elseif value == 27 then TP(3901.137451, -4690.617676, 2.826484, 2.661214, -0.000000, 0.000000)
elseif value == 28 then TP(5404.485840, -5170.345215, 30.130934, -1.991591, -0.000000, 0.000000)
elseif value == 29 then TP(5333.016602, -5264.369629, 31.446018, 1.854885, -0.000000, 0.000000)
elseif value == 30 then TP(5110.171387, -4579.133301, 28.417776, 0.901852, -0.000000, 0.000000)
elseif value == 31 then TP(5267.243164, -5429.493164, 139.747177, 2.378908, -0.000000, 0.000000)
elseif value == 32 then TP(5059.213867, -4592.870605, 1.595251, -0.291761, -0.000000, 0.000000)
elseif value == 33 then TP(4949.736328, -5320.138672, 6.776219, 3.108989, -0.000000, 0.000000)
elseif value == 34 then TP(4884.802734, -5452.898926, 29.437197, -2.087807, -0.000000, 0.000000)
elseif value == 35 then TP(4764.295898, -4781.471680, 2.501517, -0.586741, -0.000000, 0.000000)
elseif value == 36 then TP(5170.228516, -4677.545898, 1.122545, -0.371411, -0.000000, 0.000000)
elseif value == 37 then TP(5161.595215, -4993.595215, 11.394773, -2.397844, -0.000000, 0.000000)
elseif value == 38 then TP(5128.021484, -5530.752930, 52.743076, 1.605217, -0.000000, 0.000000)
elseif value == 39 then TP(5262.136719, -5432.140625, 64.297203, 2.467814, -0.000000, 0.000000)
elseif value == 40 then TP(5265.863281, -5421.060059, 64.297638, 0.805274, -0.000000, 0.000000)
elseif value == 41 then TP(5266.750977, -5426.982910, 139.746857, -0.631726, -0.000000, 0.000000)
elseif value == 42 then TP(4517.433105, -4531.979492, 2.820656, -1.275829, -0.000000, 0.000000)
elseif value == 43 then TP(5148.460938, -4620.099121, 1.108461, -1.422905, -0.000000, 0.000000)
elseif value == 44 then TP(4901.324219, -5216.216797, 2.768269, -2.631163, -0.000000, 0.000000)
elseif value == 45 then TP(5152.886719, -5143.897949, 0.997772, -0.205993, -0.000000, 0.000000)
elseif value == 46 then TP(5108.437012, -4580.132812, 28.417776, 1.720010, -0.000000, 0.000000)
elseif value == 47 then TP(4903.939453, -5337.220703, 34.306366, 0.821753, -0.000000, 0.000000)
end xox_6 = value end)
cayoPericoMenu:add_array_item("TP's Heist", {"Drainage Pipe", "Entry Drain", "Cayo Office", "Cayo Primary", "Basement Storage", "North Storage", "West Storage", "South Storage", "Cayo Gate", "Escaped"}, function() return xox_7 end, function(value)
if value == 1 then menu.end_cutscene() TP(5045.980957, -5816.833984, -11.489866, 0.884011, -0.000000, 0.000121)
elseif value == 2 then TP(5052.879395, -5771.335938, -6.004176, 1.169803, -0.000000, 0.001638)
elseif value == 3 then menu.end_cutscene() TP(5005.557617, -5754.321289, 27.545269, 2.586560, -0.000000, 0.000000)
elseif value == 4 then menu.end_cutscene() TP(5007.763184, -5756.029785, 14.184443, 2.467127, -0.000000, 0.000000)
elseif value == 5 then menu.end_cutscene() TP(4999.613281, -5749.913086, 13.540487, 2.613005, -0.000000, 0.000000)
elseif value == 6 then TP(5080.862305, -5756.300781, 14.529651, -0.575850, -0.000000, 0.000000)
elseif value == 7 then TP(5030.722168, -5736.470703, 16.565588, 2.439484, -0.000000, 0.000000)
elseif value == 8 then TP(5007.434570, -5787.255859, 16.531698, 0.680315, -0.000000, 0.000000)
elseif value == 9 then menu.end_cutscene() TP(4990.194824, -5716.448730, 18.580215, 0.946360, -0.000000, 0.000000)
elseif value == 10 then menu.end_cutscene() TP(4639.124023, -6010.004883, -7.475036, 1.930023, -0.000000, -0.000000)

end xox_7 = value end) cutsMenu = cayoPericoMenu:add_submenu("Cuts") cutsMenu:add_array_item("Preset cuts", {"65 all", "80 all", "90 all", "100 all", "138 all-Panther only", "202 all-PinkD only"}, function() return xox_32 end, function(G) if G == 1 then for i = NORS2, RLC2 do globals.set_int(i, 65) end elseif G == 2 then for i = NORS2, RLC2 do globals.set_int(i, 80) end elseif G == 3 then for i = NORS2, RLC2 do globals.set_int(i, 90) end elseif G == 4 then for i = NORS2, RLC2 do globals.set_int(i, 100) end elseif G == 5 then for i = NORS2, RLC2 do globals.set_int(i, 138) end elseif G == 6 then for i = NORS2, RLC2 do globals.set_int(i, 202) end end xox_32 = value end)
cutsMenu:add_int_range("Player 1", 1, 15, 300, function() return globals.get_int(NORS2) end, function(value) globals.set_int(NORS2, value) end) cutsMenu:add_int_range("Player 2", 1, 15, 300, function() return globals.get_int(XM2) end, function(value) globals.set_int(XM2, value) end) cutsMenu:add_int_range("Player 3", 1, 15, 300, function() return globals.get_int(HA1) end, function(value) globals.set_int(HA1, value) end) cutsMenu:add_int_range("Player 4", 1, 15, 300, function() return globals.get_int(RLC2) end, function(value) globals.set_int(RLC2, value) end) cutsMenu:add_int_range("Non-Host Self", 1, 15, 300, function() return globals.get_int(CCT4) end, function(value) globals.set_int(CCT4, value) end)
CPVMenu = cayoPericoMenu:add_submenu("Size/Value Editor") CPVMenu:add_int_range("Bag Size", 900.0, 1800, 99999, function() return globals.get_int(VU4) end, function(value) globals.set_int(VU4, value) end) CPVMenu:add_int_range("Panther Statue", 50000, 1900000, 25500000, function() return globals.get_int(RF2) end, function(value) globals.set_int(RF2, value) end) CPVMenu:add_int_range("Pink Diamond", 50000, 1300000, 25500000, function() return globals.get_int(CD1) end, function(value) globals.set_int(CD1, value) end) CPVMenu:add_int_range("Bearer Bonds", 50000, 1100000, 25500000, function() return globals.get_int(XM43) end, function(value) globals.set_int(XM43, value) end) CPVMenu:add_int_range("Ruby Necklace", 50000, 1000000, 25500000, function() return globals.get_int(NM8) end, function(value) globals.set_int(NM8, value) end) CPVMenu:add_int_range("Tequila", 50000, 900000, 25500000, function() return globals.get_int(EMD10) end, function(value) globals.set_int(EMD10, value) end) CPVMenu:add_int_range("Gold", 82587, 330350, 5000000, function() return stats.get_int(mpx .. "H4LOOT_GOLD_V") end, function(value) stats.set_int(mpx .. "H4LOOT_GOLD_V", value) end) CPVMenu:add_int_range("Paintings", 50000, 189500, 5000000, function() return stats.get_int(mpx .. "H4LOOT_PAINT_V") end, function(value) stats.set_int(mpx .. "H4LOOT_PAINT_V", value) end) CPVMenu:add_int_range("Cocaine", 50000, 200095, 5000000, function() return stats.get_int(mpx .. "H4LOOT_COKE_V") end, function(value) stats.set_int(mpx .. "H4LOOT_COKE_V", value) end) CPVMenu:add_int_range("Weed", 50000, 147870, 5000000, function() return stats.get_int(mpx .. "H4LOOT_WEED_V") end, function(value) stats.set_int(mpx .. "H4LOOT_WEED_V", value) end) CPVMenu:add_int_range("Cash", 50000, 90000, 5000000, function() return stats.get_int(mpx .. "H4LOOT_CASH_V") end, function(value) stats.set_int(mpx .. "H4LOOT_CASH_V", value) end) CPVMenu:add_action("--For default values, Dont Change", function() end)
casinoHeistMenu = heistMenu:add_submenu("Diamond Casino Heist") 
casinoHeistMenu:add_array_item("Target", {"Cash", "Gold", "Art", "Diamonds"}, function() return xox_8 end, function(v) if v == 1 then stats.set_int(mpx .. "H3OPT_TARGET", 0) elseif v == 2 then stats.set_int(mpx .. "H3OPT_TARGET", 1) elseif v == 3 then stats.set_int(mpx .. "H3OPT_TARGET", 2) elseif v == 4 then stats.set_int(mpx .. "H3OPT_TARGET", 3) end xox_8 = v end)
casinoHeistMenu:add_array_item("Approach", {"Normal-Silent n Sneaky", "Normal-Big Con", "Normal-Aggressive", "Hard-Silent n Sneaky", "Hard-Big Con", "Hard-Aggressive"}, function() return xox_9 end, function(f) if f == 1 then stats.set_int(mpx .. "H3_LAST_APPROACH", 3) stats.set_int(mpx .. "H3_APPROACH", 1) elseif f == 2 then stats.set_int(mpx .. "H3_LAST_APPROACH", 3) stats.set_int(mpx .. "H3_APPROACH", 2) elseif f == 3 then stats.set_int(mpx .. "H3_LAST_APPROACH", 1) stats.set_int(mpx .. "H3_APPROACH", 3) elseif f == 4 then stats.set_int(mpx .. "H3_LAST_APPROACH", 3) stats.set_int(mpx .. "H3_HARD_APPROACH", 1) elseif f == 5 then stats.set_int(mpx .. "H3_LAST_APPROACH", 3) stats.set_int(mpx .. "H3_HARD_APPROACH", 2) elseif f == 6 then stats.set_int(mpx .. "H3_LAST_APPROACH", 1) stats.set_int(mpx .. "H3_HARD_APPROACH", 3) end xox_9 = f end)
casinoHeistMenu:add_array_item("Gunman", {"Karl Abolaji", "Gustavo Mota", "Charlie Reed", "Chester McCoy", "Patrick McReary", "None"}, function() return xox_10 end, function(d) if d == 1 then stats.set_int(mpx .. "H3OPT_CREWWEAP", 1) elseif d == 2 then stats.set_int(mpx .. "H3OPT_CREWWEAP", 2) elseif d == 3 then stats.set_int(mpx .. "H3OPT_CREWWEAP", 3) elseif d == 4 then stats.set_int(mpx .. "H3OPT_CREWWEAP", 4) elseif d == 5 then stats.set_int(mpx .. "H3OPT_CREWWEAP", 5) elseif d == 6 then stats.set_int(mpx .. "H3OPT_CREWWEAP", 6) end xox_10 = d end)
casinoHeistMenu:add_array_item("Driver", {"Karim Deniz", "Taliana Martinez", "Eddie Toh", "Zach Nelson", "Chester McCoy", "None"}, function() return xox_11 end, function(a) if a == 1 then stats.set_int(mpx .. "H3OPT_CREWDRIVER", 1) elseif a == 2 then stats.set_int(mpx .. "H3OPT_CREWDRIVER", 2) elseif a == 3 then stats.set_int(mpx .. "H3OPT_CREWDRIVER", 3) elseif a == 4 then stats.set_int(mpx .. "H3OPT_CREWDRIVER", 4) elseif a == 5 then stats.set_int(mpx .. "H3OPT_CREWDRIVER", 5) elseif a == 6 then stats.set_int(mpx .. "H3OPT_CREWDRIVER", 6) end xox_11 = a end)
casinoHeistMenu:add_array_item("Hacker", {"Rickie Lukens", "Christian Feltz", "Yohan Blair", "Avi Schwartzman", "Page Harris", "None"}, function() return xox_12 end, function(value) if value == 1 then stats.set_int(mpx .. "H3OPT_CREWHACKER", 1) elseif value == 2 then stats.set_int(mpx .. "H3OPT_CREWHACKER", 2) elseif value == 3 then stats.set_int(mpx .. "H3OPT_CREWHACKER", 3) elseif value == 4 then stats.set_int(mpx .. "H3OPT_CREWHACKER", 4) elseif value == 5 then stats.set_int(mpx .. "H3OPT_CREWHACKER", 5) elseif value == 6 then stats.set_int(mpx .. "H3OPT_CREWHACKER", 6) end xox_12 = value end)
casinoHeistMenu:add_array_item("Mask", {"Geometic Set", "Hunter Set", "Oni Half Mask Set", "Emoji Set", "Ornate Skull Set", "Lucky Fruit Set", "Guerilla Set", "Clown Set", "Animal Set", "Riot Set", "Oni Full Mask Set", "Hockey Set" }, function() return xox_13 end, function(value) if value == 1 then stats.set_int(mpx .. "H3OPT_MASKS", 1) elseif value == 2 then stats.set_int(mpx .. "H3OPT_MASKS", 2) elseif value == 3 then stats.set_int(mpx .. "H3OPT_MASKS", 3) elseif value == 4 then stats.set_int(mpx .. "H3OPT_MASKS", 4) elseif value == 5 then stats.set_int(mpx .. "H3OPT_MASKS", 5) elseif value == 6 then stats.set_int(mpx .. "H3OPT_MASKS", 6) elseif value == 7 then stats.set_int(mpx .. "H3OPT_MASKS", 7) elseif value == 8 then stats.set_int(mpx .. "H3OPT_MASKS", 8) elseif value == 9 then stats.set_int(mpx .. "H3OPT_MASKS", 9) elseif value == 10 then stats.set_int(mpx .. "H3OPT_MASKS", 10) elseif value == 11 then stats.set_int(mpx .. "H3OPT_MASKS", 11) elseif value == 12 then stats.set_int(mpx .. "H3OPT_MASKS", 12) end xox_13 = value end)
casinoHeistMenu:add_action("       ---[[Complete Preps - Finale]]---", function() stats.set_int(mpx .. "H3OPT_DISRUPTSHIP", 3) stats.set_int(mpx .. "H3OPT_KEYLEVELS", 2) stats.set_int(mpx .. "H3OPT_VEHS", 3) stats.set_int(mpx .. "H3OPT_WEAPS", 0) stats.set_int(mpx .. "H3OPT_BITSET0", -1) stats.set_int(mpx .. "H3OPT_BITSET1", -1) stats.set_int(mpx .. "H3OPT_COMPLETEDPOSIX", -1) end)
casinoHeistMenu:add_action("                 ---[[Reset Heist]]---", function() stats.set_int(mpx .. "H3OPT_BITSET1", 0) stats.set_int(mpx .. "H3OPT_BITSET0", 0) end) casinoHeistMenu:add_action("-----------------------------------------------------", function() end)
casinoHeistMenu:add_action("~All POI n Accesspoints", function() stats.set_int(mpx .. "H3OPT_POI", -1) stats.set_int(mpx .. "H3OPT_ACCESSPOINTS", -1) end)
casinoHeistMenu:add_action("~Remove Casino Heist CD", function() stats.set_int(mpx .. "H3_COMPLETEDPOSIX", -1) stats.set_int("MPPLY_H3_COOLDOWN", -1) end)
casinoHeistMenu:add_action("~Choose if 1st Heist/Unlock lester cancel", function() stats.set_int(mpx .. "CAS_HEIST_NOTS", -1) stats.set_int(mpx .. "CAS_HEIST_FLOW", -1) end) local function DCHC(e) if not localplayer then return end if e then for i = OPV1, RS9 do globals.set_int(i, 0) end globals.set_int(CA4, 0) else globals.set_int(CA4, 5) globals.set_int(OPV1, 5) globals.set_int(LT2, 9) globals.set_int(CRC2, 7) globals.set_int(BS3, 10) globals.set_int(CSP12, 8) globals.set_int(HO7, 5) globals.set_int(RS5, 7) globals.set_int(DOCT4, 9) globals.set_int(RLC6, 6) globals.set_int(NM1, 10) globals.set_int(RF12, 3) globals.set_int(VU1, 7) globals.set_int(PAS1, 5) globals.set_int(HO3, 10) globals.set_int(RS9, 9) end end casinoHeistMenu:add_toggle("Remove Lester+Crew Cuts", function() return e8 end, function() e8 = not e8 DCHC(e8) end) casinoHeistMenu:add_action("---", function() end) 
casinoHeistMenu:add_int_range("Casino Lifes - Self", 1, 1, 10, function() return fmC:get_int(SH4) end, function(life) if fmC and fmC:is_active() then fmC:set_int(SH4,life) end end)
casinoHeistMenu:add_action("Suicide", function() menu.suicide_player() end) casinoHeistMenu:add_action("^^^[Useful for Blackscreen Bug]", function() end) casinoHeistMenu:add_action("---", function() end)
casinoHeistMenu:add_action("Bypass Fingerprint Hack ", function() if fmC and fmC:is_active() then if fmC:get_int(RS2) == 4 then fmC:set_int(RS2, 5) end end end)
casinoHeistMenu:add_action("Bypass Door Hack ", function() if fmC and fmC:is_active() then if fmC:get_int(HA10) ~= 4 then fmC:set_int(HA10, 5) end end end)
casinoHeistMenu:add_action("Quick Drill Vault Door", function() if fmC:is_active() then local drillvalue = fmC:get_int(SRM1) sleep(0.1) fmC:set_int(TAV1, SRM1)  menu.send_key_press(1) end end)
local function casCctv(e) if not localplayer then return end if e then menu.remove_cctvs() else menu.remove_cctvs(nil) end end casinoHeistMenu:add_toggle("Remove CCTV", function() return e7 end, function() e7 = not e7 casCctv(e7) end) casinoHeistMenu:add_action("Kill mission npcs", function() menu.kill_all_mission_peds() end) casinoHeistMenu:add_action("Kill all npcs", function() menu.kill_all_npcs() end)
casinoHeistMenu:add_int_range("Real Take", 100000, 1000000, 10000000, function() return fmC:get_int(HO6) end, function(v) fmC:set_int(HO6, v) end)
CDNCMenu = casinoHeistMenu:add_submenu("Cuts") CDNCMenu:add_array_item("Preset cuts", {"85 all", "100 all"}, function() return xox_34 end, function(G) if G == 1 then for i = RB3, DWU2 do globals.set_int(i, 85) end elseif G == 2 then for i = RB3, DWU2 do globals.set_int(i, 100) end end xox_34 = value end)
CDNCMenu:add_int_range("Player 1", 5, 15, 300, function() return globals.get_int(RB3) end, function(value) globals.set_int(RB3, value) end) CDNCMenu:add_int_range("Player 2", 5, 15, 300, function() return globals.get_int(XM19) end, function(value) globals.set_int(XM19, value) end) CDNCMenu:add_int_range("Player 3", 5, 15, 300, function() return globals.get_int(WB1) end, function(value) globals.set_int(WB1, value) end) CDNCMenu:add_int_range("Player 4", 5, 15, 300, function() return globals.get_int(DWU2) end, function(value) globals.set_int(DWU2, value) end) CDNCMenu:add_action("-----", function() end) --CDNCMenu:add_int_range("Non-Host Self Cut", 5, 15, 300, function() return globals.get_int(2722245) end, function(value) globals.set_int(2722245, value) end)
CDNPMenu = casinoHeistMenu:add_submenu("Potential Editor") CDNPMenu:add_int_range("Cash Potential", 1000000000.0, 2115000, 1000000000, function() return globals.get_int(SS2) end, function(value) globals.set_int(SS2, value) end) CDNPMenu:add_int_range("Art Potential", 1000000000.0, 2350000, 1000000000, function() return globals.get_int(BS10) end, function(value) globals.set_int(BS10, value) end) CDNPMenu:add_int_range("Gold Potential", 1000000000.0, 2585000, 1000000000, function() return globals.get_int(HA11) end, function(value) globals.set_int(HA11, value) end) CDNPMenu:add_int_range("Diamond Potential", 1000000000.0, 3290000, 1000000000, function() return globals.get_int(XM46) end, function(value) globals.set_int(XM46, value) end) 
casinoHeistMenu:add_array_item("Teleports", {"Vault swipe", "Staff Door Exit", "Laundry room", "Bonus room", "Roof exit"}, function() return xox_14 end, function(value) if value == 1 then TP(2468.646973, -279.083374, -71.994194, -1.083554, 0.000000, 0.000000) elseif value == 2 then TP(2547.458496, -277.744507, -59.741863, -0.071993, 0.005218, -0.113118) elseif value == 3 then TP(2536.455078, -300.772522, -60.022968, 0.000000, 0.000000, 0.000000) elseif value == 4 then TP(2521.906494, -287.172882, -60.022964, 0.000000, 0.000000, 0.000000) elseif value == 5 then TP(2522.338379, -248.534760, -25.414972, 0.000000, 0.000000, 0.000000) end xox_14 = value end)
ddHeistMenu = heistMenu:add_submenu("Doomsday Heist") ddHeistMenu:add_array_item("Doomsday Act", {"I:Data Breaches", "II:Bogdan Problem", "III:Doomsday Senario"}, function() return xox_22 end, function(value) xox_22 = value if value == 1 then GGP = 503 GGS = 229383 elseif value == 2 then GGP = 240 GGS = 229378 elseif value == 3 then GGP = 16368 GGS = 229380 end stats.set_int(mpx .. "GANGOPS_FLOW_MISSION_PROG", GGP) stats.set_int(mpx .. "GANGOPS_HEIST_STATUS", GGS) stats.set_int(mpx .. "GANGOPS_FLOW_NOTIFICATIONS", 1557) end) ddHeistMenu:add_action("Complete All", function() stats.set_int(mpx.."GANGOPS_FM_MISSION_PROG", -1) end) ddHeistMenu:add_action("Reset Heist", function() stats.set_int(mpx.."GANGOPS_FLOW_MISSION_PROG", 240) stats.set_int(mpx.."GANGOPS_HEIST_STATUS", 0) stats.set_int(mpx.."GANGOPS_FLOW_NOTIFICATIONS", 1557) end) ddHeistMenu:add_action("-----", function() end) ddHeistMenu:add_action("Instant Finish $$", function() fmC:set_int(RB6+1741, 12) fmC:set_int(HO6, 10000000) fmC:set_int(HA2, 99999) fmC:set_int(ACL4, 99999) end) ddHeistMenu:add_action("(Wait 5 secs  to use after loading, press", function() end) ddHeistMenu:add_action("again 5 secs after loading inside building)", function() end) ddHeistMenu:add_action("-----", function() end) ddHeistMenu:add_action("Bypass Act III Hack", function() fmC:set_int(1400, 3) end) ddHeistMenu:add_action("Kill mission npcs", function() menu.kill_all_mission_peds() end) ddHeistMenu:add_action("Kill all npcs", function() menu.kill_all_npcs() end)
ddCMenu = ddHeistMenu:add_submenu("Cuts") ddCMenu:add_array_item("Max $ Cuts% All", {"I:Data Breaches", "II:Bogdan Problem", "III:Doomsday Senario"}, function() return xox_23 end, function(value) if value == 1 then globals.set_int(SH2, 209) globals.set_int(AWR1, 209) globals.set_int(REM1, 209) globals.set_int(UA1, 209) elseif value == 2 then globals.set_int(SH2, 143) globals.set_int(AWR1, 143) globals.set_int(REM1, 143) globals.set_int(UA1, 143) elseif value == 3 then globals.set_int(SH2, 113) globals.set_int(AWR1, 113) globals.set_int(REM1, 113) globals.set_int(UA1, 113) end xox_23 = value end)
ddCMenu:add_action("                      ~Manual %~ ", function() end) ddCMenu:add_int_range("Doomsday Player 1", 1.0, 15, 313, function() return globals.get_int(SH2) end, function(value) globals.set_int(SH2, value) end) ddCMenu:add_int_range("Doomsday Player 2", 1.0, 15, 313, function() return globals.get_int(AWR1) end, function(value) globals.set_int(AWR1, value) end) ddCMenu:add_int_range("Doomsday Player 3", 1.0, 15, 313, function() return globals.get_int(REM1) end, function(value) globals.set_int(REM1, value) end) ddCMenu:add_int_range("Doomsday Player 4", 1.0, 15, 313, function() return globals.get_int(UA1) end, function(value) globals.set_int(UA1, value) end)

appHeistMenu = heistMenu:add_submenu("Apartment Heist") 
appHeistMenu:add_action("Skip to Current Heist Finale", function() stats.set_int(mpx .. "HEIST_PLANNING_STAGE", -1) end) 
appHeistMenu:add_action("-----", function() end) 
appHeistMenu:add_action("Instant Finish $$", function() fmC:set_int(RB6+1741, 12) fmC:set_int(HA2, 99999) fmC:set_int(ACL4, 1) end) 
appHeistMenu:add_action("(Wait 5 secs to use after loading)", function() end) appHeistMenu:add_action("-----", function() end)
appHeistMenu:add_action("Bypass Fleeca Hack", function() fmC:set_int(EBD18, 7) end) 
appHeistMenu:add_action("Quick Fleeca Drill", function() fmC:set_float(EMD7, 100) end) 
appHeistMenu:add_action("Kill mission npcs", function() menu.kill_all_mission_peds() end) 
appHeistMenu:add_action("Kill all npcs", function() menu.kill_all_npcs() end) appHeistMenu:add_action("-----", function() end)
ahMmMenu = appHeistMenu:add_submenu("$$$ Method (Self only)") ahMmMenu:add_array_item(" ~Fleeca", {"5 Mil", "10 Mil", "15 Mil"}, function() return xox_24 end, function(value) if value == 1 then globals.set_int(RF6, 1987) elseif value == 2 then globals.set_int(RF6, 3974) elseif value == 3 then globals.set_int(RF6, 5962) end xox_24 = value end) ahMmMenu:add_array_item(" ~Prison Break", {"5 Mil", "10 Mil", "15 Mil"}, function() return xox_27 end, function(value) if value == 1 then globals.set_int(RF6, 572) elseif value == 2 then globals.set_int(RF6, 1143) elseif value == 3 then globals.set_int(RF6, 1714) end xox_27 = value end) ahMmMenu:add_array_item(" ~Humane Labs Raid", {"5 Mil", "10 Mil", "15 Mil"}, function() return xox_28 end, function(value) if value == 1 then globals.set_int(RF6, 424) elseif value == 2 then globals.set_int(RF6, 847) elseif value == 3 then globals.set_int(RF6, 1269) end xox_28 = value end) ahMmMenu:add_array_item(" ~Series A Funding", {"5 Mil", "10 Mil", "15 Mil"}, function() return xox_29 end, function(value) if value == 1 then globals.set_int(RF6, 556) elseif value == 2 then globals.set_int(RF6, 1132) elseif value == 3 then globals.set_int(RF6, 1697) end xox_29 = value end) ahMmMenu:add_array_item(" ~The Pacific Standard", {"5 Mil", "10 Mil", "15 Mil"}, function() return xox_30 end, function(value) if value == 1 then globals.set_int(RF6, 267) elseif value == 2 then globals.set_int(RF6, 534) elseif value == 3 then globals.set_int(RF6, 800) end xox_30 = value end)
ahCMenu = appHeistMenu:add_submenu("Cuts") ahCMenu:add_int_range("Apt Player 1", 1.0, 15, 10434, function() return globals.get_int(RF6) end, function(value) globals.set_int(RF6, value) end) ahCMenu:add_int_range("Apt Player 2", 1.0, 15, 10434, function() return globals.get_int(XM10) end, function(value) globals.set_int(XM10, value) end) ahCMenu:add_int_range("Apt Player 3", 1.0, 15, 10434, function() return globals.get_int(PSU4) end, function(value) globals.set_int(PSU4, value) end) ahCMenu:add_int_range("Apt Player 4", 1.0, 15, 10434, function() return globals.get_int(AWA4) end, function(value) globals.set_int(AWA4, value) end) ahCMenu:add_action("All 100", function() for i = RF6, AWA4 do globals.set_int(i, 100) end end)
CMMenu = mainMenu:add_submenu("Contracts") agencyMenu = CMMenu:add_submenu("Agency") secMenu = agencyMenu:add_submenu("Security Contracts") secMenu:add_int_range("Contract 1", 5000, 35000, 130000, function() return globals.get_int(1977071) end, function(value) globals.set_int(1977071, value) end) secMenu:add_int_range("Contract 2", 5000, 35000, 130000, function() return globals.get_int(1977074) end, function(value) globals.set_int(1977074, value) end) secMenu:add_int_range("Contract 3", 5000, 35000, 130000, function() return globals.get_int(1977077) end, function(value) globals.set_int(1977077, value) end) local function SecCooldown(e) if not localplayer then return end if e then globals.set_int(VHR3, 0) else globals.set_int(VHR3, 300000) end end secMenu:add_toggle("Remove Cooldown", function() return e9 end, function() e9 = not e9 SecCooldown(e9) end) secMenu:add_action("-----", function() end) secMenu:add_action("Kill mission npcs", function() menu.kill_all_mission_peds() end) secMenu:add_action("Kill all npcs", function() menu.kill_all_npcs() end) secMenu:add_action("-------No. of security contracts done---------", function() end) secMenu:add_int_range("Asset Protection", 1, 0, 500, function() return stats.get_int(mpx.."FIXER_SC_ASSETS_PROTECTED") end, function(v) stats.set_int(mpx.."FIXER_SC_ASSETS_PROTECTED", v) end) secMenu:add_int_range("Gang Termination", 1, 0, 500, function() return stats.get_int(mpx.."FIXER_SC_GANG_TERMINATED") end, function(v) stats.set_int(mpx.."FIXER_SC_GANG_TERMINATED", v) end) secMenu:add_int_range("Liquidize Assets", 1, 0, 500, function() return stats.get_int(mpx.."FIXER_SC_EQ_DESTROYED") end, function(v) stats.set_int(mpx.."FIXER_SC_EQ_DESTROYED", v) end) secMenu:add_int_range("Recover Valuables", 1, 0, 500, function() return stats.get_int(mpx.."FIXER_SC_VAL_RECOVERED") end, function(v) stats.set_int(mpx.."FIXER_SC_VAL_RECOVERED", v) end) secMenu:add_int_range("Rescue Operation", 1, 0, 500, function() return stats.get_int(mpx.."FIXER_SC_VIP_RESCUED") end, function(v) stats.set_int(mpx.."FIXER_SC_VIP_RESCUED", v) end) secMenu:add_int_range("Vehicle Recovery", 1, 0, 500, function() return stats.get_int(mpx.."FIXER_SC_VEH_RECOVERED") end, function(v) stats.set_int(mpx.."FIXER_SC_VEH_RECOVERED", v) end) secMenu:add_int_range("Contract Earnings", 250000, 0, 20000000, function() return stats.get_int(mpx.."FIXER_EARNINGS") end, function(v) stats.set_int(mpx.."FIXER_EARNINGS", v) end) vipMenu = agencyMenu:add_submenu("VIP Contracts") vipMenu:add_array_item("Skip Prep", {"The Nightclub", "The Marina", "Nightlife Leak", "The Country Club", "Guest List", "High Society Leak", "Davis", "The Ballas", "The South Central Leak", "Studio Time", "Dont F*ck With Dre"}, function() return xox_25 end, function(value) if value == 1 then stats.set_int(mpx .. "FIXER_GENERAL_BS", -1) stats.set_int(mpx .. "FIXER_COMPLETED_BS", -1) stats.set_int(mpx .. "FIXER_STORY_BS", 3) stats.set_int(mpx .. "FIXER_STORY_COOLDOWN", -1) elseif value == 2 then stats.set_int(mpx .. "FIXER_GENERAL_BS", -1) stats.set_int(mpx .. "FIXER_COMPLETED_BS", -1) stats.set_int(mpx .. "FIXER_STORY_BS", 4) stats.set_int(mpx .. "FIXER_STORY_COOLDOWN", -1) elseif value == 3 then stats.set_int(mpx .. "FIXER_GENERAL_BS", -1) stats.set_int(mpx .. "FIXER_COMPLETED_BS", -1) stats.set_int(mpx .. "FIXER_STORY_BS", 12) stats.set_int(mpx .. "FIXER_STORY_COOLDOWN", -1) elseif value == 4 then stats.set_int(mpx .. "FIXER_GENERAL_BS", -1) stats.set_int(mpx .. "FIXER_COMPLETED_BS", -1) stats.set_int(mpx .. "FIXER_STORY_BS", 28) stats.set_int(mpx .. "FIXER_STORY_COOLDOWN", -1) elseif value == 5 then stats.set_int(mpx .. "FIXER_GENERAL_BS", -1) stats.set_int(mpx .. "FIXER_COMPLETED_BS", -1) stats.set_int(mpx .. "FIXER_STORY_BS", 60) stats.set_int(mpx .. "FIXER_STORY_COOLDOWN", -1) elseif value == 6 then stats.set_int(mpx .. "FIXER_GENERAL_BS", -1) stats.set_int(mpx .. "FIXER_COMPLETED_BS", -1) stats.set_int(mpx .. "FIXER_STORY_BS", 124) stats.set_int(mpx .. "FIXER_STORY_COOLDOWN", -1) elseif value == 7 then stats.set_int(mpx .. "FIXER_GENERAL_BS", -1) stats.set_int(mpx .. "FIXER_COMPLETED_BS", -1) stats.set_int(mpx .. "FIXER_STORY_BS", 252) stats.set_int(mpx .. "FIXER_STORY_COOLDOWN", -1) elseif value == 8 then stats.set_int(mpx .. "FIXER_GENERAL_BS", -1) stats.set_int(mpx .. "FIXER_COMPLETED_BS", -1) stats.set_int(mpx .. "FIXER_STORY_BS", 508) stats.set_int(mpx .. "FIXER_STORY_COOLDOWN", -1) elseif value == 9 then stats.set_int(mpx .. "FIXER_GENERAL_BS", -1) stats.set_int(mpx .. "FIXER_COMPLETED_BS", -1) stats.set_int(mpx .. "FIXER_STORY_BS", 2044) stats.set_int(mpx .. "FIXER_STORY_COOLDOWN", -1) elseif value == 10 then stats.set_int(mpx .. "FIXER_GENERAL_BS", -1) stats.set_int(mpx .. "FIXER_COMPLETED_BS", -1) stats.set_int(mpx .. "FIXER_STORY_BS", -1) stats.set_int(mpx .. "FIXER_STORY_COOLDOWN", -1) stats.set_int(mpx .. "FIXER_STORY_STRAND", -1) end xox_25 = value end) local function VipMod(e) if not localplayer then return end if e then  globals.set_int(293880, 2400000) else globals.set_int(293880, 1000000) end end vipMenu:add_toggle("2.4M Finale", function() return e10 end, function() e10 = not e10 VipMod(e10) end) local function VipCD(e) if not localplayer then return end if e then globals.set_int(293914, 0) else globals.set_int(293914, 1200000) end end vipMenu:add_toggle("Remove Cooldown", function() return e11 end, function() e11 = not e11 VipCD(e11) end) vipMenu:add_action("-----", function() end) vipMenu:add_action("Instant Finish $$", function() fmC2020:set_int(CIF1, 51338752) fmC2020:set_int(CIF2, 50) end) vipMenu:add_action("(Wait 5 secs to use after loading)", function() end) vipMenu:add_action("-----", function() end) vipMenu:add_action("Kill mission npcs", function() menu.kill_all_mission_peds() end) vipMenu:add_action("Kill all npcs", function() menu.kill_all_npcs() end)
phMenu = agencyMenu:add_submenu("Payphone Hits") phMenu:add_int_range("Payphone Bonus", 35000, 0, 105000, function() return globals.get_int(CHA1) end, function(value) globals.set_int(CHA1, value) end) phMenu:add_int_range("Payphone Payment", 22500, 0, 100000, function() return globals.get_int(ACL2) end, function(value) globals.set_int(ACL2, value) end) local function pCD(e) if not localplayer then return end if e then globals.set_int(VHR3, 0) globals.set_int(CSP18, 0) else globals.set_int(VHR3, 300000) globals.set_int(CSP18, 1200000) end end phMenu:add_toggle("Remove Cooldown", function() return e12 end, function() e12 = not e12 pCD(e12) end) phMenu:add_action("-----", function() end) phMenu:add_action("Kill mission npcs", function() menu.kill_all_mission_peds() end) phMenu:add_action("Kill all npcs", function() menu.kill_all_npcs() end) phMenu:add_action("------------Payphone Hits Stats-------------", function() end) phMenu:add_int_range("Payphone hits Completed", 1, 0, 999, function() return stats.get_int(mpx.."FIXERTELEPHONEHITSCOMPL") end, function(v) stats.set_int(mpx.."FIXERTELEPHONEHITSCOMPL", v) end)
LSTMenu = CMMenu:add_submenu("Autoshop") LSTMenu:add_array_item("Prep Skip", {"The Union Depository Contract", "The Superdollar Deal", "The Bank Contract", "The ECU Job", "The Prison Contract", "The Agency Deal", "The Lost Contract", "The Data Contract"}, function() return xox_18 end, function(value) if value == 1 then stats.set_int(mpx .. "TUNER_GEN_BS", 12543) stats.set_int(mpx .. "TUNER_CURRENT", 0) elseif value == 2 then stats.set_int(mpx .. "TUNER_GEN_BS", 4351) stats.set_int(mpx .. "TUNER_CURRENT", 1) elseif value == 3 then stats.set_int(mpx .. "TUNER_GEN_BS", 12543) stats.set_int(mpx .. "TUNER_CURRENT", 2) elseif value == 4 then stats.set_int(mpx .. "TUNER_GEN_BS", 12543) stats.set_int(mpx .. "TUNER_CURRENT", 3) elseif value == 5 then stats.set_int(mpx .. "TUNER_GEN_BS", 12543) stats.set_int(mpx .. "TUNER_CURRENT", 4) elseif value == 6 then stats.set_int(mpx .. "TUNER_GEN_BS", 12543) stats.set_int(mpx .. "TUNER_CURRENT", 5) elseif value == 7 then stats.set_int(mpx .. "TUNER_GEN_BS", 12543) stats.set_int(mpx .. "TUNER_CURRENT", 6) else stats.set_int(mpx .. "TUNER_GEN_BS", 12543) stats.set_int(mpx .. "TUNER_CURRENT", 7) end xox_18 = value end) LSTMenu:add_action("Remove Cooldowns", function() for i = 0, 7 do stats.set_int(mpx.. "TUNER_CONTRACT" ..i.. "_POSIX") end end) LSTMenu:add_action("-----", function() end) LSTMenu:add_action("$1M Payout; ⇐ (Select after starting)", function() for i = 293186, 293194 do globals.set_int(i, 400000) end globals.set_float(293183,0) end) LSTMenu:add_action("Instant Finish $$", function() fmC2020:set_int(42280, 51338977) fmC2020:set_int(43655, 101) end) LSTMenu:add_action("(Wait 5 secs to use after loading)", function() end) LSTMenu:add_action("---------------Contracts Stats-----------------", function() end) LSTMenu:add_int_range("Contracts Done", 1, 0, 9999, function() return stats.get_int(mpx.."TUNER_COUNT") end, function(v) stats.set_int(mpx.."TUNER_COUNT", v) end) LSTMenu:add_int_range("Contracts Earnings", 500000, 0, 1000000000, function() return stats.get_int(mpx.."TUNER_EARNINGS") end, function(v) stats.set_int(mpx.."TUNER_EARNINGS", v) end) LSTMenu:add_action("-----", function() end) LSTMenu:add_action("Kill mission npcs", function() menu.kill_all_mission_peds() end) LSTMenu:add_action("Kill all npcs", function() menu.kill_all_npcs() end)
DWMenu = mainMenu:add_submenu("Drug Wars") DWMenu:add_action("Dax Missions", function() end) DWMenu:add_array_item("Set:", {"First Dose - Welcome to the Troupe", "First Dose - Designated Driver", "First Dose - Fatal Incursion", "First Dose - Uncontrolled Substance", "First Dose - Make War Not Love", "First Dose - Off The Rails"}, function() return xox_9 end, function(f) if f == 1 then  stats.set_int(mpx .. "XM22_CURRENT", 0) elseif f == 2 then  stats.set_int(mpx .. "XM22_CURRENT", 1) elseif f == 3 then  stats.set_int(mpx .. "XM22_CURRENT", 2) elseif f == 4 then  stats.set_int(mpx .. "XM22_CURRENT", 3) elseif f == 5 then  stats.set_int(mpx .. "XM22_CURRENT", 4) elseif f == 6 then  stats.set_int(mpx .. "XM22_CURRENT", 5) end xox_9 = f end)
DWMenu:add_action("------------------------------------------------", function() end)
DWMenu:add_toggle("Toggle Drug Dealers", function() return globals.get_boolean(CFC) end, function(value) globals.set_boolean(CFC,value) end)
DWMenu:add_array_item("TP's Drug Dealer", {"Drug Dealer1", "Drug Dealer2", "Drug Dealer3", "Drug Dealer4", "Drug Dealer5", "Drug Dealer6", "Drug Dealer7", "Drug Dealer8", "Drug Dealer9", "Drug Dealer10", "Drug Dealer11", "Drug Dealer12", "Drug Dealer13", "Drug Dealer14", "Drug Dealer15", "Drug Dealer16", "Drug Dealer17", "Drug Dealer18", "Drug Dealer19", "Drug Dealer20", "Drug Dealer21", "Drug Dealer22", "Drug Dealer23", "Drug Dealer24", "Drug Dealer25", "Drug Dealer26", "Drug Dealer27", "Drug Dealer28", "Drug Dealer29", "Drug Dealer30", "Drug Dealer31", "Drug Dealer32", "Drug Dealer33", "Drug Dealer34", "Drug Dealer35", "Drug Dealer3", "Drug Dealer37", "Drug Dealer38", "Drug Dealer39", "Drug Dealer40", "Drug Dealer31", "Drug Dealer32", "Drug Dealer43", "Drug Dealer44", "Drug Dealer45", "Drug Dealer46", "Drug Dealer47", "Drug Dealer48", "Drug Dealer49", "Drug Dealer50"}, function() return xox_36 end, function(value)
	if value == 1 then TP(550.8953, -1774.517, 28.3121, 0.000000, -0.000000, 0.000000)
	elseif value == 2 then TP(-154.924, 4819.167, 41.75, 0.000000, -0.000000, 0.000000)
	elseif value == 3 then TP(400.9768, 2635.369, 43.5045, 0.000000, -0.000000, 0.000000)
	elseif value == 4 then TP(1533.846, 3796.837, 33.456, 0.000000, -0.000000, 0.000000)
	elseif value == 5 then TP(-1666.642, -1080.02, 12.1537, 0.000000, -0.000000, 0.000000)
	elseif value == 6 then TP(-1560.61, -413.3221, 37.1001, 0.000000, -0.000000, 0.000000)
	elseif value == 7 then TP( 819.2939, -2988.856, 5.0209, 0.000000, -0.000000, 0.000000)
	elseif value == 8 then TP(1001.701, -2162.448, 29.567, 0.000000, -0.000000, 0.000000)
	elseif value == 9 then TP(1388.968, -1506.082, 57.0407, 0.000000, -0.000000, 0.000000)
	elseif value == 10 then TP(-3054.574, 556.711, 0.661, 0.000000, -0.000000, -0.000000)
	elseif value == 11 then TP(-72.8903, 80.717, 70.6161, 0.000000, -0.000000, -0.000000)
	elseif value == 12 then TP(198.6676, -167.0663, 55.3187, 0.000000, -0.000000, -0.000000)
	elseif value == 13 then TP(814.636, -280.109, 65.463, 0.000000, -0.000000, -0.000000)
	elseif value == 14 then TP(-237.004, -256.513, 38.122, 0.000000, -0.000000, -0.000000)
	elseif value == 15 then TP(-493.654, -720.734, 22.921, 0.000000, -0.000000, -0.000000)
	elseif value == 16 then TP(156.1586, 6656.525, 30.5882, 0.000000, -0.000000, -0.000000)
	elseif value == 17 then TP(1986.313, 3786.75, 31.2791, 0.000000, -0.000000, -0.000000)
	elseif value == 18 then TP(-685.5629, 5762.871, 16.511, 0.000000, -0.000000, -0.000000)
	elseif value == 19 then TP(1707.703, 4924.311, 41.078, 0.000000, -0.000000, -0.000000)
	elseif value == 20 then TP(1195.305, 2630.469,  36.81, 0.000000, -0.000000, -0.000000)
	elseif value == 21 then TP(167.0163, 2228.922, 89.7867, 0.000000, -0.000000, -0.000000)
	elseif value == 22 then TP(2724.008, 1483.066, 23.5007, 0.000000, -0.000000, -0.000000)
	elseif value == 23 then TP(1594.933, 6452.817, 24.3172, 0.000000, -0.000000, -0.000000)
	elseif value == 24 then TP(-2177.397, 4275.945, 48.12, 0.000000, -0.000000, -0.000000)
	elseif value == 25 then TP(-2521.249, 2311.794, 32.216, 0.000000, -0.000000, -0.000000)
	elseif value == 26 then TP(-3162.873, 1115.642, 19.8526, 0.000000, -0.000000, -0.000000)
	elseif value == 27 then TP(-1145.02, -2048.466, 12.218, 0.000000, -0.000000, -0.000000)
	elseif value == 28 then TP(-1304.321, -1318.848, 3.88, 0.000000, -0.000000, -0.000000)
	elseif value == 29 then TP(-946.727, 322.081, 70.357, 0.000000, -0.000000, -0.000000)
	elseif value == 30 then TP(-895.112, -776.624, 14.91, 0.000000, -0.000000, -0.000000)
	elseif value == 31 then TP(-250.614, -1527.617, 30.561, 0.000000, -0.000000, -0.000000)
	elseif value == 32 then TP(-601.639, -1026.49, 21.55, 0.000000, -0.000000, -0.000000)
	elseif value == 33 then TP(2712.987, 4324.116, 44.8521, 0.000000, -0.000000, -0.000000)
	elseif value == 34 then TP(726.772, 4169.101, 39.709, 0.000000, -0.000000, -0.000000)
	elseif value == 35 then TP(178.3272, 3086.26, 42.0742, 0.000000, -0.000000, -0.000000)
	elseif value == 36 then TP(2351.592, 2524.249, 46.694, 0.000000, -0.000000, -0.000000)
	elseif value == 37 then TP(388.9941, 799.6882, 186.6764, 0.000000, -0.000000, -0.000000)
	elseif value == 38 then TP(2587.982, 433.6803, 107.6139, 0.000000, -0.000000, -0.000000)
	elseif value == 39 then TP(830.2875, -1052.775, 27.6666, 0.000000, -0.000000, -0.000000)
	elseif value == 40 then TP(-759.662, -208.396, 36.271, 0.000000, -0.000000, -0.000000)
	elseif value == 41 then TP(-43.7171, -2015.22, 17.017, 0.000000, -0.000000, -0.000000)
	elseif value == 42 then TP(124.02,  -1039.884, 28.213, 0.000000, -0.000000, -0.000000)
	elseif value == 43 then TP(479.0473, -597.5507, 27.4996, 0.000000, -0.000000, -0.000000)
	elseif value == 44 then TP(959.67, 3619.036, 31.668, 0.000000, -0.000000, -0.000000)
	elseif value == 45 then TP(2375.899, 3162.995, 47.2087, 0.000000, -0.000000, -0.000000)
	elseif value == 46 then TP(-1505.687, 1526.558, 114.257, 0.000000, -0.000000, -0.000000)
	elseif value == 47 then TP(645.737, 242.173, 101.153, 0.000000, -0.000000, -0.000000)
	elseif value == 48 then TP(1173.138, -388.2896, 70.5896, 0.000000, -0.000000, -0.000000)
	elseif value == 49 then TP(-1801.85, 172.49, 67.771, 0.000000, -0.000000, -0.000000)
	elseif value == 50 then TP(3729.257, 4524.872, 21.4755, 0.000000, -0.000000, -0.000000)
	end xox_36 = value end)
DWMenu:add_toggle("Toggle Gun Van", function() return globals.get_boolean(RBS2) end, function(value) globals.set_boolean(RBS2,value) globals.set_boolean(MS3,value) end)
DWMenu:add_array_item("TP's Gun Van", {"Gun Van1", "Gun Van2", "Gun Van2", "Gun Van4", "Gun Van5", "Gun Van6", "Gun Van7", "Gun Van8", "Gun Van9", "Gun Van10", "Gun Van11", "Gun Van12", "Gun Van13", "Gun Van14", "Gun Van15", "Gun Van16", "Gun Van17", "Gun Van18", "Gun Van19", "Gun Van20", "Gun Van21", "Gun Van22", "Gun Van23", "Gun Van24", "Gun Van25", "Gun Van26", "Gun Van27", "Gun Van28", "Gun Van29", "Gun Van30"}, function() return xox_37 end, function(value)
	if value == 1 then TP(-29.532, 6435.136, -11.489866, 0.000000, -0.000000, 0.000000)
	elseif value == 2 then TP(1705.214, 4819.167, 41.75, 0.000000, -0.000000, 0.000000)
	elseif value == 3 then TP(1795.522, 3899.753, 33.869, 0.000000, -0.000000, 0.000000)
	elseif value == 4 then TP(1335.536, 2758.746, 51.099, 0.000000, -0.000000, 0.000000)
	elseif value == 5 then TP(795.583, 1210.78, 338.962,0.000000, -0.000000, 0.000000)
	elseif value == 6 then TP(-3192.67, 1077.205, 20.594, 0.000000, -0.000000, 0.000000)
	elseif value == 7 then TP(-789.719, 5400.921, 33.915, 0.000000, -0.000000, 0.000000)
	elseif value == 8 then TP(-24.384, 3048.167, 40.703, 0.000000, -0.000000, 0.000000)
	elseif value == 9 then TP(2666.786, 1469.324, 24.237, 0.000000, -0.000000, 0.000000)
	elseif value == 10 then TP(-1454.966, 2667.503, 3.2, 0.000000, -0.000000, -0.000000)
	elseif value == 11 then TP(2340.418, 3054.188, 47.888, 0.000000, -0.000000, -0.000000)
	elseif value == 12 then TP(1509.183, -2146.795, 76.853, 0.000000, -0.000000, -0.000000)
	elseif value == 13 then TP(1137.404, -1358.654, 34.322, 0.000000, -0.000000, -0.000000)
	elseif value == 14 then TP(-57.208, -2658.793, 5.737, 0.000000, -0.000000, -0.000000)
	elseif value == 15 then TP(1905.017, 565.222, 175.558, 0.000000, -0.000000, -0.000000)
	elseif value == 16 then TP(974.484, -1718.798, 30.296, 0.000000, -0.000000, -0.000000)
	elseif value == 17 then TP(779.077, -3266.297, 5.719, 0.000000, -0.000000, -0.000000)
	elseif value == 18 then TP(-587.728, -1637.208, 19.611, 0.000000, -0.000000, -0.000000)
	elseif value == 19 then TP(733.99, -736.803, 26.165, 0.000000, -0.000000, -0.000000)
	elseif value == 20 then TP(-1694.632, -454.082, 40.712, 0.000000, -0.000000, -0.000000)
	elseif value == 21 then TP(-1330.726, -1163.948, 4.313, 0.000000, -0.000000, -0.000000)
	elseif value == 22 then TP(-496.618, 40.231, 52.316, 0.000000, -0.000000, -0.000000)
	elseif value == 23 then TP(275.527, 66.509, 94.108, 0.000000, -0.000000, -0.000000)
	elseif value == 24 then TP(260.928, -763.35, 30.559, 0.000000, -0.000000, -0.000000)
	elseif value == 25 then TP(-478.025, -741.45, 30.299, 0.000000, -0.000000, -0.000000)
	elseif value == 26 then TP(894.94, 3603.911, 32.56, 0.000000, -0.000000, -0.000000)
	elseif value == 27 then TP(-2166.511, 4289.503, 48.733, 0.000000, -0.000000, -0.000000)
	elseif value == 28 then TP(1465.633, 6553.67, 13.771, 0.000000, -0.000000, -0.000000)
	elseif value == 29 then TP(1101.032, -335.172, 66.944, 0.000000, -0.000000, -0.000000)
	elseif value == 30 then TP(149.683, -1655.674, 29.028, 0.000000, -0.000000, -0.000000)
end xox_37 = value end)
DWMenu:add_action("------------------------------------------------", function() end)
DWMenu:add_toggle("Toggle Taxi Job at CAB-Co", function() return globals.get_boolean(XM40) end, function(value) globals.set_boolean(XM40,value) end)
DWMenu:add_toggle("Toggle Eclipse BLVD Garage", function() return globals.get_boolean(RLC14) end, function(value) globals.set_boolean(RLC14,value) globals.set_boolean(RS6,value) end)
MMMenu = mainMenu:add_submenu("Money Methods") 
mmAmenu = MMMenu:add_submenu("Acid Lab $$$") mmAmenu:add_int_range("Set $$", 50000, 10000, 2000000, function() return globals.get_int(CEO3) end, function(Val) globals.set_int(CEO3, Val) end) 
mmAmenu:add_int_range("Product-Capacity", 1, 1, 2000000, function() return globals.get_int(AMV1) end, function(Val) globals.set_int(AMV1, Val) end) 
mmAmenu:add_action("------------------------------------------------", function() end)
local function ACL(e) if not localplayer then return end if e then globals.set_int(RF4, 0) globals.set_int(CSP10, 0) else globals.set_int(RF4, 12000) globals.set_int(CSP10, 12000) end end mmAmenu:add_toggle("Reduce Resupply Cost", function() return e51 end, function() e51 = not e51 ACL(e51) end)
local function AC(e) if not localplayer then return end if e then globals.set_int(262145+22076, 0) else globals.set_int(262145+22076, 300000) end end mmAmenu:add_toggle("Remove Resupply Delay", function() return e53 end, function() e53 = not e53 AC(e53) end)
local function AL(e) if not localplayer then return end if e then globals.set_int(RBD1, 0) else globals.set_int(RBD1, 135000) end end mmAmenu:add_toggle("Remove Production Delay", function() return e52 end, function() e52 = not e52 AL(e52) end)
mmAmenu:add_action("-------Tested:solo public; ~Max=2M------------", function() end)
mmBmenu = MMMenu:add_submenu("Bunker $$$") mmBmenu:add_float_range("Sale Multiplier", 0.5, 1, 1000, function() return globals.get_float(VHR5) end, function(value) globals.set_float(VHR5, value) globals.set_float(CP2, value) end) 
local function EBdt(e) if not localplayer then return end if e then globals.set_int(LOBS1, 14400000) globals.set_int(XM38, 15000000) globals.set_int(NIH7, 15600000) globals.set_int(ACL6, 16200000) globals.set_int(EBD3, 16800000) globals.set_int(CAQD, 17400000) globals.set_int(HAG2, 18000000) globals.set_int(SUP4, 18600000) globals.set_int(APIN6, 19200000) globals.set_int(RLC13, 19800000) globals.set_int(APMO1, 20400000) globals.set_int(NIH2, 21000000) globals.set_int(BEB1, 21600000) globals.set_int(HA4, 22200000) globals.set_int(RSU1, 22800000) globals.set_int(CD3, 23400000) globals.set_int(BS12, 24000000) globals.set_int(BS9, 24600000) globals.set_int(CNS, 25200000) globals.set_int(SH10, 25800000) else  globals.set_int(LOBS1, 1800000) globals.set_int(XM38, 1800000) globals.set_int(NIH7, 1800000) globals.set_int(ACL6, 1800000) globals.set_int(EBD3, 1800000) globals.set_int(CAQD, 1800000) globals.set_int(HAG2, 1800000) globals.set_int(SUP4, 1800000) globals.set_int(APIN6, 1800000) globals.set_int(RLC13, 1800000) globals.set_int(APMO1, 1800000) globals.set_int(NIH2, 1800000) globals.set_int(BEB1, 1800000) globals.set_int(HA4, 1800000) globals.set_int(RSU1, 900000) globals.set_int(CD3, 900000) globals.set_int(BS12, 1800000) globals.set_int(BS9, 900000) globals.set_int(CNS, 900000) globals.set_int(SH10, 900000) end end mmBmenu:add_toggle("Extend Bunker Delivery Timer", function() return e45 end, function() e45 = not e45 EBdt(e45) end)
local function BRd(e) if not localplayer then return end if e then globals.set_int(EBD4, 10) else globals.set_int(EBD4, 600) end end mmBmenu:add_toggle("Remove Bunker Resupply Delay", function() return e47 end, function() e47 = not e47 BRd(e47) end)
local function BRC(e) if not localplayer then return end if e then globals.set_int(262145+21765, 1000) globals.set_int(APIN4, 1000) else globals.set_int(262145+21765, 15000) globals.set_int(APIN4, 15000) end end mmBmenu:add_toggle("Reduce Bunker Resupply Cost", function() return e23 end, function() e23 = not e23 BRC(e23) end)
local function Brr(e) if not localplayer then return end if e then stats.set_int(mpx.."PAYRESUPPLYTIMER5", 1) sleep(0.1)  else stats.set_int(mpx.."PAYRESUPPLYTIMER5", 0) end end mmBmenu:add_toggle("Refill Bunker Supplies(experimental)", function() return e27 end, function() e27 = not e27 Brr(e27) end)
local function SbP(e) if not localplayer then return end if e then globals.set_int(262145+21742, 0) menu.trigger_bunker_production() else globals.set_int(262145+21742, 600000) end end mmBmenu:add_toggle("Speed Up Production", function() return e49 end, function() e49 = not e49 SbP(e49) end)
mmBmenu:add_action("----------------Bunker Stats-------------------", function() end) mmBmenu:add_action("Reset Stats 20M/1000 sales", function() stats.set_int(mpx .. "LFETIME_BIKER_SELL_COMPLET5", 500) stats.set_int(mpx .. "LIFETIME_BKR_SEL_COMPLETBC5", 500) stats.set_int(mpx .. "LIFETIME_BKR_SELL_EARNINGS5", 20000000) globals.set_int(SCG1, 1) globals.set_int(SCG2, 1) sleep(0.2) globals.set_int(SCG2, 0) end) mmBmenu:add_action("-------Tested:solo public; ~Max=8M------------", function() end)
mmCmenu = MMMenu:add_submenu("Ceo Crate $$$") mmCmenu:add_int_range("Set $$", 200000, 10000, 6000000, function() return globals.get_int(LOBS2) end, function(Val) local a = Val local b = math.floor(Val / 2) local c = math.floor(Val / 3) local d = math.floor(Val / 5) local e = math.floor(Val / 7) local f = math.floor(Val / 9) local g = math.floor(Val / 14) local h = math.floor(Val / 19) local i = math.floor(Val / 24) local j = math.floor(Val / 29) local k = math.floor(Val / 34) local l = math.floor(Val / 39) local m = math.floor(Val / 44) local n = math.floor(Val / 49) local o = math.floor(Val / 59) local p = math.floor(Val / 69) local q = math.floor(Val / 79) local r = math.floor(Val / 89) local s = math.floor(Val / 99) local t = math.floor(Val / 110) local u = math.floor(Val / 111) globals.set_int(LOBS2, a) globals.set_int(MSV1, b) globals.set_int(CHE, c) globals.set_int(UNC, d) globals.set_int(UA2, e) globals.set_int(DR2, f) globals.set_int(CARL, g) globals.set_int(MHT1, h) globals.set_int(HO4, i) globals.set_int(IS2, j) globals.set_int(AC3, k) globals.set_int(XM18, l) globals.set_int(XM48, m) globals.set_int(CACT2, n) globals.set_int(CAL, o) globals.set_int(CSP6, p) globals.set_int(GUV2, q) globals.set_int(RB4, r) globals.set_int(FIX1, s) globals.set_int(TEQ1, t) globals.set_int(RE3, u) end) mmCmenu:add_action("Get Crates", function() for i = 12, 16 do stats.set_bool_masked(mpx.."FIXERPSTAT_BOOL1", true, i, mpx) end end)
local function CCooldown(e) if not localplayer then return end if e then globals.set_int(HAG7, 0) globals.set_int(PSU5, 0) else globals.set_int(HAG7, 300000) globals.set_int(PSU5, 1800000) end end mmCmenu:add_toggle("Remove Cooldowns", function() return e13 end, function() e13 = not e13 CCooldown(e13) end)
mmCmenu:add_toggle("Random Unique Cargo Toggle", function() return globals.get_boolean(EMD13) end, function(value) globals.set_boolean(EMD13, value) end) mmCmenu:add_array_item("Select Unique Cargo", {"Ornamental Egg", "Gold Minigun", "Large Diamond", "Rage Hide", "Film Reel", "Rare Pocket Watch"}, function() return xox_33 end, function(value) xox_33 = value if value == 1 then globals.set_int(EMD13, 1) globals.set_int(CACT4, 2) elseif value == 2 then globals.set_int(EMD13, 1) globals.set_int(CACT4, 4) elseif value == 3 then globals.set_int(EMD13, 1) globals.set_int(CACT4, 6) elseif value == 4 then globals.set_int(EMD13, 1) globals.set_int(CACT4, 7) elseif value == 5 then globals.set_int(EMD13, 1) globals.set_int(CACT4, 8) else globals.set_int(EMD13, 1) globals.set_int(CACT4, 9) end end) mmCmenu:add_action("-------Tested:solo public; ~Max=6M------------", function() end)
mmCmenu:add_action("Auto-Reset stats-20M/1000Sales", function() stats.set_int(mpx .. "LIFETIME_BUY_COMPLETE", 1000) stats.set_int(mpx .. "LIFETIME_BUY_UNDERTAKEN", 1000) stats.set_int(mpx .. "LIFETIME_SELL_COMPLETE", 1000) stats.set_int(mpx .. "LIFETIME_SELL_UNDERTAKEN", 1000) stats.set_int(mpx .. "LIFETIME_CONTRA_EARNINGS", 20000000) globals.set_int(SCG1, 1) globals.set_int(SCG2, 1) sleep(0.2) globals.set_int(SCG2, 0) end)
mmCmenu:add_int_range("Manually Reset stats-No. of Sales", 1, 0, 1000, function() return stats.get_int(mpx .. "LIFETIME_SELL_COMPLETE") end, function(value) stats.set_int(mpx .. "LIFETIME_BUY_COMPLETE", value) stats.set_int(mpx .. "LIFETIME_BUY_UNDERTAKEN", value) stats.set_int(mpx .. "LIFETIME_SELL_COMPLETE", value) stats.set_int(mpx .. "LIFETIME_SELL_UNDERTAKEN", value) stats.set_int(mpx .. "LIFETIME_CONTRA_EARNINGS", value * 20000) globals.set_int(SCG1, 1) globals.set_int(SCG2, 1) sleep(0.2) globals.set_int(SCG2, 0) end)
mmNmenu = MMMenu:add_submenu("Nightclub $$$") local function NCooldown(e) if not localplayer then return end if e then globals.set_int(CSP1, 0) globals.set_int(BRE4, 0) globals.set_int(NRC3, 0) else globals.set_int(CSP1, 300000) globals.set_int(BRE4, 300000) globals.set_int(NRC3, 300000) end end mmNmenu:add_toggle("Remove Cooldowns", function() return e14 end, function() e14 = not e14 NCooldown(e14) end)
mmNmenu:add_float_range("TTP Multiplier", 0.5, 0.5, 1000, function() return globals.get_float(CG2) end, function(value) globals.set_float(CG2, value) end)
mmNmenu:add_array_item("Production", {"Speed Up", "Reset Speed"}, function() return xox_17 end, function(v) if v == 1 then for i = CAQD2, RS7 do globals.set_int(i, 1) end menu.trigger_nightclub_production() else globals.set_int(CAQD2, 4800000) globals.set_int(STR1, 14400000) globals.set_int(REQS1, 7200000) globals.set_int(RF11, 2400000) globals.set_int(SUP2, 1800000) globals.set_int(262145+24324, 3600000) globals.set_int(RS7, 8400000) end xox_17 = v end) mmNmenu:add_action("---", function() end)
mmNmenu:add_int_range("Sporting Goods Value", 5000, 5000, 4000000, function() return globals.get_int(XM30) end, function(value) globals.set_int(XM30, value) end)
mmNmenu:add_int_range("S.A. Imports Value", 10000, 27000, 4000000, function() return globals.get_int(ID3) end, function(value) globals.set_int(ID3, value) end)
mmNmenu:add_int_range("Pharmaceutical Value", 10000, 11475, 4000000, function() return globals.get_int(BRE1) end, function(value) globals.set_int(BRE1, value) end)
mmNmenu:add_int_range("Organic Produce Value", 10000, 2025, 4000000, function() return globals.get_int(HO1) end, function(value) globals.set_int(HO1, value) end)
mmNmenu:add_int_range("Printing and Copying Value", 10000, 1350, 4000000, function() return globals.get_int(UCS1) end, function(value) globals.set_int(UCS1, value) end)
mmNmenu:add_int_range("Cash Creation Value", 10000, 4725, 4000000, function() return globals.get_int(RF1) end, function(value) globals.set_int(RF1, value) end)
mmNmenu:add_int_range("Cargo Shipments Value", 10000, 10000, 4000000, function() return globals.get_int(VU5) end, function(value) globals.set_int(VU5, value) end)
local function tonyC(e) if not localplayer then return end if e then globals.set_float(RLC10, 0) else globals.set_float(RLC10, 0.1) end end mmNmenu:add_toggle("Remove Tony's cut", function() return e29 end, function() e29 = not e29 tonyC(e29) end) mmNmenu:add_action("-------Tested:solo public; ~Max=8M------------", function() end)
mmNmenu:add_int_range("Reset Sales", 1, 0, 1000, function() return stats.get_int(mpx .. "HUB_SALES_COMPLETED") end, function(value) stats.set_int(mpx .. "HUB_S93271ALES_COMPLETED", value) end) mmNmenu:add_int_range("Reset Earnings", 500000, 0, 30000000, function() return stats.get_int(mpx .. "HUB_EARNINGS") end, function(value) stats.set_int(mpx .. "HUB_EARNINGS", value) globals.set_int(SCG1, 1) globals.set_int(SCG2, 1) sleep(0.2) globals.set_int(SCG2, 0) end)
mmHmenu = MMMenu:add_submenu("Hanger Cargo $$$") local function Cooldown(e) if not localplayer then return end if e then for i = 284924, 284900 do globals.set_int(i, 0) globals.set_int(i, 1) end else globals.set_int(284868, 120000) globals.set_int(284897, 180000) globals.set_int(284898, 240000) globals.set_int(284927, 60000) globals.set_int(284900, 2000) end end mmHmenu:add_toggle("Remove Cooldowns", function() return e15 end, function() e15 = not e15 Cooldown(e15) end)
mmHmenu:add_int_range("All/Mixed Value", 50000, 10000, 3100000, function() return globals.get_int(NM3) end, function(value) globals.set_int(NM3, value) end)
mmHmenu:add_int_range("Animal Material Value", 50000, 10000, 3100000, function() return globals.get_int(CP1) end, function(value) globals.set_int(CP1, value) end)
mmHmenu:add_int_range("Art n Antiques Value", 50000, 10000, 3100000, function() return globals.get_int(XM24) end, function(value) globals.set_int(XM24, value) end)
mmHmenu:add_int_range("Chemicals Value", 50000, 10000, 3100000, function() return globals.get_int(RCP1) end, function(value) globals.set_int(RCP1, value) end)
mmHmenu:add_int_range("Counterfeit Value", 50000, 10000, 3100000, function() return globals.get_int(262145+23025) end, function(value) globals.set_int(262145+23025, value) end)
mmHmenu:add_int_range("Jewelry Value", 50000, 10000, 3100000, function() return globals.get_int(VS2) end, function(value) globals.set_int(VS2, value) end)
mmHmenu:add_int_range("Medical Sup Value", 50000, 10000, 3100000, function() return globals.get_int(HA13) end, function(value) globals.set_int(HA13, value) end)
mmHmenu:add_int_range("Narcotics Value", 50000, 10000, 3100000, function() return globals.get_int(EBD20) end, function(value) globals.set_int(EBD20, value) end)
mmHmenu:add_int_range("Tabacco Value", 50000, 10000, 3100000, function() return globals.get_int(EMD8) end, function(value) globals.set_int(EMD8, value) end)
local function ronC(e) if not localplayer then return end if e then globals.set_float(CSP19, 0) else globals.set_float(CSP19, 0.025) end end mmHmenu:add_toggle("Remove Rons's cut", function() return e30 end, function() e30 = not e30 ronC(e30) end)
mmHmenu:add_int_range("Reset stats-No. of Sales", 1, 0, 500, function() return stats.get_int(mpx .. "LFETIME_HANGAR_SEL_COMPLET") end, function(value) stats.set_int(mpx .. "LFETIME_HANGAR_BUY_UNDETAK", value) stats.set_int(mpx .. "LFETIME_HANGAR_BUY_COMPLET", value) stats.set_int(mpx .. "LFETIME_HANGAR_SEL_UNDETAK", value) stats.set_int(mpx .. "LFETIME_HANGAR_SEL_COMPLET", value) stats.set_int(mpx .. "LFETIME_HANGAR_EARNINGS", value * 40000) globals.set_int(SCG1, 1) globals.set_int(SCG2, 1) sleep(0.2) globals.set_int(SCG2, 0) end)
mmMCmenu = MMMenu:add_submenu("MC $$$") local function Speed(e) if not localplayer then return end if e then for i = CSP8, LT4 do globals.set_int(i, 0) globals.set_int(i, 1) end else globals.set_int(XM17, 300000) globals.set_int(LT4, 720000) globals.set_int(HA7, 3000000) globals.set_int(CSP7, 1800000) globals.set_int(CSP8, 360000) end end mmMCmenu:add_toggle("Speed Up Production", function() return e16 end, function() e16 = not e16 Speed(e16) end)
local function EMCdt(e) if not localplayer then return end if e then globals.set_int(DWU1, 14400000) globals.set_int(CA7, 6600000) globals.set_int(EMD1, 7200000) globals.set_int(XM42, 7800000) globals.set_int(REW, 8400000) globals.set_int(CEO1, 9000000) globals.set_int(XM14, 9600000) globals.set_int(EBD9, 10200000) globals.set_int(XM41, 10800000) globals.set_int(BSM2, 11400000) globals.set_int(CIN1, 12000000) globals.set_int(LUN1, 12600000) globals.set_int(ID4, 13200000) globals.set_int(AWO1, 13800000) else globals.set_int(DWU1, 1800000) globals.set_int(CA7, 1800000) globals.set_int(EMD1, 1800000) globals.set_int(XM42, 1800000) globals.set_int(REW, 1800000) globals.set_int(CEO1, 1800000) globals.set_int(XM14, 1800000) globals.set_int(EBD9, 1800000) globals.set_int(XM41, 900000) globals.set_int(BSM2, 900000) globals.set_int(CIN1, 1800000) globals.set_int(LUN1, 900000) globals.set_int(ID4, 900000) globals.set_int(AWO1, 900000) end end mmMCmenu:add_toggle("Extend MC Delivery Timer", function() return e46 end, function() e46 = not e46 EMCdt(e46) end)
local function VRC(e) if not localplayer then return end if e then globals.set_int(XM44, 1000) else globals.set_int(XM44, 1000) end end mmMCmenu:add_toggle("Remove Resupply Cost", function() return e22 end, function() e22 = not e22 VRC(e22) end) 
local function VRD(e) if not localplayer then return end if e then globals.set_int(SS1, 10) else globals.set_int(SS1, 600) end end mmMCmenu:add_toggle("Remove Resupply Delay", function() return e42 end, function() e42 = not e42 VRD(e42) end)
local function MCrr(e) if not localplayer then return end if e then for i = 0, 4 do stats.set_int(mpx.."PAYRESUPPLYTIMER"..i, 1) sleep(0.1) end else for i = 0, 4 do stats.set_int(mpx.."PAYRESUPPLYTIMER"..i, 0) end end end mmMCmenu:add_toggle("Refill Supplies(experimental)", function() return e25 end, function() e25 = not e25 MCrr(e25) end)
local function MCgs(e) if not localplayer then return end if e then globals.set_int(NM4, 0) else globals.set_int(NM4, 40000) end end mmMCmenu:add_toggle("Remove Global Signal", function() return e24 end, function() e24 = not e24 MCgs(e24) end)
mmMCmenu:add_float_range("Sale Multiplier", 0.5, 1, 1000, function() return globals.get_float(AAV1) end, function(value) globals.set_float(AAV1, value) globals.set_float(CAFP, value) end) mmMCmenu:add_action(" ~Use the multiplier to get max 8 mil~ ", function() end)
mmCCmenu = MMMenu:add_submenu("Autoshop Client Cars $$$") local function ACCC(e) if not localplayer then return end if e then globals.set_int(XM28, 0) else globals.set_int(XM28, 2880) end end mmCCmenu:add_toggle("Remove Cooldown", function() return e35 end, function() e35 = not e35 ACCC(e35) end)
mmCCmenu:add_int_range("% Chance", 5, 0, 100, function() return globals.get_int(EMD2) end, function(value) globals.set_int(EMD2, value) end)
mmCCmenu:add_float_range("2 Lifts Cooldown Multiplier", 0.5, 0.0, 100, function() return globals.get_float(CSP17) end, function(value) globals.set_float(CSP17, value) end)
local function etCC(e) if not localplayer then return end if e then globals.set_int(CHV1, 99999) else globals.set_int(CHV1, 600) end end mmCCmenu:add_toggle("Extend Timer", function() return e36 end, function() e36 = not e36 etCC(e36) end)
mmCCmenu:add_int_range("Low Tier", 5000, 20000, 100000, function() return globals.get_int(TOR1) end, function(value) globals.set_int(TOR1, value) end)
mmCCmenu:add_int_range("Mid Tier", 5000, 25000, 125000, function() return globals.get_int(NIH3) end, function(value) globals.set_int(NIH3, value) end)
mmCCmenu:add_int_range("High Tier", 5000, 30000, 150000, function() return globals.get_int(CSP4) end, function(value) globals.set_int(CSP4, value) end)
--mmMCCmenu = MMMenu:add_submenu("MC Client Bike $$$") DONT ENABLE THESE.. ! NEEDS FURTHER TESTING
--mmMCCmenu:add_action("Free customisation", function() globals.set_int(294742, 0) end) DONT ENABLE THESE.. ! NEEDS FURTHER TESTING
--mmMCCmenu:add_int_range("Sale Value", 10000, 50000, 500000, function() return globals.get_int(294923) end, function(v) globals.set_int(294923, v) end) DONT ENABLE THESE.. ! NEEDS FURTHER TESTING
mmVmenu = MMMenu:add_submenu("Vehicle Cargo $$$") local function Max(e) if not localplayer then return end if e then globals.set_int(CC1, 155000) globals.set_int(CSP11, 155000) globals.set_int(SH11, 155000) globals.set_float(SUP5, 0) globals.set_float(EG1, 0) else globals.set_int(CC1, 40000) globals.set_int(CSP11, 25000) globals.set_int(SH11, 15000) globals.set_float(SUP5, 0.25) globals.set_float(EG1, 0.5) end end mmVmenu:add_toggle("Max all Ranges", function() return e17 end, function() e17 = not e17 Max(e17) end)
local function VCD(e) if not localplayer then return end if e then for i = HO5, NCR3 do globals.set_int(i, 0) sleep(1) globals.set_int(i, 1) end globals.set_int(EBD2, 1) else globals.set_int(EBD2, 180000) globals.set_int(HO5, 1200000) globals.set_int(RC1, 1680000) globals.set_int(CP6, 2340000) globals.set_int(NCR3, 2880000) end end mmVmenu:add_toggle("Remove Cooldown", function() return e18 end, function() e18 = not e18 VCD(e18) end)
local function VRC(e) if not localplayer then return end if e then for i = CSP19, HA12 do globals.set_int(i, 0) end else globals.set_int(CSP19, 34000) globals.set_int(CSP14, 21250) globals.set_int(HA12, 12750) end end mmVmenu:add_toggle("Remove Repair Cost", function() return e21 end, function() e21 = not e21 VRC(e21) end) mmVmenu:add_action("---", function() end)
mmVmenu:add_int_range("Top Range", 1000, 40000, 4000000, function() return globals.get_int(CC1) end, function(value) globals.set_int(CC1, value) end)
mmVmenu:add_int_range("Mid Range", 1000, 25000, 4000000, function() return globals.get_int(CSP11) end, function(value) globals.set_int(CSP11, value) end)
mmVmenu:add_int_range("Stanard Range", 1000, 15000, 4000000, function() return globals.get_int(SH11) end, function(value) globals.set_int(SH11, value) end)
mmVmenu:add_float_range("Sale Showroom", 0.5, 1.5, 1000, function() return globals.get_float(CP3) end, function(value) globals.set_float(CP3, value) end)
mmVmenu:add_float_range("Sale Specialist Dealer", 0.5, 2, 1000, function() return globals.get_float(CSP15) end, function(value) globals.set_float(CSP15, value) end)
mmVmenu:add_float_range("Upgrade Cost Showroom", 0.25, 0, 1000, function() return globals.get_float(SUP5) end, function(value) globals.set_float(SUP5, value) end)
mmVmenu:add_float_range("Upgrade Cost Specialist Dealer", 0.25, 0, 1000, function() return globals.get_float(EG1) end, function(value) globals.set_float(EG1, value) end)
mmVmenu:add_action("-----Tested:solo public; ~Max=310k------------", function() end) statMenu = mainMenu:add_submenu("Stat Editor")
statMenu:add_float_range("Set Mental State", 1.0, 0.0, 100, function() return stats.get_float("MPPLY_PLAYER_MENTAL_STATE") end, function(value) stats.set_float(mpx .. "PLAYER_MENTAL_STATE", value) stats.set_float("MPPLY_PLAYER_MENTAL_STATE", value) end)
statMenu:add_int_range("Total Earned", 500000, 0, 1000000000, function() return stats.get_int("MPPLY_TOTAL_EVC") end, function(value) stats.set_int("MPPLY_TOTAL_EVC",value) end)
statMenu:add_int_range("Total Spent", 500000, 0, 1000000000, function() return stats.get_int("MPPLY_TOTAL_SVC") end, function(value) stats.set_int("MPPLY_TOTAL_SVC",value) end)
statMenu:add_int_range("Total Players Killed", 10, 0, 999999, function() return stats.get_int("MPPLY_KILLS_PLAYERS") end, function(value) stats.set_int("MPPLY_KILLS_PLAYERS", value) end)
statMenu:add_int_range("Total Deaths by Playes", 10, 0, 999999, function() return stats.get_int("MPPLY_DEATHS_PLAYER") end, function(value) stats.set_int("MPPLY_DEATHS_PLAYER", value) end)
statMenu:add_float_range("PvP K/D Ratio", 0.01, 0, 9999, function() return stats.get_float("MPPLY_KILL_DEATH_RATIO") end, function(value) stats.set_float("MPPLY_KILL_DEATH_RATIO", value) end)
statMenu:add_int_range("Deathmatches Published", 10, 0, 999999, function() return stats.get_int("MPPLY_AWD_FM_CR_DM_MADE") end, function(value) stats.set_int("MPPLY_AWD_FM_CR_DM_MADE", value) end)
statMenu:add_int_range("Races Published", 10, 0, 999999, function() return stats.get_int("MPPLY_AWD_FM_CR_RACES_MADE") end, function(value) stats.set_int("MPPLY_AWD_FM_CR_RACES_MADE", value) end)
statMenu:add_int_range("Captures Published", 10, 0, 999999, function() return stats.get_int("MPPLY_NUM_CAPTURES_CREATED") end, function(value) stats.set_int("MPPLY_NUM_CAPTURES_CREATED", value) end)
statMenu:add_int_range("LTS Published", 10, 0, 999999, function() return stats.get_int("MPPLY_LTS_CREATED") end, function(value) stats.set_int("MPPLY_LTS_CREATED", value) end)
statMenu:add_int_range("Community Plays for Content", 10, 0, 999999, function() return stats.get_int("MPPLY_AWD_FM_CR_PLAYED_BY_PEEP") end, function(value) stats.set_int("MPPLY_AWD_FM_CR_PLAYED_BY_PEEP", value) end)
statMenu:add_int_range("Thumbs Up for Content", 10, 0, 999999, function() return stats.get_int("MPPLY_AWD_FM_CR_MISSION_SCORE") end, function(value) stats.set_int("MPPLY_AWD_FM_CR_MISSION_SCORE", value) end)
statMenu:add_int_range("Reset LSCM Rep (Not for Unlocks)", 1, 1, 11, function() return 0 end, function(V) if V == 1 then vt = 5 elseif V == 2 then vt = 415 elseif V == 3 then vt = 1040 elseif V == 4 then vt = 3665 elseif V == 5 then vt = 10540 elseif V == 6 then vt = 20540 elseif V == 7 then vt = 33665 elseif V == 8 then vt = 49915 elseif V == 9 then vt = 69290 elseif V == 10 then vt = 91790 else vt = 117430 end stats.set_int(mpx .. "CAR_CLUB_REP", vt) end) statMenu:add_action("~[1/5/10/25/50/75/100/125/150/175/200]", function() end) statMenu:add_action("-{Change session to apply}", function() end) statMenu:add_action("-----------------------------------------", function() end)
statMenu:add_int_range("Remove Money", 1000000, 1000000, 2000000000, function() return globals.get_int(RLC12) end, function(value) globals.set_int(RLC12, 1337) end) 
statMenu:add_action("Set the value then buy ballistic armour", function() end) statMenu:add_action("-----------------------------------------", function() end)
distMenu = statMenu:add_submenu("Distance Stats") distMenu:add_float_range("Travelled(meters)", 10.00, 0.00, 99999.00, function() return stats.get_float("MPPLY_CHAR_DIST_TRAVELLED")/1000 end, function(value) stats.set_float("MPPLY_CHAR_DIST_TRAVELLED", value*1000) end)
distMenu:add_float_range("Travelled Swimming", 10.00, 0.00, 99999.00, function() return stats.get_float(mpx.."DIST_SWIMMING")/1000 end, function(value) stats.set_float(mpx.."DIST_SWIMMING", value*1000) end)
distMenu:add_float_range("Travelled Walking", 10.00, 0.00, 99999.00, function() return stats.get_float(mpx.."DIST_WALKING")/1000 end, function(value) stats.set_float(mpx.."DIST_WALKING", value*1000) end)
distMenu:add_float_range("Travelled Running", 10.00, 0.00, 99999.00, function() return stats.get_float(mpx.."DIST_RUNNING")/1000 end, function(value) stats.set_float(mpx.."DIST_RUNNING", value*1000) end)
distMenu:add_float_range("Farthest Freefall Survived", 10.00, 0.00, 99999.00, function() return stats.get_float(mpx.."LONGEST_SURVIVED_FREEFALL") end, function(value) stats.set_float(mpx.."LONGEST_SURVIVED_FREEFALL", value) end)
distMenu:add_float_range("Driving Cars", 10.00, 0.00, 99999.00, function() return stats.get_float(mpx.."DIST_CAR")/1000 end, function(value) stats.set_float(mpx.."DIST_CAR", value*1000) end)
distMenu:add_float_range("Riding Motorcycles", 10.00, 0.00, 99999.00, function() return stats.get_float(mpx.."DIST_BIKE")/1000 end, function(value) stats.set_float(mpx.."DIST_BIKE", value*1000) end)
distMenu:add_float_range("Flying Helicopters", 10.00, 0.00, 99999.00, function() return stats.get_float(mpx.."DIST_HELI")/1000 end, function(value) stats.set_float(mpx.."DIST_HELI", value*1000) end)
distMenu:add_float_range("Flying Planes", 10.00, 0.00, 99999.00, function() return stats.get_float(mpx.."DIST_PLANE")/1000 end, function(value) stats.set_float(mpx.."DIST_PLANE", value*1000) end)
distMenu:add_float_range("Sailing Boats", 10.00, 0.00, 99999.00, function() return stats.get_float(mpx.."DIST_BOAT")/1000 end, function(value) stats.set_float(mpx.."DIST_BOAT", value*1000) end)
distMenu:add_float_range("Riding ATVs", 10.00, 0.00, 99999.00, function() return stats.get_float(mpx.."DIST_QUADBIKE")/1000 end, function(value) stats.set_float(mpx.."DIST_QUADBIKE", value*1000) end)
distMenu:add_float_range("Riding Bicycles", 10.00, 0.00, 99999.00, function() return stats.get_float(mpx.."DIST_BICYCLE")/1000 end, function(value) stats.set_float(mpx.."DIST_BICYCLE", value*1000) end)
distMenu:add_float_range("Farthest Stoppie", 10.00, 0.00, 99999.00, function() return stats.get_float(mpx.."LONGEST_STOPPIE_DIST")/1000 end, function(value) stats.set_float(mpx.."LONGEST_STOPPIE_DIST", value*1000) end)
distMenu:add_float_range("Farthest Wheelie", 10.00, 0.00, 99999.00, function() return stats.get_float(mpx.."LONGEST_WHEELIE_DIST")/1000 end, function(value) stats.set_float(mpx.."LONGEST_WHEELIE_DIST", value*1000) end)
distMenu:add_float_range("Farthest driven w/Crashing", 10.00, 0.00, 99999.00, function() return stats.get_float(mpx.."LONGEST_DRIVE_NOCRASH")/1000 end, function(value) stats.set_float(mpx.."LONGEST_DRIVE_NOCRASH", value*1000) end)
distMenu:add_float_range("Farthest Veh Jump", 10.00, 0.00, 99999.00, function() return stats.get_float(mpx.."FARTHEST_JUMP_DIST") end, function(value) stats.set_float(mpx.."FARTHEST_JUMP_DIST", value) end)
distMenu:add_float_range("Highest Veh Jump", 10.00, 0.00, 99999.00, function() return stats.get_float(mpx.."HIGHEST_JUMP_REACHED") end, function(value) stats.set_float(mpx.."HIGHEST_JUMP_REACHED", value) end)
distMenu:add_float_range("Highest Hydraulic Jump", 10.00, 0.00, 99999.00, function() return stats.get_float(mpx.."LOW_HYDRAULIC_JUMP") end, function(value) stats.set_float(mpx.."LOW_HYDRAULIC_JUMP", value) end) timeMenu = statMenu:add_submenu("Time Stats (Days)")
timeMenu:add_int_range("Time Spent in First Person", 1, 0, 24, function() return math.floor(stats.get_int("MP_FIRST_PERSON_CAM_TIME")/86400000) end, function(value) stats.set_int("MP_FIRST_PERSON_CAM_TIME", value*86400000) end)
timeMenu:add_int_range("Time Spent in GTA Online", 1, 0, 24, function() return math.floor(stats.get_int("MP_PLAYING_TIME")/86400000) end, function(value) stats.set_int("MP_PLAYING_TIME", value*86400000) end)
timeMenu:add_int_range("Time Spent in DM", 1, 0, 24, function() return math.floor(stats.get_int("MPPLY_TOTAL_TIME_SPENT_DEATHMAT")/86400000) end, function(value) stats.set_int("MPPLY_TOTAL_TIME_SPENT_DEATHMAT", value*86400000) end)
timeMenu:add_int_range("Time Spent in Races", 1, 0, 24, function() return math.floor(stats.get_int("MPPLY_TOTAL_TIME_SPENT_RACES")/86400000) end, function(value) stats.set_int("MPPLY_TOTAL_TIME_SPENT_RACES", value*86400000) end)
timeMenu:add_int_range("Time Spent in Creator", 1, 0, 24, function() return math.floor(stats.get_int("MPPLY_TOTAL_TIME_MISSION_CREATO")/86400000) end, function(value) stats.set_int("MPPLY_TOTAL_TIME_MISSION_CREATO", value*86400000) end)
timeMenu:add_int_range("Longest Single Game session", 1, 0, 24, function() return math.floor(stats.get_int(mpx.."LONGEST_PLAYING_TIME")/86400000) end, function(value) stats.set_int(mpx.."LONGEST_PLAYING_TIME", value*86400000) end)
timeMenu:add_int_range("Time Played as Character", 1, 0, 24, function() return math.floor(stats.get_int(mpx.."TOTAL_PLAYING_TIME")/86400000) end, function(value) stats.set_int(mpx.."TOTAL_PLAYING_TIME", value*86400000) end)
timeMenu:add_int_range("Average time per session", 1, 0, 24, function() return math.floor(stats.get_int(mpx.."AVERAGE_TIME_PER_SESSON")/86400000) end, function(value) stats.set_int(mpx.."AVERAGE_TIME_PER_SESSON", value*86400000) end)
timeMenu:add_int_range("Time Swimming", 1, 0, 24, function() return math.floor(stats.get_int(mpx.."TIME_SWIMMING")/86400000) end, function(value) stats.set_int(mpx.."TIME_SWIMMING", value*86400000) end)
timeMenu:add_int_range("Time Undewater", 1, 0, 24, function() return math.floor(stats.get_int(mpx.."TIME_UNDERWATER")/86400000) end, function(value) stats.set_int(mpx.."TIME_UNDERWATER", value*86400000) end)
timeMenu:add_int_range("Time Walking", 1, 0, 24, function() return math.floor(stats.get_int(mpx.."TIME_WALKING")/86400000) end, function(value) stats.set_int(mpx.."TIME_WALKING", value*86400000) end)
timeMenu:add_int_range("Time in Cover", 1, 0, 24, function() return math.floor(stats.get_int(mpx.."TIME_IN_COVER")/86400000) end, function(value) stats.set_int(mpx.."TIME_IN_COVER", value*86400000) end)
timeMenu:add_int_range("Spent with Wanted level", 1, 0, 24, function() return math.floor(stats.get_int(mpx.."TOTAL_CHASE_TIME")/86400000) end, function(value) stats.set_int(mpx.."TOTAL_CHASE_TIME", value*86400000) end)
timeMenu:add_float_range("Last Wanted Duration", 1.0, 0.0, 24.0, function() return math.floor(stats.get_float(mpx.."LAST_CHASE_TIME")/86400000) end, function(value) stats.set_float(mpx.."LAST_CHASE_TIME", value*86400000) end)
timeMenu:add_float_range("Longest Wanted Duration", 1.0, 0.0, 24.0, function() return math.floor(stats.get_float(mpx.."LONGEST_CHASE_TIME")/86400000) end, function(value) stats.set_float(mpx.."LONGEST_CHASE_TIME", value*86400000) end)
timeMenu:add_float_range("5 Star Wanted Level", 1.0, 0.0, 24.0, function() return math.floor(stats.get_float(mpx.."TOTAL_TIME_MAX_STARS")/86400000) end, function(value) stats.set_float(mpx.."TOTAL_TIME_MAX_STARS", value*86400000) end)
timeMenu:add_int_range("Driving Cars", 1, 0, 24, function() return math.floor(stats.get_int(mpx.."TIME_DRIVING_CAR")/86400000) end, function(value) stats.set_int(mpx.."TIME_DRIVING_CAR", value*86400000) end)
timeMenu:add_int_range("Riding Motorcycles", 1, 0, 24, function() return math.floor(stats.get_int(mpx.."TIME_DRIVING_BIKE")/86400000) end, function(value) stats.set_int(mpx.."TIME_DRIVING_BIKE", value*86400000) end)
timeMenu:add_int_range("Flying Helicopters", 1, 0, 24, function() return math.floor(stats.get_int(mpx.."TIME_DRIVING_HELI")/86400000) end, function(value) stats.set_int(mpx.."TIME_DRIVING_HELI", value*86400000) end)
timeMenu:add_int_range("Flying Planes", 1, 0, 24, function() return math.floor(stats.get_int(mpx.."TIME_DRIVING_PLANE")/86400000) end, function(value) stats.set_int(mpx.."TIME_DRIVING_PLANE", value*86400000) end)
timeMenu:add_int_range("Sailing Boats", 1, 0, 24, function() return math.floor(stats.get_int(mpx.."TIME_DRIVING_BOAT")/86400000) end, function(value) stats.set_int(mpx.."TIME_DRIVING_BOAT", value*86400000) end)
timeMenu:add_int_range("Riding ATVs", 1, 0, 24, function() return math.floor(stats.get_int(mpx.."TIME_DRIVING_QUADBIKE")/86400000) end, function(value) stats.set_int(mpx.."TIME_DRIVING_QUADBIKE", value*86400000) end)
timeMenu:add_int_range("Riding Bicycles", 1, 0, 24, function() return math.floor(stats.get_int(mpx.."TIME_DRIVING_BICYCLE")/86400000) end, function(value) stats.set_int(mpx.."TIME_DRIVING_BICYCLE", value*86400000) end)
TunMenu = mainMenu:add_submenu("Tunables") mulMenu = TunMenu:add_submenu("Multipliers")
mulMenu:add_float_range("RP Multiplier", 1, 1, 100000, function() return globals.get_float(BS6) end, function(v) globals.set_float(BS6, v) end)
mulMenu:add_float_range("AP Multiplier", 1, 1, 100000, function() return globals.get_float(DOCT1) end, function(v) globals.set_float(DOCT1, v) end)
mulMenu:add_float_range("Street Race Multiplier", 1, 1, 100000, function() return globals.get_float(XM36) end, function(v) globals.set_float(XM36, v) end)
mulMenu:add_float_range("Pursuit Race Multiplier", 1, 1, 100000, function() return globals.get_float(RLC11) end, function(v) globals.set_float(RLC11, v) end)
mulMenu:add_float_range("Scramble Multiplier", 1, 1, 100000, function() return globals.get_float(HA9) end, function(v) globals.set_float(HA9, v) end)
mulMenu:add_float_range("Head2Head Multiplier", 1, 1, 100000, function() return globals.get_float(MLT1) end, function(v) globals.set_float(MLT1, v) end)
mulMenu:add_float_range("LS Car Meet Multiplier", 1, 1, 100000, function() return globals.get_float(MSM1) end, function(v) globals.set_float(MSM1, v) end)
mulMenu:add_float_range("LS Car Meet Track Multiplier", 1, 1, 100000, function() return globals.get_float(BS7) end, function(v) globals.set_float(BS7, v) end) local awa = 0 local awc = 0 local awr = 0
mulMenu:add_int_range("Arena WHeel AP Override", 5000, 0, 500000, function() return awa end, function(v) for i = RB7, XM32 do globals.set_int(i, v) end for j = CSP16, XM4 do globals.set_int(j, v) end awa = v end)
mulMenu:add_int_range("Arena WHeel $ Override", 5000, 0, 20000, function() return awc end, function(v) for i = EBD8, VU7 do globals.set_int(i, v) end for j = BUN1, AWA1 do globals.set_int(j, v) end awc = v end)
mulMenu:add_int_range("Arena WHeel RP Override", 10000, 0, 500000, function() return awr end, function(v) for i = XM45, HAG4 do globals.set_int(i, v) end for j = ACL3, XM9 do globals.set_int(j, v) end awr = v end)
local function Ego(e) if not localplayer then return end if e then globals.set_int(UNA, 599940000) else  globals.set_int(UNA, 180000) end end TunMenu:add_toggle("Extend Ghost Organisation Timer", function() return e0 end, function() e0 = not e0 Ego(e0) end)
local function Eba(e) if not localplayer then return end if e then globals.set_int(RS1, 599940000) else  globals.set_int(RS1, 180000) end end TunMenu:add_toggle("Extend Bribe Authoriities Timer", function() return e39 end, function() e39 = not e39 Eba(e39) end)
local function Fceomc(e) if not localplayer then return end if e then globals.set_int(PID1, 0) globals.set_int(EBD15, 0) else globals.set_int(PID1, 50000) globals.set_int(EBD15, 50000) end end TunMenu:add_toggle("Change CEO/MC Name Free", function() return e37 end, function() e37 = not e37 Fceomc(e37) end)
local function FCa(e) if not localplayer then return end if e then for i = XM20, AWR2 do globals.set_int(i, 0) end globals.set_int(CSC, 0) else globals.set_int(CSC, 5000) globals.set_int(262145+13048, 1000) globals.set_int(BS2, 1500) globals.set_int(MAR5, 1000) globals.set_int(RMU1, 12000) globals.set_int(XM16, 15000) end end TunMenu:add_toggle("Request Ceo Abilities Free", function() return e19 end, function() e19 = not e19 FCa(e19) end)
local function FCv(e) if not localplayer then return end if e then for i = BS4, APIN3 do globals.set_int(i, 0) end for j = BIK1, RLC9 do globals.set_int(j, 0) end globals.set_int(BRE6, 0) globals.set_int(BS5, 0) else globals.set_int(BS4, 20000) for i = XM20, CRT do globals.set_int(i, 5000) end globals.set_int(APIN3, 25000) globals.set_int(BIK1, 10000) globals.set_int(CSP21, 7000) globals.set_int(CEO2, 9000) for j = HO2, RLC16 do globals.set_int(j, 5000) end globals.set_int(BRE6, 5000) globals.set_int(BS5, 10000)end end TunMenu:add_toggle("Request Ceo Vehicles Free", function() return e40 end, function() e40 = not e40 FCv(e40) end)
local function iSH(e) if not localplayer then return end if e then globals.set_int(BAS1, 999999) globals.set_int(LT1, 999999) globals.set_int(RF9, 0) else globals.set_int(BAS1, 12000) globals.set_int(LT1, 6000) globals.set_int(RF9, 60000) end end TunMenu:add_toggle("Infinite Stone Hatchet Power", function() return e1 end, function() e1 = not e1 iSH(e1) end)
TunMenu:add_action("Remove Griefing c/d for VIP,CEO", function() stats.set_int("MPPLY_VIPGAMEPLAYDISABLEDTIMER", 0) end)
local function orb(e) if not localplayer then return end if e then stats.set_int(mpx.."ORBITAL_CANNON_COOLDOWN", 0) else stats.get_int(mpx.."ORBITAL_CANNON_COOLDOWN") end end TunMenu:add_toggle("Remove Orbital Cannon CD", function() return e2 end, function() e2 = not e2 orb(e2) end)
local function ceovcd(e) if not localplayer then return end if e then globals.set_int(CSV1, 0) else globals.set_int(CSV1, 120000) end end TunMenu:add_toggle("Remove CEO Vehicles Cooldown", function() return e41 end, function() e41 = not e41 ceovcd(e41) end)
local function mk2cd(e) if not localplayer then return end if e then globals.set_int(KT1, 0) else globals.set_int(KT1, 300000) end end TunMenu:add_toggle("Remove MK2 Cooldown", function() return e3 end, function() e3 = not e3 mk2cd(e3) end)
local function EWOd(e) if not localplayer then return end if e then globals.set_int(290554, 0) else globals.set_int(290554, 300000) end end TunMenu:add_toggle("Remove EWO Cooldown", function() return e48 end, function() e48 = not e48 EWOd(e48) end)
local function SMcd(e) if not localplayer then return end if e then globals.set_int(PEY1, 0) globals.set_int(EMD11, 99999) else globals.set_int(PEY1, 60000) globals.set_int(EMD11, 4000) end end TunMenu:add_toggle("Remove Sub Missile CD/+Range", function() return e4 end, function() e4 = not e4 SMcd(e4) end)
local function Terrcd(e) if not localplayer then return end if e then for i = SH6, ACC1 do globals.set_int(i, 0) end else for i = RE1, ACC1 do globals.set_int(SH6, 300000) globals.set_int(i, 1800000) end end end TunMenu:add_toggle("Remove TerrorByte Missions Cooldown", function() return e26 end, function() e26 = not e26 Terrcd(e26) end)
local function CEOVPcd(e) if not localplayer then return end if e then globals.set_int(HAG8, 0) else globals.set_int(HAG8, 300000) end end TunMenu:add_toggle("Remove CEO/VIP Work C/d", function() return e20 end, function() e20 = not e20 CEOVPcd(e20) end)
local function NmP(e) if not localplayer then return end if e then for i = DT1, PRM1 do globals.set_int(i, 0) end else globals.set_int(DT1, 1) globals.set_int(SH8, 2) globals.set_int(CDP1, 3) globals.set_int(RF3, 4) globals.set_int(EXT1, 6) globals.set_int(NM7, 8) globals.set_int(SUP1, 10) globals.set_int(EBD14, 12) globals.set_int(PRM1, 15) end end TunMenu:add_toggle("No Mission Time Penalties", function() return e44 end, function() e44 = not e44 NmP(e44) end)

uuMenu = mainMenu:add_submenu("Unlocker")
awdMenu = uuMenu:add_submenu("Awards")
awdMenu:add_action("Victory", function() 
 stats.set_int(mpx .. "AWD_FM_DM_WINS", 50)
 stats.set_int(mpx .. "AWD_FM_TDM_WINS", 50)
 stats.set_int(mpx .. "AWD_FM_TDM_MVP", 50)
 stats.set_int(mpx .. "AWD_RACES_WON", 50)
 stats.set_int(mpx .. "AWD_FMWINAIRRACE", 25)
 stats.set_int(mpx .. "AWD_FMWINSEARACE", 25)
 stats.set_int(mpx .. "AWD_FM_GTA_RACES_WON", 50)
 stats.set_bool(mpx .. "AWD_FMKILL3ANDWINGTARACE", true)
 stats.set_int(mpx .. "AWD_FMRALLYWONDRIVE", 25)
 stats.set_int(mpx .. "AWD_FMRALLYWONNAV", 25)
 stats.set_bool(mpx .. "AWD_FMWINCUSTOMRACE", true)
 stats.set_int(mpx .. "AWD_FMWINRACETOPOINTS", 25)
 stats.set_bool(mpx .. "CL_RACE_MODDED_CAR", true)
 stats.set_int(mpx .. "AWD_FM_RACE_LAST_FIRST", 25)
 stats.set_bool(mpx .. "AWD_FMRACEWORLDRECHOLDER", true)
 stats.set_int(mpx .. "AWD_FM_RACES_FASTEST_LAP", 50)
 stats.set_bool(mpx .. "AWD_FMWINALLRACEMODES", true)
 stats.set_int(mpx .. "AWD_FMHORDWAVESSURVIVE", 10)
 stats.set_int(mpx .. "NUMBER_SLIPSTREAMS_IN_RACE", 100)
 stats.set_int(mpx .. "NUMBER_TURBO_STARTS_IN_RACE", 50)
 stats.set_int(mpx .. "AWD_NO_ARMWRESTLING_WINS", 25)
 stats.set_int(mpx .. "MOST_ARM_WRESTLING_WINS", 25)
 stats.set_int(mpx .. "AWD_WIN_AT_DARTS", 25)
 stats.set_int(mpx .. "AWD_FM_GOLF_WON", 25)
 stats.set_int(mpx .. "AWD_FM_TENNIS_WON", 25)
 stats.set_bool(mpx .. "AWD_FM_TENNIS_5_SET_WINS", true)
 stats.set_bool(mpx .. "AWD_FM_TENNIS_STASETWIN", true)
 stats.set_int(mpx .. "AWD_FM_SHOOTRANG_CT_WON", 25)
 stats.set_int(mpx .. "AWD_FM_SHOOTRANG_RT_WON", 25)
 stats.set_int(mpx .. "AWD_FM_SHOOTRANG_TG_WON", 25)
 stats.set_bool(mpx .. "AWD_FM_SHOOTRANG_GRAN_WON", true)
 stats.set_bool(mpx .. "AWD_FMWINEVERYGAMEMODE", true)
 stats.set_int(mpx .. "AWD_WIN_CAPTURES", 50)
 stats.set_int(mpx .. "AWD_WIN_CAPTURE_DONT_DYING", 25)
 stats.set_int(mpx .. "AWD_WIN_LAST_TEAM_STANDINGS", 50)
 stats.set_int(mpx .. "AWD_ONLY_PLAYER_ALIVE_LTS", 50)
 stats.set_int(mpx .. "AWD_KILL_TEAM_YOURSELF_LTS", 25)
 stats.set_int(mpx .. "AIR_LAUNCHES_OVER_40M", 25)
 stats.set_int(mpx .. "AWD_CARS_EXPORTED", 50)
 stats.set_int(mpx .. "AWD_LESTERDELIVERVEHICLES", 25)
 stats.set_int("MPPLY_TOTAL_RACES_WON", 500)
 stats.set_int("MPPLY_TOTAL_RACES_LOST", 250)
 stats.set_int("MPPLY_TOTAL_CUSTOM_RACES_WON", 500)
 stats.set_int("MPPLY_TOTAL_DEATHMATCH_LOST", 250)
 stats.set_int("MPPLY_TOTAL_DEATHMATCH_WON", 500)
 stats.set_int("MPPLY_TOTAL_TDEATHMATCH_LOST", 250)
 stats.set_int("MPPLY_TOTAL_TDEATHMATCH_WON", 500)
 stats.set_int("MPPLY_SHOOTINGRANGE_WINS", 500)
 stats.set_int("MPPLY_SHOOTINGRANGE_LOSSES", 250)
 stats.set_int("MPPLY_TENNIS_MATCHES_WON", 500)
 stats.set_int("MPPLY_TENNIS_MATCHES_LOST", 250)
 stats.set_int("MPPLY_GOLF_WINS", 500)
 stats.set_int("MPPLY_GOLF_LOSSES", 250)
 stats.set_int("MPPLY_DARTS_TOTAL_WINS", 500)
 stats.set_int("MPPLY_DARTS_TOTAL_MATCHES", 750)
 stats.set_int("MPPLY_SHOOTINGRANGE_TOTAL_MATCH", 800)
 stats.set_int("MPPLY_BJ_WINS", 500)
 stats.set_int("MPPLY_BJ_LOST", 250)
 stats.set_int("MPPLY_RACE_2_POINT_WINS", 500)
 stats.set_int("MPPLY_RACE_2_POINT_LOST", 250)
 stats.set_int("MPPLY_KILLS_PLAYERS", 3593)
 stats.set_int("MPPLY_DEATHS_PLAYER", 1002)
 stats.set_int("MPPLY_MISSIONS_CREATED", 500)
 stats.set_int("MPPLY_LTS_CREATED", 500)
 stats.set_int("MPPLY_FM_MISSION_LIKES", 1500)
end)
awdMenu:add_action("General", function()
 stats.set_bool(mpx .. "AWD_FM25DIFFERENTDM", true)
 stats.set_int(mpx .. "CR_DIFFERENT_DM", 25)
 stats.set_bool(mpx .. "AWD_FM25DIFFERENTRACES", true)
 stats.set_int(mpx .. "CR_DIFFERENT_RACES", 25)
 stats.set_int(mpx .. "AWD_PARACHUTE_JUMPS_20M", 25)
 stats.set_int(mpx .. "AWD_PARACHUTE_JUMPS_50M", 25)
 stats.set_int(mpx .. "AWD_FMBASEJMP", 25)
 stats.set_bool(mpx .. "AWD_FMATTGANGHQ", true)
 stats.set_bool(mpx .. "AWD_FM6DARTCHKOUT", true)
 stats.set_int(mpx .. "AWD_FM_GOLF_BIRDIES", 25)
 stats.set_bool(mpx .. "AWD_FM_GOLF_HOLE_IN_1", true)
 stats.set_int(mpx .. "AWD_FM_TENNIS_ACE", 25)
 stats.set_int(mpx .. "AWD_FMBBETWIN", 50000)
 stats.set_int(mpx .. "AWD_LAPDANCES", 25)
 stats.set_int(mpx .. "AWD_FMCRATEDROPS", 25)
 stats.set_bool(mpx .. "AWD_FMPICKUPDLCCRATE1ST", true)
 stats.set_bool(mpx .. "AWD_FM25DIFITEMSCLOTHES", true)
 stats.set_int(mpx .. "AWD_NO_HAIRCUTS", 25)
 stats.set_bool(mpx .. "AWD_BUY_EVERY_GUN", true)
 stats.set_bool(mpx .. "AWD_DRIVELESTERCAR5MINS", true)
 stats.set_bool(mpx .. "AWD_FMTATTOOALLBODYPARTS", true)
 stats.set_int(mpx .. "AWD_DROPOFF_CAP_PACKAGES", 100)
 stats.set_int(mpx .. "AWD_PICKUP_CAP_PACKAGES", 100)
 stats.set_int(mpx .. "AWD_MENTALSTATE_TO_NORMAL", 50)
 stats.set_bool(mpx .. "AWD_STORE_20_CAR_IN_GARAGES", true)
 stats.set_int(mpx .. "AWD_TRADE_IN_YOUR_PROPERTY", 25)
 stats.set_bool(mpx .. "AWD_DAILYOBJWEEKBONUS", true)
 stats.set_bool(mpx .. "AWD_DAILYOBJMONTHBONUS", true)
 stats.set_int("MPPLY_AWD_FM_CR_DM_MADE", 25)
 stats.set_int("MPPLY_AWD_FM_CR_RACES_MADE", 25)
 stats.set_int("MPPLY_AWD_FM_CR_PLAYED_BY_PEEP", 1598)
 stats.set_int("MPPLY_AWD_FM_CR_MISSION_SCORE", 100)
 stats.set_bool(mpx .. "CL_DRIVE_RALLY", true)
 stats.set_bool(mpx .. "CL_PLAY_GTA_RACE", true)
 stats.set_bool(mpx .. "CL_PLAY_BOAT_RACE", true)
 stats.set_bool(mpx .. "CL_PLAY_FOOT_RACE", true)
 stats.set_bool(mpx .. "CL_PLAY_TEAM_DM", true)
 stats.set_bool(mpx .. "CL_PLAY_VEHICLE_DM", true)
 stats.set_bool(mpx .. "CL_PLAY_MISSION_CONTACT", true)
 stats.set_bool(mpx .. "CL_PLAY_A_PLAYLIST", true)
 stats.set_bool(mpx .. "CL_PLAY_POINT_TO_POINT", true)
 stats.set_bool(mpx .. "CL_PLAY_ONE_ON_ONE_DM", true)
 stats.set_bool(mpx .. "CL_PLAY_ONE_ON_ONE_RACE", true)
 stats.set_bool(mpx .. "CL_SURV_A_BOUNTY", true)
 stats.set_bool(mpx .. "CL_SET_WANTED_LVL_ON_PLAY", true)
 stats.set_bool(mpx .. "CL_GANG_BACKUP_GANGS", true)
 stats.set_bool(mpx .. "CL_GANG_BACKUP_LOST", true)
 stats.set_bool(mpx .. "CL_GANG_BACKUP_VAGOS", true)
 stats.set_bool(mpx .. "CL_CALL_MERCENARIES", true)
 stats.set_bool(mpx .. "CL_PHONE_MECH_DROP_CAR", true)
 stats.set_bool(mpx .. "CL_GONE_OFF_RADAR", true)
 stats.set_bool(mpx .. "CL_FILL_TITAN", true)
 stats.set_bool(mpx .. "CL_MOD_CAR_USING_APP", true)
 stats.set_bool(mpx .. "CL_MOD_CAR_USING_APP", true)
 stats.set_bool(mpx .. "CL_BUY_INSURANCE", true)
 stats.set_bool(mpx .. "CL_BUY_GARAGE", true)
 stats.set_bool(mpx .. "CL_ENTER_FRIENDS_HOUSE", true)
 stats.set_bool(mpx .. "CL_CALL_STRIPPER_HOUSE", true)
 stats.set_bool(mpx .. "CL_CALL_FRIEND", true)
 stats.set_bool(mpx .. "CL_SEND_FRIEND_REQUEST", true)
 stats.set_bool(mpx .. "CL_W_WANTED_PLAYER_TV", true)
 stats.set_bool(mpx .. "FM_INTRO_CUT_DONE", true)
 stats.set_bool(mpx .. "FM_INTRO_MISS_DONE", true)
 stats.set_bool(mpx .. "SHOOTINGRANGE_SEEN_TUT", true)
 stats.set_bool(mpx .. "TENNIS_SEEN_TUTORIAL", true)
 stats.set_bool(mpx .. "DARTS_SEEN_TUTORIAL", true)
 stats.set_bool(mpx .. "ARMWRESTLING_SEEN_TUTORIAL", true)
 stats.set_bool(mpx .. "HAS_WATCHED_BENNY_CUTSCE", true)
 stats.set_int(mpx .. "NO_PHOTOS_TAKEN", 100)
 stats.set_int(mpx .. "BOUNTSONU", 200)
 stats.set_int(mpx .. "BOUNTPLACED", 500)
 stats.set_int(mpx .. "BETAMOUNT", 500)
 stats.set_int(mpx .. "CRARMWREST", 500)
 stats.set_int(mpx .. "CRBASEJUMP", 500)
 stats.set_int(mpx .. "CRDARTS", 500)
 stats.set_int(mpx .. "CRDM", 500)
 stats.set_int(mpx .. "CRGANGHIDE", 500)
 stats.set_int(mpx .. "CRGOLF", 500)
 stats.set_int(mpx .. "CRHORDE", 500)
 stats.set_int(mpx .. "CRMISSION", 500)
 stats.set_int(mpx .. "CRSHOOTRNG", 500)
 stats.set_int(mpx .. "CRTENNIS", 500)
 stats.set_int(mpx .. "NO_TIMES_CINEMA", 500)
end)
awdMenu:add_action("Weapons", function()
 stats.set_int(mpx .. "CHAR_WEAP_UNLOCKED", -1)
 stats.set_int(mpx .. "CHAR_WEAP_UNLOCKED2", -1)
 stats.set_int(mpx .. "CHAR_WEAP_UNLOCKED3", -1)
 stats.set_int(mpx .. "CHAR_WEAP_UNLOCKED4", -1)
 stats.set_int(mpx .. "CHAR_WEAP_ADDON_1_UNLCK", -1)
 stats.set_int(mpx .. "CHAR_WEAP_ADDON_2_UNLCK", -1)
 stats.set_int(mpx .. "CHAR_WEAP_ADDON_3_UNLCK", -1)
 stats.set_int(mpx .. "CHAR_WEAP_ADDON_4_UNLCK", -1)
 stats.set_int(mpx .. "CHAR_WEAP_FREE", -1)
 stats.set_int(mpx .. "CHAR_WEAP_FREE2", -1)
 stats.set_int(mpx .. "CHAR_FM_WEAP_FREE", -1)
 stats.set_int(mpx .. "CHAR_FM_WEAP_FREE2", -1)
 stats.set_int(mpx .. "CHAR_FM_WEAP_FREE3", -1)
 stats.set_int(mpx .. "CHAR_FM_WEAP_FREE4", -1)
 stats.set_int(mpx .. "CHAR_WEAP_PURCHASED", -1)
 stats.set_int(mpx .. "CHAR_WEAP_PURCHASED2", -1)
 stats.set_int(mpx .. "WEAPON_PICKUP_BITSET", -1)
 stats.set_int(mpx .. "WEAPON_PICKUP_BITSET2", -1)
 stats.set_int(mpx .. "CHAR_FM_WEAP_UNLOCKED", -1)
 stats.set_int(mpx .. "NO_WEAPONS_UNLOCK", -1)
 stats.set_int(mpx .. "NO_WEAPON_MODS_UNLOCK", -1)
 stats.set_int(mpx .. "NO_WEAPON_CLR_MOD_UNLOCK", -1) 
 stats.set_int(mpx .. "CHAR_FM_WEAP_UNLOCKED2", -1)
 stats.set_int(mpx .. "CHAR_FM_WEAP_UNLOCKED3", -1)
 stats.set_int(mpx .. "CHAR_FM_WEAP_UNLOCKED4", -1)
 stats.set_int(mpx .. "CHAR_KIT_1_FM_UNLCK", -1)
 stats.set_int(mpx .. "CHAR_KIT_2_FM_UNLCK", -1)
 stats.set_int(mpx .. "CHAR_KIT_3_FM_UNLCK", -1)
 stats.set_int(mpx .. "CHAR_KIT_4_FM_UNLCK", -1)
 stats.set_int(mpx .. "CHAR_KIT_5_FM_UNLCK", -1)
 stats.set_int(mpx .. "CHAR_KIT_6_FM_UNLCK", -1)
 stats.set_int(mpx .. "CHAR_KIT_7_FM_UNLCK", -1)
 stats.set_int(mpx .. "CHAR_KIT_8_FM_UNLCK", -1)
 stats.set_int(mpx .. "CHAR_KIT_9_FM_UNLCK", -1)
 stats.set_int(mpx .. "CHAR_KIT_10_FM_UNLCK", -1)
 stats.set_int(mpx .. "CHAR_KIT_11_FM_UNLCK", -1)
 stats.set_int(mpx .. "CHAR_KIT_12_FM_UNLCK", -1)
 stats.set_int(mpx .. "CHAR_KIT_FM_PURCHASE", -1)
 stats.set_int(mpx .. "CHAR_WEAP_FM_PURCHASE", -1)
 stats.set_int(mpx .. "CHAR_WEAP_FM_PURCHASE2", -1)
 stats.set_int(mpx .. "CHAR_WEAP_FM_PURCHASE3", -1)
 stats.set_int(mpx .. "CHAR_WEAP_FM_PURCHASE4", -1)
 stats.set_int(mpx .. "FIREWORK_TYPE_1_WHITE", 1000)
 stats.set_int(mpx .. "FIREWORK_TYPE_1_RED", 1000)
 stats.set_int(mpx .. "FIREWORK_TYPE_1_BLUE", 1000)
 stats.set_int(mpx .. "FIREWORK_TYPE_2_WHITE", 1000)
 stats.set_int(mpx .. "FIREWORK_TYPE_2_RED", 1000)
 stats.set_int(mpx .. "FIREWORK_TYPE_2_BLUE", 1000)
 stats.set_int(mpx .. "FIREWORK_TYPE_3_WHITE", 1000)
 stats.set_int(mpx .. "FIREWORK_TYPE_3_RED", 1000)
 stats.set_int(mpx .. "FIREWORK_TYPE_3_BLUE", 1000)
 stats.set_int(mpx .. "FIREWORK_TYPE_4_WHITE", 1000)
 stats.set_int(mpx .. "FIREWORK_TYPE_4_RED", 1000)
 stats.set_int(mpx .. "FIREWORK_TYPE_4_BLUE", 1000)
 stats.set_int(mpx .. "WEAP_FM_ADDON_PURCH", -1)
for i = 2, 19 do stats.set_int(mpx .. "WEAP_FM_ADDON_PURCH"..i, -1) end
for j = 1, 19 do stats.set_int(mpx .. "CHAR_FM_WEAP_ADDON_"..j.."_UNLCK", -1) end
for m = 1, 41 do stats.set_int(mpx .. "CHAR_KIT_"..m.."_FM_UNLCK", -1) end
for l = 2, 41 do stats.set_int(mpx .. "CHAR_KIT_FM_PURCHASE"..l, -1) end
 end)
awdMenu:add_action("Crimes", function()
 stats.set_int(mpx .. "AWD_FMTIME5STARWANTED", 120)
 stats.set_int(mpx .. "AWD_5STAR_WANTED_AVOIDANCE", 50)
 stats.set_int(mpx .. "AWD_FMSHOOTDOWNCOPHELI", 25)
 stats.set_int(mpx .. "AWD_VEHICLES_JACKEDR", 500)
 stats.set_int(mpx .. "AWD_SECURITY_CARS_ROBBED", 25)
 stats.set_int(mpx .. "AWD_HOLD_UP_SHOPS", 20)
 stats.set_int(mpx .. "AWD_ODISTRACTCOPSNOEATH", 25)
 stats.set_int(mpx .. "AWD_ENEMYDRIVEBYKILLS", 100)
 stats.set_int(mpx .. "CHAR_WANTED_LEVEL_TIME5STAR", 18000000)
 stats.set_int(mpx .. "CARS_COPS_EXPLODED", 300)
 stats.set_int(mpx .. "BIKES_EXPLODED", 100)
 stats.set_int(mpx .. "BOATS_EXPLODED", 168)
 stats.set_int(mpx .. "HELIS_EXPLODED", 98)
 stats.set_int(mpx .. "PLANES_EXPLODED", 138)
 stats.set_int(mpx .. "QUADBIKE_EXPLODED", 50)
 stats.set_int(mpx .. "BICYCLE_EXPLODED", 48)
 stats.set_int(mpx .. "SUBMARINE_EXPLODED", 28)
 stats.set_int(mpx .. "TIRES_POPPED_BY_GUNSHOT", 500)
 stats.set_int(mpx .. "NUMBER_CRASHES_CARS", 300)
 stats.set_int(mpx .. "NUMBER_CRASHES_BIKES", 300)
 stats.set_int(mpx .. "BAILED_FROM_VEHICLE", 300)
 stats.set_int(mpx .. "NUMBER_CRASHES_QUADBIKES", 300)
 stats.set_int(mpx .. "NUMBER_STOLEN_COP_VEHICLE", 300)
 stats.set_int(mpx .. "NUMBER_STOLEN_CARS", 300)
 stats.set_int(mpx .. "NUMBER_STOLEN_BIKES", 300)
 stats.set_int(mpx .. "NUMBER_STOLEN_BOATS", 300)
 stats.set_int(mpx .. "NUMBER_STOLEN_HELIS", 300)
 stats.set_int(mpx .. "NUMBER_STOLEN_PLANES", 300)
 stats.set_int(mpx .. "NUMBER_STOLEN_QUADBIKES", 300)
 stats.set_int(mpx .. "NUMBER_STOLEN_BICYCLES", 300)
 stats.set_int(mpx .. "MC_CONTRIBUTION_POINTS", 1000)
 stats.set_int(mpx .. "MEMBERSMARKEDFORDEATH", 700)
 stats.set_int(mpx .. "MCKILLS", 500)
 stats.set_int(mpx .. "MCDEATHS", 700)
 stats.set_int(mpx .. "RIVALPRESIDENTKILLS", 700)
 stats.set_int(mpx .. "RIVALCEOANDVIPKILLS", 700)
 stats.set_int(mpx .. "CLUBHOUSECONTRACTSCOMPLETE", 700)
 stats.set_int(mpx .. "CLUBHOUSECONTRACTEARNINGS", 32698547)
 stats.set_int(mpx .. "CLUBCHALLENGESCOMPLETED", 700)
 stats.set_int(mpx .. "MEMBERCHALLENGESCOMPLETED", 700)
 stats.set_int(mpx .. "GHKILLS", 500)
 stats.set_int(mpx .. "HORDELVL", 10)
 stats.set_int(mpx .. "HORDKILLS", 500)
 stats.set_int(mpx .. "UNIQUECRATES", 500)
 stats.set_int(mpx .. "BJWINS", 500)
 stats.set_int(mpx .. "HORDEWINS", 500)
 stats.set_int(mpx .. "MCMWINS", 500)
 stats.set_int(mpx .. "GANGHIDWINS", 500)
 stats.set_int(mpx .. "KILLS", 800)
 stats.set_int(mpx .. "HITS_PEDS_VEHICLES", 100)
 stats.set_int(mpx .. "SHOTS", 1000)
 stats.set_int(mpx .. "HEADSHOTS", 100)
 stats.set_int(mpx .. "KILLS_ARMED", 650)
 stats.set_int(mpx .. "SUCCESSFUL_COUNTERS", 100)
 stats.set_int(mpx .. "KILLS_PLAYERS", 3593)
 stats.set_int(mpx .. "DEATHS_PLAYER", 1002)
 stats.set_int(mpx .. "KILLS_STEALTH", 100)
 stats.set_int(mpx .. "KILLS_INNOCENTS", 500)
 stats.set_int(mpx .. "KILLS_ENEMY_GANG_MEMBERS", 500)
 stats.set_int(mpx .. "KILLS_FRIENDLY_GANG_MEMBERS", 500)
 stats.set_int(mpx .. "KILLS_BY_OTHERS", 100)
 stats.set_int(mpx .. "BIGGEST_VICTIM_KILLS", 500)
 stats.set_int(mpx .. "ARCHENEMY_KILLS", 500)
 stats.set_int(mpx .. "KILLS_COP", 4500)
 stats.set_int(mpx .. "KILLS_SWAT", 500)
 stats.set_int(mpx .. "STARS_ATTAINED", 5000)
 stats.set_int(mpx .. "STARS_EVADED", 4000)
 stats.set_int(mpx .. "VEHEXPORTED", 500)
 stats.set_int(mpx .. "TOTAL_NO_SHOPS_HELD_UP", 100)
 stats.set_int(mpx .. "CR_GANGATTACK_CITY", 1000)
 stats.set_int(mpx .. "CR_GANGATTACK_COUNTRY", 1000)
 stats.set_int(mpx .. "CR_GANGATTACK_LOST", 1000)
 stats.set_int(mpx .. "CR_GANGATTACK_VAGOS", 1000)
 stats.set_int(mpx .. "NO_NON_CONTRACT_RACE_WIN", 500)
 stats.set_int(mpx .. "DIED_IN_DROWNING", 833)
 stats.set_int(mpx .. "DIED_IN_DROWNINGINVEHICLE", 833)
 stats.set_int(mpx .. "DIED_IN_EXPLOSION", 833)
 stats.set_int(mpx .. "DIED_IN_FALL", 833)
 stats.set_int(mpx .. "DIED_IN_FIRE", 833)
 stats.set_int(mpx .. "DIED_IN_ROAD", 833)
 stats.set_int(mpx .. "GRENADE_ENEMY_KILLS", 50)
 stats.set_int(mpx .. "MICROSMG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "SMG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "ASLTSMG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "CRBNRIFLE_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "ADVRIFLE_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "MG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "CMBTMG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "ASLTMG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "RPG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "PISTOL_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "PLAYER_HEADSHOTS", 500)
 stats.set_int(mpx .. "SAWNOFF_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "STKYBMB_ENEMY_KILLS", 50)
 stats.set_int(mpx .. "UNARMED_ENEMY_KILLS", 50)
 stats.set_int(mpx .. "SNIPERRFL_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "HVYSNIPER_ENEMY_KILLS", 500)
end)
awdMenu:add_action("Vehicles", function()
 stats.set_int(mpx .. "AWD_50_VEHICLES_BLOWNUP", 500)
 stats.set_int(mpx .. "CARS_EXPLODED", 500)
 stats.set_int(mpx .. "AWD_CAR_EXPORT", 100)
 stats.set_int(mpx .. "AWD_FMDRIVEWITHOUTCRASH", 30)
 stats.set_int(mpx .. "AWD_PASSENGERTIME", 4)
 stats.set_int(mpx .. "AWD_TIME_IN_HELICOPTER", 4)
 stats.set_int(mpx .. "AWD_VEHICLE_JUMP_OVER_40M", 25)
 stats.set_int(mpx .. "MOST_FLIPS_IN_ONE_JUMP", 5)
 stats.set_int(mpx .. "MOST_SPINS_IN_ONE_JUMP", 5)
 stats.set_int(mpx .. "CHAR_FM_VEHICLE_1_UNLCK", -1)
 stats.set_int(mpx .. "CHAR_FM_VEHICLE_2_UNLCK", -1)
 stats.set_int(mpx .. "NO_CARS_REPAIR", 1000)
 stats.set_int(mpx .. "VEHICLES_SPRAYED", 500)
 stats.set_int(mpx .. "NUMBER_NEAR_MISS_NOCRASH", 500)
 stats.set_int(mpx .. "USJS_FOUND", 50)
 stats.set_int(mpx .. "USJS_COMPLETED", 50)
 stats.set_int(mpx .. "USJS_TOTAL_COMPLETED", 50)
 stats.set_int(mpx .. "CRDEADLINE", 5)
 stats.set_int(mpx .. "FAVOUTFITBIKETIMECURRENT", 2069146067)
 stats.set_int(mpx .. "FAVOUTFITBIKETIME1ALLTIME", 2069146067)
 stats.set_int(mpx .. "FAVOUTFITBIKETYPECURRENT", 2069146067)
 stats.set_int(mpx .. "FAVOUTFITBIKETYPEALLTIME", 2069146067)
 stats.set_int(mpx .. "LONGEST_WHEELIE_DIST", 1000)
 stats.set_int(mpx .. "RACES_WON", 50)
 stats.set_int(mpx .. "COUNT_HOTRING_RACE", 20)
 stats.set_bool(mpx .. "AWD_FMFURTHESTWHEELIE", true)
 stats.set_bool(mpx .. "AWD_FMFULLYMODDEDCAR", true)
end)
awdMenu:add_action("Combat", function()
 stats.set_int(mpx .. "AWD_100_HEADSHOTS", 500)
 stats.set_int(mpx .. "AWD_FMOVERALLKILLS", 1000)
 stats.set_int(mpx .. "AWD_FMKILLBOUNTY", 25)
 stats.set_int(mpx .. "AWD_FM_DM_3KILLSAMEGUY", 50)
 stats.set_int(mpx .. "AWD_FM_DM_KILLSTREAK", 100)
 stats.set_int(mpx .. "AWD_FM_DM_STOLENKILL", 50)
 stats.set_int(mpx .. "AWD_FM_DM_TOTALKILLS", 500)
 stats.set_bool(mpx .. "AWD_FMKILLSTREAKSDM", true)
 stats.set_bool(mpx .. "AWD_FMMOSTKILLSGANGHIDE", true)
 stats.set_bool(mpx .. "AWD_FMMOSTKILLSSURVIVE", true)
 stats.set_int(mpx .. "AWD_FMREVENGEKILLSDM", 50)
 stats.set_int(mpx .. "AWD_KILL_CARRIER_CAPTURE", 100)
 stats.set_int(mpx .. "AWD_NIGHTVISION_KILLS", 100)
 stats.set_int(mpx .. "AWD_KILL_PSYCHOPATHS", 100)
 stats.set_int(mpx .. "AWD_TAKEDOWNSMUGPLANE", 50)
 stats.set_int(mpx .. "AWD_100_KILLS_PISTOL", 500)
 stats.set_int(mpx .. "AWD_100_KILLS_SMG", 500)
 stats.set_int(mpx .. "AWD_100_KILLS_SHOTGUN", 500)
 stats.set_int(mpx .. "ASLTRIFLE_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "AWD_100_KILLS_SNIPER", 500)
 stats.set_int(mpx .. "MG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "AWD_25_KILLS_STICKYBOMBS", 50)
 stats.set_int(mpx .. "AWD_50_KILLS_GRENADES", 50)
 stats.set_int(mpx .. "AWD_50_KILLS_ROCKETLAUNCH", 50)
 stats.set_int(mpx .. "AWD_20_KILLS_MELEE", 50)
 stats.set_int(mpx .. "AWD_CAR_BOMBS_ENEMY_KILLS", 25)
 stats.set_int(mpx .. "MELEEKILLS", 700)
 stats.set_int(mpx .. "HITS", 10000)
 stats.set_int(mpx .. "DEATHS", 499)
 stats.set_int(mpx .. "HIGHEST_SKITTLES", 900)
 stats.set_int(mpx .. "NUMBER_NEAR_MISS", 1000)
end)
awdMenu:add_action("Heists", function()
 stats.set_int(mpx .. "AWD_FINISH_HEISTS", 50)
 stats.set_int(mpx .. "AWD_FINISH_HEIST_SETUP_JOB", 50)
 stats.set_int(mpx .. "AWD_COMPLETE_HEIST_NOT_DIE", -1)
 stats.set_bool(mpx .. "AWD_FINISH_HEIST_NO_DAMAGE", true)
 stats.set_int(mpx .. "AWD_WIN_GOLD_MEDAL_HEISTS", 25)
 stats.set_int(mpx .. "AWD_DO_HEIST_AS_MEMBER", 25)
 stats.set_int(mpx .. "AWD_DO_HEIST_AS_THE_LEADER", 25)
 stats.set_bool(mpx .. "AWD_SPLIT_HEIST_TAKE_EVENLY", true)
 stats.set_bool(mpx .. "AWD_ACTIVATE_2_PERSON_KEY", true)
 stats.set_int(mpx .. "AWD_CONTROL_CROWDS", 25)
 stats.set_bool(mpx .. "AWD_ALL_ROLES_HEIST", true)
 stats.set_int(mpx .. "HEIST_COMPLETION", 25)
 stats.set_int(mpx .. "HEISTS_ORGANISED", -1)
 stats.set_int(mpx .. "HEIST_START", -1)
 stats.set_int(mpx .. "HEIST_END", -1)
 stats.set_int(mpx .. "CUTSCENE_MID_PRISON", -1)
 stats.set_int(mpx .. "CUTSCENE_MID_HUMANE", -1)
 stats.set_int(mpx .. "CUTSCENE_MID_NARC", -1)
 stats.set_int(mpx .. "CUTSCENE_MID_ORNATE", -1)
 stats.set_int(mpx .. "CR_FLEECA_PREP_1", -1)
 stats.set_int(mpx .. "CR_FLEECA_PREP_2", -1)
 stats.set_int(mpx .. "CR_FLEECA_FINALE", -1)
 stats.set_int(mpx .. "CR_PRISON_PLANE", -1)
 stats.set_int(mpx .. "CR_PRISON_BUS", -1)
 stats.set_int(mpx .. "CR_PRISON_STATION", -1)
 stats.set_int(mpx .. "CR_PRISON_UNFINISHED_BIZ", -1)
 stats.set_int(mpx .. "CR_PRISON_FINALE", -1)
 stats.set_int(mpx .. "CR_HUMANE_KEY_CODES", -1)
 stats.set_int(mpx .. "CR_HUMANE_ARMORDILLOS", -1)
 stats.set_int(mpx .. "CR_HUMANE_EMP", -1)
 stats.set_int(mpx .. "CR_HUMANE_VALKYRIE", -1)
 stats.set_int(mpx .. "CR_HUMANE_FINALE", -1)
 stats.set_int(mpx .. "CR_NARC_COKE", -1)
 stats.set_int(mpx .. "CR_NARC_TRASH_TRUCK", -1)
 stats.set_int(mpx .. "CR_NARC_BIKERS", -1)
 stats.set_int(mpx .. "CR_NARC_WEED", -1)
 stats.set_int(mpx .. "CR_NARC_STEAL_METH", -1)
 stats.set_int(mpx .. "CR_NARC_FINALE", -1)
 stats.set_int(mpx .. "CR_PACIFIC_TRUCKS", -1)
 stats.set_int(mpx .. "CR_PACIFIC_WITSEC", -1)
 stats.set_int(mpx .. "CR_PACIFIC_HACK", -1)
 stats.set_int(mpx .. "CR_PACIFIC_BIKES", -1)
 stats.set_int(mpx .. "CR_PACIFIC_CONVOY", -1)
 stats.set_int(mpx .. "CR_PACIFIC_FINALE", -1)
 stats.set_int("MPPLY_HEIST_ACH_TRACKER", -1)
 stats.set_int("MPPLY_WIN_GOLD_MEDAL_HEISTS", 25)
 stats.set_bool("MPPLY_AWD_FLEECA_FIN", true)
 stats.set_bool("MPPLY_AWD_PRISON_FIN", true)
 stats.set_bool("MPPLY_AWD_HUMANE_FIN", true)
 stats.set_bool("MPPLY_AWD_SERIESA_FIN", true)
 stats.set_bool("MPPLY_AWD_PACIFIC_FIN", true)
 stats.set_bool("MPPLY_AWD_HST_ORDER", true)
 stats.set_bool("MPPLY_AWD_COMPLET_HEIST_MEM", true)
 stats.set_bool("MPPLY_AWD_COMPLET_HEIST_1STPER", true)
 stats.set_bool("MPPLY_AWD_HST_SAME_TEAM", true)
 stats.set_bool("MPPLY_AWD_HST_ULT_CHAL", true)
 stats.set_bool(mpx .. "AWD_MATCHING_OUTFIT_HEIST", true)
 stats.set_bool(mpx .. "HEIST_PLANNING_DONE_PRINT", true)
 stats.set_bool(mpx .. "HEIST_PLANNING_DONE_HELP_0", true)
 stats.set_bool(mpx .. "HEIST_PLANNING_DONE_HELP_1", true)
 stats.set_bool(mpx .. "HEIST_PRE_PLAN_DONE_HELP_0", true)
 stats.set_bool(mpx .. "HEIST_CUTS_DONE_FINALE", true)
 stats.set_bool(mpx .. "HEIST_IS_TUTORIAL", true)
 stats.set_bool(mpx .. "HEIST_STRAND_INTRO_DONE", true)
 stats.set_bool(mpx .. "HEIST_CUTS_DONE_ORNATE", true)
 stats.set_bool(mpx .. "HEIST_CUTS_DONE_PRISON", true)
 stats.set_bool(mpx .. "HEIST_CUTS_DONE_BIOLAB", true)
 stats.set_bool(mpx .. "HEIST_CUTS_DONE_NARCOTIC", true)
 stats.set_bool(mpx .. "HEIST_CUTS_DONE_TUTORIAL", true)
 stats.set_bool(mpx .. "HEIST_AWARD_DONE_PREP", true)
 stats.set_bool(mpx .. "HEIST_AWARD_BOUGHT_IN", true)
 stats.set_int(mpx .. "HEIST_PLANNING_STAGE", -1)
end)
awdMenu:add_action("Doomsday", function()
 stats.set_int(mpx .. "GANGOPS_HEIST_STATUS", -1)
 stats.set_int(mpx .. "GANGOPS_HEIST_STATUS", -229384)
 stats.set_int(mpx .. "GANGOPS_FM_MISSION_PROG", -1)
 stats.set_int(mpx .. "GANGOPS_FLOW_MISSION_PROG", -1)
 stats.set_int("MPPLY_GANGOPS_ALLINORDER", 100)
 stats.set_int("MPPLY_GANGOPS_LOYALTY", 100)
 stats.set_int("MPPLY_GANGOPS_CRIMMASMD", 100)
 stats.set_int("MPPLY_GANGOPS_LOYALTY2", 100)
 stats.set_int("MPPLY_GANGOPS_LOYALTY3", 100)
 stats.set_int("MPPLY_GANGOPS_CRIMMASMD2", 100)
 stats.set_int("MPPLY_GANGOPS_CRIMMASMD3", 100)
 stats.set_int("MPPLY_GANGOPS_SUPPORT", 100)
 stats.set_int(mpx .. "CR_GANGOP_MORGUE", 10)
 stats.set_int(mpx .. "CR_GANGOP_DELUXO", 10)
 stats.set_int(mpx .. "CR_GANGOP_SERVERFARM", 10)
 stats.set_int(mpx .. "CR_GANGOP_IAABASE_FIN", 10)
 stats.set_int(mpx .. "CR_GANGOP_STEALOSPREY", 10)
 stats.set_int(mpx .. "CR_GANGOP_FOUNDRY", 10)
 stats.set_int(mpx .. "CR_GANGOP_RIOTVAN", 10)
 stats.set_int(mpx .. "CR_GANGOP_SUBMARINECAR", 10)
 stats.set_int(mpx .. "CR_GANGOP_SUBMARINE_FIN", 10)
 stats.set_int(mpx .. "CR_GANGOP_PREDATOR", 10)
 stats.set_int(mpx .. "CR_GANGOP_BMLAUNCHER", 10)
 stats.set_int(mpx .. "CR_GANGOP_BCCUSTOM", 10)
 stats.set_int(mpx .. "CR_GANGOP_STEALTHTANKS", 10)
 stats.set_int(mpx .. "CR_GANGOP_SPYPLANE", 10)
 stats.set_int(mpx .. "CR_GANGOP_FINALE", 10)
 stats.set_int(mpx .. "CR_GANGOP_FINALE_P2", 10)
 stats.set_int(mpx .. "CR_GANGOP_FINALE_P3", 10)
 stats.set_bool("MPPLY_AWD_GANGOPS_IAA", true)
 stats.set_bool("MPPLY_AWD_GANGOPS_SUBMARINE", true)
 stats.set_bool("MPPLY_AWD_GANGOPS_MISSILE", true)
 stats.set_bool("MPPLY_AWD_GANGOPS_ALLINORDER", true)
 stats.set_bool("MPPLY_AWD_GANGOPS_LOYALTY", true)
 stats.set_bool("MPPLY_AWD_GANGOPS_LOYALTY2", true)
 stats.set_bool("MPPLY_AWD_GANGOPS_LOYALTY3", true)
 stats.set_bool("MPPLY_AWD_GANGOPS_CRIMMASMD", true)
 stats.set_bool("MPPLY_AWD_GANGOPS_CRIMMASMD2", true)
 stats.set_bool("MPPLY_AWD_GANGOPS_CRIMMASMD3", true)
 stats.set_bool("MPPLY_AWD_GANGOPS_SUPPORT", true)
for j = 0, 63 do stats.set_bool_masked(mpx.."GANGOPSPSTAT_BOOL0", true, j, mpx) end
	stats.set_masked_int(mpx.."DLCSMUGCHARPSTAT_INT260", 3, 16, 8)
	stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT260", 3, 24, 8)
	stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT260", 3, 32, 8)
	stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT260", 3, 40, 8)
	stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT260", 3, 48, 8)
end)
awdMenu:add_action("After Hours", function()
 stats.set_int(mpx .. "AWD_DANCE_TO_SOLOMUN", 120)
 stats.set_int(mpx .. "AWD_DANCE_TO_TALEOFUS", 120)
 stats.set_int(mpx .. "AWD_DANCE_TO_DIXON", 120)
 stats.set_int(mpx .. "AWD_DANCE_TO_BLKMAD", 120)
 stats.set_int(mpx .. "AWD_CLUB_DRUNK", 200)
 stats.set_int(mpx .. "NIGHTCLUB_VIP_APPEAR", 700)
 stats.set_int(mpx .. "NIGHTCLUB_JOBS_DONE", 700)
 stats.set_int(mpx .. "NIGHTCLUB_EARNINGS", 5721002)
 stats.set_int(mpx .. "HUB_SALES_COMPLETED", 1001)
 stats.set_int(mpx .. "HUB_EARNINGS", 20721002)
 stats.set_int(mpx .. "DANCE_COMBO_DURATION_MINS", 3600000)
 stats.set_int(mpx .. "NIGHTCLUB_PLAYER_APPEAR", 100)
 stats.set_int(mpx .. "LIFETIME_HUB_GOODS_SOLD", 784672)
 stats.set_int(mpx .. "LIFETIME_HUB_GOODS_MADE", 507822)
 stats.set_int(mpx .. "DANCEPERFECTOWNCLUB", 120)
 stats.set_int(mpx .. "NUMUNIQUEPLYSINCLUB", 120)
 stats.set_int(mpx .. "DANCETODIFFDJS", 4)
 stats.set_int(mpx .. "NIGHTCLUB_HOTSPOT_TIME_MS", 3600000)
 stats.set_int(mpx .. "NIGHTCLUB_CONT_TOTAL", 20)
 stats.set_int(mpx .. "NIGHTCLUB_CONT_MISSION", -1)
 stats.set_int(mpx .. "CLUB_CONTRABAND_MISSION", 1000)
 stats.set_int(mpx .. "HUB_CONTRABAND_MISSION", 1000)
 stats.set_bool(mpx .. "AWD_CLUB_HOTSPOT", true)
 stats.set_bool(mpx .. "AWD_CLUB_CLUBBER", true)
 stats.set_bool(mpx .. "AWD_CLUB_COORD", true)
for j = 0, 63 do stats.set_bool_masked(mpx.."BUSINESSBATPSTAT_BOOL0", true, j, mpx) stats.set_bool_masked(mpx.."BUSINESSBATPSTAT_BOOL1", true, j, mpx) end
if (stats.get_masked_int(mpx.."BUSINESSBATPSTAT_INT380", 0, 8) <20) then stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT380", 20, 0, 8) end
	stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT379", 50, 8, 8)
	stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT379", 100, 16, 8) 
	stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT379", 20, 24, 8) 
	stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT379", 80, 32, 8) 
	stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT379", 60, 40, 8) 
	stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT379", 40, 48, 8) 
	stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT379", 10, 56, 8)
end)
awdMenu:add_action("Arena War", function()
 stats.set_int(mpx .. "ARN_BS_TRINKET_TICKERS", -1)
 stats.set_int(mpx .. "ARN_BS_TRINKET_SAVED", -1)
 stats.set_int(mpx .. "AWD_WATCH_YOUR_STEP", 50)
 stats.set_int(mpx .. "AWD_TOWER_OFFENSE", 50)
 stats.set_int(mpx .. "AWD_READY_FOR_WAR", 50)
 stats.set_int(mpx .. "AWD_THROUGH_A_LENS", 50)
 stats.set_int(mpx .. "AWD_SPINNER", 50)
 stats.set_int(mpx .. "AWD_YOUMEANBOOBYTRAPS", 50)
 stats.set_int(mpx .. "AWD_MASTER_BANDITO", 50)
 stats.set_int(mpx .. "AWD_SITTING_DUCK", 50)
 stats.set_int(mpx .. "AWD_CROWDPARTICIPATION", 50)
 stats.set_int(mpx .. "AWD_KILL_OR_BE_KILLED", 50)
 stats.set_int(mpx .. "AWD_MASSIVE_SHUNT", 50)
 stats.set_int(mpx .. "AWD_YOURE_OUTTA_HERE", 200)
 stats.set_int(mpx .. "AWD_WEVE_GOT_ONE", 50)
 stats.set_int(mpx .. "AWD_ARENA_WAGEWORKER", 1000000)
 stats.set_int(mpx .. "AWD_TIME_SERVED", 1000)
 stats.set_int(mpx .. "AWD_TOP_SCORE", 55000)
 stats.set_int(mpx .. "AWD_CAREER_WINNER", 1000)
 stats.set_int(mpx .. "ARENAWARS_SP", 0)
 stats.set_int(mpx .. "ARENAWARS_SKILL_LEVEL", 20)
 stats.set_int(mpx .. "ARENAWARS_SP_LIFETIME", 100)
 stats.set_int(mpx .. "ARENAWARS_AP", 0)
 stats.set_int(mpx .. "ARENAWARS_AP_TIER", 1000)
 stats.set_int(mpx .. "ARENAWARS_AP_LIFETIME", 5055000)
 stats.set_int(mpx .. "ARENAWARS_CARRER_UNLK", -1)
 stats.set_int(mpx .. "ARN_W_THEME_SCIFI", 1000)
 stats.set_int(mpx .. "ARN_W_THEME_APOC", 1000)
 stats.set_int(mpx .. "ARN_W_THEME_CONS", 1000)
 stats.set_int(mpx .. "ARN_W_PASS_THE_BOMB", 1000)
 stats.set_int(mpx .. "ARN_W_DETONATION", 1000)
 stats.set_int(mpx .. "ARN_W_ARCADE_RACE", 1000)
 stats.set_int(mpx .. "ARN_W_CTF", 1000)
 stats.set_int(mpx .. "ARN_W_TAG_TEAM", 1000)
 stats.set_int(mpx .. "ARN_W_DESTR_DERBY", 1000)
 stats.set_int(mpx .. "ARN_W_CARNAGE", 1000)
 stats.set_int(mpx .. "ARN_W_MONSTER_JAM", 1000)
 stats.set_int(mpx .. "ARN_W_GAMES_MASTERS", 1000)
 stats.set_int(mpx .. "ARN_L_PASS_THE_BOMB", 500)
 stats.set_int(mpx .. "ARN_L_DETONATION", 500)
 stats.set_int(mpx .. "ARN_L_ARCADE_RACE", 500)
 stats.set_int(mpx .. "ARN_L_CTF", 500)
 stats.set_int(mpx .. "ARN_L_TAG_TEAM", 500)
 stats.set_int(mpx .. "ARN_L_DESTR_DERBY", 500)
 stats.set_int(mpx .. "ARN_L_CARNAGE", 500)
 stats.set_int(mpx .. "ARN_L_MONSTER_JAM", 500)
 stats.set_int(mpx .. "ARN_L_GAMES_MASTERS", 500)
 stats.set_int(mpx .. "NUMBER_OF_CHAMP_BOUGHT", 1000)
 stats.set_int(mpx .. "ARN_SPECTATOR_KILLS", 1000)
 stats.set_int(mpx .. "ARN_LIFETIME_KILLS", 1000)
 stats.set_int(mpx .. "ARN_LIFETIME_DEATHS", 500)
 stats.set_int(mpx .. "ARENAWARS_CARRER_WINS", 1000)
 stats.set_int(mpx .. "ARENAWARS_CARRER_WINT", 1000)
 stats.set_int(mpx .. "ARENAWARS_MATCHES_PLYD", 1000)
 stats.set_int(mpx .. "ARENAWARS_MATCHES_PLYDT", 1000)
 stats.set_int(mpx .. "ARN_SPEC_BOX_TIME_MS", 86400000)
 stats.set_int(mpx .. "ARN_SPECTATOR_DRONE", 1000)
 stats.set_int(mpx .. "ARN_SPECTATOR_CAMS", 1000)
 stats.set_int(mpx .. "ARN_SMOKE", 1000)
 stats.set_int(mpx .. "ARN_DRINK", 1000)
 stats.set_int(mpx .. "ARN_VEH_MONSTER", 1000)
 stats.set_int(mpx .. "ARN_VEH_MONSTER", 1000)
 stats.set_int(mpx .. "ARN_VEH_MONSTER", 1000)
 stats.set_int(mpx .. "ARN_VEH_CERBERUS", 1000)
 stats.set_int(mpx .. "ARN_VEH_CERBERUS2", 1000)
 stats.set_int(mpx .. "ARN_VEH_CERBERUS3", 1000)
 stats.set_int(mpx .. "ARN_VEH_BRUISER", 1000)
 stats.set_int(mpx .. "ARN_VEH_BRUISER2", 1000)
 stats.set_int(mpx .. "ARN_VEH_BRUISER3", 1000)
 stats.set_int(mpx .. "ARN_VEH_SLAMVAN4", 1000)
 stats.set_int(mpx .. "ARN_VEH_SLAMVAN5", 1000)
 stats.set_int(mpx .. "ARN_VEH_SLAMVAN6", 1000)
 stats.set_int(mpx .. "ARN_VEH_BRUTUS", 1000)
 stats.set_int(mpx .. "ARN_VEH_BRUTUS2", 1000)
 stats.set_int(mpx .. "ARN_VEH_BRUTUS3", 1000)
 stats.set_int(mpx .. "ARN_VEH_SCARAB", 1000)
 stats.set_int(mpx .. "ARN_VEH_SCARAB2", 1000)
 stats.set_int(mpx .. "ARN_VEH_SCARAB3", 1000)
 stats.set_int(mpx .. "ARN_VEH_DOMINATOR4", 1000)
 stats.set_int(mpx .. "ARN_VEH_DOMINATOR5", 1000)
 stats.set_int(mpx .. "ARN_VEH_DOMINATOR6", 1000)
 stats.set_int(mpx .. "ARN_VEH_IMPALER2", 1000)
 stats.set_int(mpx .. "ARN_VEH_IMPALER3", 1000)
 stats.set_int(mpx .. "ARN_VEH_IMPALER4", 1000)
 stats.set_int(mpx .. "ARN_VEH_ISSI4", 1000)
 stats.set_int(mpx .. "ARN_VEH_ISSI5", 1000)
 stats.set_int(mpx .. "ARN_VEH_ISSI", 61000)
 stats.set_int(mpx .. "ARN_VEH_IMPERATOR", 1000)
 stats.set_int(mpx .. "ARN_VEH_IMPERATOR2", 1000)
 stats.set_int(mpx .. "ARN_VEH_IMPERATOR3", 1000)
 stats.set_int(mpx .. "ARN_VEH_ZR380", 1000)
 stats.set_int(mpx .. "ARN_VEH_ZR3802", 1000)
 stats.set_int(mpx .. "ARN_VEH_ZR3803", 1000)
 stats.set_int(mpx .. "ARN_VEH_DEATHBIKE", 1000)
 stats.set_int(mpx .. "ARN_VEH_DEATHBIKE2", 1000)
 stats.set_int(mpx .. "ARN_VEH_DEATHBIKE3", 1000)
 stats.set_bool(mpx .. "AWD_BEGINNER", true)
 stats.set_bool(mpx .. "AWD_FIELD_FILLER", true)
 stats.set_bool(mpx .. "AWD_ARMCHAIR_RACER", true)
 stats.set_bool(mpx .. "AWD_LEARNER", true)
 stats.set_bool(mpx .. "AWD_SUNDAY_DRIVER", true)
 stats.set_bool(mpx .. "AWD_THE_ROOKIE", true)
 stats.set_bool(mpx .. "AWD_BUMP_AND_RUN", true)
 stats.set_bool(mpx .. "AWD_GEAR_HEAD", true)
 stats.set_bool(mpx .. "AWD_DOOR_SLAMMER", true)
 stats.set_bool(mpx .. "AWD_HOT_LAP", true)
 stats.set_bool(mpx .. "AWD_ARENA_AMATEUR", true)
 stats.set_bool(mpx .. "AWD_PAINT_TRADER", true)
 stats.set_bool(mpx .. "AWD_SHUNTER", true)
 stats.set_bool(mpx .. "AWD_JOCK", true)
 stats.set_bool(mpx .. "AWD_WARRIOR", true)
 stats.set_bool(mpx .. "AWD_T_BONE", true)
 stats.set_bool(mpx .. "AWD_MAYHEM", true)
 stats.set_bool(mpx .. "AWD_WRECKER", true)
 stats.set_bool(mpx .. "AWD_CRASH_COURSE", true)
 stats.set_bool(mpx .. "AWD_ARENA_LEGEND", true)
 stats.set_bool(mpx .. "AWD_PEGASUS", true)
 stats.set_bool(mpx .. "AWD_UNSTOPPABLE", true)
 stats.set_bool(mpx .. "AWD_CONTACT_SPORT", true)
 stats.set_masked_int(mpx.."ARENAWARSPSTAT_INT", 1, 35, 8)
for i = 0, 8 do for j = 0, 63 do stats.set_bool_masked(mpx.."ARENAWARSPSTAT_BOOL"..i, true, j, mpx) end end end)
awdMenu:add_action("Diamond Casino'n'Resort", function()
 stats.set_int(mpx .. "AWD_ODD_JOBS", 50)
 stats.set_int(mpx .. "VCM_FLOW_PROGRESS", -1)
 stats.set_int(mpx .. "VCM_STORY_PROGRESS", 5)
 stats.set_bool(mpx .. "AWD_FIRST_TIME1", true)
 stats.set_bool(mpx .. "AWD_FIRST_TIME2", true)
 stats.set_bool(mpx .. "AWD_FIRST_TIME3", true)
 stats.set_bool(mpx .. "AWD_FIRST_TIME4", true)
 stats.set_bool(mpx .. "AWD_FIRST_TIME5", true)
 stats.set_bool(mpx .. "AWD_FIRST_TIME6", true)
 stats.set_bool(mpx .. "AWD_ALL_IN_ORDER", true)
 stats.set_bool(mpx .. "AWD_SUPPORTING_ROLE", true)
 stats.set_bool(mpx .. "AWD_LEADER", true)
 stats.set_bool(mpx .. "AWD_SURVIVALIST", true)
Paragon = stats.get_bool(mpx .. "CAS_VEHICLE_REWARD") if Paragon == true then stats.set_bool(mpx .. "CAS_VEHICLE_REWARD",true) else stats.set_bool(mpx .. "CAS_VEHICLE_REWARD", false) end
for i = 0, 6 do for j = 0, 63 do stats.set_bool_masked(mpx.."CASINOPSTAT_BOOL"..i, true, j, mpx) end end end)
awdMenu:add_action("Diamond Casino Heist", function()
 stats.set_int(mpx .. "CAS_HEIST_NOTS", -1)
 stats.set_int(mpx .. "CAS_HEIST_FLOW", -1)
 stats.set_int(mpx .. "SIGNAL_JAMMERS_COLLECTED", 50)
 stats.set_int(mpx .. "AWD_PREPARATION", 40)
 stats.set_int(mpx .. "AWD_ASLEEPONJOB", 20)
 stats.set_int(mpx .. "AWD_DAICASHCRAB", 100000)
 stats.set_int(mpx .. "AWD_BIGBRO", 40)
 stats.set_int(mpx .. "AWD_SHARPSHOOTER", 40)
 stats.set_int(mpx .. "AWD_RACECHAMP", 40)
 stats.set_int(mpx .. "AWD_BATSWORD", 1000000)
 stats.set_int(mpx .. "AWD_COINPURSE", 950000)
 stats.set_int(mpx .. "AWD_ASTROCHIMP", 3000000)
 stats.set_int(mpx .. "AWD_MASTERFUL", 40000)
 stats.set_int(mpx .. "H3_BOARD_DIALOGUE0", -1)
 stats.set_int(mpx .. "H3_BOARD_DIALOGUE1", -1)
 stats.set_int(mpx .. "H3_BOARD_DIALOGUE2", -1)
 stats.set_int(mpx .. "H3_VEHICLESUSED", -1)
 stats.set_int(mpx .. "H3_CR_STEALTH_1A", 100)
 stats.set_int(mpx .. "H3_CR_STEALTH_2B_RAPP", 100)
 stats.set_int(mpx .. "H3_CR_STEALTH_2C_SIDE", 100)
 stats.set_int(mpx .. "H3_CR_STEALTH_3A", 100)
 stats.set_int(mpx .. "H3_CR_STEALTH_4A", 100)
 stats.set_int(mpx .. "H3_CR_STEALTH_5A", 100)
 stats.set_int(mpx .. "H3_CR_SUBTERFUGE_1A", 100)
 stats.set_int(mpx .. "H3_CR_SUBTERFUGE_2A", 100)
 stats.set_int(mpx .. "H3_CR_SUBTERFUGE_2B", 100)
 stats.set_int(mpx .. "H3_CR_SUBTERFUGE_3A", 100)
 stats.set_int(mpx .. "H3_CR_SUBTERFUGE_3B", 100)
 stats.set_int(mpx .. "H3_CR_SUBTERFUGE_4A", 100)
 stats.set_int(mpx .. "H3_CR_SUBTERFUGE_5A", 100)
 stats.set_int(mpx .. "H3_CR_DIRECT_1A", 100)
 stats.set_int(mpx .. "H3_CR_DIRECT_2A1", 100)
 stats.set_int(mpx .. "H3_CR_DIRECT_2A2", 100)
 stats.set_int(mpx .. "H3_CR_DIRECT_2BP", 100)
 stats.set_int(mpx .. "H3_CR_DIRECT_2C", 100)
 stats.set_int(mpx .. "H3_CR_DIRECT_3A", 100)
 stats.set_int(mpx .. "H3_CR_DIRECT_4A", 100)
 stats.set_int(mpx .. "H3_CR_DIRECT_5A", 100)
 stats.set_int(mpx .. "CR_ORDER", 100)
 stats.set_bool(mpx .. "AWD_SCOPEOUT", true)
 stats.set_bool(mpx .. "AWD_CREWEDUP", true)
 stats.set_bool(mpx .. "AWD_MOVINGON", true)
 stats.set_bool(mpx .. "AWD_PROMOCAMP", true)
 stats.set_bool(mpx .. "AWD_GUNMAN", true)
 stats.set_bool(mpx .. "AWD_SMASHNGRAB", true)
 stats.set_bool(mpx .. "AWD_INPLAINSI", true)
 stats.set_bool(mpx .. "AWD_UNDETECTED", true)
 stats.set_bool(mpx .. "AWD_ALLROUND", true)
 stats.set_bool(mpx .. "AWD_ELITETHEIF", true)
 stats.set_bool(mpx .. "AWD_PRO", true)
 stats.set_bool(mpx .. "AWD_SUPPORTACT", true)
 stats.set_bool(mpx .. "AWD_SHAFTED", true)
 stats.set_bool(mpx .. "AWD_COLLECTOR", true)
 stats.set_bool(mpx .. "AWD_DEADEYE", true)
 stats.set_bool(mpx .. "AWD_PISTOLSATDAWN", true)
 stats.set_bool(mpx .. "AWD_TRAFFICAVOI", true)
 stats.set_bool(mpx .. "AWD_CANTCATCHBRA", true)
 stats.set_bool(mpx .. "AWD_WIZHARD", true)
 stats.set_bool(mpx .. "AWD_APEESCAPE", true)
 stats.set_bool(mpx .. "AWD_MONKEYKIND", true)
 stats.set_bool(mpx .. "AWD_AQUAAPE", true)
 stats.set_bool(mpx .. "AWD_KEEPFAITH", true)
 stats.set_bool(mpx .. "AWD_TRUELOVE", true)
 stats.set_bool(mpx .. "AWD_NEMESIS", true)
 stats.set_bool(mpx .. "AWD_FRIENDZONED", true)
 stats.set_bool(mpx .. "VCM_FLOW_CS_RSC_SEEN", true)
 stats.set_bool(mpx .. "VCM_FLOW_CS_BWL_SEEN", true)
 stats.set_bool(mpx .. "VCM_FLOW_CS_MTG_SEEN", true)
 stats.set_bool(mpx .. "VCM_FLOW_CS_OIL_SEEN", true)
 stats.set_bool(mpx .. "VCM_FLOW_CS_DEF_SEEN", true)
 stats.set_bool(mpx .. "VCM_FLOW_CS_FIN_SEEN", true)
 stats.set_bool(mpx .. "HELP_FURIA", true)
 stats.set_bool(mpx .. "HELP_MINITAN", true)
 stats.set_bool(mpx .. "HELP_YOSEMITE2", true)
 stats.set_bool(mpx .. "HELP_ZHABA", true)
 stats.set_bool(mpx .. "HELP_IMORGEN", true)
 stats.set_bool(mpx .. "HELP_SULTAN2", true)
 stats.set_bool(mpx .. "HELP_VAGRANT", true)
 stats.set_bool(mpx .. "HELP_VSTR", true)
 stats.set_bool(mpx .. "HELP_STRYDER", true)
 stats.set_bool(mpx .. "HELP_SUGOI", true)
 stats.set_bool(mpx .. "HELP_KANJO", true)
 stats.set_bool(mpx .. "HELP_FORMULA", true)
 stats.set_bool(mpx .. "HELP_FORMULA2", true)
 stats.set_bool(mpx .. "HELP_JB7002", true)
for i = 0, 4 do for j = 0, 63 do stats.set_bool_masked(mpx.."CASINOHSTPSTAT_BOOL"..i, true, j, mpx) end end end)
awdMenu:add_action("Arcade", function()
 stats.set_int(mpx .. "AWD_PREPARATION", 50)
 stats.set_int(mpx .. "AWD_ASLEEPONJOB", 20)
 stats.set_int(mpx .. "AWD_DAICASHCRAB", 100000)
 stats.set_int(mpx .. "AWD_BIGBRO", 40)
 stats.set_int(mpx .. "AWD_SHARPSHOOTER", 40)
 stats.set_int(mpx .. "AWD_RACECHAMP", 40)
 stats.set_int(mpx .. "AWD_BATSWORD", 1000000)
 stats.set_int(mpx .. "AWD_COINPURSE", 950000)
 stats.set_int(mpx .. "AWD_ASTROCHIMP", 3000000)
 stats.set_int(mpx .. "AWD_MASTERFUL", 40000)
 stats.set_int(mpx .. "SCGW_NUM_WINS_GANG_0", 50)
 stats.set_int(mpx .. "SCGW_NUM_WINS_GANG_1", 50)
 stats.set_int(mpx .. "SCGW_NUM_WINS_GANG_2", 50)
 stats.set_int(mpx .. "SCGW_NUM_WINS_GANG_3", 50)
 stats.set_int(mpx .. "CH_ARC_CAB_CLAW_TROPHY", -1)
 stats.set_int(mpx .. "CH_ARC_CAB_LOVE_TROPHY", -1)
 stats.set_int(mpx .. "IAP_MAX_MOON_DIST", 2147483647)
 stats.set_int(mpx .. "SCGW_INITIALS_0", 69644)
 stats.set_int(mpx .. "SCGW_INITIALS_1", 50333)
 stats.set_int(mpx .. "SCGW_INITIALS_2", 63512)
 stats.set_int(mpx .. "SCGW_INITIALS_3", 46136)
 stats.set_int(mpx .. "SCGW_INITIALS_4", 21638)
 stats.set_int(mpx .. "SCGW_INITIALS_5", 2133)
 stats.set_int(mpx .. "SCGW_INITIALS_6", 1215)
 stats.set_int(mpx .. "SCGW_INITIALS_7", 2444)
 stats.set_int(mpx .. "SCGW_INITIALS_8", 38023)
 stats.set_int(mpx .. "SCGW_INITIALS_9", 2233)
 stats.set_int(mpx .. "FOOTAGE_INITIALS_0",0)
 stats.set_int(mpx .. "FOOTAGE_INITIALS_1", 64)
 stats.set_int(mpx .. "FOOTAGE_INITIALS_2", 8457)
 stats.set_int(mpx .. "FOOTAGE_INITIALS_3", 91275)
 stats.set_int(mpx .. "FOOTAGE_INITIALS_4", 53260)
 stats.set_int(mpx .. "FOOTAGE_INITIALS_5", 78663)
 stats.set_int(mpx .. "FOOTAGE_INITIALS_6", 25103)
 stats.set_int(mpx .. "FOOTAGE_INITIALS_7", 102401)
 stats.set_int(mpx .. "FOOTAGE_INITIALS_8", 12672)
 stats.set_int(mpx .. "FOOTAGE_INITIALS_9", 74380)
 stats.set_int(mpx .. "FOOTAGE_SCORE_0", 284544)
 stats.set_int(mpx .. "FOOTAGE_SCORE_1", 275758)
 stats.set_int(mpx .. "FOOTAGE_SCORE_2", 100000)
 stats.set_int(mpx .. "FOOTAGE_SCORE_3", 90000)
 stats.set_int(mpx .. "FOOTAGE_SCORE_4", 80000)
 stats.set_int(mpx .. "FOOTAGE_SCORE_5", 70000)
 stats.set_int(mpx .. "FOOTAGE_SCORE_6", 60000)
 stats.set_int(mpx .. "FOOTAGE_SCORE_7", 50000)
 stats.set_int(mpx .. "FOOTAGE_SCORE_8", 40000)
 stats.set_int(mpx .. "FOOTAGE_SCORE_9", 30000)
for i = 0, 9 do stats.set_int(mpx .. "IAP_INITIALS_"..i, 50) stats.set_int(mpx .. "IAP_SCORE_"..i, 50) stats.set_int(mpx .. "IAP_SCORE_"..i, 50) stats.set_int(mpx .. "SCGW_SCORE_"..i, 50) stats.set_int(mpx .. "DG_DEFENDER_INITIALS_"..i, 69644) stats.set_int(mpx .. "DG_DEFENDER_SCORE_"..i, 50) stats.set_int(mpx .. "DG_MONKEY_INITIALS_"..i, 69644) stats.set_int(mpx .. "DG_MONKEY_SCORE_"..i, 50) stats.set_int(mpx .. "DG_PENETRATOR_INITIALS_"..i, 69644) stats.set_int(mpx .. "DG_PENETRATOR_SCORE_"..i, 50) stats.set_int(mpx .. "GGSM_INITIALS_"..i, 69644) stats.set_int(mpx .. "GGSM_SCORE_"..i, 50) stats.set_int(mpx .. "TWR_INITIALS_"..i, 69644) stats.set_int(mpx .. "TWR_SCORE_"..i, 50) end 
 stats.set_bool(mpx .. "AWD_SCOPEOUT", true)
 stats.set_bool(mpx .. "AWD_CREWEDUP", true)
 stats.set_bool(mpx .. "AWD_MOVINGON", true)
 stats.set_bool(mpx .. "AWD_PROMOCAMP", true)
 stats.set_bool(mpx .. "AWD_GUNMAN", true)
 stats.set_bool(mpx .. "AWD_SMASHNGRAB", true)
 stats.set_bool(mpx .. "AWD_INPLAINSI", true)
 stats.set_bool(mpx .. "AWD_UNDETECTED", true)
 stats.set_bool(mpx .. "AWD_ALLROUND", true)
 stats.set_bool(mpx .. "AWD_ELITETHEIF", true)
 stats.set_bool(mpx .. "AWD_PRO", true)
 stats.set_bool(mpx .. "AWD_SUPPORTACT", true)
 stats.set_bool(mpx .. "AWD_SHAFTED", true)
 stats.set_bool(mpx .. "AWD_COLLECTOR", true)
 stats.set_bool(mpx .. "AWD_DEADEYE", true)
 stats.set_bool(mpx .. "AWD_PISTOLSATDAWN", true)
 stats.set_bool(mpx .. "AWD_TRAFFICAVOI", true)
 stats.set_bool(mpx .. "AWD_CANTCATCHBRA", true)
 stats.set_bool(mpx .. "AWD_WIZHARD", true)
 stats.set_bool(mpx .. "AWD_APEESCAP", true)
 stats.set_bool(mpx .. "AWD_MONKEYKIND", true)
 stats.set_bool(mpx .. "AWD_AQUAAPE", true)
 stats.set_bool(mpx .. "AWD_KEEPFAITH", true)
 stats.set_bool(mpx .. "AWD_TRUELOVE", true)
 stats.set_bool(mpx .. "AWD_NEMESIS", true)
 stats.set_bool(mpx .. "AWD_FRIENDZONED", true)
 stats.set_bool(mpx .. "IAP_CHALLENGE_0", true)
 stats.set_bool(mpx .. "IAP_CHALLENGE_1", true)
 stats.set_bool(mpx .. "IAP_CHALLENGE_2", true)
 stats.set_bool(mpx .. "IAP_CHALLENGE_3", true)
 stats.set_bool(mpx .. "IAP_CHALLENGE_4", true)
 stats.set_bool(mpx .. "IAP_GOLD_TANK", true)
 stats.set_bool(mpx .. "SCGW_WON_NO_DEATHS", true)
for j = CIN2, HAS1 do globals.set_int(j, 1) end 
for i = 0, 4 do for j = 0, 63 do stats.set_bool_masked(mpx.."CASINOHSTPSTAT_BOOL"..i, true, j, mpx) end end 
for i = 0, 6 do for j = 0, 63 do stats.set_bool_masked(mpx.."CASINOPSTAT_BOOL"..i, true, j, mpx) end end end)
awdMenu:add_action("LS Summer SpecialDLC", function()
 stats.set_bool(mpx .. "AWD_KINGOFQUB3D", true)
 stats.set_bool(mpx .. "AWD_QUBISM", true)
 stats.set_bool(mpx .. "AWD_QUIBITS", true)
 stats.set_bool(mpx .. "AWD_GODOFQUB3D", true)
 stats.set_bool(mpx .. "AWD_ELEVENELEVEN", true)
 stats.set_bool(mpx .. "AWD_GOFOR11TH", true)
 stats.set_masked_int(mpx.."SU20PSTAT_INT", 1, 35, 8)
for i = 0, 1 do for j = 0, 63 do stats.set_bool_masked(mpx.."SU20PSTAT_BOOL"..i, true, j, mpx) stats.set_bool_masked(mpx.."SU20TATTOOSTAT_BOOL"..i, true, j, mpx) end end end)
awdMenu:add_action("Cayo PericoDLC", function()
 stats.set_bool(mpx .. "AWD_INTELGATHER", true)
 stats.set_bool(mpx .. "AWD_COMPOUNDINFILT", true)
 stats.set_bool(mpx .. "AWD_LOOT_FINDER", true)
 stats.set_bool(mpx .. "AWD_MAX_DISRUPT", true)
 stats.set_bool(mpx .. "AWD_THE_ISLAND_HEIST", true)
 stats.set_bool(mpx .. "AWD_GOING_ALONE", true)
 stats.set_bool(mpx .. "AWD_TEAM_WORK", true)
 stats.set_bool(mpx .. "AWD_MIXING_UP", true)
 stats.set_bool(mpx .. "AWD_TEAM_WORK", true)
 stats.set_bool(mpx .. "AWD_MIXING_UP", true)
 stats.set_bool(mpx .. "AWD_PRO_THIEF", true)
 stats.set_bool(mpx .. "AWD_CAT_BURGLAR", true)
 stats.set_bool(mpx .. "AWD_ONE_OF_THEM", true)
 stats.set_bool(mpx .. "AWD_GOLDEN_GUN", true)
 stats.set_bool(mpx .. "AWD_ELITE_THIEF", true)
 stats.set_bool(mpx .. "AWD_PROFESSIONAL", true)
 stats.set_bool(mpx .. "AWD_HELPING_OUT", true)
 stats.set_bool(mpx .. "AWD_COURIER", true)
 stats.set_bool(mpx .. "AWD_PARTY_VIBES", true)
 stats.set_bool(mpx .. "AWD_HELPING_HAND", true)
 stats.set_bool(mpx .. "AWD_ELEVENELEVEN", true)
 stats.set_bool(mpx .. "COMPLETE_H4_F_USING_VETIR", true)
 stats.set_bool(mpx .. "COMPLETE_H4_F_USING_LONGFIN", true)
 stats.set_bool(mpx .. "COMPLETE_H4_F_USING_ANNIH", true)
 stats.set_bool(mpx .. "COMPLETE_H4_F_USING_ALKONOS", true)
 stats.set_bool(mpx .. "COMPLETE_H4_F_USING_PATROLB", true)
 stats.set_int(mpx .. "AWD_LOSTANDFOUND", 500000)
 stats.set_int(mpx .. "AWD_SUNSET", 1800000)
 stats.set_int(mpx .. "AWD_TREASURE_HUNTER", 1000000)
 stats.set_int(mpx .. "AWD_WRECK_DIVING", 1000000)
 stats.set_int(mpx .. "AWD_KEINEMUSIK", 1800000)
 stats.set_int(mpx .. "AWD_PALMS_TRAX", 1800000)
 stats.set_int(mpx .. "AWD_MOODYMANN", 1800000)
 stats.set_int(mpx .. "AWD_FILL_YOUR_BAGS", 1000000000)
 stats.set_int(mpx .. "AWD_WELL_PREPARED", 80)
 stats.set_int(mpx .. "H4_H4_DJ_MISSIONS", -1)
 stats.set_int(mpx .. "H4CNF_APPROACH", -1)
 stats.set_int(mpx .. "H4_MISSIONS", -1)
 stats.set_int(mpx .. "H4_PLAYTHROUGH_STATUS", 100)
for i = 0, 2 do for j = 0, 63 do stats.set_bool_masked(mpx.."HISLANDPSTAT_BOOL"..i, true, j, mpx) end end end)
awdMenu:add_action("LS TunerDLC", function()
 stats.set_int(mpx .. "AWD_CAR_CLUB_MEM", 100)
 stats.set_int(mpx .. "AWD_SPRINTRACER", 50)
 stats.set_int(mpx .. "AWD_STREETRACER", 50)
 stats.set_int(mpx .. "AWD_PURSUITRACER", 50)
 stats.set_int(mpx .. "AWD_TEST_CAR", 240)
 stats.set_int(mpx .. "AWD_AUTO_SHOP", 50)	
 stats.set_int(mpx .. "AWD_GROUNDWORK", 40)
 stats.set_int(mpx .. "AWD_CAR_EXPORT", 100)
 stats.set_int(mpx .. "AWD_ROBBERY_CONTRACT", 100)
 stats.set_int(mpx .. "AWD_FACES_OF_DEATH", 100)
 stats.set_bool(mpx .. "AWD_CAR_CLUB", true)
 stats.set_bool(mpx .. "AWD_PRO_CAR_EXPORT", true)
 stats.set_bool(mpx .. "AWD_UNION_DEPOSITORY", true)
 stats.set_bool(mpx .. "AWD_MILITARY_CONVOY", true)
 stats.set_bool(mpx .. "AWD_FLEECA_BANK", true)
 stats.set_bool(mpx .. "AWD_FREIGHT_TRAIN", true)
 stats.set_bool(mpx .. "AWD_BOLINGBROKE_ASS", true)
 stats.set_bool(mpx .. "AWD_IAA_RAID", true)
 stats.set_bool(mpx .. "AWD_METH_JOB", true)
 stats.set_bool(mpx .. "AWD_BUNKER_RAID", true)
 stats.set_bool(mpx .. "AWD_STRAIGHT_TO_VIDEO", true)
 stats.set_bool(mpx .. "AWD_MONKEY_C_MONKEY_DO", true)
 stats.set_bool(mpx .. "AWD_TRAINED_TO_KILL", true)
 stats.set_bool(mpx .. "AWD_DIRECTOR", true)
for i = 0, 8 do for j = 0, 63 do stats.set_bool_masked(mpx.."TUNERPSTAT_BOOL"..i, true, j, mpx) end end end)
awdMenu:add_action("Contract DLC", function()
 stats.set_int(mpx .. "AWD_CONTRACTOR", 50)
 stats.set_int(mpx .. "AWD_COLD_CALLER", 50)
 stats.set_int(mpx .. "AWD_PRODUCER", 60)
 stats.set_int(mpx .. "FIXERTELEPHONEHITSCOMPL", 10)
 stats.set_int(mpx .. "PAYPHONE_BONUS_KILL_METHOD", 10)
 stats.set_int(mpx .. "PAYPHONE_BONUS_KILL_METHOD", -1)
 stats.set_int(mpx .. "FIXER_GENERAL_BS", -1)
 stats.set_int(mpx .. "FIXER_COMPLETED_BS", -1)
 stats.set_int(mpx .. "FIXER_STORY_BS", -1)
 stats.set_int(mpx .. "FIXER_STORY_STRAND", -1)
 stats.set_int(mpx .. "FIXER_STORY_COOLDOWN", -1)
 stats.set_int(mpx .. "FIXER_COUNT", 510)
 stats.set_int(mpx .. "FIXER_SC_VEH_RECOVERED", 85)
 stats.set_int(mpx .. "FIXER_SC_VAL_RECOVERED", 85)
 stats.set_int(mpx .. "FIXER_SC_GANG_TERMINATED", 85)
 stats.set_int(mpx .. "FIXER_SC_VIP_RESCUED", 85)
 stats.set_int(mpx .. "FIXER_SC_ASSETS_PROTECTED", 85)
 stats.set_int(mpx .. "FIXER_SC_EQ_DESTROYED", 85)
 stats.set_int(mpx .. "FIXER_EARNINGS", 19734860)
 stats.set_bool(mpx .. "AWD_TEEING_OFF", true)
 stats.set_bool(mpx .. "AWD_PARTY_NIGHT", true)
 stats.set_bool(mpx .. "AWD_BILLIONAIRE_GAMES", true)
 stats.set_bool(mpx .. "AWD_HOOD_PASS", true)
 stats.set_bool(mpx .. "AWD_STUDIO_TOUR", true)
 stats.set_bool(mpx .. "AWD_DONT_MESS_DRE", true)
 stats.set_bool(mpx .. "AWD_BACKUP", true)
 stats.set_bool(mpx .. "AWD_SHORTFRANK_1", true)
 stats.set_bool(mpx .. "AWD_SHORTFRANK_2", true)
 stats.set_bool(mpx .. "AWD_SHORTFRANK_3", true)
 stats.set_bool(mpx .. "AWD_CONTR_KILLER", true)
 stats.set_bool(mpx .. "AWD_DOGS_BEST_FRIEND", true)
 stats.set_bool(mpx .. "AWD_MUSIC_STUDIO", true)
 stats.set_bool(mpx .. "AWD_SHORTLAMAR_1", true)
 stats.set_bool(mpx .. "AWD_SHORTLAMAR_2", true)
 stats.set_bool(mpx .. "AWD_SHORTLAMAR_3", true)
 stats.set_bool(mpx .. "BS_FRANKLIN_DIALOGUE_0", true)
 stats.set_bool(mpx .. "BS_FRANKLIN_DIALOGUE_1", true)
 stats.set_bool(mpx .. "BS_FRANKLIN_DIALOGUE_2", true)
 stats.set_bool(mpx .. "BS_IMANI_D_APP_SETUP", true)
 stats.set_bool(mpx .. "BS_IMANI_D_APP_STRAND", true)
 stats.set_bool(mpx .. "BS_IMANI_D_APP_PARTY", true)
 stats.set_bool(mpx .. "BS_IMANI_D_APP_PARTY_2", true)
 stats.set_bool(mpx .. "BS_IMANI_D_APP_PARTY_F", true)
 stats.set_bool(mpx .. "BS_IMANI_D_APP_BILL", true)
 stats.set_bool(mpx .. "BS_IMANI_D_APP_BILL_2", true)
 stats.set_bool(mpx .. "BS_IMANI_D_APP_BILL_F", true)
 stats.set_bool(mpx .. "BS_IMANI_D_APP_HOOD", true)
 stats.set_bool(mpx .. "BS_IMANI_D_APP_HOOD_2", true)
 stats.set_bool(mpx .. "BS_IMANI_D_APP_HOOD_F", true)
for j = 0, 63 do stats.set_bool_masked(mpx.."FIXERPSTAT_BOOL0", true, j, mpx) stats.set_bool_masked(mpx.."FIXERPSTAT_BOOL1", true, j, mpx) stats.set_bool_masked(mpx.."FIXERTATTOOSTAT_BOOL0", true, j, mpx) end end)

awdMenu:add_action("Drug Wars DLC", function()
	stats.set_bool(mpx .. "AWD_ACELIQUOR", true)
	stats.set_bool(mpx .. "AWD_TRUCKAMBUSH", true)
	stats.set_bool(mpx .. "AWD_LOSTCAMPREV", true)
	stats.set_bool(mpx .. "AWD_ACIDTRIP", true)
	stats.set_bool(mpx .. "AWD_HIPPYRIVALS", true)
	stats.set_bool(mpx .. "AWD_TRAINCRASH", true)
	stats.set_bool(mpx .. "AWD_BACKUPB", true)
	stats.set_bool(mpx .. "AWD_GETSTARTED", true)
	stats.set_bool(mpx .. "AWD_CHEMREACTION", true)
	stats.set_bool(mpx .. "AAWD_WAREHODEFEND", true)
	stats.set_bool(mpx .. "AWD_ATTACKINVEST", true)
	stats.set_bool(mpx .. "AWD_RESCUECOOK", true)
	stats.set_bool(mpx .. "AWD_DRUGTRIPREHAB", true)
	stats.set_bool(mpx .. "AWD_CARGOPLANE", true)
	stats.set_bool(mpx .. "AWD_BACKUPB2", true)
	stats.set_bool(mpx .. "AWD_TAXISTAR", true)
	stats.set_int(mpx .. "AWD_RUNRABBITRUN", 5)
	stats.set_int(mpx .. "AWD_CALLME", 50)
	stats.set_int(mpx .. "AWD_CHEMCOMPOUNDS", 50)
end)


unlxMenu = uuMenu:add_submenu("Unlocks")
unlxMenu:add_action("LSCM Unlocks <--|", function()
for i = RS8, EMD5 do globals.set_float(i,100000) end end)
unlxMenu:add_action("Unlock all LSC Stuff/Paints", function()
 stats.set_int(mpx .. "CHAR_FM_CARMOD_1_UNLCK", -1)
 stats.set_int(mpx .. "CHAR_FM_CARMOD_2_UNLCK",-1)
 stats.set_int(mpx .. "CHAR_FM_CARMOD_3_UNLCK", -1)
 stats.set_int(mpx .. "CHAR_FM_CARMOD_4_UNLCK", -1)
 stats.set_int(mpx .. "CHAR_FM_CARMOD_5_UNLCK", -1)
 stats.set_int(mpx .. "CHAR_FM_CARMOD_6_UNLCK", -1)
 stats.set_int(mpx .. "CHAR_FM_CARMOD_7_UNLCK", -1)
 stats.set_int(mpx .. "AWD_WIN_CAPTURES", 50)
 stats.set_int(mpx .. "AWD_DROPOFF_CAP_PACKAGES", 100)
 stats.set_int(mpx .. "AWD_KILL_CARRIER_CAPTURE", 100)
 stats.set_int(mpx .. "AWD_FINISH_HEISTS", 50)
 stats.set_int(mpx .. "AWD_FINISH_HEIST_SETUP_JOB", 50)
 stats.set_int(mpx .. "AWD_NIGHTVISION_KILLS", 100)
 stats.set_int(mpx .. "AWD_WIN_LAST_TEAM_STANDINGS", 50)
 stats.set_int(mpx .. "AWD_ONLY_PLAYER_ALIVE_LTS", 50)
 stats.set_int(mpx .. "AWD_FMRALLYWONDRIVE", 25)
 stats.set_int(mpx .. "AWD_FMRALLYWONNAV", 25)
 stats.set_int(mpx .. "AWD_FMWINSEARACE", 25)
 stats.set_int(mpx .. "AWD_RACES_WON", 50)
 stats.set_int(mpx .. "MOST_FLIPS_IN_ONE_JUMP", 5)
 stats.set_int(mpx .. "MOST_SPINS_IN_ONE_JUMP", 5)
 stats.set_int(mpx .. "NUMBER_SLIPSTREAMS_IN_RACE", 100)
 stats.set_int(mpx .. "NUMBER_TURBO_STARTS_IN_RACE", 50)
 stats.set_int(mpx .. "RACES_WON", 50)
 stats.set_int(mpx .. "USJS_COMPLETED", 50)
 stats.set_int(mpx .. "AWD_FM_GTA_RACES_WON", 50)
 stats.set_int(mpx .. "AWD_FM_RACE_LAST_FIRST", 25)
 stats.set_int(mpx .. "AWD_FM_RACES_FASTEST_LAP", 50)
 stats.set_int(mpx .. "AWD_FMBASEJMP", 25)
 stats.set_int(mpx .. "AWD_FMWINAIRRACE", 25)
 stats.set_int("MPPLY_TOTAL_RACES_WON", 50)
end)
unlxMenu:add_action("Unlock Phone Contacts", function()
 stats.set_int(mpx .. "FM_ACT_PHN", -1)
 stats.set_int(mpx .. "FM_ACT_PH2", -1)
 stats.set_int(mpx .. "FM_ACT_PH3", -1)
 stats.set_int(mpx .. "FM_ACT_PH4", -1)
 stats.set_int(mpx .. "FM_ACT_PH5", -1)
 stats.set_int(mpx .. "FM_VEH_TX1", -1)
 stats.set_int(mpx .. "FM_ACT_PH6", -1)
 stats.set_int(mpx .. "FM_ACT_PH7", -1)
 stats.set_int(mpx .. "FM_ACT_PH8", -1)
 stats.set_int(mpx .. "FM_ACT_PH9", -1)
 stats.set_int(mpx .. "FM_ACT_PH10", -1)
 stats.set_int(mpx .. "FM_CUT_DONE", -1)
 stats.set_int(mpx .. "FM_CUT_DONE_2", -1)
end)



unlxMenu:add_action("Unlock Hidden Liveries", function()
 stats.set_int("MPPLY_XMASLIVERIES", -1) for i = 1, 20 do stats.set_int("MPPLY_XMASLIVERIES"..i, -1) end end)
unlxMenu:add_action("Unlock Bunker Research", function()
for j = 0, 63 do
	stats.set_bool_masked(mpx.."DLCGUNPSTAT_BOOL0", true, j, mpx)
	stats.set_bool_masked(mpx.."DLCGUNPSTAT_BOOL1", true, j, mpx)
	stats.set_bool_masked(mpx.."DLCGUNPSTAT_BOOL2", true, j, mpx)
	stats.set_bool_masked(mpx.."GUNTATPSTAT_BOOL0", true, j, mpx)
	stats.set_bool_masked(mpx.."GUNTATPSTAT_BOOL1", true, j, mpx)
	stats.set_bool_masked(mpx.."GUNTATPSTAT_BOOL2", true, j, mpx)
	stats.set_bool_masked(mpx.."GUNTATPSTAT_BOOL3", true, j, mpx)
	stats.set_bool_masked(mpx.."GUNTATPSTAT_BOOL4", true, j, mpx)
	stats.set_bool_masked(mpx.."GUNTATPSTAT_BOOL5", true, j, mpx)
end
local bitSize = 8 for j = 0, 64 / bitSize - 1 do
 stats.set_masked_int(mpx.."GUNRPSTAT_INT0", -1, j * bitSize, bitSize)
 stats.set_masked_int(mpx.."GUNRPSTAT_INT1", -1, j * bitSize, bitSize)
 stats.set_masked_int(mpx.."GUNRPSTAT_INT2", -1, j * bitSize, bitSize)
 stats.set_masked_int(mpx.."GUNRPSTAT_INT3", -1, j * bitSize, bitSize)
 stats.set_masked_int(mpx.."GUNRPSTAT_INT4", -1, j * bitSize, bitSize)
 stats.set_masked_int(mpx.."GUNRPSTAT_INT5", -1, j * bitSize, bitSize)
 stats.set_masked_int(mpx.."GUNRPSTAT_INT6", -1, j * bitSize, bitSize)
 stats.set_masked_int(mpx.."GUNRPSTAT_INT7", -1, j * bitSize, bitSize)
 stats.set_masked_int(mpx.."GUNRPSTAT_INT8", -1, j * bitSize, bitSize)
 stats.set_masked_int(mpx.."GUNRPSTAT_INT9", -1, j * bitSize, bitSize)
 stats.set_masked_int(mpx.."GUNRPSTAT_INT10", -1, j * bitSize, bitSize)
 stats.set_masked_int(mpx.."GUNRPSTAT_INT11", -1, j * bitSize, bitSize)
 stats.set_masked_int(mpx.."GUNRPSTAT_INT12", -1, j * bitSize, bitSize)
	end
end)
unlxMenu:add_action("Unlock Trade Prices", function()
 stats.set_int(mpx .. "GANGOPS_FLOW_BITSET_MISS0", -1)
 stats.set_int(mpx .. "LFETIME_HANGAR_BUY_UNDETAK", 42)
 stats.set_int(mpx .. "LFETIME_HANGAR_BUY_COMPLET", 42)
 stats.set_int(mpx .. "AT_FLOW_IMPEXP_NUM", 32)
 stats.set_int(mpx .. "AT_FLOW_VEHICLE_BS", -1)
 stats.set_int(mpx .. "WVM_FLOW_VEHICLE_BS", -1)
 stats.set_int(mpx .. "H3_BOARD_DIALOGUE0", -1)
 stats.set_int(mpx .. "H3_BOARD_DIALOGUE1", -1)
 stats.set_int(mpx .. "H3_BOARD_DIALOGUE2", -1)
 stats.set_int(mpx .. "H3_VEHICLESUSED", -1)
 stats.set_int(mpx .. "WAM_FLOW_VEHICLE_BS", -1)
 stats.set_bool(mpx .. "HELP_VEHUNHEISTISL", true)
 stats.set_bool(mpx .. "HELP_VEHICLESUNLOCK", true)
 stats.set_bool(mpx .. "HELP_VETO", true)
 stats.set_bool(mpx .. "HELP_VETO2", true)
 stats.set_bool(mpx .. "HELP_ITALIRSX", true)
 stats.set_bool(mpx .. "HELP_BRIOSO2", true)
 stats.set_bool(mpx .. "HELP_MANCHEZ2", true)
 stats.set_bool(mpx .. "HELP_SLAMTRUCK", true)
 stats.set_bool(mpx .. "HELP_VETIR", true)
 stats.set_bool(mpx .. "HELP_SQUADDIE", true)
 stats.set_bool(mpx .. "HELP_DINGY5", true)
 stats.set_bool(mpx .. "HELP_VERUS", true)
 stats.set_bool(mpx .. "HELP_WEEVIL", true)
 stats.set_bool(mpx .. "HELP_VEHUNTUNER", true)
 stats.set_bool(mpx .. "FIXER_VEH_HELP", true)
 stats.set_bool(mpx .. "HELP_DOMINATOR7", true)
 stats.set_bool(mpx .. "HELP_JESTER4", true)
 stats.set_bool(mpx .. "HELP_FUTO2", true)
 stats.set_bool(mpx .. "HELP_DOMINATOR8", true)
 stats.set_bool(mpx .. "HELP_PREVION", true)
 stats.set_bool(mpx .. "HELP_GROWLER", true)
 stats.set_bool(mpx .. "HELP_COMET6", true)
 stats.set_bool(mpx .. "HELP_VECTRE", true)
 stats.set_bool(mpx .. "HELP_SULTAN3", true)
 stats.set_bool(mpx .. "HELP_CYPHER", true)
 stats.set_bool(mpx .. "HELP_VEHUNFIXER", true)
 stats.set_bool(mpx .. "COMPLETE_H4_F_USING_VETIR", true)
 stats.set_bool(mpx .. "COMPLETE_H4_F_USING_LONGFIN", true)
 stats.set_bool(mpx .. "COMPLETE_H4_F_USING_ANNIH", true)
 stats.set_bool(mpx .. "COMPLETE_H4_F_USING_ALKONOS", true)
 stats.set_bool(mpx .. "COMPLETE_H4_F_USING_PATROLB", true)
if (stats.get_masked_int(mpx.."BUSINESSBATPSTAT_INT379", 0, 8) < 5) then stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT379", 5, 0, 8) end stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT380", 20,40, 8) end)
unlxMenu:add_action("Flight School", function() stats.set_int("MPPLY_NUM_CAPTURES_CREATED", 100) for i = 0, 9 do stats.set_int("MPPLY_PILOT_SCHOOL_MEDAL_"..i, -1) stats.set_int(mpx.. "PILOT_SCHOOL_MEDAL_"..i, -1) stats.set_bool(mpx .. "PILOT_ASPASSEDLESSON_"..i, true) end end)
unlxMenu:add_action("Shooting Range Unlocks", function() stats.set_int(mpx .. "SR_HIGHSCORE_1", 690) stats.set_int(mpx .. "SR_HIGHSCORE_2", 1860) stats.set_int(mpx .. "SR_HIGHSCORE_3", 2690) stats.set_int(mpx .. "SR_HIGHSCORE_4", 2660) stats.set_int(mpx .. "SR_HIGHSCORE_5", 2650) stats.set_int(mpx .. "SR_HIGHSCORE_6", 450) stats.set_int(mpx .. "SR_TARGETS_HIT", 269) stats.set_int(mpx .. "SR_WEAPON_BIT_SET", -1) stats.set_bool(mpx .. "SR_TIER_1_REWARD", true) stats.set_bool(mpx .. "SR_TIER_3_REWARD", true) stats.set_bool(mpx .. "SR_INCREASE_THROW_CAP", true) end)
unlxMenu:add_action("Vanilla Unicorn ", function() stats.set_int(mpx .. "LAP_DANCED_BOUGHT", 0) stats.set_int(mpx .. "LAP_DANCED_BOUGHT", 5) stats.set_int(mpx .. "LAP_DANCED_BOUGHT", 10) stats.set_int(mpx .. "LAP_DANCED_BOUGHT", 15) stats.set_int(mpx .. "LAP_DANCED_BOUGHT", 25) stats.set_int(mpx .. "PROSTITUTES_FREQUENTED", 1000) end)
unlxMenu:add_action("Unlock Tattoos", function() stats.set_int(mpx .. "TATTOO_FM_CURRENT_32", -1) for i = 0, 47 do stats.set_int(mpx .. "TATTOO_FM_UNLOCKS_"..i, -1) end end)
unlxMenu:add_array_item("Bunker Research", {"Speed Up", "Reset Speed"}, function() return xox_26 end, function(value) if value == 1 then globals.set_int(BSU1, 1) globals.set_int(EBD11, 1) globals.set_int(SPD1, 1) globals.set_int(262145+21759, 1) globals.set_int(MC1, 0) globals.set_int(MAR4, 0) menu.trigger_bunker_research() elseif value == 2 then globals.set_int(BSU1, 60) globals.set_int(SPD1, 45000) globals.set_int(EBD11, 300000) globals.set_int(262145+21759, 45000) globals.set_int(MC1, 2) globals.set_int(MAR4, 1) end xox_26 = value end)
PBMenu = unlxMenu:add_submenu("Packed Bools Unlocks")
PBMenu:add_action("ARENAWARSPSTAT_BOOL", function()	for j = 0, 63 do for i = 0, 8 do stats.set_bool_masked(mpx.."ARENAWARSPSTAT_BOOL"..i, true, j, mpx) end end end)
PBMenu:add_action("BUSINESSBATPSTAT_BOOL", function() for j = 0, 63 do for b = 0, 1 do stats.set_bool_masked(mpx.."BUSINESSBATPSTAT_BOOL"..b, true, j, mpx) end end end)
PBMenu:add_action("CASINOHSTPSTAT_BOOL", function()	for j = 0, 63 do for f = 0, 4 do stats.set_bool_masked(mpx.."CASINOHSTPSTAT_BOOL"..f, true, j, mpx) end end end)
PBMenu:add_action("CASINOPSTAT_BOOL", function() for j = 0, 63 do for h = 0, 6 do stats.set_bool_masked(mpx.."CASINOPSTAT_BOOL"..h, true, j, mpx) end end end)
PBMenu:add_action("DLCSMUGCHARPSTAT_BOOL", function() for j = 0, 63 do stats.set_bool_masked(mpx.."DLCSMUGCHARPSTAT_BOOL0", true, j, mpx) end end)
PBMenu:add_action("DLCGUNPSTAT_BOOL", function() for j = 0, 63 do for c = 0, 2 do stats.set_bool_masked(mpx.."DLCGUNPSTAT_BOOL"..c, true, j, mpx) end end end)
PBMenu:add_action("DLCBIKEPSTAT_BOOL", function() for j = 0, 63 do for c = 0, 2 do stats.set_bool_masked(mpx.."DLCBIKEPSTAT_BOOL"..c, true, j, mpx) end end end)
PBMenu:add_action("FIXERTATTOOSTAT_BOOL", function() for j = 0, 63 do stats.set_bool_masked(mpx.."FIXERTATTOOSTAT_BOOL0", true, j, mpx) end end)
PBMenu:add_action("FIXERPSTAT_BOOL", function()	for j = 0, 63 do for b = 0, 1 do stats.set_bool_masked(mpx.."FIXERPSTAT_BOOL"..b, true, j, mpx) end end end)
PBMenu:add_action("GEN9PSTAT_BOOL", function()	for j = 0, 63 do for b = 0, 1 do stats.set_bool_masked(mpx.."GEN9PSTAT_BOOL"..b, true, j, mpx) end end end)
PBMenu:add_action("GANGOPSPSTAT_BOOL", function() for j = 0, 63 do stats.set_bool_masked(mpx.."GANGOPSPSTAT_BOOL0", true, j, mpx) end end) 
PBMenu:add_action("GUNTATPSTAT_BOOL", function() for j = 0, 63 do for g = 0, 5 do stats.set_bool_masked(mpx.."GUNTATPSTAT_BOOL"..g, true, j, mpx) end end end)
PBMenu:add_action("HEIST3TATTOOSTAT_BOOL", function() for j = 0, 63 do for b = 0, 1 do stats.set_bool_masked(mpx.."HEIST3TATTOOSTAT_BOOL"..b, true, j, mpx) end end end)
PBMenu:add_action("HISLANDPSTAT_BOOL", function() for j = 0, 63 do for c = 0, 2 do stats.set_bool_masked(mpx.."HISLANDPSTAT_BOOL"..c, true, j, mpx) end end end)
PBMenu:add_action("MP_NGDLCPSTAT_BOOL", function() for j = 0, 63 do stats.set_bool_masked(mpx.."MP_NGDLCPSTAT_BOOL0", true, j, mpx) end end)
PBMenu:add_action("MP_NGPSTAT_BOOL", function()	for j = 0, 63 do stats.set_bool_masked(mpx.."MP_NGPSTAT_BOOL0", true, j, mpx) end end)
PBMenu:add_action("MP_PSTAT_BOOL", function() for j = 0, 63 do for c = 0, 2 do stats.set_bool_masked(mpx.."MP_PSTAT_BOOL"..c, true, j, mpx) end end end)
PBMenu:add_action("MP_TUPSTAT_BOOL", function()	for j = 0, 63 do stats.set_bool_masked(mpx.."MP_TUPSTAT_BOOL0", true, j, mpx) end end)
PBMenu:add_action("NGDLCPSTAT_BOOL", function()	for j = 0, 63 do for e = 0, 3 do stats.set_bool_masked(mpx.."NGDLCPSTAT_BOOL"..e, true, j, mpx) end end end)
PBMenu:add_action("NGTATPSTAT_BOOL", function()	for j = 0, 63 do for g = 0, 5 do stats.set_bool_masked(mpx.."NGTATPSTAT_BOOL"..g, true, j, mpx) end end end) 
PBMenu:add_action("NGPSTAT_BOOL", function() for j = 0, 63 do for b = 0, 1 do stats.set_bool_masked(mpx.."NGPSTAT_BOOL"..b, true, j, mpx) end end end)
PBMenu:add_action("PSTAT_BOOL", function() for j = 0, 63 do for d = 1, 2 do stats.set_bool_masked(mpx.."PSTAT_BOOL"..d, true, j, mpx) end end end) 
PBMenu:add_action("SU20TATTOOSTAT_BOOL", function()	for j = 0, 63 do for b = 0, 1 do stats.set_bool_masked(mpx.."SU20TATTOOSTAT_BOOL"..b, true, j, mpx) end end end)
PBMenu:add_action("SU20PSTAT_BOOL", function() for j = 0, 63 do for b = 0, 1 do stats.set_bool_masked(mpx.."SU20PSTAT_BOOL"..b, true, j, mpx) end end end)
PBMenu:add_action("TUNERPSTAT_BOOL", function()	for j = 0, 63 do for i = 0, 8 do stats.set_bool_masked(mpx.."TUNERPSTAT_BOOL"..i, true, j, mpx) end end end)
PBMenu:add_action("TUPSTAT_BOOL", function() for j = 0, 63 do for z = 0, 11 do stats.set_bool_masked(mpx.."TUPSTAT_BOOL"..z, true, j, mpx) end end end)
PBMenu:add_action("DLC12022PSTAT_BOOL", function() for j = 0, 63 do for z = 0, 7 do stats.set_bool_masked(mpx.."DLC12022PSTAT_BOOL"..z, true, j, mpx) end end end)
PBMenu:add_action("DLC22022PSTAT_BOOL", function() for j = 0, 63 do for z = 0, 4 do stats.set_bool_masked(mpx.."DLC22022PSTAT_BOOL"..z, true, j) end end end)
tempMenu = unlxMenu:add_submenu("Temporary Unlocks")
local function RPB(e) if not localplayer then return end if e then globals.set_int(RRC1, 2) globals.set_int(IHE, 90) globals.set_int(IHE, 1) else globals.set_int(RRC1, 0) globals.set_int(IHE, 0) end end tempMenu:add_toggle("Returning Player Bonus", function() return e31 end, function() e31 = not e31 RPB(e31) end)
tempMenu:add_toggle("DrugWars DLC Cloths", function() return globals.get_boolean(CSP20) end, function(value) for i = CSP20, APMO3 do globals.set_boolean(i, value) end end)
tempMenu:add_toggle("Dripfeed Vehicles Unlock", function() return globals.get_boolean(AWA2) end, function(value) for i = AWA2, LT5 do globals.set_boolean(i, value) end end)
tempMenu:add_toggle("Restore Deleted Vehicles", function() return globals.get_boolean(262145+35167) end, function(value) for i = 1, #veharray do globals.set_boolean(veharray[i], value) end end)
tempMenu:add_toggle("M16 Unlock", function() return globals.get_boolean(CP5) end, function(value) globals.set_boolean(CP5, value) end)
tempMenu:add_toggle("Contract DLC Gunskins", function()	return globals.get_boolean(HAS2) end, function(value) globals.set_boolean(HAS2, value) globals.set_boolean(RLC1, value) end)
tempMenu:add_toggle("ContractDLC Animal Masks", function() return globals.get_boolean(VU3) end, function(value) for i = VU3, GUV1 do globals.set_boolean(i, value) end end)
tempMenu:add_toggle("ContractDLC DJ Cloths", function() return globals.get_boolean(LCM1) end, function(value) globals.set_boolean(LCM1, value) globals.set_boolean(HA6, value) globals.set_boolean(DRD1, value) end)
local function AMCS(e) if not localplayer then return end if e then globals.set_int(PSU2, -1) globals.set_int(PSU7, -1) globals.set_int(GSM1, -1) globals.set_int(RV1, -1)	else globals.set_int(PSU2, 0) globals.set_int(PSU7, 0) globals.set_int(GSM1, 0) globals.set_int(RV1, 0) end end tempMenu:add_toggle("Ace Mask Casino Store", function() return e32 end, function() e32 = not e32 AMCS(e32) end)
local function PCS(e) if not localplayer then return end if e then for i = XM35, EBD17 do globals.set_int(i, -1) end globals.set_int(AWO2, -1) globals.set_int(LUN2, -1) else for i = XM35, EBD17 do globals.set_int(i, 0) end globals.set_int(AWO2, 0) globals.set_int(LUN2, 0) end end tempMenu:add_toggle("Paintings Casino Store", function() return e33 end, function() e33 = not e33 PCS(e33) end)
local function UnA(e) if not localplayer then return end if e then globals.set_int(IHE, 90) else globals.set_int(IHE, 0) end end tempMenu:add_toggle("Up-n-Atomizer", function() return e34 end, function() e34 = not e34 UnA(e34) end)
tempMenu:add_toggle("Festive tint", function() return globals.get_boolean(ID5) end, function(value) globals.set_boolean(ID5, value) end)
tempMenu:add_toggle("Valentine Unlocks", function() return globals.get_boolean(NM9) end, function(value) globals.set_boolean(NM9, value) globals.set_boolean(VS5, value) globals.set_boolean(SUP3, value) globals.set_boolean(SAH1, value) globals.set_boolean(XM37, value) globals.set_boolean(SUP3, value) globals.set_boolean(MAR3, value) globals.set_boolean(CRC1, value) end)
local function J4A(e) if not localplayer then return end if e then globals.set_int(ID2, 1) for i = XM25, TJC1 do globals.set_int(i, 1) end for j = BS1, DOCT2 do globals.set_int(j, 1) end else globals.set_int(ID2, 0) for i = XM25, 270419 do globals.set_int(i, 0) end for j = BS1, DOCT2 do globals.set_int(j, 0) end end end tempMenu:add_toggle("Independence Day Unlocks", function() return e38 end, function() e38 = not e38 J4A(e38) end)
tempMenu:add_toggle("Halloween Unlocks", function() return globals.get_boolean(262145+12195) end, function(value) globals.set_boolean(262145+12195,value) globals.set_boolean(FIX4,value) globals.set_boolean(XM13,value) globals.set_boolean(EMD14,value) globals.set_boolean(TEB1,value) globals.set_boolean(APIN5,value) globals.set_boolean(APIN5,value) globals.set_boolean(NIH5,value) globals.set_boolean(RRC3,value) globals.set_boolean(FIX2,value) globals.set_boolean(RB1,value) globals.set_boolean(PC2,value) end)
tempMenu:add_toggle("X-mas Unlocks", function() return globals.get_boolean(SH1) end, function(value) globals.set_boolean(SH1,value) globals.set_boolean(AC2,value) globals.set_boolean(ACL1,value) globals.set_boolean(EMD4,value) globals.set_boolean(PAH1,value) globals.set_boolean(RCP2,value) globals.set_boolean(VHR1,value) globals.set_boolean(SAV1,value) globals.set_boolean(EBD1,value) globals.set_boolean(AR2,value) globals.set_boolean(HA5,value) globals.set_boolean(UNA2,value) globals.set_boolean(DT2,value) globals.set_boolean(EMD12,value) globals.set_boolean(XM29,value) globals.set_boolean(HA8,value) globals.set_boolean(NORS1,value) globals.set_boolean(RF10,value) globals.set_boolean(NH1,value) globals.set_boolean(RB5,value) globals.set_boolean(AWR3,value) globals.set_boolean(FIX3,value) globals.set_boolean(APIN2,value) globals.set_boolean(BSM1,value) globals.set_boolean(CA5,value) globals.set_boolean(EBD16,value) globals.set_boolean(RPN1,value) globals.set_boolean(CC2,value) globals.set_boolean(LOM1,value) globals.set_boolean(APIN7,value) globals.set_boolean(CT1,value) globals.set_boolean(RRC2,value) globals.set_boolean(MIR1,value) globals.set_boolean(KT2,value) globals.set_boolean(XM5,value) globals.set_boolean(PC4,value) globals.set_boolean(MMT1,value) globals.set_boolean(XM39,value) globals.set_boolean(EBD7,value) globals.set_boolean(AC1,value) globals.set_boolean(CA6,value) globals.set_boolean(WB2,value) globals.set_boolean(MS4,value) for i = MS4, EMD12 do globals.set_boolean(i,value) end for i = CSP2, MS1 do globals.set_boolean(i, value) end globals.set_boolean(XM26,value) globals.set_boolean(DOBY,value) end) 
tempMenu:add_toggle("Toggle Snow", function() return globals.get_boolean(XM34) end, function(value) globals.set_boolean(XM34,value) end)
tempMenu:add_toggle("Unlock Caps", function() return globals.get_boolean(AR1) end, function(value) globals.set_boolean(AR1,value) globals.set_boolean(RUN1,value) globals.set_boolean(BRE2,value) globals.set_boolean(CA8,value) globals.set_boolean(XM3,value) globals.set_boolean(CCT2,value) globals.set_boolean(XM21,value) globals.set_boolean(XM7,value) end)
tempMenu:add_toggle("Unlock Hats", function() return globals.get_boolean(JEV1) end, function(value) for i = JEV1, COV1 do globals.set_boolean(i,value) end end)
tempMenu:add_toggle("Unlock Brand Shirts", function() return globals.get_boolean(SCM1) end, function(value) for i = SCM1, APFH do globals.set_boolean(i,value) end for j = MAR2, MC2 do globals.set_boolean(j,value) end for k = XM15, NRC1 do globals.set_boolean(k,value) end for l = BS13, RLC7 do globals.set_boolean(l,value) end globals.set_boolean(SN1,value) globals.set_boolean(CSP5,value) globals.set_boolean(RF8,value) globals.set_boolean(RSU2,value) globals.set_boolean(CCP1,value) end)
tempMenu:add_toggle("Unlock Knock Offs T-shirts", function() return globals.get_boolean(XM33) end, function(value) for i = XM33, DR1 do globals.set_boolean(i,value)	end end)
tempMenu:add_toggle("Unlock Manufactures Clothing", function() return globals.get_boolean(RLC15) end, function(value) globals.set_boolean(RLC15,value) for i = HAG5, EMD3 do globals.set_boolean(i,value)	end end)
tempMenu:add_toggle("Unlock Movie Shirts", function() return globals.get_boolean(IS1) end, function(value) globals.set_boolean(VS4,value) for i = IS1, HAG3 do globals.set_boolean(i,value) end for j = NM2, MAR1 do globals.set_boolean(j,value) end end)
tempMenu:add_toggle("Unlock Radio Station T-shirts", function() return globals.get_boolean(XM22) end, function(value) globals.set_boolean(XM22,value) globals.set_boolean(BRE3,value) globals.set_boolean(MU1,value) globals.set_boolean(APMO,value) globals.set_boolean(RF8,value) globals.set_boolean(CCV1,value) globals.set_boolean(XM31,value) for i = PSU3, XM1 do globals.set_boolean(i,value) end end)
tempMenu:add_toggle("Unlock Clubs T-shirts", function() return globals.get_boolean(APIN1) end, function(value) for i = APIN1, AR3 do globals.set_boolean(i,value)	end end)
tempMenu:add_toggle("Unlock DJ T-shirts", function() return globals.get_boolean(FIX5) end, function(value) for i = FIX5, XM12 do globals.set_boolean(i,value)	end end)
tempMenu:add_toggle("Unlock Hoodies", function() return globals.get_boolean(RLC8) end, function(value) globals.set_boolean(RLC8,value) globals.set_boolean(ACL5,value) globals.set_boolean(EMD9,value) globals.set_boolean(SH7,value) globals.set_boolean(CAP1,value) globals.set_boolean(PAP1,value) globals.set_boolean(EBD13,value) globals.set_boolean(LT3,value) end)
tempMenu:add_toggle("Unlock Shirts", function() return globals.get_boolean(PC1) end, function(value) globals.set_boolean(PC1,value) globals.set_boolean(SH5,value) globals.set_boolean(RF7,value) globals.set_boolean(CGP1,value) globals.set_boolean(EBD6,value) globals.set_boolean(HH1,value) globals.set_boolean(RLC5,value) globals.set_boolean(EMD6,value) globals.set_boolean(EBD10,value) globals.set_boolean(RF5,value) globals.set_boolean(SH9,value) globals.set_boolean(SH12,value) for i = LT3, SH13 do globals.set_boolean(i,value) end end)
tempMenu:add_toggle("Unlock Wireframe Bodysuits", function() return globals.get_boolean(RS4) end, function(value) for i = RS4, VS3 do globals.set_boolean(i,value)	end end)
tempMenu:add_toggle("Unlock Stunt Suits", function() return globals.get_boolean(MS4) end, function(value) for i = MS4, EB1 do globals.set_boolean(i,value)	end end)
tempMenu:add_toggle("Arena Clothing", function() return globals.get_boolean(PSU2) end, function(value) for i = PSU2, PSU7 do globals.set_boolean(i,value)	end end)
tempMenu:add_toggle("Arcade and Casino Clothing", function() return globals.get_boolean(PHV1) end, function(value) for i = PHV1, TEB2 do globals.set_boolean(i,value) end for j = CIN2, HAS1 do globals.set_boolean(j,value) end end)
tempMenu:add_toggle("LS Summer DLC Clothing", function() return globals.get_boolean(CA2) end, function(value) for i = CA2, PCV1 do globals.set_boolean(i,value) end end)
tempMenu:add_toggle("LS Tuners DLC Clothing", function() return globals.get_boolean(NAV1) end, function(value) globals.set_int(NAV1,1) for i = CACT3, HA3 do globals.set_boolean(i,value) end for j = TTM1, BS8 do globals.set_boolean(j,value) end end)
tempMenu:add_toggle("Cayo Perico DLC Clothing", function() return globals.get_boolean(RE2) end, function(value) for i = RE2, LOBS3 do globals.set_boolean(i,value) end for j = AWR4, RB2 do globals.set_boolean(j,value) end for l = HAG6, HO8 do globals.set_boolean(l,value) end end)
tempMenu:add_int_range("Get All Clothing", 1, 1, 4, function() return 1 end, function(CltH)

	if CltH == 1 then
 stats.set_int(mpx .. "DCTL_WINS", 500)
 stats.set_int(mpx .. "DCTL_PLAY_COUNT", 750)
 stats.set_bool(mpx .. "FILM4SHIRTUNLOCK", true)
 stats.set_bool(mpx .. "FILM5SHIRTUNLOCK", true)
 stats.set_bool(mpx .. "FILM6SHIRTUNLOCK", true)
 stats.set_bool(mpx .. "FILM7SHIRTUNLOCK", true)
 stats.set_bool(mpx .. "FILM8SHIRTUNLOCK", true)
 stats.set_bool(mpx .. "FILM9SHIRTUNLOCK", true)
 stats.set_bool(mpx .. "ACCOUNTANTSHIRTUNLOCK", true)
 stats.set_bool(mpx .. "UNLOCK_RACE_HIPSTER_TSHIRT", true)
 stats.set_bool(mpx .. "UNLOCK_DM_HIPSTER_TSHIRT", true)
 stats.set_bool(mpx .. "UNLOCK_HIPSTER_TSHIRT_DOG", true)
 stats.set_bool(mpx .. "UNLOCK_HIPSTER_TSHIRT_VINYL", true)
 stats.set_bool(mpx .. "UNLOCK_HIPSTER_TSHIRT_MESS", true)
 stats.set_bool(mpx .. "BAHAMAMAMASHIRTUNLOCK", true)
 stats.set_bool(mpx .. "DRONESHIRTUNLOCK", true)
 stats.set_bool(mpx .. "GROTTISHIRTUNLOCK", true)
 stats.set_bool(mpx .. "GOLFSHIRTUNLOCK", true)
 stats.set_bool(mpx .. "MAISONETTESHIRTUNLOCK", true)
 stats.set_bool(mpx .. "MANOPAUSESHIRTUNLOCK", true)
 stats.set_bool(mpx .. "MELTDOWNSHIRTUNLOCK", true)
 stats.set_bool(mpx .. "PACIFICBLUFFSSHIRTUNLOCK", true)
 stats.set_bool(mpx .. "PROLAPSSHIRTUNLOCK", true)
 stats.set_bool(mpx .. "TENNISSHIRTUNLOCK", true)
 stats.set_bool(mpx .. "TOESHOESSHIRTUNLOCK", true)
 stats.set_bool(mpx .. "VANILLAUNICORNSHIRTUNLOCK", true)
 stats.set_bool(mpx .. "MARLOWESHIRTUNLOCK", true)
 stats.set_bool(mpx .. "CRESTSHIRTUNLOCK", true)
	for i = 0, 250 do
 stats.set_int(mpx .. "DLC_APPAREL_ACQUIRED_"..i, -1)
	end
	elseif CltH == 2 then
	for i = 1, 6 do
 for k = 1, 10 do
 for j = 1, 7 do
 stats.set_int(mpx .. "CLTHS_ACQUIRED_BERD", -1)
 stats.set_int(mpx .. "CLTHS_ACQUIRED_DECL", -1)
 stats.set_int(mpx .. "CLTHS_ACQUIRED_FEET", -1)
 stats.set_int(mpx .. "CLTHS_ACQUIRED_JBIB", -1)
 stats.set_int(mpx .. "CLTHS_ACQUIRED_LEGS", -1)
 stats.set_int(mpx .. "CLTHS_ACQUIRED_OUTFIT", -1)
 stats.set_int(mpx .. "CLTHS_ACQUIRED_PROPS", -1)
 stats.set_int(mpx .. "CLTHS_ACQUIRED_SPECIAL", -1)
 stats.set_int(mpx .. "CLTHS_ACQUIRED_SPECIAL2", -1)
 stats.set_int(mpx .. "CLTHS_ACQUIRED_SPECIAL2_1", -1)
 stats.set_int(mpx .. "CLTHS_ACQUIRED_TORSO", -1)
 stats.set_int(mpx .. "CLTHS_ACQUIRED_TEETH", -1)
 stats.set_int(mpx .. "CLTHS_ACQUIRED_TEETH_1", -1)
 stats.set_int(mpx .. "CLTHS_ACQUIRED_TEETH_2", -1)
 stats.set_int(mpx .. "CLTHS_ACQUIRED_BERD_"..i, -1)
 stats.set_int(mpx .. "CLTHS_ACQUIRED_FEET_"..j, -1)
 stats.set_int(mpx .. "CLTHS_ACQUIRED_JBIB_"..j, -1)
 stats.set_int(mpx .. "CLTHS_ACQUIRED_LEGS_"..j, -1)
 stats.set_int(mpx .. "CLTHS_ACQUIRED_SPECIAL_"..j, -1)
 stats.set_int(mpx .. "CLTHS_ACQUIRED_PROPS_"..k, -1)
 stats.set_int(mpx .. "CLTHS_AVAILABLE_DECL", -1)
 stats.set_int(mpx .. "CLTHS_AVAILABLE_FEET", -1)
 stats.set_int(mpx .. "CLTHS_AVAILABLE_HAIR", -1)
 stats.set_int(mpx .. "CLTHS_AVAILABLE_JBIB", -1)
 stats.set_int(mpx .. "CLTHS_AVAILABLE_LEGS", -1)
 stats.set_int(mpx .. "CLTHS_AVAILABLE_BERD", -1)
 stats.set_int(mpx .. "CLTHS_AVAILABLE_OUTFIT", -1)
 stats.set_int(mpx .. "CLTHS_AVAILABLE_PROPS", -1)
 stats.set_int(mpx .. "CLTHS_AVAILABLE_SPECIAL", -1)
 stats.set_int(mpx .. "CLTHS_AVAILABLE_SPECIAL2", -1)
 stats.set_int(mpx .. "CLTHS_AVAILABLE_SPECIAL2_1", -1)
 stats.set_int(mpx .. "CLTHS_AVAILABLE_TEETH", -1)
 stats.set_int(mpx .. "CLTHS_AVAILABLE_TEETH_1", -1)
 stats.set_int(mpx .. "CLTHS_AVAILABLE_TEETH_2", -1)
 stats.set_int(mpx .. "CLTHS_AVAILABLE_TORSO", -1)
 stats.set_int(mpx .. "CLTHS_AVAILABLE_BERD_"..j, -1)
 stats.set_int(mpx .. "CLTHS_AVAILABLE_FEET_"..j, -1)
 stats.set_int(mpx .. "CLTHS_AVAILABLE_HAIR_"..j, -1)
 stats.set_int(mpx .. "CLTHS_AVAILABLE_JBIB_"..j, -1)
 stats.set_int(mpx .. "CLTHS_AVAILABLE_LEGS_"..j, -1)
 stats.set_int(mpx .. "CLTHS_AVAILABLE_SPECIAL_"..j, -1)
 stats.set_int(mpx .. "CLTHS_AVAILABLE_PROPS_"..k, -1)
 stats.set_int(mpx .. "CLTHS_USED_HAIR", -1)
 stats.set_int(mpx .. "CLTHS_USED_HAIR_"..j, -1)
 stats.set_int(mpx .. "CLTHS_USED_JBIB", -1)
 stats.set_int(mpx .. "CLTHS_USED_JBIB_"..j, -1)
 stats.set_int(mpx .. "CLTHS_USED_LEGS", -1)
 stats.set_int(mpx .. "CLTHS_USED_LEGS_"..j, -1)
 stats.set_int(mpx .. "CLTHS_USED_FEET", -1)
 stats.set_int(mpx .. "CLTHS_USED_FEET_"..j, -1)
 stats.set_int(mpx .. "CLTHS_USED_BERD", -1)
 stats.set_int(mpx .. "CLTHS_USED_BERD_"..j, -1)
 stats.set_int(mpx .. "CLTHS_USED_PROPS", -1)
 stats.set_int(mpx .. "CLTHS_USED_PROPS_"..k, -1)
 stats.set_int(mpx .. "CLTHS_USED_OUTFIT", -1)
 stats.set_int(mpx .. "CLTHS_USED_TORSO", -1)
 stats.set_int(mpx .. "CLTHS_USED_SPECIAL", -1)
 stats.set_int(mpx .. "CLTHS_USED_SPECIAL_"..j, -1)
 stats.set_int(mpx .. "CLTHS_USED_SPECIAL2", -1)
 stats.set_int(mpx .. "CLTHS_USED_SPECIAL2_1", -1)
 stats.set_int(mpx .. "CLTHS_USED_DECL", -1)
 stats.set_int(mpx .. "CLTHS_USED_TEETH", -1)
 stats.set_int(mpx .. "CLTHS_USED_TEETH_1", -1)
 stats.set_int(mpx .. "CLTHS_USED_TEETH_2", -1)
end
end
end
	elseif CltH == 3 then
 stats.set_int(mpx .. "CHAR_FM_CLOTHES_1_UNLCK", -1)
 stats.set_int(mpx .. "CHAR_FM_CLOTHES_2_UNLCK", -1)
 stats.set_int(mpx .. "CHAR_FM_CLOTHES_3_UNLCK", -1)
 stats.set_int(mpx .. "CHAR_FM_CLOTHES_4_UNLCK", -1)
 stats.set_int(mpx .. "CHAR_FM_CLOTHES_5_UNLCK", -1)
 stats.set_int(mpx .. "CHAR_FM_CLOTHES_6_UNLCK", -1)
 stats.set_int(mpx .. "CHAR_FM_CLOTHES_7_UNLCK", -1)
 stats.set_int(mpx .. "CHAR_FM_CLOTHES_8_UNLCK", -1)
 stats.set_int(mpx .. "CHAR_FM_CLOTHES_9_UNLCK", -1)
 stats.set_int(mpx .. "CHAR_FM_CLOTHES_10_UNLCK", -1)
 stats.set_int(mpx .. "CHAR_FM_CLOTHES_11_UNLCK", -1)
 stats.set_int(mpx .. "CHAR_FM_CLOTHES_1_OWNED", -1)
 stats.set_int(mpx .. "CHAR_FM_CLOTHES_2_OWNED", -1)
 stats.set_int(mpx .. "CHAR_FM_CLOTHES_3_OWNED", -1)
 stats.set_int(mpx .. "CHAR_FM_CLOTHES_4_OWNED", -1)
 stats.set_int(mpx .. "CHAR_FM_CLOTHES_5_OWNED", -1)
 stats.set_int(mpx .. "CHAR_FM_CLOTHES_6_OWNED", -1)
 stats.set_int(mpx .. "CHAR_FM_CLOTHES_7_OWNED", -1)
 stats.set_int(mpx .. "CHAR_FM_CLOTHES_8_OWNED", -1)
 stats.set_int(mpx .. "CHAR_FM_CLOTHES_9_OWNED", -1)
 stats.set_int(mpx .. "CHAR_FM_CLOTHES_10_OWNED", -1)
 stats.set_int(mpx .. "CHAR_FM_CLOTHES_11_OWNED", -1)
	for i = 0, 250 do
 stats.set_int(mpx .. "DLC_APPAREL_USED_"..i, -1)
	end
elseif CltH == 4 then
	for i = 1, 40 do
 stats.set_int(mpx .. "ADMIN_CLOTHES_GV_BS_"..i, -1)
 stats.set_int(mpx .. "ADMIN_CLOTHES_RM_BS_"..i, -1)
	end
end
end)
prgMenu = uuMenu:add_submenu("Progression Stats")
prgMenu:add_int_range("Vehicle Stats-DoEachNo.", 1, 1, 7, function() return 1 end, function(VehH)

	if VehH == 1 then
 stats.set_int(mpx .. "DELUXO_BULLET_HITS", 500)
 stats.set_int(mpx .. "DELUXO_BULLET_HEADSHOTS", 500)
 stats.set_int(mpx .. "DELUXO_BULLET_HELDTIME", 5963259)
 stats.set_int(mpx .. "DELUXO_BULLET_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "DELUXO_ROCKET_KILLS", 500)
 stats.set_int(mpx .. "DELUXO_ROCKET_DEATHS", 100)
 stats.set_int(mpx .. "DELUXO_ROCKET_SHOTS", 500)
 stats.set_int(mpx .. "DELUXO_ROCKET_HITS", 500)
 stats.set_int(mpx .. "DELUXO_ROCKET_HELDTIME", 5963259)
 stats.set_int(mpx .. "DELUXO_ROCKET_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "DELUXO_BULLET_KILLS", 500)
 stats.set_int(mpx .. "DELUXO_BULLET_DEATHS", 100)
 stats.set_int(mpx .. "DELUXO_BULLET_SHOTS", 500)
 stats.set_int(mpx .. "COMET4_MG_KILLS", 500)
 stats.set_int(mpx .. "COMET4_MG_DEATHS", 100)
 stats.set_int(mpx .. "COMET4_MG_SHOTS", 500)
 stats.set_int(mpx .. "COMET4_MG_HITS", 500)
 stats.set_int(mpx .. "COMET4_MG_HEADSHOTS", 500)
 stats.set_int(mpx .. "COMET4_MG_HELDTIME", 5963259)
 stats.set_int(mpx .. "COMET4_MG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "CHERNOBOG_MISS_KILLS", 500)
 stats.set_int(mpx .. "CHERNOBOG_MISS_DEATHS", 100)
 stats.set_int(mpx .. "CHERNOBOG_MISS_SHOTS", 500)
 stats.set_int(mpx .. "CHERNOBOG_MISS_HITS", 500)
 stats.set_int(mpx .. "CHERNOBOG_MISS_HELDTIME", 5963259)
 stats.set_int(mpx .. "CHERNOBOG_MISS_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "BARRAGE_R_MG_KILLS", 500)
 stats.set_int(mpx .. "BARRAGE_R_MG_DEATHS", 100)
 stats.set_int(mpx .. "BARRAGE_R_MG_SHOTS", 500)
 stats.set_int(mpx .. "BARRAGE_R_MG_HITS", 500)
 stats.set_int(mpx .. "BARRAGE_R_MG_HEADSHOTS", 500)
 stats.set_int(mpx .. "BARRAGE_R_MG_HELDTIME", 5963259)
 stats.set_int(mpx .. "BARRAGE_R_MG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "BARRAGE_R_MINI_KILLS", 500)
 stats.set_int(mpx .. "BARRAGE_R_MINI_DEATHS", 100)
 stats.set_int(mpx .. "BARRAGE_R_MINI_SHOTS", 500)
 stats.set_int(mpx .. "BARRAGE_R_MINI_HITS", 500)
 stats.set_int(mpx .. "BARRAGE_R_MINI_HEADSHOTS", 500)
 stats.set_int(mpx .. "BARRAGE_R_MINI_HELDTIME", 5963259)
 stats.set_int(mpx .. "BARRAGE_R_MINI_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "BARRAGE_R_GL_KILLS", 500)
 stats.set_int(mpx .. "BARRAGE_R_GL_DEATHS", 100)
 stats.set_int(mpx .. "BARRAGE_R_GL_SHOTS", 500)
 stats.set_int(mpx .. "BARRAGE_R_GL_HITS", 500)
 stats.set_int(mpx .. "BARRAGE_R_GL_HELDTIME", 5963259)
 stats.set_int(mpx .. "BARRAGE_R_GL_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "BARRAGE_T_MG_KILLS", 500)
 stats.set_int(mpx .. "BARRAGE_T_MG_DEATHS", 100)
 stats.set_int(mpx .. "BARRAGE_T_MG_SHOTS", 500)
 stats.set_int(mpx .. "BARRAGE_T_MG_HITS", 500)
 stats.set_int(mpx .. "BARRAGE_T_MG_HEADSHOTS", 500)
 stats.set_int(mpx .. "BARRAGE_T_MG_HELDTIME", 5963259)
 stats.set_int(mpx .. "BARRAGE_T_MG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "BARRAGE_T_MINI_KILLS", 500)
 stats.set_int(mpx .. "BARRAGE_T_MINI_DEATHS", 100)
 stats.set_int(mpx .. "BARRAGE_T_MINI_SHOTS", 500)
 stats.set_int(mpx .. "BARRAGE_T_MINI_HITS", 500)
 stats.set_int(mpx .. "BARRAGE_T_MINI_HEADSHOTS", 500)
 stats.set_int(mpx .. "BARRAGE_T_MINI_HELDTIME", 5963259)
 stats.set_int(mpx .. "BARRAGE_T_MINI_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "AVENGER_CANNON_KILLS", 500)
 stats.set_int(mpx .. "AVENGER_CANNON_DEATHS", 100)
 stats.set_int(mpx .. "AVENGER_CANNON_SHOTS", 500)
 stats.set_int(mpx .. "AVENGER_CANNON_HITS", 500)
 stats.set_int(mpx .. "AVENGER_CANNON_HELDTIME", 5963259)
 stats.set_int(mpx .. "AVENGER_CANNON_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "AKULA_TURR_KILLS", 500)
 stats.set_int(mpx .. "AKULA_TURR_DEATHS", 100)
 stats.set_int(mpx .. "AKULA_TURR_SHOTS", 500)
 stats.set_int(mpx .. "AKULA_TURR_HITS", 500)
 stats.set_int(mpx .. "AKULA_TURR_HEADSHOTS", 500)
 stats.set_int(mpx .. "AKULA_TURR_HELDTIME", 5963259)
 stats.set_int(mpx .. "AKULA_TURR_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "AKULA_DTURR_KILLS", 500)
 stats.set_int(mpx .. "AKULA_DTURR_DEATHS", 100)
 stats.set_int(mpx .. "AKULA_DTURR_SHOTS", 500)
 stats.set_int(mpx .. "AKULA_DTURR_HITS", 500)
 stats.set_int(mpx .. "AKULA_DTURR_HEADSHOTS", 500)
 stats.set_int(mpx .. "AKULA_DTURR_HELDTIME", 5963259)
 stats.set_int(mpx .. "AKULA_DTURR_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "AKULA_MINI_KILLS", 500)
 stats.set_int(mpx .. "AKULA_MINI_DEATHS", 100)
 stats.set_int(mpx .. "AKULA_MINI_SHOTS", 500)
 stats.set_int(mpx .. "AKULA_MINI_HITS", 500)
 stats.set_int(mpx .. "AKULA_MINI_HEADSHOTS", 500)
 stats.set_int(mpx .. "AKULA_MINI_HELDTIME", 5963259)
 stats.set_int(mpx .. "AKULA_MINI_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "AKULA_BARR_KILLS", 500)
 stats.set_int(mpx .. "AKULA_BARR_DEATHS", 100)
 stats.set_int(mpx .. "AKULA_BARR_SHOTS", 500)
 stats.set_int(mpx .. "AKULA_BARR_HITS", 500)
 stats.set_int(mpx .. "AKULA_BARR_HELDTIME", 5963259)
 stats.set_int(mpx .. "AKULA_BARR_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "AKULA_ROCKET_KILLS", 500)
 stats.set_int(mpx .. "AKULA_ROCKET_DEATHS", 100)
 stats.set_int(mpx .. "AKULA_ROCKET_SHOTS", 500)
 stats.set_int(mpx .. "AKULA_ROCKET_HITS", 500)
 stats.set_int(mpx .. "AKULA_ROCKET_HELDTIME", 5963259)
 stats.set_int(mpx .. "AKULA_ROCKET_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "ARENA_MG_KILLS", 500)
 stats.set_int(mpx .. "ARENA_MG_DEATHS", 100)
 stats.set_int(mpx .. "ARENA_MG_SHOTS", 500)
 stats.set_int(mpx .. "ARENA_MG_HITS", 500)
 stats.set_int(mpx .. "ARENA_MG_HEADSHOTS", 500)
 stats.set_int(mpx .. "ARENA_MG_HELDTIME", 5963259)
 stats.set_int(mpx .. "ARENA_MG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "ARENA_HM_KILLS", 500)
 stats.set_int(mpx .. "ARENA_HM_DEATHS", 100)
 stats.set_int(mpx .. "ARENA_HM_SHOTS", 500)
 stats.set_int(mpx .. "ARENA_HM_HITS", 500)
 stats.set_int(mpx .. "ARENA_HM_HELDTIME", 5963259)
 stats.set_int(mpx .. "RCMINE_KIN_KILLS", 500)
 stats.set_int(mpx .. "RCMINE_KIN_DEATHS", 100)
 stats.set_int(mpx .. "RCMINE_KIN_SHOTS", 500)
 stats.set_int(mpx .. "RCMINE_KIN_HITS", 500)
 stats.set_int(mpx .. "RCMINE_KIN_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "RCMINE_EMP_KILLS", 500)
 stats.set_int(mpx .. "RCMINE_EMP_DEATHS", 100)
 stats.set_int(mpx .. "RCMINE_EMP_SHOTS", 500)
 stats.set_int(mpx .. "RCMINE_EMP_HITS", 500)
 stats.set_int(mpx .. "RCMINE_EMP_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "RCMINE_SPI_KILLS", 500)
 stats.set_int(mpx .. "RCMINE_SPI_DEATHS", 100)
 stats.set_int(mpx .. "RCMINE_SPI_SHOTS", 500)
 stats.set_int(mpx .. "RCMINE_SPI_HITS", 500)
 stats.set_int(mpx .. "RCMINE_SPI_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "RCMINE_SLI_KILLS", 500)
 stats.set_int(mpx .. "RCMINE_SLI_DEATHS", 100)
 stats.set_int(mpx .. "RCMINE_SLI_SHOTS", 500)
 stats.set_int(mpx .. "RCMINE_SLI_HITS", 500)
 stats.set_int(mpx .. "RCMINE_SLI_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "RCMINE_TAR_KILLS", 500)
 stats.set_int(mpx .. "RCMINE_TAR_DEATHS", 100)
 stats.set_int(mpx .. "RCMINE_TAR_SHOTS", 500)
 stats.set_int(mpx .. "RCMINE_TAR_HITS", 500)
 stats.set_int(mpx .. "RCMINE_TAR_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "VEHMINE_KILLS", 500)
 stats.set_int(mpx .. "VEHMINE_DEATHS", 100)
 stats.set_int(mpx .. "VEHMINE_SHOTS", 500)
 stats.set_int(mpx .. "VEHMINE_HITS", 500)
 stats.set_int(mpx .. "VEHMINE_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "VEHMINE_KIN_KILLS", 500)
 stats.set_int(mpx .. "VEHMINE_KIN_DEATHS", 100)
 stats.set_int(mpx .. "VEHMINE_KIN_SHOTS", 500)
 stats.set_int(mpx .. "VEHMINE_KIN_HITS", 500)
 stats.set_int(mpx .. "VEHMINE_KIN_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "VEHMINE_EMP_KILLS", 500)
 stats.set_int(mpx .. "VEHMINE_EMP_DEATHS", 100)
 stats.set_int(mpx .. "VEHMINE_EMP_SHOTS", 500)
 stats.set_int(mpx .. "VEHMINE_EMP_HITS", 500)
 stats.set_int(mpx .. "VEHMINE_EMP_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "VEHMINE_SPI_KILLS", 500)
 stats.set_int(mpx .. "VEHMINE_SPI_DEATHS", 100)
 stats.set_int(mpx .. "VEHMINE_SPI_SHOTS", 500)
 stats.set_int(mpx .. "VEHMINE_SPI_HITS", 500)
 stats.set_int(mpx .. "VEHMINE_SPI_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "VEHMINE_SLI_KILLS", 500)
 stats.set_int(mpx .. "VEHMINE_SLI_DEATHS", 100)
 stats.set_int(mpx .. "VEHMINE_SLI_SHOTS", 500)
 stats.set_int(mpx .. "VEHMINE_SLI_HITS", 500)
 stats.set_int(mpx .. "VEHMINE_SLI_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "VEHMINE_TAR_KILLS", 500)
 stats.set_int(mpx .. "VEHMINE_TAR_DEATHS", 100)
 stats.set_int(mpx .. "VEHMINE_TAR_SHOTS", 500)
 stats.set_int(mpx .. "VEHMINE_TAR_HITS", 500)
 stats.set_int(mpx .. "VEHMINE_TAR_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "ZR3803_MG50_KILLS", 500)
 stats.set_int(mpx .. "ZR3803_MG50_DEATHS", 100)
 stats.set_int(mpx .. "ZR3803_MG50_SHOTS", 500)
 stats.set_int(mpx .. "ZR3803_MG50_HITS", 500)
 stats.set_int(mpx .. "ZR3803_MG50_HEADSHOTS", 500)
 stats.set_int(mpx .. "ZR3803_MG50_HELDTIME", 5963259)
 stats.set_int(mpx .. "ZR3803_MG50_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "ZR3802_MG50_KILLS", 500)
 stats.set_int(mpx .. "ZR3802_MG50_DEATHS", 100)
 stats.set_int(mpx .. "ZR3802_MG50_SHOTS", 500)
 stats.set_int(mpx .. "ZR3802_MG50_HITS", 500)
 stats.set_int(mpx .. "ZR3802_MG50_HEADSHOTS", 500)
 stats.set_int(mpx .. "ZR3802_MG50_HELDTIME", 5963259)
 stats.set_int(mpx .. "ZR3802_MG50_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "ZR3802_LAS_KILLS", 500)
 stats.set_int(mpx .. "ZR3802_LAS_DEATHS", 100)
 stats.set_int(mpx .. "ZR3802_LAS_SHOTS", 500)
 stats.set_int(mpx .. "ZR3802_LAS_HITS", 500)
 stats.set_int(mpx .. "ZR3802_LAS_HEADSHOTS", 500)
 stats.set_int(mpx .. "ZR3802_LAS_HELDTIME", 5963259)
 stats.set_int(mpx .. "ZR3802_LAS_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "ZR380_MG50_KILLS", 500)
 stats.set_int(mpx .. "ZR380_MG50_DEATHS", 100)
 stats.set_int(mpx .. "ZR380_MG50_SHOTS", 500)
 stats.set_int(mpx .. "ZR380_MG50_HITS", 500)
 stats.set_int(mpx .. "ZR380_MG50_HEADSHOTS", 500)
 stats.set_int(mpx .. "ZR380_MG50_HELDTIME", 5963259)
 stats.set_int(mpx .. "ZR380_MG50_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "SLAMVAN4_MG50_KILLS", 500)
 stats.set_int(mpx .. "SLAMVAN4_MG50_DEATHS", 100)
 stats.set_int(mpx .. "SLAMVAN4_MG50_SHOTS", 500)
 stats.set_int(mpx .. "SLAMVAN4_MG50_HITS", 500)
 stats.set_int(mpx .. "SLAMVAN4_MG50_HEADSHOTS", 500)
 stats.set_int(mpx .. "SLAMVAN4_MG50_HELDTIME", 5963259)
 stats.set_int(mpx .. "SLAMVAN4_MG50_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "SLAMVAN5_MG50_KILLS", 500)
 stats.set_int(mpx .. "SLAMVAN5_MG50_DEATHS", 100)
 stats.set_int(mpx .. "SLAMVAN5_MG50_SHOTS", 500)
 stats.set_int(mpx .. "SLAMVAN5_MG50_HITS", 500)
 stats.set_int(mpx .. "SLAMVAN5_MG50_HEADSHOTS", 500)
 stats.set_int(mpx .. "SLAMVAN5_MG50_HELDTIME", 5963259)
 stats.set_int(mpx .. "SLAMVAN5_MG50_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "SLAMVAN5_LAS_KILLS", 500)
 stats.set_int(mpx .. "SLAMVAN5_LAS_DEATHS", 100)
 stats.set_int(mpx .. "SLAMVAN5_LAS_SHOTS", 500)
 stats.set_int(mpx .. "SLAMVAN5_LAS_HITS", 500)
 stats.set_int(mpx .. "SLAMVAN5_LAS_HEADSHOTS", 500)
 stats.set_int(mpx .. "SLAMVAN5_LAS_HELDTIME", 5963259)
 stats.set_int(mpx .. "SLAMVAN5_LAS_ENEMY_KILLS", 500)
	elseif VehH == 2 then
 stats.set_int(mpx .. "SLAMVAN6_MG50_KILLS", 500)
 stats.set_int(mpx .. "SLAMVAN6_MG50_DEATHS", 100)
 stats.set_int(mpx .. "SLAMVAN6_MG50_SHOTS", 500)
 stats.set_int(mpx .. "SLAMVAN6_MG50_HITS", 500)
 stats.set_int(mpx .. "SLAMVAN6_MG50_HEADSHOTS", 500)
 stats.set_int(mpx .. "SLAMVAN6_MG50_HELDTIME", 5963259)
 stats.set_int(mpx .. "SLAMVAN6_MG50_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "SCARAB_MG50_KILLS", 500)
 stats.set_int(mpx .. "SCARAB_MG50_DEATHS", 100)
 stats.set_int(mpx .. "SCARAB_MG50_SHOTS", 500)
 stats.set_int(mpx .. "SCARAB_MG50_HITS", 500)
 stats.set_int(mpx .. "SCARAB_MG50_HEADSHOTS", 500)
 stats.set_int(mpx .. "SCARAB_MG50_HELDTIME", 5963259)
 stats.set_int(mpx .. "SCARAB_MG50_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "SCARAB2_MG50_KILLS", 500)
 stats.set_int(mpx .. "SCARAB2_MG50_DEATHS", 100)
 stats.set_int(mpx .. "SCARAB2_MG50_SHOTS", 500)
 stats.set_int(mpx .. "SCARAB2_MG50_HITS", 500)
 stats.set_int(mpx .. "SCARAB2_MG50_HEADSHOTS", 500)
 stats.set_int(mpx .. "SCARAB2_MG50_HELDTIME", 5963259)
 stats.set_int(mpx .. "SCARAB2_MG50_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "SCARAB2_LAS_KILLS", 500)
 stats.set_int(mpx .. "SCARAB2_LAS_DEATHS", 100)
 stats.set_int(mpx .. "SCARAB2_LAS_SHOTS", 500)
 stats.set_int(mpx .. "SCARAB2_LAS_HITS", 500)
 stats.set_int(mpx .. "SCARAB2_LAS_HEADSHOTS", 500)
 stats.set_int(mpx .. "SCARAB2_LAS_HELDTIME", 5963259)
 stats.set_int(mpx .. "SCARAB2_LAS_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "SCARAB3_MG50_KILLS", 500)
 stats.set_int(mpx .. "SCARAB3_MG50_DEATHS", 100)
 stats.set_int(mpx .. "SCARAB3_MG50_SHOTS", 500)
 stats.set_int(mpx .. "SCARAB3_MG50_HITS", 500)
 stats.set_int(mpx .. "SCARAB3_MG50_HEADSHOTS", 500)
 stats.set_int(mpx .. "SCARAB3_MG50_HELDTIME", 5963259)
 stats.set_int(mpx .. "SCARAB3_MG50_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "MONSTER3_KIN_KILLS", 500)
 stats.set_int(mpx .. "MONSTER3_KIN_DEATHS", 100)
 stats.set_int(mpx .. "MONSTER3_KIN_SHOTS", 500)
 stats.set_int(mpx .. "MONSTER3_KIN_HITS", 500)
 stats.set_int(mpx .. "MONSTER3_KIN_HELDTIME", 5963259)
 stats.set_int(mpx .. "MONSTER3_KIN_ENEMY_KILL", 500)
 stats.set_int(mpx .. "MONSTER4_KIN_KILLS", 500)
 stats.set_int(mpx .. "MONSTER4_KIN_DEATHS", 100)
 stats.set_int(mpx .. "MONSTER4_KIN_SHOTS", 500)
 stats.set_int(mpx .. "MONSTER4_KIN_HITS", 500)
 stats.set_int(mpx .. "MONSTER4_KIN_HELDTIME", 5963259)
 stats.set_int(mpx .. "MONSTER4_KIN_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "MONSTER5_KIN_KILLS", 500)
 stats.set_int(mpx .. "MONSTER5_KIN_DEATHS", 100)
 stats.set_int(mpx .. "MONSTER5_KIN_SHOTS", 500)
 stats.set_int(mpx .. "MONSTER5_KIN_HITS", 500)
 stats.set_int(mpx .. "MONSTER5_KIN_HELDTIME", 5963259)
 stats.set_int(mpx .. "MONSTER5_KIN_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "ISSI4_MG50_KILLS", 500)
 stats.set_int(mpx .. "ISSI4_MG50_DEATHS", 100)
 stats.set_int(mpx .. "ISSI4_MG50_SHOTS", 500)
 stats.set_int(mpx .. "ISSI4_MG50_HITS", 500)
 stats.set_int(mpx .. "ISSI4_MG50_HEADSHOTS", 500)
 stats.set_int(mpx .. "ISSI4_MG50_HELDTIME", 5963259)
 stats.set_int(mpx .. "ISSI4_MG50_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "ISSI4_KIN_KILLS", 500)
 stats.set_int(mpx .. "ISSI4_KIN_DEATHS", 100)
 stats.set_int(mpx .. "ISSI4_KIN_SHOTS", 500)
 stats.set_int(mpx .. "ISSI4_KIN_HITS", 500)
 stats.set_int(mpx .. "ISSI4_KIN_HELDTIME", 5963259)
 stats.set_int(mpx .. "ISSI4_KIN_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "ISSI5_MG50_KILLS", 500)
 stats.set_int(mpx .. "ISSI5_MG50_DEATHS", 100)
 stats.set_int(mpx .. "ISSI5_MG50_SHOTS", 500)
 stats.set_int(mpx .. "ISSI5_MG50_HITS", 500)
 stats.set_int(mpx .. "ISSI5_MG50_HEADSHOTS", 500)
 stats.set_int(mpx .. "ISSI5_MG50_HELDTIME", 5963259)
 stats.set_int(mpx .. "ISSI5_MG50_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "ISSI5_LAS_KILLS", 500)
 stats.set_int(mpx .. "ISSI5_LAS_DEATHS", 100)
 stats.set_int(mpx .. "ISSI5_LAS_SHOTS", 500)
 stats.set_int(mpx .. "ISSI5_LAS_HITS", 500)
 stats.set_int(mpx .. "ISSI5_LAS_HEADSHOTS", 500)
 stats.set_int(mpx .. "ISSI5_LAS_HELDTIME", 5963259)
 stats.set_int(mpx .. "ISSI5_LAS_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "ISSI5_KIN_KILLS", 500)
 stats.set_int(mpx .. "ISSI5_KIN_DEATHS", 100)
 stats.set_int(mpx .. "ISSI5_KIN_SHOTS", 500)
 stats.set_int(mpx .. "ISSI5_KIN_HITS", 500)
 stats.set_int(mpx .. "ISSI5_KIN_HELDTIME", 5963259)
 stats.set_int(mpx .. "ISSI5_KIN_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "ISSI6_MG50_KILLS", 500)
 stats.set_int(mpx .. "ISSI6_MG50_DEATHS", 100)
 stats.set_int(mpx .. "ISSI6_MG50_SHOTS", 500)
 stats.set_int(mpx .. "ISSI6_MG50_HITS", 500)
 stats.set_int(mpx .. "ISSI6_MG50_HEADSHOTS", 500)
 stats.set_int(mpx .. "ISSI6_MG50_HELDTIME", 5963259)
 stats.set_int(mpx .. "ISSI6_MG50_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "ISSI6_KIN_KILLS", 500)
 stats.set_int(mpx .. "ISSI6_KIN_DEATHS", 100)
 stats.set_int(mpx .. "ISSI6_KIN_SHOTS", 500)
 stats.set_int(mpx .. "ISSI6_KIN_HITS", 500)
 stats.set_int(mpx .. "ISSI6_KIN_HELDTIME", 5963259)
 stats.set_int(mpx .. "ISSI6_KIN_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "TRSMALL2_QUAD_KILLS", 500)
 stats.set_int(mpx .. "TRSMALL2_QUAD_DEATHS", 100)
 stats.set_int(mpx .. "TRSMALL2_QUAD_SHOTS", 500)
 stats.set_int(mpx .. "TRSMALL2_QUAD_HITS", 500)
 stats.set_int(mpx .. "TRSMALL2_QUAD_HEADSHOTS", 500)
 stats.set_int(mpx .. "TRSMALL2_QUAD_HELDTIME", 5963259)
 stats.set_int(mpx .. "TRSMALL2_QUAD_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "TRSMALL2_DUAL_KILLS", 500)
 stats.set_int(mpx .. "TRSMALL2_DUAL_DEATHS", 100)
 stats.set_int(mpx .. "TRSMALL2_DUAL_SHOTS", 500)
 stats.set_int(mpx .. "TRSMALL2_DUAL_HITS", 500)
 stats.set_int(mpx .. "TRSMALL2_DUAL_HELDTIME", 5963259)
 stats.set_int(mpx .. "TRSMALL2_DUAL_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "TRSMALL2_MISS_KILLS", 500)
 stats.set_int(mpx .. "TRSMALL2_MISS_DEATHS", 100)
 stats.set_int(mpx .. "TRSMALL2_MISS_SHOTS", 500)
 stats.set_int(mpx .. "TRSMALL2_MISS_HITS", 500)
 stats.set_int(mpx .. "TRSMALL2_MISS_HELDTIME", 5963259)
 stats.set_int(mpx .. "TRSMALL2_MISS_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "TRLARGE_CANNON_KILLS", 500)
 stats.set_int(mpx .. "TRLARGE_CANNON_DEATHS", 100)
 stats.set_int(mpx .. "TRLARGE_CANNON_SHOTS", 500)
 stats.set_int(mpx .. "TRLARGE_CANNON_HITS", 500)
 stats.set_int(mpx .. "TRLARGE_CANNON_HELDTIME", 5963259)
 stats.set_int(mpx .. "TRLARGE_CANNON_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "POUNDER2_MINI_KILLS", 500)
 stats.set_int(mpx .. "POUNDER2_MINI_DEATHS", 100)
 stats.set_int(mpx .. "POUNDER2_MINI_SHOTS", 500)
 stats.set_int(mpx .. "POUNDER2_MINI_HITS", 500)
 stats.set_int(mpx .. "POUNDER2_MINI_HEADSHOTS", 500)
 stats.set_int(mpx .. "POUNDER2_MINI_HELDTIME", 5963259)
 stats.set_int(mpx .. "POUNDER2_MINI_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "POUNDER2_MISS_KILLS", 500)
 stats.set_int(mpx .. "POUNDER2_MISS_DEATHS", 100)
 stats.set_int(mpx .. "POUNDER2_MISS_SHOTS", 500)
 stats.set_int(mpx .. "POUNDER2_MISS_HITS", 500)
 stats.set_int(mpx .. "POUNDER2_MISS_HEADSHOTS", 500)
 stats.set_int(mpx .. "POUNDER2_MISS_HELDTIME", 5963259)
 stats.set_int(mpx .. "POUNDER2_MISS_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "POUNDER2_BARR_KILLS", 500)
 stats.set_int(mpx .. "POUNDER2_BARR_DEATHS", 100)
 stats.set_int(mpx .. "POUNDER2_BARR_SHOTS", 500)
 stats.set_int(mpx .. "POUNDER2_BARR_HITS", 500)
 stats.set_int(mpx .. "POUNDER2_BARR_HELDTIME", 5963259)
 stats.set_int(mpx .. "POUNDER2_BARR_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "POUNDER2_GL_KILLS", 500)
 stats.set_int(mpx .. "POUNDER2_GL_DEATHS", 100)
 stats.set_int(mpx .. "POUNDER2_GL_SHOTS", 500)
 stats.set_int(mpx .. "POUNDER2_GL_HITS", 500)
 stats.set_int(mpx .. "POUNDER2_GL_HELDTIME", 5963259)
 stats.set_int(mpx .. "POUNDER2_GL_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "SCRAMJET_MG_KILLS", 500)
 stats.set_int(mpx .. "SCRAMJET_MG_DEATHS", 100)
 stats.set_int(mpx .. "SCRAMJET_MG_SHOTS", 500)
 stats.set_int(mpx .. "SCRAMJET_MG_HITS", 500)
 stats.set_int(mpx .. "SCRAMJET_MG_HEADSHOTS", 500)
 stats.set_int(mpx .. "SCRAMJET_MG_HELDTIME", 5963259)
 stats.set_int(mpx .. "SCRAMJET_MG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "SCRAMJET_MISS_KILLS", 500)
 stats.set_int(mpx .. "SCRAMJET_MISS_DEATHS", 100)
 stats.set_int(mpx .. "SCRAMJET_MISS_SHOTS", 500)
 stats.set_int(mpx .. "SCRAMJET_MISS_HITS", 500)
 stats.set_int(mpx .. "SCRAMJET_MISS_HELDTIME", 5963259)
 stats.set_int(mpx .. "SCRAMJET_MISS_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "SPEEDO4_MG_KILLS", 500)
 stats.set_int(mpx .. "SPEEDO4_MG_DEATHS", 100)
 stats.set_int(mpx .. "SPEEDO4_MG_SHOTS", 500)
 stats.set_int(mpx .. "SPEEDO4_MG_HITS", 500)
 stats.set_int(mpx .. "SPEEDO4_MG_HEADSHOTS", 500)
 stats.set_int(mpx .. "SPEEDO4_MG_HELDTIME", 5963259)
 stats.set_int(mpx .. "SPEEDO4_MG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "SPEEDO4_TURR_KILLS", 500)
 stats.set_int(mpx .. "SPEEDO4_TURR_DEATHS", 100)
 stats.set_int(mpx .. "SPEEDO4_TURR_SHOTS", 500)
 stats.set_int(mpx .. "SPEEDO4_TURR_HITS", 500)
 stats.set_int(mpx .. "SPEEDO4_TURR_HEADSHOTS", 500)
 stats.set_int(mpx .. "SPEEDO4_TURR_HELDTIME", 5963259)
 stats.set_int(mpx .. "SPEEDO4_TURR_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "SPEEDO4_MINI_KILLS", 500)
 stats.set_int(mpx .. "SPEEDO4_MINI_DEATHS", 100)
 stats.set_int(mpx .. "SPEEDO4_MINI_SHOTS", 500)
 stats.set_int(mpx .. "SPEEDO4_MINI_HITS", 500)
 stats.set_int(mpx .. "SPEEDO4_MINI_HEADSHOTS", 500)
 stats.set_int(mpx .. "SPEEDO4_MINI_HELDTIME", 5963259)
 stats.set_int(mpx .. "SPEEDO4_MINI_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "STRIKEFORCE_BAR_KILLS", 500)
 stats.set_int(mpx .. "STRIKEFORCE_BAR_DEATHS", 100)
 stats.set_int(mpx .. "STRIKEFORCE_BAR_SHOTS", 500)
 stats.set_int(mpx .. "STRIKEFORCE_BAR_HITS", 500)
 stats.set_int(mpx .. "STRIKEFORCE_BAR_HELDTIME", 5963259)
 stats.set_int(mpx .. "STRIKEFORCE_BAR_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "STRIKEFORCE_CAN_KILLS", 500)
 stats.set_int(mpx .. "STRIKEFORCE_CAN_DEATHS", 100)
 stats.set_int(mpx .. "STRIKEFORCE_CAN_SHOTS", 500)
 stats.set_int(mpx .. "STRIKEFORCE_CAN_HITS", 500)
 stats.set_int(mpx .. "STRIKEFORCE_CAN_HELDTIME", 5963259)
 stats.set_int(mpx .. "STRIKEFORCE_CAN_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "STRIKEFORCE_MIS_KILLS", 500)
 stats.set_int(mpx .. "STRIKEFORCE_MIS_DEATHS", 100)
 stats.set_int(mpx .. "STRIKEFORCE_MIS_SHOTS", 500)
 stats.set_int(mpx .. "STRIKEFORCE_MIS_HITS", 500)
 stats.set_int(mpx .. "STRIKEFORCE_MIS_HELDTIME", 5963259)
 stats.set_int(mpx .. "STRIKEFORCE_MIS_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "TERBYTE_MISS_KILLS", 500)
 stats.set_int(mpx .. "TERBYTE_MISS_DEATHS", 100)
 stats.set_int(mpx .. "TERBYTE_MISS_SHOTS", 500)
 stats.set_int(mpx .. "TERBYTE_MISS_HITS", 500)
 stats.set_int(mpx .. "TERBYTE_MISS_HELDTIME", 5963259)
 stats.set_int(mpx .. "TERBYTE_MISS_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "TERBYTE_HMISS_KILLS", 500)
 stats.set_int(mpx .. "TERBYTE_HMISS_DEATHS", 100)
 stats.set_int(mpx .. "TERBYTE_HMISS_SHOTS", 500)
 stats.set_int(mpx .. "TERBYTE_HMISS_HITS", 500)
 stats.set_int(mpx .. "TERBYTE_HMISS_HELDTIME", 5963259)
 stats.set_int(mpx .. "TERBYTE_HMISS_ENEMY_KILLS", 500)
	elseif VehH == 3 then
 stats.set_int(mpx .. "CARACARA_MINI_KILLS", 500)
 stats.set_int(mpx .. "CARACARA_MINI_DEATHS", 100)
 stats.set_int(mpx .. "CARACARA_MINI_SHOTS", 500)
 stats.set_int(mpx .. "CARACARA_MINI_HITS", 500)
 stats.set_int(mpx .. "CARACARA_MINI_HEADSHOTS", 500)
 stats.set_int(mpx .. "CARACARA_MINI_HELDTIME", 5963259)
 stats.set_int(mpx .. "CARACARA_MINI_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "CARACARA_TURR_KILLS", 500)
 stats.set_int(mpx .. "CARACARA_TURR_DEATHS", 100)
 stats.set_int(mpx .. "CARACARA_TURR_SHOTS", 500)
 stats.set_int(mpx .. "CARACARA_TURR_HITS", 500)
 stats.set_int(mpx .. "CARACARA_TURR_HEADSHOTS", 500)
 stats.set_int(mpx .. "CARACARA_TURR_HELDTIME", 5963259)
 stats.set_int(mpx .. "CARACARA_TURR_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "SPARROW_MINI_KILLS", 500)
 stats.set_int(mpx .. "SPARROW_MINI_DEATHS", 100)
 stats.set_int(mpx .. "SPARROW_MINI_SHOTS", 500)
 stats.set_int(mpx .. "SPARROW_MINI_HITS", 500)
 stats.set_int(mpx .. "SPARROW_MINI_HEADSHOTS", 500)
 stats.set_int(mpx .. "SPARROW_MINI_HELDTIME", 5963259)
 stats.set_int(mpx .. "SPARROW_MINI_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "SPARROW_ROCKET_KILLS", 500)
 stats.set_int(mpx .. "SPARROW_ROCKET_DEATHS", 100)
 stats.set_int(mpx .. "SPARROW_ROCKET_SHOTS", 500)
 stats.set_int(mpx .. "SPARROW_ROCKET_HITS", 500)
 stats.set_int(mpx .. "SPARROW_ROCKET_HELDTIME", 5963259)
 stats.set_int(mpx .. "SPARROW_ROCKET_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "APC_CANN_KILLS", 500)
 stats.set_int(mpx .. "APC_CANN_DEATHS", 100)
 stats.set_int(mpx .. "APC_CANN_SHOTS", 500)
 stats.set_int(mpx .. "APC_CANN_HITS", 500)
 stats.set_int(mpx .. "APC_CANN_HELDTIME", 5963259)
 stats.set_int(mpx .. "APC_CANN_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "APC_MISS_KILLS", 500)
 stats.set_int(mpx .. "APC_MISS_DEATHS", 100)
 stats.set_int(mpx .. "APC_MISS_SHOTS", 500)
 stats.set_int(mpx .. "APC_MISS_HITS", 500)
 stats.set_int(mpx .. "APC_MISS_HELDTIME", 5963259)
 stats.set_int(mpx .. "APC_MISS_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "APC_MG_KILLS", 500)
 stats.set_int(mpx .. "APC_MG_DEATHS", 100)
 stats.set_int(mpx .. "APC_MG_SHOTS", 500)
 stats.set_int(mpx .. "APC_MG_HITS", 500)
 stats.set_int(mpx .. "APC_MG_HEADSHOTS", 500)
 stats.set_int(mpx .. "APC_MG_HELDTIME", 5963259)
 stats.set_int(mpx .. "APC_MG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "ARDENT_MG_KILLS", 500)
 stats.set_int(mpx .. "ARDENT_MG_DEATHS", 100)
 stats.set_int(mpx .. "ARDENT_MG_SHOTS", 500)
 stats.set_int(mpx .. "ARDENT_MG_HITS", 500)
 stats.set_int(mpx .. "ARDENT_MG_HEADSHOTS", 500)
 stats.set_int(mpx .. "ARDENT_MG_HELDTIME", 5963259)
 stats.set_int(mpx .. "ARDENT_MG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "DUNE3_MG_KILLS", 500)
 stats.set_int(mpx .. "DUNE3_MG_DEATHS", 100)
 stats.set_int(mpx .. "DUNE3_MG_SHOTS", 500)
 stats.set_int(mpx .. "DUNE3_MG_HITS", 500)
 stats.set_int(mpx .. "DUNE3_MG_HEADSHOTS", 500)
 stats.set_int(mpx .. "DUNE3_MG_HELDTIME", 5963259)
 stats.set_int(mpx .. "DUNE3_MG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "DUNE3_GL_KILLS", 500)
 stats.set_int(mpx .. "DUNE3_GL_DEATHS", 100)
 stats.set_int(mpx .. "DUNE3_GL_SHOTS", 500)
 stats.set_int(mpx .. "DUNE3_GL_HITS", 500)
 stats.set_int(mpx .. "DUNE3_GL_HELDTIME", 5963259)
 stats.set_int(mpx .. "DUNE3_GL_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "DUNE3_MINI_KILLS", 500)
 stats.set_int(mpx .. "DUNE3_MINI_DEATHS", 100)
 stats.set_int(mpx .. "DUNE3_MINI_SHOTS", 500)
 stats.set_int(mpx .. "DUNE3_MINI_HITS", 500)
 stats.set_int(mpx .. "DUNE3_MINI_HEADSHOTS", 500)
 stats.set_int(mpx .. "DUNE3_MINI_HELDTIME", 5963259)
 stats.set_int(mpx .. "DUNE3_MINI_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "HALFTRACK_DUAL_KILLS", 500)
 stats.set_int(mpx .. "HALFTRACK_DUAL_DEATHS", 100)
 stats.set_int(mpx .. "HALFTRACK_DUAL_SHOTS", 500)
 stats.set_int(mpx .. "HALFTRACK_DUAL_HITS", 500)
 stats.set_int(mpx .. "HALFTRACK_DUAL_HEADSHOTS", 500)
 stats.set_int(mpx .. "HALFTRACK_DUAL_HELDTIME", 5963259)
 stats.set_int(mpx .. "HALFTRACK_DUAL_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "HALFTRACK_QUAD_KILLS", 500)
 stats.set_int(mpx .. "HALFTRACK_QUAD_DEATHS", 100)
 stats.set_int(mpx .. "HALFTRACK_QUAD_SHOTS", 500)
 stats.set_int(mpx .. "HALFTRACK_QUAD_HITS", 500)
 stats.set_int(mpx .. "HALFTRACK_QUAD_HEADSHOTS", 500)
 stats.set_int(mpx .. "HALFTRACK_QUAD_HELDTIME", 5963259)
 stats.set_int(mpx .. "HALFTRACK_QUAD_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "INSURGENT3_MINI_KILLS", 500)
 stats.set_int(mpx .. "INSURGENT3_MINI_DEATHS", 100)
 stats.set_int(mpx .. "INSURGENT3_MINI_SHOTS", 500)
 stats.set_int(mpx .. "INSURGENT3_MINI_HITS", 500)
 stats.set_int(mpx .. "INSURGENT3_MINI_HEADSHOTS", 500)
 stats.set_int(mpx .. "INSURGENT3_MINI_HELDTIME", 5963259)
 stats.set_int(mpx .. "INSURGENT3_MINI_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "INSURGENT3_TURR_KILLS", 500)
 stats.set_int(mpx .. "INSURGENT3_TURR_DEATHS", 100)
 stats.set_int(mpx .. "INSURGENT3_TURR_SHOTS", 500)
 stats.set_int(mpx .. "INSURGENT3_TURR_HITS", 500)
 stats.set_int(mpx .. "INSURGENT3_TURR_HEADSHOTS", 500)
 stats.set_int(mpx .. "INSURGENT3_TURR_HELDTIME", 5963259)
 stats.set_int(mpx .. "INSURGENT3_TURR_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "NIGHTSHARK_MG_KILLS", 500)
 stats.set_int(mpx .. "NIGHTSHARK_MG_DEATHS", 100)
 stats.set_int(mpx .. "NIGHTSHARK_MG_SHOTS", 500)
 stats.set_int(mpx .. "NIGHTSHARK_MG_HITS", 500)
 stats.set_int(mpx .. "NIGHTSHARK_MG_HEADSHOTS", 500)
 stats.set_int(mpx .. "NIGHTSHARK_MG_HELDTIME", 5963259)
 stats.set_int(mpx .. "NIGHTSHARK_MG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "OPPRESSOR_MG_KILLS", 500)
 stats.set_int(mpx .. "OPPRESSOR_MG_DEATHS", 100)
 stats.set_int(mpx .. "OPPRESSOR_MG_SHOTS", 500)
 stats.set_int(mpx .. "OPPRESSOR_MG_HITS", 500)
 stats.set_int(mpx .. "OPPRESSOR_MG_HEADSHOTS", 500)
 stats.set_int(mpx .. "OPPRESSOR_MG_HELDTIME", 5963259)
 stats.set_int(mpx .. "OPPRESSOR_MG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "OPPRESSOR_MISS_KILLS", 500)
 stats.set_int(mpx .. "OPPRESSOR_MISS_DEATHS", 100)
 stats.set_int(mpx .. "OPPRESSOR_MISS_SHOTS", 500)
 stats.set_int(mpx .. "OPPRESSOR_MISS_HITS", 500)
 stats.set_int(mpx .. "OPPRESSOR_MISS_HELDTIME", 5963259)
 stats.set_int(mpx .. "OPPRESSOR_MISS_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "TAMPA3_MISS_KILLS", 500)
 stats.set_int(mpx .. "TAMPA3_MISS_DEATHS", 100)
 stats.set_int(mpx .. "TAMPA3_MISS_SHOTS", 500)
 stats.set_int(mpx .. "TAMPA3_MISS_HITS", 500)
 stats.set_int(mpx .. "TAMPA3_MISS_HELDTIME", 5963259)
 stats.set_int(mpx .. "TAMPA3_MISS_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "TAMPA3_MORT_KILLS", 500)
 stats.set_int(mpx .. "TAMPA3_MORT_DEATHS", 100)
 stats.set_int(mpx .. "TAMPA3_MORT_SHOTS", 500)
 stats.set_int(mpx .. "TAMPA3_MORT_HITS", 500)
 stats.set_int(mpx .. "TAMPA3_MORT_HELDTIME", 5963259)
 stats.set_int(mpx .. "TAMPA3_MORT_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "TAMPA3_FMINI_KILLS", 500)
 stats.set_int(mpx .. "TAMPA3_FMINI_DEATHS", 100)
 stats.set_int(mpx .. "TAMPA3_FMINI_SHOTS", 500)
 stats.set_int(mpx .. "TAMPA3_FMINI_HITS", 500)
 stats.set_int(mpx .. "TAMPA3_FMINI_HEADSHOTS", 500)
 stats.set_int(mpx .. "TAMPA3_FMINI_HELDTIME", 5963259)
 stats.set_int(mpx .. "TAMPA3_FMINI_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "TAMPA3_DMINI_KILLS", 500)
 stats.set_int(mpx .. "TAMPA3_DMINI_DEATHS", 100)
 stats.set_int(mpx .. "TAMPA3_DMINI_SHOTS", 500)
 stats.set_int(mpx .. "TAMPA3_DMINI_HITS", 500)
 stats.set_int(mpx .. "TAMPA3_DMINI_HEADSHOTS", 500)
 stats.set_int(mpx .. "TAMPA3_DMINI_HELDTIME", 5963259)
 stats.set_int(mpx .. "TAMPA3_DMINI_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "TECHNICAL3_MINI_KILLS", 500)
 stats.set_int(mpx .. "TECHNICAL3_MINI_DEATHS", 100)
 stats.set_int(mpx .. "TECHNICAL3_MINI_SHOTS", 500)
 stats.set_int(mpx .. "TECHNICAL3_MINI_HITS", 500)
 stats.set_int(mpx .. "TECHNICAL3_MINI_HEADSHOTS", 500)
 stats.set_int(mpx .. "TECHNICAL3_MINI_HELDTIME", 5963259)
 stats.set_int(mpx .. "TECHNICAL3_MINI_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "TECHNICAL3_TURR_KILLS", 500)
 stats.set_int(mpx .. "TECHNICAL3_TURR_DEATHS", 100)
 stats.set_int(mpx .. "TECHNICAL3_TURR_SHOTS", 500)
 stats.set_int(mpx .. "TECHNICAL3_TURR_HITS", 500)
 stats.set_int(mpx .. "TECHNICAL3_TURR_HEADSHOTS", 500)
 stats.set_int(mpx .. "TECHNICAL3_TURR_HELDTIME", 5963259)
 stats.set_int(mpx .. "TECHNICAL3_TURR_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "KHANJALI_ROCKET_KILLS", 500)
 stats.set_int(mpx .. "KHANJALI_ROCKET_DEATHS", 100)
 stats.set_int(mpx .. "KHANJALI_ROCKET_SHOTS", 500)
 stats.set_int(mpx .. "KHANJALI_ROCKET_HITS", 500)
 stats.set_int(mpx .. "KHANJALI_ROCKET_HELDTIME", 5963259)
 stats.set_int(mpx .. "KHANJALI_ROCKET_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "KHANJALI_HCANN_KILLS", 500)
 stats.set_int(mpx .. "KHANJALI_HCANN_DEATHS", 100)
 stats.set_int(mpx .. "KHANJALI_HCANN_SHOTS", 500)
 stats.set_int(mpx .. "KHANJALI_HCANN_HITS", 500)
 stats.set_int(mpx .. "KHANJALI_HCANN_HELDTIME", 5963259)
 stats.set_int(mpx .. "KHANJALI_HCANN_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "KHANJALI_MG_KILLS", 500)
 stats.set_int(mpx .. "KHANJALI_MG_DEATHS", 100)
 stats.set_int(mpx .. "KHANJALI_MG_SHOTS", 500)
 stats.set_int(mpx .. "KHANJALI_MG_HITS", 500)
 stats.set_int(mpx .. "KHANJALI_MG_HEADSHOTS", 500)
 stats.set_int(mpx .. "KHANJALI_MG_HELDTIME", 5963259)
 stats.set_int(mpx .. "KHANJALI_MG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "KHANJALI_GL_KILLS", 500)
 stats.set_int(mpx .. "KHANJALI_GL_DEATHS", 100)
 stats.set_int(mpx .. "KHANJALI_GL_SHOTS", 500)
 stats.set_int(mpx .. "KHANJALI_GL_HITS", 500)
 stats.set_int(mpx .. "KHANJALI_GL_HELDTIME", 5963259)
 stats.set_int(mpx .. "KHANJALI_GL_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "REVOLTER_MG_KILLS", 500)
 stats.set_int(mpx .. "REVOLTER_MG_DEATHS", 100)
 stats.set_int(mpx .. "REVOLTER_MG_SHOTS", 500)
 stats.set_int(mpx .. "REVOLTER_MG_HITS", 500)
 stats.set_int(mpx .. "REVOLTER_MG_HEADSHOTS", 500)
 stats.set_int(mpx .. "REVOLTER_MG_HELDTIME", 5963259)
 stats.set_int(mpx .. "REVOLTER_MG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "SAVESTRA_MG_KILLS", 500)
 stats.set_int(mpx .. "SAVESTRA_MG_DEATHS", 100)
 stats.set_int(mpx .. "SAVESTRA_MG_SHOTS", 500)
 stats.set_int(mpx .. "SAVESTRA_MG_HITS", 500)
 stats.set_int(mpx .. "SAVESTRA_MG_HEADSHOTS", 500)
 stats.set_int(mpx .. "SAVESTRA_MG_HELDTIME", 5963259)
 stats.set_int(mpx .. "SAVESTRA_MG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "STROMBERG_MG_KILLS", 500)
 stats.set_int(mpx .. "STROMBERG_MG_DEATHS", 100)
 stats.set_int(mpx .. "STROMBERG_MG_SHOTS", 500)
 stats.set_int(mpx .. "STROMBERG_MG_HITS", 500)
 stats.set_int(mpx .. "STROMBERG_MG_HEADSHOTS", 500)
 stats.set_int(mpx .. "STROMBERG_MG_HELDTIME", 5963259)
 stats.set_int(mpx .. "STROMBERG_MG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "STROMBERG_MISS_KILLS", 500)
 stats.set_int(mpx .. "STROMBERG_MISS_DEATHS", 100)
 stats.set_int(mpx .. "STROMBERG_MISS_SHOTS", 500)
 stats.set_int(mpx .. "STROMBERG_MISS_HITS", 500)
 stats.set_int(mpx .. "STROMBERG_MISS_HELDTIME", 5963259)
 stats.set_int(mpx .. "STROMBERG_MISS_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "STROMBERG_TORP_KILLS", 500)
 stats.set_int(mpx .. "STROMBERG_TORP_DEATHS", 100)
 stats.set_int(mpx .. "STROMBERG_TORP_SHOTS", 500)
 stats.set_int(mpx .. "STROMBERG_TORP_HITS", 500)
 stats.set_int(mpx .. "STROMBERG_TORP_HELDTIME", 5963259)
 stats.set_int(mpx .. "STROMBERG_TORP_ENEMY_KILLS", 500)
	elseif VehH == 4 then
 stats.set_int(mpx .. "THRUSTER_MG_KILLS", 500)
 stats.set_int(mpx .. "THRUSTER_MG_DEATHS", 100)
 stats.set_int(mpx .. "THRUSTER_MG_SHOTS", 500)
 stats.set_int(mpx .. "THRUSTER_MG_HITS", 500)
 stats.set_int(mpx .. "THRUSTER_MG_HEADSHOTS", 500)
 stats.set_int(mpx .. "THRUSTER_MG_HELDTIME", 5963259)
 stats.set_int(mpx .. "THRUSTER_MG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "THRUSTER_MISS_KILLS", 500)
 stats.set_int(mpx .. "THRUSTER_MISS_DEATHS", 100)
 stats.set_int(mpx .. "THRUSTER_MISS_SHOTS", 500)
 stats.set_int(mpx .. "THRUSTER_MISS_HITS", 500)
 stats.set_int(mpx .. "THRUSTER_MISS_HELDTIME", 5963259)
 stats.set_int(mpx .. "THRUSTER_MISS_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "VISERIS_MG_KILLS", 500)
 stats.set_int(mpx .. "VISERIS_MG_DEATHS", 100)
 stats.set_int(mpx .. "VISERIS_MG_SHOTS", 500)
 stats.set_int(mpx .. "VISERIS_MG_HITS", 500)
 stats.set_int(mpx .. "VISERIS_MG_HEADSHOTS", 500)
 stats.set_int(mpx .. "VISERIS_MG_HELDTIME", 5963259)
 stats.set_int(mpx .. "VISERIS_MG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "VOLATOL_MG_KILLS", 500)
 stats.set_int(mpx .. "VOLATOL_MG_DEATHS", 100)
 stats.set_int(mpx .. "VOLATOL_MG_SHOTS", 500)
 stats.set_int(mpx .. "VOLATOL_MG_HITS", 500)
 stats.set_int(mpx .. "VOLATOL_MG_HEADSHOTS", 500)
 stats.set_int(mpx .. "VOLATOL_MG_HELDTIME", 5963259)
 stats.set_int(mpx .. "VOLATOL_MG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "MULE4_MG_KILLS", 500)
 stats.set_int(mpx .. "MULE4_MG_DEATHS", 100)
 stats.set_int(mpx .. "MULE4_MG_SHOTS", 500)
 stats.set_int(mpx .. "MULE4_MG_HITS", 500)
 stats.set_int(mpx .. "MULE4_MG_HEADSHOTS", 500)
 stats.set_int(mpx .. "MULE4_MG_HELDTIME", 5963259)
 stats.set_int(mpx .. "MULE4_MG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "MULE4_MISS_KILLS", 500)
 stats.set_int(mpx .. "MULE4_MISS_DEATHS", 100)
 stats.set_int(mpx .. "MULE4_MISS_SHOTS", 500)
 stats.set_int(mpx .. "MULE4_MISS_HITS", 500)
 stats.set_int(mpx .. "MULE4_MISS_HELDTIME", 5963259)
 stats.set_int(mpx .. "MULE4_MISS_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "MULE4_GL_KILLS", 500)
 stats.set_int(mpx .. "MULE4_GL_DEATHS", 100)
 stats.set_int(mpx .. "MULE4_GL_SHOTS", 500)
 stats.set_int(mpx .. "MULE4_GL_HITS", 500)
 stats.set_int(mpx .. "MULE4_GL_HELDTIME", 5963259)
 stats.set_int(mpx .. "MULE4_GL_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "MENACER_MG_KILLS", 500)
 stats.set_int(mpx .. "MENACER_MG_DEATHS", 100)
 stats.set_int(mpx .. "MENACER_MG_SHOTS", 500)
 stats.set_int(mpx .. "MENACER_MG_HITS", 500)
 stats.set_int(mpx .. "MENACER_MG_HEADSHOTS", 500)
 stats.set_int(mpx .. "MENACER_MG_HELDTIME", 5963259)
 stats.set_int(mpx .. "MENACER_MG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "MENACER_TURR_KILLS", 500)
 stats.set_int(mpx .. "MENACER_TURR_DEATHS", 100)
 stats.set_int(mpx .. "MENACER_TURR_SHOTS", 500)
 stats.set_int(mpx .. "MENACER_TURR_HITS", 500)
 stats.set_int(mpx .. "MENACER_TURR_HEADSHOTS", 500)
 stats.set_int(mpx .. "MENACER_TURR_HELDTIME", 5963259)
 stats.set_int(mpx .. "MENACER_TURR_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "MENACER_MINI_KILLS", 500)
 stats.set_int(mpx .. "MENACER_MINI_DEATHS", 100)
 stats.set_int(mpx .. "MENACER_MINI_SHOTS", 500)
 stats.set_int(mpx .. "MENACER_MINI_HITS", 500)
 stats.set_int(mpx .. "MENACER_MINI_HEADSHOTS", 500)
 stats.set_int(mpx .. "MENACER_MINI_HELDTIME", 5963259)
 stats.set_int(mpx .. "MENACER_MINI_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "OPPRESSOR2_MG_KILLS", 500)
 stats.set_int(mpx .. "OPPRESSOR2_MG_DEATHS", 100)
 stats.set_int(mpx .. "OPPRESSOR2_MG_SHOTS", 500)
 stats.set_int(mpx .. "OPPRESSOR2_MG_HITS", 500)
 stats.set_int(mpx .. "OPPRESSOR2_MG_HEADSHOTS", 500)
 stats.set_int(mpx .. "OPPRESSOR2_MG_HELDTIME", 5963259)
 stats.set_int(mpx .. "OPPRESSOR2_MG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "OPPRESSOR2_CANN_KILLS", 500)
 stats.set_int(mpx .. "OPPRESSOR2_CANN_DEATHS", 100)
 stats.set_int(mpx .. "OPPRESSOR2_CANN_SHOTS", 500)
 stats.set_int(mpx .. "OPPRESSOR2_CANN_HITS", 500)
 stats.set_int(mpx .. "OPPRESSOR2_CANN_HELDTIME", 5963259)
 stats.set_int(mpx .. "OPPRESSOR2_CANN_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "OPPRESSOR2_MISS_KILLS", 500)
 stats.set_int(mpx .. "OPPRESSOR2_MISS_DEATHS", 100)
 stats.set_int(mpx .. "OPPRESSOR2_MISS_SHOTS", 500)
 stats.set_int(mpx .. "OPPRESSOR2_MISS_HITS", 500)
 stats.set_int(mpx .. "OPPRESSOR2_MISS_HELDTIME", 5963259)
 stats.set_int(mpx .. "OPPRESSOR2_MISS_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "BRUISER_MG50_KILLS", 500)
 stats.set_int(mpx .. "BRUISER_MG50_DEATHS", 100)
 stats.set_int(mpx .. "BRUISER_MG50_SHOTS", 500)
 stats.set_int(mpx .. "BRUISER_MG50_HITS", 500)
 stats.set_int(mpx .. "BRUISER_MG50_HEADSHOTS", 500)
 stats.set_int(mpx .. "BRUISER_MG50_HELDTIME", 5963259)
 stats.set_int(mpx .. "BRUISER_MG50_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "BRUISER2_MG50_KILLS", 500)
 stats.set_int(mpx .. "BRUISER2_MG50_DEATHS", 100)
 stats.set_int(mpx .. "BRUISER2_MG50_SHOTS", 500)
 stats.set_int(mpx .. "BRUISER2_MG50_HITS", 500)
 stats.set_int(mpx .. "BRUISER2_MG50_HEADSHOTS", 500)
 stats.set_int(mpx .. "BRUISER2_MG50_HELDTIME", 5963259)
 stats.set_int(mpx .. "BRUISER2_MG50_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "BRUISER2_LAS_KILLS", 500)
 stats.set_int(mpx .. "BRUISER2_LAS_DEATHS", 100)
 stats.set_int(mpx .. "BRUISER2_LAS_SHOTS", 500)
 stats.set_int(mpx .. "BRUISER2_LAS_HITS", 500)
 stats.set_int(mpx .. "BRUISER2_LAS_HEADSHOTS", 500)
 stats.set_int(mpx .. "BRUISER2_LAS_HELDTIME", 5963259)
 stats.set_int(mpx .. "BRUISER2_LAS_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "BRUISER3_MG50_KILLS", 500)
 stats.set_int(mpx .. "BRUISER3_MG50_DEATHS", 100)
 stats.set_int(mpx .. "BRUISER3_MG50_SHOTS", 500)
 stats.set_int(mpx .. "BRUISER3_MG50_HITS", 500)
 stats.set_int(mpx .. "BRUISER3_MG50_HEADSHOTS", 500)
 stats.set_int(mpx .. "BRUISER3_MG50_HELDTIME", 5963259)
 stats.set_int(mpx .. "BRUISER3_MG50_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "BRUTUS_MG50_KILLS", 500)
 stats.set_int(mpx .. "BRUTUS_MG50_DEATHS", 100)
 stats.set_int(mpx .. "BRUTUS_MG50_SHOTS", 500)
 stats.set_int(mpx .. "BRUTUS_MG50_HITS", 500)
 stats.set_int(mpx .. "BRUTUS_MG50_HEADSHOTS", 500)
 stats.set_int(mpx .. "BRUTUS_MG50_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "BRUTUS2_MG50_KILLS", 500)
 stats.set_int(mpx .. "BRUTUS2_MG50_DEATHS", 100)
 stats.set_int(mpx .. "BRUTUS2_MG50_SHOTS", 500)
 stats.set_int(mpx .. "BRUTUS2_MG50_HITS", 500)
 stats.set_int(mpx .. "BRUTUS2_MG50_HEADSHOTS", 500)
 stats.set_int(mpx .. "BRUTUS2_MG50_HELDTIME", 5963259)
 stats.set_int(mpx .. "BRUTUS2_MG50_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "BRUTUS2_LAS_KILLS", 500)
 stats.set_int(mpx .. "BRUTUS2_LAS_DEATHS", 100)
 stats.set_int(mpx .. "BRUTUS2_LAS_SHOTS", 500)
 stats.set_int(mpx .. "BRUTUS2_LAS_HITS", 500)
 stats.set_int(mpx .. "BRUTUS2_LAS_HEADSHOTS", 500)
 stats.set_int(mpx .. "BRUTUS2_LAS_HELDTIME", 5963259)
 stats.set_int(mpx .. "BRUTUS2_LAS_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "BRUTUS3_MG50_KILLS", 500)
 stats.set_int(mpx .. "BRUTUS3_MG50_DEATHS", 100)
 stats.set_int(mpx .. "BRUTUS3_MG50_SHOTS", 500)
 stats.set_int(mpx .. "BRUTUS3_MG50_HITS", 500)
 stats.set_int(mpx .. "BRUTUS3_MG50_HEADSHOTS", 500)
 stats.set_int(mpx .. "BRUTUS3_MG50_HELDTIME", 5963259)
 stats.set_int(mpx .. "BRUTUS3_MG50_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "CERBERUS_FLAME_KILLS", 500)
 stats.set_int(mpx .. "CERBERUS_FLAME_DEATHS", 100)
 stats.set_int(mpx .. "CERBERUS_FLAME_SHOTS", 500)
 stats.set_int(mpx .. "CERBERUS_FLAME_HITS", 500)
 stats.set_int(mpx .. "CERBERUS_FLAME_HEADSHOTS", 500)
 stats.set_int(mpx .. "CERBERUS_FLAME_HELDTIME", 5963259)
 stats.set_int(mpx .. "CERBERUS_FLAME_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "CERBERUS2_FLAME_KILLS", 500)
 stats.set_int(mpx .. "CERBERUS2_FLAME_DEATHS", 100)
 stats.set_int(mpx .. "CERBERUS2_FLAME_SHOTS", 500)
 stats.set_int(mpx .. "CERBERUS2_FLAME_HITS", 500)
 stats.set_int(mpx .. "CERBERUS2_FLAME_HEADSHOTS", 500)
 stats.set_int(mpx .. "CERBERUS2_FLAME_HELDTIME", 5963259)
 stats.set_int(mpx .. "CERBERUS2_FLAME_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "CERBERUS3_FLAME_KILLS", 500)
 stats.set_int(mpx .. "CERBERUS3_FLAME_DEATHS", 100)
 stats.set_int(mpx .. "CERBERUS3_FLAME_SHOTS", 500)
 stats.set_int(mpx .. "CERBERUS3_FLAME_HITS", 500)
 stats.set_int(mpx .. "CERBERUS3_FLAME_HEADSHOTS", 500)
 stats.set_int(mpx .. "CERBERUS3_FLAME_HELDTIME", 5963259)
 stats.set_int(mpx .. "CERBERUS3_FLAME_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "DEATHBIKE_MINI_KILLS", 500)
 stats.set_int(mpx .. "DEATHBIKE_MINI_DEATHS", 100)
 stats.set_int(mpx .. "DEATHBIKE_MINI_SHOTS", 500)
 stats.set_int(mpx .. "DEATHBIKE_MINI_HITS", 500)
 stats.set_int(mpx .. "DEATHBIKE_MINI_HEADSHOTS", 500)
 stats.set_int(mpx .. "DEATHBIKE_MINI_HELDTIME", 5963259)
 stats.set_int(mpx .. "DEATHBIKE_MINI_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "DEATHBIKE2_LAS_KILLS", 500)
 stats.set_int(mpx .. "DEATHBIKE2_LAS_DEATHS", 100)
 stats.set_int(mpx .. "DEATHBIKE2_LAS_SHOTS", 500)
 stats.set_int(mpx .. "DEATHBIKE2_LAS_HITS", 500)
 stats.set_int(mpx .. "DEATHBIKE2_LAS_HEADSHOTS", 500)
 stats.set_int(mpx .. "DEATHBIKE2_LAS_HELDTIME", 5963259)
 stats.set_int(mpx .. "DEATHBIKE2_LAS_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "DEATHBIKE3_MINI_KILLS", 500)
 stats.set_int(mpx .. "DEATHBIKE3_MINI_DEATHS", 100)
 stats.set_int(mpx .. "DEATHBIKE3_MINI_SHOTS", 500)
 stats.set_int(mpx .. "DEATHBIKE3_MINI_HITS", 500)
 stats.set_int(mpx .. "DEATHBIKE3_MINI_HEADSHOTS", 500)
 stats.set_int(mpx .. "DEATHBIKE3_MINI_HELDTIME", 5963259)
 stats.set_int(mpx .. "DEATHBIKE3_MINI_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "DOMINATOR4_MG50_KILLS", 500)
 stats.set_int(mpx .. "DOMINATOR4_MG50_DEATHS", 100)
 stats.set_int(mpx .. "DOMINATOR4_MG50_SHOTS", 500)
 stats.set_int(mpx .. "DOMINATOR4_MG50_HITS", 500)
 stats.set_int(mpx .. "DOMINATOR4_MG50_HEADSHOTS", 500)
 stats.set_int(mpx .. "DOMINATOR4_MG50_HELDTIME", 5963259)
 stats.set_int(mpx .. "DOMINATOR4_MG50_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "DOMINATOR5_MG50_KILLS", 500)
 stats.set_int(mpx .. "DOMINATOR5_MG50_DEATHS", 100)
 stats.set_int(mpx .. "DOMINATOR5_MG50_SHOTS", 500)
 stats.set_int(mpx .. "DOMINATOR5_MG50_HITS", 500)
 stats.set_int(mpx .. "DOMINATOR5_MG50_HEADSHOTS", 500)
 stats.set_int(mpx .. "DOMINATOR5_MG50_HELDTIME", 5963259)
 stats.set_int(mpx .. "DOMINATOR5_MG50_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "DOMINATOR5_LAS_KILLS", 500)
 stats.set_int(mpx .. "DOMINATOR5_LAS_DEATHS", 100)
 stats.set_int(mpx .. "DOMINATOR5_LAS_SHOTS", 500)
 stats.set_int(mpx .. "DOMINATOR5_LAS_HITS", 500)
 stats.set_int(mpx .. "DOMINATOR5_LAS_HEADSHOTS", 500)
 stats.set_int(mpx .. "DOMINATOR5_LAS_HELDTIME", 5963259)
 stats.set_int(mpx .. "DOMINATOR5_LAS_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "DOMINATOR6_MG50_KILLS", 500)
 stats.set_int(mpx .. "DOMINATOR6_MG50_DEATHS", 100)
 stats.set_int(mpx .. "DOMINATOR6_MG50_SHOTS", 500)
 stats.set_int(mpx .. "DOMINATOR6_MG50_HITS", 500)
 stats.set_int(mpx .. "DOMINATOR6_MG50_HEADSHOTS", 500)
 stats.set_int(mpx .. "DOMINATOR6_MG50_HELDTIME", 5963259)
 stats.set_int(mpx .. "DOMINATOR6_MG50_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "IMPALER2_MG50_KILLS", 500)
 stats.set_int(mpx .. "IMPALER2_MG50_DEATHS", 100)
 stats.set_int(mpx .. "IMPALER2_MG50_SHOTS", 500)
 stats.set_int(mpx .. "IMPALER2_MG50_HITS", 500)
 stats.set_int(mpx .. "IMPALER2_MG50_HEADSHOTS", 500)
 stats.set_int(mpx .. "IMPALER2_MG50_HELDTIME", 5963259)
 stats.set_int(mpx .. "IMPALER2_MG50_ENEMY_KILLS", 500)
	elseif VehH == 5 then
 stats.set_int(mpx .. "IMPALER3_MG50_KILLS", 500)
 stats.set_int(mpx .. "IMPALER3_MG50_DEATHS", 100)
 stats.set_int(mpx .. "IMPALER3_MG50_SHOTS", 500)
 stats.set_int(mpx .. "IMPALER3_MG50_HITS", 500)
 stats.set_int(mpx .. "IMPALER3_MG50_HEADSHOTS", 500)
 stats.set_int(mpx .. "IMPALER3_MG50_HELDTIME", 5963259)
 stats.set_int(mpx .. "IMPALER3_MG50_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "IMPALER3_LAS_KILLS", 500)
 stats.set_int(mpx .. "IMPALER3_LAS_DEATHS", 100)
 stats.set_int(mpx .. "IMPALER3_LAS_SHOTS", 500)
 stats.set_int(mpx .. "IMPALER3_LAS_HITS", 500)
 stats.set_int(mpx .. "IMPALER3_LAS_HEADSHOTS", 500)
 stats.set_int(mpx .. "IMPALER3_LAS_HELDTIME", 5963259)
 stats.set_int(mpx .. "IMPALER3_LAS_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "IMPALER4_MG50_KILLS", 500)
 stats.set_int(mpx .. "IMPALER4_MG50_DEATHS", 100)
 stats.set_int(mpx .. "IMPALER4_MG50_SHOTS", 500)
 stats.set_int(mpx .. "IMPALER4_MG50_HITS", 500)
 stats.set_int(mpx .. "IMPALER4_MG50_HEADSHOTS", 500)
 stats.set_int(mpx .. "IMPALER4_MG50_HELDTIME", 5963259)
 stats.set_int(mpx .. "IMPALER4_MG50_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "IMPERATOR_MG50_KILLS", 500)
 stats.set_int(mpx .. "IMPERATOR_MG50_DEATHS", 100)
 stats.set_int(mpx .. "IMPERATOR_MG50_SHOTS", 500)
 stats.set_int(mpx .. "IMPERATOR_MG50_HITS", 500)
 stats.set_int(mpx .. "IMPERATOR_MG50_HEADSHOTS", 500)
 stats.set_int(mpx .. "IMPERATOR_MG50_HELDTIME", 5963259)
 stats.set_int(mpx .. "IMPERATOR_MG50_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "IMPERATOR_KIN_KILLS", 500)
 stats.set_int(mpx .. "IMPERATOR_KIN_DEATHS", 100)
 stats.set_int(mpx .. "IMPERATOR_KIN_SHOTS", 500)
 stats.set_int(mpx .. "IMPERATOR_KIN_HITS", 500)
 stats.set_int(mpx .. "IMPERATOR_KIN_HELDTIME", 5963259)
 stats.set_int(mpx .. "IMPERATOR_KIN_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "IMPERATOR2_MG50_KILLS", 500)
 stats.set_int(mpx .. "IMPERATOR2_MG50_DEATHS", 100)
 stats.set_int(mpx .. "IMPERATOR2_MG50_SHOTS", 500)
 stats.set_int(mpx .. "IMPERATOR2_MG50_HITS", 500)
 stats.set_int(mpx .. "IMPERATOR2_MG50_HEADSHOTS", 500)
 stats.set_int(mpx .. "IMPERATOR2_MG50_HELDTIME", 5963259)
 stats.set_int(mpx .. "IMPERATOR2_MG50_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "IMPERATOR2_KIN_KILLS", 500)
 stats.set_int(mpx .. "IMPERATOR2_KIN_DEATHS", 100)
 stats.set_int(mpx .. "IMPERATOR2_KIN_SHOTS", 500)
 stats.set_int(mpx .. "IMPERATOR2_KIN_HITS", 500)
 stats.set_int(mpx .. "IMPERATOR2_KIN_HELDTIME", 5963259)
 stats.set_int(mpx .. "IMPERATOR2_KIN_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "IMPERATOR2_LAS_KILLS", 500)
 stats.set_int(mpx .. "IMPERATOR2_LAS_DEATHS", 100)
 stats.set_int(mpx .. "IMPERATOR2_LAS_SHOTS", 500)
 stats.set_int(mpx .. "IMPERATOR2_LAS_HITS", 500)
 stats.set_int(mpx .. "IMPERATOR2_LAS_HEADSHOTS", 500)
 stats.set_int(mpx .. "IMPERATOR2_LAS_HELDTIME", 5963259)
 stats.set_int(mpx .. "IMPERATOR2_LAS_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "IMPERATOR3_MG50_KILLS", 500)
 stats.set_int(mpx .. "IMPERATOR3_MG50_DEATHS", 100)
 stats.set_int(mpx .. "IMPERATOR3_MG50_SHOTS", 500)
 stats.set_int(mpx .. "IMPERATOR3_MG50_HITS", 500)
 stats.set_int(mpx .. "IMPERATOR3_MG50_HEADSHOTS", 500)
 stats.set_int(mpx .. "IMPERATOR3_MG50_HELDTIME", 5963259)
 stats.set_int(mpx .. "IMPERATOR3_MG50_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "IMPERATOR3_KIN_KILLS", 500)
 stats.set_int(mpx .. "IMPERATOR3_KIN_DEATHS", 100)
 stats.set_int(mpx .. "IMPERATOR3_KIN_SHOTS", 500)
 stats.set_int(mpx .. "IMPERATOR3_KIN_HITS", 500)
 stats.set_int(mpx .. "IMPERATOR3_KIN_HELDTIME", 5963259)
 stats.set_int(mpx .. "IMPERATOR3_KIN_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "VALKYRIE_CANNON_KILLS", 500)
 stats.set_int(mpx .. "VALKYRIE_CANNON_DEATHS", 100)
 stats.set_int(mpx .. "VALKYRIE_CANNON_SHOTS", 500)
 stats.set_int(mpx .. "VALKYRIE_CANNON_HITS", 500)
 stats.set_int(mpx .. "VALKYRIE_CANNON_HEADSHOTS", 500)
 stats.set_int(mpx .. "VALKYRIE_CANNON_HELDTIME", 5963259)
 stats.set_int(mpx .. "VALKYRIE_CANNON_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "VALKYRIE_TURR_KILLS", 500)
 stats.set_int(mpx .. "VALKYRIE_TURR_DEATHS", 100)
 stats.set_int(mpx .. "VALKYRIE_TURR_SHOTS", 500)
 stats.set_int(mpx .. "VALKYRIE_TURR_HITS", 500)
 stats.set_int(mpx .. "VALKYRIE_TURR_HEADSHOTS", 500)
 stats.set_int(mpx .. "VALKYRIE_TURR_HELDTIME", 5963259)
 stats.set_int(mpx .. "VALKYRIE_TURR_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "JB7002_MG_KILLS", 500)
 stats.set_int(mpx .. "JB7002_MG_DEATHS", 100)
 stats.set_int(mpx .. "JB7002_MG_SHOTS", 500)
 stats.set_int(mpx .. "JB7002_MG_HITS", 500)
 stats.set_int(mpx .. "JB7002_MG_HEADSHOTS", 500)
 stats.set_int(mpx .. "JB7002_MG_HELDTIME", 5963259)
 stats.set_int(mpx .. "JB7002_MG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "MINITANK_MG_KILLS", 500)
 stats.set_int(mpx .. "MINITANK_MG_DEATHS", 100)
 stats.set_int(mpx .. "MINITANK_MG_SHOTS", 500)
 stats.set_int(mpx .. "MINITANK_MG_HITS", 500)
 stats.set_int(mpx .. "MINITANK_MG_HEADSHOTS", 500)
 stats.set_int(mpx .. "MINITANK_MG_HELDTIME", 5963259)
 stats.set_int(mpx .. "MINITANK_MG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "MINITANK_FL_KILLS", 500)
 stats.set_int(mpx .. "MINITANK_FL_DEATHS", 100)
 stats.set_int(mpx .. "MINITANK_FL_SHOTS", 500)
 stats.set_int(mpx .. "MINITANK_FL_HITS", 500)
 stats.set_int(mpx .. "MINITANK_FL_HELDTIME", 5963259)
 stats.set_int(mpx .. "MINITANK_FL_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "MINITANK_RK_KILLS", 500)
 stats.set_int(mpx .. "MINITANK_RK_DEATHS", 100)
 stats.set_int(mpx .. "MINITANK_RK_SHOTS", 500)
 stats.set_int(mpx .. "MINITANK_RK_HITS", 500)
 stats.set_int(mpx .. "MINITANK_RK_HELDTIME", 5963259)
 stats.set_int(mpx .. "MINITANK_RK_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "MINITANK_LZ_KILLS", 500)
 stats.set_int(mpx .. "MINITANK_LZ_DEATHS", 100)
 stats.set_int(mpx .. "MINITANK_LZ_SHOTS", 500)
 stats.set_int(mpx .. "MINITANK_LZ_HITS", 500)
 stats.set_int(mpx .. "MINITANK_LZ_HEADSHOTS", 500)
 stats.set_int(mpx .. "MINITANK_LZ_HELDTIME", 5963259)
 stats.set_int(mpx .. "MINITANK_LZ_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "INSURGENT_TURR_KILLS", 500)
 stats.set_int(mpx .. "INSURGENT_TURR_DEATHS", 100)
 stats.set_int(mpx .. "INSURGENT_TURR_SHOTS", 500)
 stats.set_int(mpx .. "INSURGENT_TURR_HITS", 500)
 stats.set_int(mpx .. "INSURGENT_TURR_HEADSHOTS", 500)
 stats.set_int(mpx .. "INSURGENT_TURR_HELDTIME", 5963259)
 stats.set_int(mpx .. "INSURGENT_TURR_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "SAVAGE_ROCKET_KILLS", 500)
 stats.set_int(mpx .. "SAVAGE_ROCKET_DEATHS", 100)
 stats.set_int(mpx .. "SAVAGE_ROCKET_SHOTS", 500)
 stats.set_int(mpx .. "SAVAGE_ROCKET_HITS", 500)
 stats.set_int(mpx .. "SAVAGE_ROCKET_HELDTIME", 5963259)
 stats.set_int(mpx .. "SAVAGE_ROCKET_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "SAVAGE_BULLET_KILLS", 500)
 stats.set_int(mpx .. "SAVAGE_BULLET_DEATHS", 100)
 stats.set_int(mpx .. "SAVAGE_BULLET_SHOTS", 500)
 stats.set_int(mpx .. "SAVAGE_BULLET_HITS", 500)
 stats.set_int(mpx .. "SAVAGE_BULLET_HEADSHOTS", 500)
 stats.set_int(mpx .. "SAVAGE_BULLET_HELDTIME", 5963259)
 stats.set_int(mpx .. "SAVAGE_BULLET_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "TECHNICAL_TURR_KILLS", 500)
 stats.set_int(mpx .. "TECHNICAL_TURR_DEATHS", 100)
 stats.set_int(mpx .. "TECHNICAL_TURR_SHOTS", 500)
 stats.set_int(mpx .. "TECHNICAL_TURR_HITS", 500)
 stats.set_int(mpx .. "TECHNICAL_TURR_HEADSHOTS", 500)
 stats.set_int(mpx .. "TECHNICAL_TURR_HELDTIME", 5963259)
 stats.set_int(mpx .. "TECHNICAL_TURR_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "VEHBOMB_KILLS", 500)
 stats.set_int(mpx .. "VEHBOMB_DEATHS", 100)
 stats.set_int(mpx .. "VEHBOMB_SHOTS", 500)
 stats.set_int(mpx .. "VEHBOMB_HITS", 500)
 stats.set_int(mpx .. "VEHBOMB_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "VEHBOMB_C_KILLS", 500)
 stats.set_int(mpx .. "VEHBOMB_C_DEATHS", 100)
 stats.set_int(mpx .. "VEHBOMB_C_SHOTS", 500)
 stats.set_int(mpx .. "VEHBOMB_C_HITS", 500)
 stats.set_int(mpx .. "VEHBOMB_C_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "VEHBOMB_G_KILLS", 500)
 stats.set_int(mpx .. "VEHBOMB_G_DEATHS", 100)
 stats.set_int(mpx .. "VEHBOMB_G_SHOTS", 500)
 stats.set_int(mpx .. "VEHBOMB_G_HITS", 500)
 stats.set_int(mpx .. "VEHBOMB_G_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "VEHBOMB_I_KILLS", 500)
 stats.set_int(mpx .. "VEHBOMB_I_DEATHS", 100)
 stats.set_int(mpx .. "VEHBOMB_I_SHOTS", 500)
 stats.set_int(mpx .. "VEHBOMB_I_HITS", 500)
 stats.set_int(mpx .. "VEHBOMB_I_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "VEHBOMB_W_KILLS", 500)
 stats.set_int(mpx .. "VEHBOMB_W_DEATHS", 100)
 stats.set_int(mpx .. "VEHBOMB_W_SHOTS", 500)
 stats.set_int(mpx .. "VEHBOMB_W_HITS", 500)
 stats.set_int(mpx .. "BOMBUSHKA_CANN_KILLS", 500)
 stats.set_int(mpx .. "BOMBUSHKA_CANN_DEATHS", 100)
 stats.set_int(mpx .. "BOMBUSHKA_CANN_SHOTS", 500)
 stats.set_int(mpx .. "BOMBUSHKA_CANN_HITS", 500)
 stats.set_int(mpx .. "BOMBUSHKA_CANN_HELDTIME", 5963259)
 stats.set_int(mpx .. "BOMBUSHKA_CANN_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "BOMBUSHKA_DUAL_KILLS", 500)
 stats.set_int(mpx .. "BOMBUSHKA_DUAL_DEATHS", 100)
 stats.set_int(mpx .. "BOMBUSHKA_DUAL_SHOTS", 500)
 stats.set_int(mpx .. "BOMBUSHKA_DUAL_HITS", 500)
 stats.set_int(mpx .. "BOMBUSHKA_DUAL_HEADSHOTS", 500)
 stats.set_int(mpx .. "BOMBUSHKA_DUAL_HELDTIME", 5963259)
 stats.set_int(mpx .. "BOMBUSHKA_DUAL_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "HAVOK_MINI_KILLS", 500)
 stats.set_int(mpx .. "HAVOK_MINI_DEATHS", 100)
 stats.set_int(mpx .. "HAVOK_MINI_SHOTS", 500)
 stats.set_int(mpx .. "HAVOK_MINI_HITS", 500)
 stats.set_int(mpx .. "HAVOK_MINI_HEADSHOTS", 500)
 stats.set_int(mpx .. "HAVOK_MINI_HELDTIME", 5963259)
 stats.set_int(mpx .. "HAVOK_MINI_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "HUNTER_BARR_KILLS", 500)
 stats.set_int(mpx .. "HUNTER_BARR_DEATHS", 100)
 stats.set_int(mpx .. "HUNTER_BARR_SHOTS", 500)
 stats.set_int(mpx .. "HUNTER_BARR_HITS", 500)
 stats.set_int(mpx .. "HUNTER_BARR_HELDTIME", 5963259)
 stats.set_int(mpx .. "HUNTER_BARR_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "HUNTER_CANNON_KILLS", 500)
 stats.set_int(mpx .. "HUNTER_CANNON_DEATHS", 100)
 stats.set_int(mpx .. "HUNTER_CANNON_SHOTS", 500)
 stats.set_int(mpx .. "HUNTER_CANNON_HITS", 500)
 stats.set_int(mpx .. "HUNTER_CANNON_HELDTIME", 5963259)
 stats.set_int(mpx .. "HUNTER_CANNON_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "MICROLIGHT_MG_KILLS", 500)
 stats.set_int(mpx .. "MICROLIGHT_MG_DEATHS", 100)
 stats.set_int(mpx .. "MICROLIGHT_MG_SHOTS", 500)
 stats.set_int(mpx .. "MICROLIGHT_MG_HITS", 500)
 stats.set_int(mpx .. "MICROLIGHT_MG_HEADSHOTS", 500)
 stats.set_int(mpx .. "MICROLIGHT_MG_HELDTIME", 5963259)
 stats.set_int(mpx .. "MICROLIGHT_MG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "MOGUL_NOSE_KILLS", 500)
 stats.set_int(mpx .. "MOGUL_NOSE_DEATHS", 100)
 stats.set_int(mpx .. "MOGUL_NOSE_SHOTS", 500)
 stats.set_int(mpx .. "MOGUL_NOSE_HITS", 500)
 stats.set_int(mpx .. "MOGUL_NOSE_HEADSHOTS", 500)
 stats.set_int(mpx .. "MOGUL_NOSE_HELDTIME", 5963259)
 stats.set_int(mpx .. "MOGUL_NOSE_ENEMY_KILLS", 500)
	elseif VehH == 6 then
 stats.set_int(mpx .. "MOGUL_DNOSE_KILLS", 500)
 stats.set_int(mpx .. "MOGUL_DNOSE_DEATHS", 100)
 stats.set_int(mpx .. "MOGUL_DNOSE_SHOTS", 500)
 stats.set_int(mpx .. "MOGUL_DNOSE_HITS", 500)
 stats.set_int(mpx .. "MOGUL_DNOSE_HEADSHOTS", 500)
 stats.set_int(mpx .. "MOGUL_DNOSE_HELDTIME", 5963259)
 stats.set_int(mpx .. "MOGUL_DNOSE_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "MOGUL_TURR_KILLS", 500)
 stats.set_int(mpx .. "MOGUL_TURR_DEATHS", 100)
 stats.set_int(mpx .. "MOGUL_TURR_SHOTS", 500)
 stats.set_int(mpx .. "MOGUL_TURR_HITS", 500)
 stats.set_int(mpx .. "MOGUL_TURR_HEADSHOTS", 500)
 stats.set_int(mpx .. "MOGUL_TURR_HELDTIME", 5963259)
 stats.set_int(mpx .. "MOGUL_TURR_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "MOGUL_DTURR_KILLS", 500)
 stats.set_int(mpx .. "MOGUL_DTURR_DEATHS", 100)
 stats.set_int(mpx .. "MOGUL_DTURR_SHOTS", 500)
 stats.set_int(mpx .. "MOGUL_DTURR_HITS", 500)
 stats.set_int(mpx .. "MOGUL_DTURR_HEADSHOTS", 500)
 stats.set_int(mpx .. "MOGUL_DTURR_HELDTIME", 5963259)
 stats.set_int(mpx .. "MOGUL_DTURR_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "MOLOTOK_MG_KILLS", 500)
 stats.set_int(mpx .. "MOLOTOK_MG_DEATHS", 100)
 stats.set_int(mpx .. "MOLOTOK_MG_SHOTS", 500)
 stats.set_int(mpx .. "MOLOTOK_MG_HITS", 500)
 stats.set_int(mpx .. "MOLOTOK_MG_HEADSHOTS", 500)
 stats.set_int(mpx .. "MOLOTOK_MG_HELDTIME", 5963259)
 stats.set_int(mpx .. "MOLOTOK_MG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "MOLOTOK_MISS_KILLS", 500)
 stats.set_int(mpx .. "MOLOTOK_MISS_DEATHS", 100)
 stats.set_int(mpx .. "MOLOTOK_MISS_SHOTS", 500)
 stats.set_int(mpx .. "MOLOTOK_MISS_HITS", 500)
 stats.set_int(mpx .. "MOLOTOK_MISS_HELDTIME", 5963259)
 stats.set_int(mpx .. "MOLOTOK_MISS_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "NOKOTA_MG_KILLS", 500)
 stats.set_int(mpx .. "NOKOTA_MG_DEATHS", 100)
 stats.set_int(mpx .. "NOKOTA_MG_SHOTS", 500)
 stats.set_int(mpx .. "NOKOTA_MG_HITS", 500)
 stats.set_int(mpx .. "NOKOTA_MG_HEADSHOTS", 500)
 stats.set_int(mpx .. "NOKOTA_MG_HELDTIME", 5963259)
 stats.set_int(mpx .. "NOKOTA_MG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "NOKOTA_MISS_KILLS", 500)
 stats.set_int(mpx .. "NOKOTA_MISS_DEATHS", 100)
 stats.set_int(mpx .. "NOKOTA_MISS_SHOTS", 500)
 stats.set_int(mpx .. "NOKOTA_MISS_HITS", 500)
 stats.set_int(mpx .. "NOKOTA_MISS_HELDTIME", 5963259)
 stats.set_int(mpx .. "NOKOTA_MISS_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "PYRO_MG_KILLS", 500)
 stats.set_int(mpx .. "PYRO_MG_DEATHS", 100)
 stats.set_int(mpx .. "PYRO_MG_SHOTS", 500)
 stats.set_int(mpx .. "PYRO_MG_HITS", 500)
 stats.set_int(mpx .. "PYRO_MG_HEADSHOTS", 500)
 stats.set_int(mpx .. "PYRO_MG_HELDTIME", 5963259)
 stats.set_int(mpx .. "PYRO_MG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "PYRO_MISS_KILLS", 500)
 stats.set_int(mpx .. "PYRO_MISS_DEATHS", 100)
 stats.set_int(mpx .. "PYRO_MISS_SHOTS", 500)
 stats.set_int(mpx .. "PYRO_MISS_HITS", 500)
 stats.set_int(mpx .. "PYRO_MISS_HELDTIME", 5963259)
 stats.set_int(mpx .. "PYRO_MISS_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "ROGUE_MG_KILLS", 500)
 stats.set_int(mpx .. "ROGUE_MG_DEATHS", 100)
 stats.set_int(mpx .. "ROGUE_MG_SHOTS", 500)
 stats.set_int(mpx .. "ROGUE_MG_HITS", 500)
 stats.set_int(mpx .. "ROGUE_MG_HEADSHOTS", 500)
 stats.set_int(mpx .. "ROGUE_MG_HELDTIME", 5963259)
 stats.set_int(mpx .. "ROGUE_MG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "ROGUE_CANN_KILLS", 500)
 stats.set_int(mpx .. "ROGUE_CANN_DEATHS", 100)
 stats.set_int(mpx .. "ROGUE_CANN_SHOTS", 500)
 stats.set_int(mpx .. "ROGUE_CANN_HITS", 500)
 stats.set_int(mpx .. "ROGUE_CANN_HELDTIME", 5963259)
 stats.set_int(mpx .. "ROGUE_CANN_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "ROGUE_MISS_KILLS", 500)
 stats.set_int(mpx .. "ROGUE_MISS_DEATHS", 100)
 stats.set_int(mpx .. "ROGUE_MISS_SHOTS", 500)
 stats.set_int(mpx .. "ROGUE_MISS_HITS", 500)
 stats.set_int(mpx .. "ROGUE_MISS_HELDTIME", 5963259)
 stats.set_int(mpx .. "ROGUE_MISS_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "STARLING_MG_KILLS", 500)
 stats.set_int(mpx .. "STARLING_MG_DEATHS", 100)
 stats.set_int(mpx .. "STARLING_MG_SHOTS", 500)
 stats.set_int(mpx .. "STARLING_MG_HITS", 500)
 stats.set_int(mpx .. "STARLING_MG_HEADSHOTS", 500)
 stats.set_int(mpx .. "STARLING_MG_HELDTIME", 5963259)
 stats.set_int(mpx .. "STARLING_MG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "STARLING_MISS_KILLS", 500)
 stats.set_int(mpx .. "STARLING_MISS_DEATHS", 100)
 stats.set_int(mpx .. "STARLING_MISS_SHOTS", 500)
 stats.set_int(mpx .. "STARLING_MISS_HITS", 500)
 stats.set_int(mpx .. "STARLING_MISS_HELDTIME", 5963259)
 stats.set_int(mpx .. "STARLING_MISS_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "SEABREEZE_MG_KILLS", 500)
 stats.set_int(mpx .. "SEABREEZE_MG_DEATHS", 100)
 stats.set_int(mpx .. "SEABREEZE_MG_SHOTS", 500)
 stats.set_int(mpx .. "SEABREEZE_MG_HITS", 500)
 stats.set_int(mpx .. "SEABREEZE_MG_HEADSHOTS", 500)
 stats.set_int(mpx .. "SEABREEZE_MG_HELDTIME", 5963259)
 stats.set_int(mpx .. "SEABREEZE_MG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "TULA_MG_KILLS", 500)
 stats.set_int(mpx .. "TULA_MG_DEATHS", 100)
 stats.set_int(mpx .. "TULA_MG_SHOTS", 500)
 stats.set_int(mpx .. "TULA_MG_HITS", 500)
 stats.set_int(mpx .. "TULA_MG_HEADSHOTS", 500)
 stats.set_int(mpx .. "TULA_MG_HELDTIME", 5963259)
 stats.set_int(mpx .. "TULA_MG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "TULA_SINGLEMG_KILLS", 500)
 stats.set_int(mpx .. "TULA_SINGLEMG_DEATHS", 100)
 stats.set_int(mpx .. "TULA_SINGLEMG_SHOTS", 500)
 stats.set_int(mpx .. "TULA_SINGLEMG_HITS", 500)
 stats.set_int(mpx .. "TULA_SINGLEMG_HEADSHOTS", 500)
 stats.set_int(mpx .. "TULA_SINGLEMG_HELDTIME", 5963259)
 stats.set_int(mpx .. "TULA_SINGLEMG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "TULA_DUALMG_KILLS", 500)
 stats.set_int(mpx .. "TULA_DUALMG_DEATHS", 100)
 stats.set_int(mpx .. "TULA_DUALMG_SHOTS", 500)
 stats.set_int(mpx .. "TULA_DUALMG_HITS", 500)
 stats.set_int(mpx .. "TULA_DUALMG_HEADSHOTS", 500)
 stats.set_int(mpx .. "TULA_DUALMG_HELDTIME", 5963259)
 stats.set_int(mpx .. "TULA_DUALMG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "TULA_MINI_KILLS", 500)
 stats.set_int(mpx .. "TULA_MINI_DEATHS", 100)
 stats.set_int(mpx .. "TULA_MINI_SHOTS", 500)
 stats.set_int(mpx .. "TULA_MINI_HITS", 500)
 stats.set_int(mpx .. "TULA_MINI_HEADSHOTS", 500)
 stats.set_int(mpx .. "TULA_MINI_HELDTIME", 5963259)
 stats.set_int(mpx .. "TULA_MINI_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "VIGILANTE_MG_KILLS", 500)
 stats.set_int(mpx .. "VIGILANTE_MG_DEATHS", 100)
 stats.set_int(mpx .. "VIGILANTE_MG_SHOTS", 500)
 stats.set_int(mpx .. "VIGILANTE_MG_HITS", 500)
 stats.set_int(mpx .. "VIGILANTE_MG_HEADSHOTS", 500)
 stats.set_int(mpx .. "VIGILANTE_MG_HELDTIME", 5963259)
 stats.set_int(mpx .. "VIGILANTE_MG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "VIGILANTE_MISS_KILLS", 500)
 stats.set_int(mpx .. "VIGILANTE_MISS_DEATHS", 100)
 stats.set_int(mpx .. "VIGILANTE_MISS_SHOTS", 500)
 stats.set_int(mpx .. "VIGILANTE_MISS_HITS", 500)
 stats.set_int(mpx .. "VIGILANTE_MISS_HELDTIME", 5963259)
 stats.set_int(mpx .. "VIGILANTE_MISS_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "BOXVILLE5_TURR_KILLS", 500)
 stats.set_int(mpx .. "BOXVILLE5_TURR_DEATHS", 100)
 stats.set_int(mpx .. "BOXVILLE5_TURR_SHOTS", 500)
 stats.set_int(mpx .. "BOXVILLE5_TURR_HITS", 500)
 stats.set_int(mpx .. "BOXVILLE5_TURR_HEADSHOTS", 500)
 stats.set_int(mpx .. "BOXVILLE5_TURR_HELDTIME", 5963259)
 stats.set_int(mpx .. "BOXVILLE5_TURR_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "BLAZER5_CANNON_KILLS", 500)
 stats.set_int(mpx .. "BLAZER5_CANNON_DEATHS", 100)
 stats.set_int(mpx .. "BLAZER5_CANNON_SHOTS", 500)
 stats.set_int(mpx .. "BLAZER5_CANNON_HITS", 500)
 stats.set_int(mpx .. "BLAZER5_CANNON_HEADSHOTS", 500)
 stats.set_int(mpx .. "BLAZER5_CANNON_HELDTIME", 5963259)
 stats.set_int(mpx .. "BLAZER5_CANNON_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "RUINER2_BULLET_KILLS", 500)
 stats.set_int(mpx .. "RUINER2_BULLET_DEATHS", 100)
 stats.set_int(mpx .. "RUINER2_BULLET_SHOTS", 500)
 stats.set_int(mpx .. "RUINER2_BULLET_HITS", 500)
 stats.set_int(mpx .. "RUINER2_BULLET_HEADSHOTS", 500)
 stats.set_int(mpx .. "RUINER2_BULLET_HELDTIME", 5963259)
 stats.set_int(mpx .. "RUINER2_BULLET_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "RUINER2_ROCKET_KILLS", 500)
 stats.set_int(mpx .. "RUINER2_ROCKET_DEATHS", 100)
 stats.set_int(mpx .. "RUINER2_ROCKET_SHOTS", 500)
 stats.set_int(mpx .. "RUINER2_ROCKET_HITS", 500)
 stats.set_int(mpx .. "RUINER2_ROCKET_HEADSHOTS", 500)
 stats.set_int(mpx .. "RUINER2_ROCKET_HELDTIME", 5963259)
 stats.set_int(mpx .. "RUINER2_ROCKET_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "TECHNICAL2_TURR_KILLS", 500)
 stats.set_int(mpx .. "TECHNICAL2_TURR_DEATHS", 100)
 stats.set_int(mpx .. "TECHNICAL2_TURR_SHOTS", 500)
 stats.set_int(mpx .. "TECHNICAL2_TURR_HITS", 500)
 stats.set_int(mpx .. "TECHNICAL2_TURR_HEADSHOTS", 500)
 stats.set_int(mpx .. "TECHNICAL2_TURR_HELDTIME", 5963259)
 stats.set_int(mpx .. "TECHNICAL2_TURR_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "LIMO2_TURR_KILLS", 500)
 stats.set_int(mpx .. "LIMO2_TURR_DEATHS", 100)
 stats.set_int(mpx .. "LIMO2_TURR_SHOTS", 500)
 stats.set_int(mpx .. "LIMO2_TURR_HITS", 500)
 stats.set_int(mpx .. "LIMO2_TURR_HEADSHOTS", 500)
 stats.set_int(mpx .. "LIMO2_TURR_HELDTIME", 5963259)
 stats.set_int(mpx .. "LIMO2_TURR_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "VALKYRI2_TURR_KILLS", 500)
 stats.set_int(mpx .. "VALKYRI2_TURR_DEATHS", 100)
 stats.set_int(mpx .. "VALKYRI2_TURR_SHOTS", 500)
 stats.set_int(mpx .. "VALKYRI2_TURR_HITS", 500)
 stats.set_int(mpx .. "VALKYRI2_TURR_HEADSHOTS", 500)
 stats.set_int(mpx .. "VALKYRI2_TURR_HELDTIME", 5963259)
 stats.set_int(mpx .. "VALKYRI2_TURR_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "HYDRA_ROCKET_KILLS", 500)
 stats.set_int(mpx .. "HYDRA_ROCKET_DEATHS", 100)
 stats.set_int(mpx .. "HYDRA_ROCKET_SHOTS", 500)
 stats.set_int(mpx .. "HYDRA_ROCKET_HITS", 500)
 stats.set_int(mpx .. "HYDRA_ROCKET_HEADSHOTS", 500)
 stats.set_int(mpx .. "HYDRA_ROCKET_HELDTIME", 5963259)
 stats.set_int(mpx .. "HYDRA_ROCKET_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "HYDRA_BULLET_KILLS", 500)
 stats.set_int(mpx .. "HYDRA_BULLET_DEATHS", 100)
 stats.set_int(mpx .. "HYDRA_BULLET_SHOTS", 500)
 stats.set_int(mpx .. "HYDRA_BULLET_HITS", 500)
 stats.set_int(mpx .. "HYDRA_BULLET_HEADSHOTS", 500)
 stats.set_int(mpx .. "HYDRA_BULLET_HELDTIME", 5963259)
 stats.set_int(mpx .. "HYDRA_BULLET_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "ANNIHLATOR2_MNI_KILLS", 500)
 stats.set_int(mpx .. "ANNIHLATOR2_MNI_DEATHS", 100)
 stats.set_int(mpx .. "ANNIHLATOR2_MNI_SHOTS", 500)
 stats.set_int(mpx .. "ANNIHLATOR2_MNI_HITS", 500)
 stats.set_int(mpx .. "ANNIHLATOR2_MNI_HEADSHOTS", 500)
 stats.set_int(mpx .. "ANNIHLATOR2_MNI_HELDTIME", 5963259)
 stats.set_int(mpx .. "ANNIHLATOR2_MNI_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "ANNIHLATOR2_RKT_KILLS", 500)
 stats.set_int(mpx .. "ANNIHLATOR2_RKT_DEATHS", 100)
 stats.set_int(mpx .. "ANNIHLATOR2_RKT_SHOTS", 500)
 stats.set_int(mpx .. "ANNIHLATOR2_RKT_HITS", 500)
 stats.set_int(mpx .. "ANNIHLATOR2_RKT_HEADSHOTS", 500)
 stats.set_int(mpx .. "ANNIHLATOR2_RKT_HELDTIME", 5963259)
 stats.set_int(mpx .. "ANNIHLATOR2_RKT_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "ANNIHLATOR2_BAR_KILLS", 500)
 stats.set_int(mpx .. "ANNIHLATOR2_BAR_DEATHS", 100)
 stats.set_int(mpx .. "ANNIHLATOR2_BAR_SHOTS", 500)
 stats.set_int(mpx .. "ANNIHLATOR2_BAR_HITS", 500)
 stats.set_int(mpx .. "ANNIHLATOR2_BAR_HEADSHOTS", 500)
 stats.set_int(mpx .. "ANNIHLATOR2_BAR_HELDTIME", 5963259)
 stats.set_int(mpx .. "ANNIHLATOR2_BAR_ENEMY_KILLS", 500)
	elseif VehH == 7 then
 stats.set_int(mpx .. "DINGHY5_TURR_KILLS", 500)
 stats.set_int(mpx .. "DINGHY5_TURR_DEATHS", 100)
 stats.set_int(mpx .. "DINGHY5_TURR_SHOTS", 500)
 stats.set_int(mpx .. "DINGHY5_TURR_HITS", 500)
 stats.set_int(mpx .. "DINGHY5_TURR_HEADSHOTS", 500)
 stats.set_int(mpx .. "DINGHY5_TURR_HELDTIME", 5963259)
 stats.set_int(mpx .. "DINGHY5_TURR_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "KOSATKA_TORP_KILLS", 500)
 stats.set_int(mpx .. "KOSATKA_TORP_DEATHS", 100)
 stats.set_int(mpx .. "KOSATKA_TORP_SHOTS", 500)
 stats.set_int(mpx .. "KOSATKA_TORP_HITS", 500)
 stats.set_int(mpx .. "KOSATKA_TORP_HELDTIME", 5963259)
 stats.set_int(mpx .. "KOSATKA_TORP_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "KOSATKA_HMISS_KILLS", 500)
 stats.set_int(mpx .. "KOSATKA_HMISS_DEATHS", 100)
 stats.set_int(mpx .. "KOSATKA_HMISS_SHOTS", 500)
 stats.set_int(mpx .. "KOSATKA_HMISS_HITS", 500)
 stats.set_int(mpx .. "KOSATKA_HMISS_HELDTIME", 5963259)
 stats.set_int(mpx .. "KOSATKA_HMISS_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "SPARROW2_MINI_KILLS", 500)
 stats.set_int(mpx .. "SPARROW2_MINI_DEATHS", 100)
 stats.set_int(mpx .. "SPARROW2_MINI_SHOTS", 500)
 stats.set_int(mpx .. "SPARROW2_MINI_HITS", 500)
 stats.set_int(mpx .. "SPARROW2_MINI_HEADSHOTS", 500)
 stats.set_int(mpx .. "SPARROW2_MINI_HELDTIME", 5963259)
 stats.set_int(mpx .. "SPARROW2_MINI_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "SPARROW2_ROCKET_KILLS", 500)
 stats.set_int(mpx .. "SPARROW2_ROCKET_DEATHS", 100)
 stats.set_int(mpx .. "SPARROW2_ROCKET_SHOTS", 500)
 stats.set_int(mpx .. "SPARROW2_ROCKET_HITS", 500)
 stats.set_int(mpx .. "SPARROW2_ROCKET_HEADSHOTS", 500)
 stats.set_int(mpx .. "SPARROW2_ROCKET_HELDTIME", 5963259)
 stats.set_int(mpx .. "SPARROW2_ROCKET_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "PATROLBOAT_DLMG_KILLS", 500)
 stats.set_int(mpx .. "PATROLBOAT_DLMG_DEATHS", 100)
 stats.set_int(mpx .. "PATROLBOAT_DLMG_SHOTS", 500)
 stats.set_int(mpx .. "PATROLBOAT_DLMG_HITS", 500)
 stats.set_int(mpx .. "PATROLBOAT_DLMG_HEADSHOTS", 500)
 stats.set_int(mpx .. "PATROLBOAT_DLMG_HELDTIME", 5963259)
 stats.set_int(mpx .. "PATROLBOAT_DLMG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "PATROLBOAT_TURR_KILLS", 500)
 stats.set_int(mpx .. "PATROLBOAT_TURR_DEATHS", 100)
 stats.set_int(mpx .. "PATROLBOAT_TURR_SHOTS", 500)
 stats.set_int(mpx .. "PATROLBOAT_TURR_HITS", 500)
 stats.set_int(mpx .. "PATROLBOAT_TURR_HEADSHOTS", 500)
 stats.set_int(mpx .. "PATROLBOAT_TURR_HELDTIME", 5963259)
 stats.set_int(mpx .. "PATROLBOAT_TURR_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "TOREADOR_MG_KILLS", 500)
 stats.set_int(mpx .. "TOREADOR_MG_DEATHS", 100)
 stats.set_int(mpx .. "TOREADOR_MG_SHOTS", 500)
 stats.set_int(mpx .. "TOREADOR_MG_HITS", 500)
 stats.set_int(mpx .. "TOREADOR_MG_HEADSHOTS", 500)
 stats.set_int(mpx .. "TOREADOR_MG_HELDTIME", 5963259)
 stats.set_int(mpx .. "TOREADOR_MG_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "TOREADOR_MISS_KILLS", 500)
 stats.set_int(mpx .. "TOREADOR_MISS_DEATHS", 100)
 stats.set_int(mpx .. "TOREADOR_MISS_SHOTS", 500)
 stats.set_int(mpx .. "TOREADOR_MISS_HITS", 500)
 stats.set_int(mpx .. "TOREADOR_MISS_HELDTIME", 5963259)
 stats.set_int(mpx .. "TOREADOR_MISS_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "TOREADOR_TORP_KILLS", 500)
 stats.set_int(mpx .. "TOREADOR_TORP_DEATHS", 100)
 stats.set_int(mpx .. "TOREADOR_TORP_SHOTS", 500)
 stats.set_int(mpx .. "TOREADOR_TORP_HITS", 500)
 stats.set_int(mpx .. "TOREADOR_TORP_HELDTIME", 5963259)
 stats.set_int(mpx .. "TOREADOR_TORP_ENEMY_KILLS", 500)
 stats.set_int(mpx .. "PARAGON2_MG_KILLS", 500)
 stats.set_int(mpx .. "PARAGON2_MG_DEATHS", 100)
 stats.set_int(mpx .. "PARAGON2_MG_SHOTS", 500)
 stats.set_int(mpx .. "PARAGON2_MG_HITS", 500)
 stats.set_int(mpx .. "PARAGON2_MG_HELDTIME", 5963259)
 stats.set_int(mpx .. "PARAGON2_MG_ENEMY_KILLS", 500)
	end
end)
prgMenu:add_int_range("Weapon Stats-DoEachNo.", 1, 1, 3, function() return 1 end, function(WepH)

	if WepH == 1 then
 stats.set_int(mpx .. "PISTOL_KILLS", 600)
 stats.set_int(mpx .. "PISTOL_DEATHS", 100)
 stats.set_int(mpx .. "PISTOL_SHOTS", 600)
 stats.set_int(mpx .. "PISTOL_HITS", 600)
 stats.set_int(mpx .. "PISTOL_HEADSHOTS", 600)
 stats.set_int(mpx .. "PISTOL_ENEMY_KILLS", 600)
 stats.set_int(mpx .. "CMBTPISTOL_KILLS", 600)
 stats.set_int(mpx .. "CMBTPISTOL_DEATHS", 100)
 stats.set_int(mpx .. "CMBTPISTOL_SHOTS", 600)
 stats.set_int(mpx .. "CMBTPISTOL_HITS", 600)
 stats.set_int(mpx .. "CMBTPISTOL_HEADSHOTS", 600)
 stats.set_int(mpx .. "CMBTPISTOL_ENEMY_KILLS", 600)
 stats.set_int(mpx .. "APPISTOL_KILLS", 600)
 stats.set_int(mpx .. "APPISTOL_DEATHS", 100)
 stats.set_int(mpx .. "APPISTOL_SHOTS", 600)
 stats.set_int(mpx .. "APPISTOL_HITS", 600)
 stats.set_int(mpx .. "APPISTOL_HEADSHOTS", 600)
 stats.set_int(mpx .. "APPISTOL_ENEMY_KILLS", 600)
 stats.set_int(mpx .. "MICROSMG_KILLS", 600)
 stats.set_int(mpx .. "MICROSMG_DEATHS", 100)
 stats.set_int(mpx .. "MICROSMG_SHOTS", 600)
 stats.set_int(mpx .. "MICROSMG_HITS", 600)
 stats.set_int(mpx .. "MICROSMG_HEADSHOTS", 600)
 stats.set_int(mpx .. "MICROSMG_ENEMY_KILLS", 600)
 stats.set_int(mpx .. "SMG_KILLS", 600)
 stats.set_int(mpx .. "SMG_DEATHS", 100)
 stats.set_int(mpx .. "SMG_SHOTS", 600)
 stats.set_int(mpx .. "SMG_HITS", 600)
 stats.set_int(mpx .. "SMG_HEADSHOTS", 600)
 stats.set_int(mpx .. "SMG_ENEMY_KILLS", 600)
 stats.set_int(mpx .. "ASLTRIFLE_KILLS", 600)
 stats.set_int(mpx .. "ASLTRIFLE_DEATHS", 100)
 stats.set_int(mpx .. "ASLTRIFLE_SHOTS", 600)
 stats.set_int(mpx .. "ASLTRIFLE_HITS", 600)
 stats.set_int(mpx .. "ASLTRIFLE_HEADSHOTS", 600)
 stats.set_int(mpx .. "ASLTRIFLE_ENEMY_KILLS", 600)
 stats.set_int(mpx .. "CRBNRIFLE_KILLS", 600)
 stats.set_int(mpx .. "CRBNRIFLE_DEATHS", 100)
 stats.set_int(mpx .. "CRBNRIFLE_SHOTS", 600)
 stats.set_int(mpx .. "CRBNRIFLE_HITS", 600)
 stats.set_int(mpx .. "CRBNRIFLE_HEADSHOTS", 600)
 stats.set_int(mpx .. "CRBNRIFLE_ENEMY_KILLS", 600)
 stats.set_int(mpx .. "ADVRIFLE_KILLS", 600)
 stats.set_int(mpx .. "ADVRIFLE_DEATHS", 100)
 stats.set_int(mpx .. "ADVRIFLE_SHOTS", 600)
 stats.set_int(mpx .. "ADVRIFLE_HITS", 600)
 stats.set_int(mpx .. "ADVRIFLE_HEADSHOTS", 600)
 stats.set_int(mpx .. "ADVRIFLE_ENEMY_KILLS", 600)
 stats.set_int(mpx .. "MG_KILLS", 600)
 stats.set_int(mpx .. "MG_DEATHS", 100)
 stats.set_int(mpx .. "MG_SHOTS", 600)
 stats.set_int(mpx .. "MG_HITS", 600)
 stats.set_int(mpx .. "HEADSHOTS", 600)
 stats.set_int(mpx .. "ENEMY_KILLS", 600)
 stats.set_int(mpx .. "TACRIFLE_KILLS", 600)
 stats.set_int(mpx .. "TACRIFLE_DEATHS", 100)
 stats.set_int(mpx .. "TACRIFLE_SHOTS", 600)
 stats.set_int(mpx .. "TACRIFLE_HITS", 600)
 stats.set_int(mpx .. "TACRIFLE_HEADSHOTS", 600)
 stats.set_int(mpx .. "TACRIFLE_HELDTIME", 600)
 stats.set_int(mpx .. "TACRIFLE_DB_HELDTIME", 600)
 stats.set_int(mpx .. "TACRIFLE_ENEMY_KILLS", 600)

	elseif WepH == 2 then
 stats.set_int(mpx .. "CMBTMG_KILLS", 600)
 stats.set_int(mpx .. "CMBTMG_DEATHS", 100)
 stats.set_int(mpx .. "CMBTMG_SHOTS", 600)
 stats.set_int(mpx .. "CMBTMG_HITS", 600)
 stats.set_int(mpx .. "CMBTMG_HEADSHOTS", 600)
 stats.set_int(mpx .. "CMBTMG_ENEMY_KILLS", 600)
 stats.set_int(mpx .. "ASLTSMG_KILLS", 600)
 stats.set_int(mpx .. "ASLTSMG_DEATHS", 100)
 stats.set_int(mpx .. "ASLTSMG_SHOTS", 600)
 stats.set_int(mpx .. "ASLTSMG_HITS", 600)
 stats.set_int(mpx .. "ASLTSMG_HEADSHOTS", 600)
 stats.set_int(mpx .. "ASLTSMG_ENEMY_KILLS", 600)
 stats.set_int(mpx .. "PUMP_KILLS", 600)
 stats.set_int(mpx .. "PUMP_DEATHS", 100)
 stats.set_int(mpx .. "PUMP_SHOTS", 600)
 stats.set_int(mpx .. "PUMP_HITS", 600)
 stats.set_int(mpx .. "PUMP_HEADSHOTS", 600)
 stats.set_int(mpx .. "PUMP_ENEMY_KILLS", 600)
 stats.set_int(mpx .. "ASLTSHTGN_KILLS", 600)
 stats.set_int(mpx .. "ASLTSHTGN_DEATHS", 100)
 stats.set_int(mpx .. "ASLTSHTGN_SHOTS", 600)
 stats.set_int(mpx .. "ASLTSHTGN_HITS", 600)
 stats.set_int(mpx .. "ASLTSHTGN_HEADSHOTS", 600)
 stats.set_int(mpx .. "ASLTSHTGN_ENEMY_KILLS", 600)
 stats.set_int(mpx .. "SNIPERRFL_KILLS", 600)
 stats.set_int(mpx .. "SNIPERRFL_DEATHS", 100)
 stats.set_int(mpx .. "SNIPERRFL_SHOTS", 600)
 stats.set_int(mpx .. "SNIPERRFL_HITS", 600)
 stats.set_int(mpx .. "SNIPERRFL_HEADSHOTS", 600)
 stats.set_int(mpx .. "SNIPERRFL_ENEMY_KILLS", 600)
 stats.set_int(mpx .. "HVYSNIPER_KILLS", 600)
 stats.set_int(mpx .. "HVYSNIPER_DEATHS", 100)
 stats.set_int(mpx .. "HVYSNIPER_SHOTS", 600)
 stats.set_int(mpx .. "HVYSNIPER_HITS", 600)
 stats.set_int(mpx .. "HVYSNIPER_HEADSHOTS", 600)
 stats.set_int(mpx .. "HVYSNIPER_ENEMY_KILLS", 600)
 stats.set_int(mpx .. "GRNLAUNCH_KILLS", 600)
 stats.set_int(mpx .. "GRNLAUNCH_DEATHS", 100)
 stats.set_int(mpx .. "GRNLAUNCH_SHOTS", 600)
 stats.set_int(mpx .. "GRNLAUNCH_HITS", 600)
 stats.set_int(mpx .. "GRNLAUNCH_HEADSHOTS", 600)
 stats.set_int(mpx .. "GRNLAUNCH_ENEMY_KILLS", 600)
 stats.set_int(mpx .. "MINIGUNS_KILLS", 600)
 stats.set_int(mpx .. "MINIGUNS_DEATHS", 100)
 stats.set_int(mpx .. "MINIGUNS_SHOTS", 600)
 stats.set_int(mpx .. "MINIGUNS_HITS", 600)
 stats.set_int(mpx .. "MINIGUNS_HEADSHOTS", 600)
 stats.set_int(mpx .. "MINIGUNS_ENEMY_KILLS", 600)
 stats.set_int(mpx .. "RPG_KILLS", 600)
 stats.set_int(mpx .. "RPG_DEATHS", 100)
 stats.set_int(mpx .. "RPG_SHOTS", 600)
 stats.set_int(mpx .. "RPG_HITS", 600)
 stats.set_int(mpx .. "RPG_HEADSHOTS", 600)
 stats.set_int(mpx .. "RPG_ENEMY_KILLS", 600)
	elseif WepH == 3 then
 stats.set_int(mpx .. "KNIFE_KILLS", 600)
 stats.set_int(mpx .. "KNIFE_ENEMY_KILLS", 600)
 stats.set_int(mpx .. "KNIFE_DEATHS", 100)
 stats.set_int(mpx .. "KNIFE_HITS", 600)
 stats.set_int(mpx .. "NIGHTSTICK_KILLS", 600)
 stats.set_int(mpx .. "NIGHTSTICK_ENEMY_KILLS", 600)
 stats.set_int(mpx .. "NIGHTSTICK_DEATHS", 100)
 stats.set_int(mpx .. "NIGHTSTICK_HITS", 600)
 stats.set_int(mpx .. "BAT_KILLS", 600)
 stats.set_int(mpx .. "BAT_ENEMY_KILLS", 600)
 stats.set_int(mpx .. "BAT_DEATHS", 100)
 stats.set_int(mpx .. "BAT_HITS", 600)
 stats.set_int(mpx .. "CROWBAR_KILLS", 600)
 stats.set_int(mpx .. "CROWBAR_ENEMY_KILLS", 600)
 stats.set_int(mpx .. "CROWBAR_DEATHS", 100)
 stats.set_int(mpx .. "CROWBAR_HITS", 600)
 stats.set_int(mpx .. "GCLUB_KILLS", 600)
 stats.set_int(mpx .. "GCLUB_ENEMY_KILLS", 600)
 stats.set_int(mpx .. "GCLUB_DEATHS", 100)
 stats.set_int(mpx .. "GCLUB_HITS", 600)
 stats.set_int(mpx .. "MOLOTOV_KILLS", 600)
 stats.set_int(mpx .. "MOLOTOV_DEATHS", 100)
 stats.set_int(mpx .. "MOLOTOV_SHOTS", 600)
 stats.set_int(mpx .. "MOLOTOV_HITS", 600)
 stats.set_int(mpx .. "MOLOTOV_ENEMY_KILLS", 600)
 stats.set_int(mpx .. "GRENADE_KILLS", 600)
 stats.set_int(mpx .. "GRENADE_ENEMY_KILLS", 600)
 stats.set_int(mpx .. "GRENADE_DEATHS", 100)
 stats.set_int(mpx .. "GRENADE_HITS", 600)
 stats.set_int(mpx .. "SMKGRENADE_KILLS", 600)
 stats.set_int(mpx .. "SMKGRENADE_DEATHS", 100)
 stats.set_int(mpx .. "SMKGRENADE_SHOTS", 600)
 stats.set_int(mpx .. "SMKGRENADE_HITS", 600)
 stats.set_int(mpx .. "SMKGRENADE_ENEMY_KILLS", 600)
 stats.set_int(mpx .. "STKYBMB_KILLS", 600)
 stats.set_int(mpx .. "STKYBMB_ENEMY_KILLS", 600)
 stats.set_int(mpx .. "STKYBMB_DEATHS", 100)
 stats.set_int(mpx .. "STKYBMB_HITS", 600)
	end
end)
awdMenu:add_action("Reset Awards", function()
 stats.set_int(mpx .. "AWD_FM_DM_WINS", 0)
 stats.set_int(mpx .. "AWD_FM_TDM_WINS", 0)
 stats.set_int(mpx .. "AWD_FM_TDM_MVP", 0)
 stats.set_int(mpx .. "AWD_RACES_WON", 0)
 stats.set_int(mpx .. "AWD_FMWINAIRRACE", 0)
 stats.set_int(mpx .. "AWD_FMWINSEARACE", 0)
 stats.set_int(mpx .. "AWD_FM_GTA_RACES_WON", 0)
 stats.set_int(mpx .. "AWD_FMRALLYWONDRIVE", 0)
 stats.set_int(mpx .. "AWD_FMRALLYWONNAV", 0)
 stats.set_int(mpx .. "AWD_FMWINRACETOPOINTS", 0)
 stats.set_int(mpx .. "AWD_FM_RACE_LAST_FIRST", 0)
 stats.set_int(mpx .. "AWD_FM_RACES_FASTEST_LAP", 0)
 stats.set_int(mpx .. "AWD_FMHORDWAVESSURVIVE", 0)
 stats.set_int(mpx .. "NUMBER_SLIPSTREAMS_IN_RACE", 0)
 stats.set_int(mpx .. "NUMBER_TURBO_STARTS_IN_RACE", 0)
 stats.set_int(mpx .. "AWD_NO_ARMWRESTLING_WINS", 0)
 stats.set_int(mpx .. "MOST_ARM_WRESTLING_WINS", 0)
 stats.set_int(mpx .. "AWD_WIN_AT_DARTS", 0)
 stats.set_int(mpx .. "AWD_FM_GOLF_WON", 0)
 stats.set_int(mpx .. "AWD_FM_TENNIS_WON", 0)
 stats.set_int(mpx .. "AWD_FM_SHOOTRANG_CT_WON", 0)
 stats.set_int(mpx .. "AWD_FM_SHOOTRANG_RT_WON", 0)
 stats.set_int(mpx .. "AWD_FM_SHOOTRANG_TG_WON", 0)
 stats.set_int(mpx .. "AWD_WIN_CAPTURES", 0)
 stats.set_int(mpx .. "AWD_WIN_CAPTURE_DONT_DYING", 0)
 stats.set_int(mpx .. "AWD_WIN_LAST_TEAM_STANDINGS", 0)
 stats.set_int(mpx .. "AWD_ONLY_PLAYER_ALIVE_LTS", 0)
 stats.set_int(mpx .. "AWD_KILL_TEAM_YOURSELF_LTS", 0)
 stats.set_int(mpx .. "AIR_LAUNCHES_OVER_0M", 0)
 stats.set_int(mpx .. "AWD_CARS_EXPORTED", 0)
 stats.set_int(mpx .. "AWD_LESTERDELIVERVEHICLES", 0)
 stats.set_int(mpx .. "CR_DIFFERENT_DM", 0)
 stats.set_int(mpx .. "CR_DIFFERENT_RACES", 0)
 stats.set_int(mpx .. "AWD_PARACHUTE_JUMPS_0M", 0)
 stats.set_int(mpx .. "AWD_PARACHUTE_JUMPS_0M", 0)
 stats.set_int(mpx .. "AWD_FMBASEJMP", 0)
 stats.set_int(mpx .. "AWD_FM_GOLF_BIRDIES", 0)
 stats.set_int(mpx .. "AWD_FM_TENNIS_ACE", 0)
 stats.set_int(mpx .. "AWD_FMBBETWIN", 0)
 stats.set_int(mpx .. "AWD_LAPDANCES", 0)
 stats.set_int(mpx .. "AWD_FMCRATEDROPS", 0)
 stats.set_int(mpx .. "AWD_NO_HAIRCUTS", 0)
 stats.set_int(mpx .. "AWD_DROPOFF_CAP_PACKAGES", 0)
 stats.set_int(mpx .. "AWD_PICKUP_CAP_PACKAGES", 0)
 stats.set_int(mpx .. "AWD_MENTALSTATE_TO_NORMAL", 0)
 stats.set_int(mpx .. "AWD_TRADE_IN_YOUR_PROPERTY", 0)
 stats.set_int(mpx .. "NO_PHOTOS_TAKEN", 0)
 stats.set_int(mpx .. "BOUNTSONU", 0)
 stats.set_int(mpx .. "BOUNTPLACED", 0)
 stats.set_int(mpx .. "BETAMOUNT", 0)
 stats.set_int(mpx .. "CRARMWREST", 0)
 stats.set_int(mpx .. "CRBASEJUMP", 0)
 stats.set_int(mpx .. "CRDARTS", 0)
 stats.set_int(mpx .. "CRDM", 0)
 stats.set_int(mpx .. "CRGANGHIDE", 0)
 stats.set_int(mpx .. "CRGOLF", 0)
 stats.set_int(mpx .. "CRHORDE", 0)
 stats.set_int(mpx .. "CRMISSION", 0)
 stats.set_int(mpx .. "CRSHOOTRNG", 0)
 stats.set_int(mpx .. "CRTENNIS", 0)
 stats.set_int(mpx .. "NO_TIMES_CINEMA", 0)
 stats.set_int(mpx .. "CHAR_WEAP_UNLOCKED", 0)
 stats.set_int(mpx .. "CHAR_WEAP_UNLOCKED2", 0)
 stats.set_int(mpx .. "CHAR_WEAP_UNLOCKED3", 0)
 stats.set_int(mpx .. "CHAR_WEAP_UNLOCKED0", 0)
 stats.set_int(mpx .. "CHAR_WEAP_ADDON_1_UNLCK", 0)
 stats.set_int(mpx .. "CHAR_WEAP_ADDON_2_UNLCK", 0)
 stats.set_int(mpx .. "CHAR_WEAP_ADDON_3_UNLCK", 0)
 stats.set_int(mpx .. "CHAR_WEAP_ADDON_0_UNLCK", 0)
 stats.set_int(mpx .. "CHAR_WEAP_FREE", 0)
 stats.set_int(mpx .. "CHAR_WEAP_FREE2", 0)
 stats.set_int(mpx .. "CHAR_FM_WEAP_FREE", 0)
 stats.set_int(mpx .. "CHAR_FM_WEAP_FREE2", 0)
 stats.set_int(mpx .. "CHAR_FM_WEAP_FREE3", 0)
 stats.set_int(mpx .. "CHAR_FM_WEAP_FREE0", 0)
 stats.set_int(mpx .. "CHAR_WEAP_PURCHASED", 0)
 stats.set_int(mpx .. "CHAR_WEAP_PURCHASED2", 0)
 stats.set_int(mpx .. "WEAPON_PICKUP_BITSET", 0)
 stats.set_int(mpx .. "WEAPON_PICKUP_BITSET2", 0)
 stats.set_int(mpx .. "CHAR_FM_WEAP_UNLOCKED", 0)
 stats.set_int(mpx .. "NO_WEAPONS_UNLOCK", 0)
 stats.set_int(mpx .. "NO_WEAPON_MODS_UNLOCK", 0)
 stats.set_int(mpx .. "NO_WEAPON_CLR_MOD_UNLOCK", 0) 
 stats.set_int(mpx .. "CHAR_FM_WEAP_UNLOCKED2", 0)
 stats.set_int(mpx .. "CHAR_FM_WEAP_UNLOCKED3", 0)
 stats.set_int(mpx .. "CHAR_FM_WEAP_UNLOCKED0", 0)
 stats.set_int(mpx .. "CHAR_KIT_1_FM_UNLCK", 0)
 stats.set_int(mpx .. "CHAR_KIT_2_FM_UNLCK", 0)
 stats.set_int(mpx .. "CHAR_KIT_3_FM_UNLCK", 0)
 stats.set_int(mpx .. "CHAR_KIT_0_FM_UNLCK", 0)
 stats.set_int(mpx .. "CHAR_KIT_5_FM_UNLCK", 0)
 stats.set_int(mpx .. "CHAR_KIT_6_FM_UNLCK", 0)
 stats.set_int(mpx .. "CHAR_KIT_7_FM_UNLCK", 0)
 stats.set_int(mpx .. "CHAR_KIT_8_FM_UNLCK", 0)
 stats.set_int(mpx .. "CHAR_KIT_9_FM_UNLCK", 0)
 stats.set_int(mpx .. "CHAR_KIT_0_FM_UNLCK", 0)
 stats.set_int(mpx .. "CHAR_KIT_11_FM_UNLCK", 0)
 stats.set_int(mpx .. "CHAR_KIT_12_FM_UNLCK", 0)
 stats.set_int(mpx .. "CHAR_KIT_FM_PURCHASE", 0)
 stats.set_int(mpx .. "CHAR_WEAP_FM_PURCHASE", 0)
 stats.set_int(mpx .. "CHAR_WEAP_FM_PURCHASE2", 0)
 stats.set_int(mpx .. "CHAR_WEAP_FM_PURCHASE3", 0)
 stats.set_int(mpx .. "CHAR_WEAP_FM_PURCHASE0", 0)
 stats.set_int(mpx .. "FIREWORK_TYPE_1_WHITE", 0)
 stats.set_int(mpx .. "FIREWORK_TYPE_1_RED", 0)
 stats.set_int(mpx .. "FIREWORK_TYPE_1_BLUE", 0)
 stats.set_int(mpx .. "FIREWORK_TYPE_2_WHITE", 0)
 stats.set_int(mpx .. "FIREWORK_TYPE_2_RED", 0)
 stats.set_int(mpx .. "FIREWORK_TYPE_2_BLUE", 0)
 stats.set_int(mpx .. "FIREWORK_TYPE_3_WHITE", 0)
 stats.set_int(mpx .. "FIREWORK_TYPE_3_RED", 0)
 stats.set_int(mpx .. "FIREWORK_TYPE_3_BLUE", 0)
 stats.set_int(mpx .. "FIREWORK_TYPE_0_WHITE", 0)
 stats.set_int(mpx .. "FIREWORK_TYPE_0_RED", 0)
 stats.set_int(mpx .. "FIREWORK_TYPE_0_BLUE", 0)
 stats.set_int(mpx .. "WEAP_FM_ADDON_PURCH", 0)
 stats.set_int(mpx .. "AWD_FMTIME5STARWANTED", 0)
 stats.set_int(mpx .. "AWD_5STAR_WANTED_AVOIDANCE", 0)
 stats.set_int(mpx .. "AWD_FMSHOOTDOWNCOPHELI", 0)
 stats.set_int(mpx .. "AWD_VEHICLES_JACKEDR", 0)
 stats.set_int(mpx .. "AWD_SECURITY_CARS_ROBBED", 0)
 stats.set_int(mpx .. "AWD_HOLD_UP_SHOPS", 0)
 stats.set_int(mpx .. "AWD_ODISTRACTCOPSNOEATH", 0)
 stats.set_int(mpx .. "AWD_ENEMYDRIVEBYKILLS", 0)
 stats.set_int(mpx .. "CHAR_WANTED_LEVEL_TIME5STAR", 0)
 stats.set_int(mpx .. "CARS_COPS_EXPLODED", 0)
 stats.set_int(mpx .. "BIKES_EXPLODED", 0)
 stats.set_int(mpx .. "BOATS_EXPLODED", 0)
 stats.set_int(mpx .. "HELIS_EXPLODED", 0)
 stats.set_int(mpx .. "PLANES_EXPLODED", 0)
 stats.set_int(mpx .. "QUADBIKE_EXPLODED", 0)
 stats.set_int(mpx .. "BICYCLE_EXPLODED", 0)
 stats.set_int(mpx .. "SUBMARINE_EXPLODED", 0)
 stats.set_int(mpx .. "TIRES_POPPED_BY_GUNSHOT", 0)
 stats.set_int(mpx .. "NUMBER_CRASHES_CARS", 0)
 stats.set_int(mpx .. "NUMBER_CRASHES_BIKES", 0)
 stats.set_int(mpx .. "BAILED_FROM_VEHICLE", 0)
 stats.set_int(mpx .. "NUMBER_CRASHES_QUADBIKES", 0)
 stats.set_int(mpx .. "NUMBER_STOLEN_COP_VEHICLE", 0)
 stats.set_int(mpx .. "NUMBER_STOLEN_CARS", 0)
 stats.set_int(mpx .. "NUMBER_STOLEN_BIKES", 0)
 stats.set_int(mpx .. "NUMBER_STOLEN_BOATS", 0)
 stats.set_int(mpx .. "NUMBER_STOLEN_HELIS", 0)
 stats.set_int(mpx .. "NUMBER_STOLEN_PLANES", 0)
 stats.set_int(mpx .. "NUMBER_STOLEN_QUADBIKES", 0)
 stats.set_int(mpx .. "NUMBER_STOLEN_BICYCLES", 0)
 stats.set_int(mpx .. "MC_CONTRIBUTION_POINTS", 0)
 stats.set_int(mpx .. "MEMBERSMARKEDFORDEATH", 0)
 stats.set_int(mpx .. "MCKILLS", 0)
 stats.set_int(mpx .. "MCDEATHS", 0)
 stats.set_int(mpx .. "RIVALPRESIDENTKILLS", 0)
 stats.set_int(mpx .. "RIVALCEOANDVIPKILLS", 0)
 stats.set_int(mpx .. "CLUBHOUSECONTRACTSCOMPLETE", 0)
 stats.set_int(mpx .. "CLUBHOUSECONTRACTEARNINGS", 0)
 stats.set_int(mpx .. "CLUBCHALLENGESCOMPLETED", 0)
 stats.set_int(mpx .. "MEMBERCHALLENGESCOMPLETED", 0)
 stats.set_int(mpx .. "GHKILLS", 0)
 stats.set_int(mpx .. "HORDELVL", 0)
 stats.set_int(mpx .. "HORDKILLS", 0)
 stats.set_int(mpx .. "UNIQUECRATES", 0)
 stats.set_int(mpx .. "BJWINS", 0)
 stats.set_int(mpx .. "HORDEWINS", 0)
 stats.set_int(mpx .. "MCMWINS", 0)
 stats.set_int(mpx .. "GANGHIDWINS", 0)
 stats.set_int(mpx .. "KILLS", 0)
 stats.set_int(mpx .. "HITS_PEDS_VEHICLES", 0)
 stats.set_int(mpx .. "SHOTS", 0)
 stats.set_int(mpx .. "HEADSHOTS", 0)
 stats.set_int(mpx .. "KILLS_ARMED", 0)
 stats.set_int(mpx .. "SUCCESSFUL_COUNTERS", 0)
 stats.set_int(mpx .. "KILLS_PLAYERS", 0)
 stats.set_int(mpx .. "DEATHS_PLAYER", 0)
 stats.set_int(mpx .. "KILLS_STEALTH", 0)
 stats.set_int(mpx .. "KILLS_INNOCENTS", 0)
 stats.set_int(mpx .. "KILLS_ENEMY_GANG_MEMBERS", 0)
 stats.set_int(mpx .. "KILLS_FRIENDLY_GANG_MEMBERS", 0)
 stats.set_int(mpx .. "KILLS_BY_OTHERS", 0)
 stats.set_int(mpx .. "BIGGEST_VICTIM_KILLS", 0)
 stats.set_int(mpx .. "ARCHENEMY_KILLS", 0)
 stats.set_int(mpx .. "KILLS_COP", 0)
 stats.set_int(mpx .. "KILLS_SWAT", 0)
 stats.set_int(mpx .. "STARS_ATTAINED", 0)
 stats.set_int(mpx .. "STARS_EVADED", 0)
 stats.set_int(mpx .. "VEHEXPORTED", 0)
 stats.set_int(mpx .. "TOTAL_NO_SHOPS_HELD_UP", 0)
 stats.set_int(mpx .. "CR_GANGATTACK_CITY", 0)
 stats.set_int(mpx .. "CR_GANGATTACK_COUNTRY", 0)
 stats.set_int(mpx .. "CR_GANGATTACK_LOST", 0)
 stats.set_int(mpx .. "CR_GANGATTACK_VAGOS", 0)
 stats.set_int(mpx .. "NO_NON_CONTRACT_RACE_WIN", 0)
 stats.set_int(mpx .. "DIED_IN_DROWNING", 0)
 stats.set_int(mpx .. "DIED_IN_DROWNINGINVEHICLE", 0)
 stats.set_int(mpx .. "DIED_IN_EXPLOSION", 0)
 stats.set_int(mpx .. "DIED_IN_FALL", 0)
 stats.set_int(mpx .. "DIED_IN_FIRE", 0)
 stats.set_int(mpx .. "DIED_IN_ROAD", 0)
 stats.set_int(mpx .. "GRENADE_ENEMY_KILLS", 0)
 stats.set_int(mpx .. "MICROSMG_ENEMY_KILLS", 0)
 stats.set_int(mpx .. "SMG_ENEMY_KILLS", 0)
 stats.set_int(mpx .. "ASLTSMG_ENEMY_KILLS", 0)
 stats.set_int(mpx .. "CRBNRIFLE_ENEMY_KILLS", 0)
 stats.set_int(mpx .. "ADVRIFLE_ENEMY_KILLS", 0)
 stats.set_int(mpx .. "MG_ENEMY_KILLS", 0)
 stats.set_int(mpx .. "CMBTMG_ENEMY_KILLS", 0)
 stats.set_int(mpx .. "ASLTMG_ENEMY_KILLS", 0)
 stats.set_int(mpx .. "RPG_ENEMY_KILLS", 0)
 stats.set_int(mpx .. "PISTOL_ENEMY_KILLS", 0)
 stats.set_int(mpx .. "PLAYER_HEADSHOTS", 0)
 stats.set_int(mpx .. "SAWNOFF_ENEMY_KILLS", 0)
 stats.set_int(mpx .. "STKYBMB_ENEMY_KILLS", 0)
 stats.set_int(mpx .. "UNARMED_ENEMY_KILLS", 0)
 stats.set_int(mpx .. "SNIPERRFL_ENEMY_KILLS", 0)
 stats.set_int(mpx .. "HVYSNIPER_ENEMY_KILLS", 0)
 stats.set_int(mpx .. "AWD_0_VEHICLES_BLOWNUP", 0)
 stats.set_int(mpx .. "CARS_EXPLODED", 0)
 stats.set_int(mpx .. "AWD_CAR_EXPORT", 0)
 stats.set_int(mpx .. "AWD_FMDRIVEWITHOUTCRASH", 0)
 stats.set_int(mpx .. "AWD_PASSENGERTIME", 0)
 stats.set_int(mpx .. "AWD_TIME_IN_HELICOPTER", 0)
 stats.set_int(mpx .. "AWD_VEHICLE_JUMP_OVER_0M", 0)
 stats.set_int(mpx .. "MOST_FLIPS_IN_ONE_JUMP", 5)
 stats.set_int(mpx .. "MOST_SPINS_IN_ONE_JUMP", 5)
 stats.set_int(mpx .. "CHAR_FM_VEHICLE_1_UNLCK", 0)
 stats.set_int(mpx .. "CHAR_FM_VEHICLE_2_UNLCK", 0)
 stats.set_int(mpx .. "NO_CARS_REPAIR", 0)
 stats.set_int(mpx .. "VEHICLES_SPRAYED", 0)
 stats.set_int(mpx .. "NUMBER_NEAR_MISS_NOCRASH", 0)
 stats.set_int(mpx .. "USJS_FOUND", 0)
 stats.set_int(mpx .. "USJS_COMPLETED", 0)
 stats.set_int(mpx .. "USJS_TOTAL_COMPLETED", 0)
 stats.set_int(mpx .. "CRDEADLINE", 0)
 stats.set_int(mpx .. "FAVOUTFITBIKETIMECURRENT", 0)
 stats.set_int(mpx .. "FAVOUTFITBIKETIME1ALLTIME", 0)
 stats.set_int(mpx .. "FAVOUTFITBIKETYPECURRENT", 0)
 stats.set_int(mpx .. "FAVOUTFITBIKETYPEALLTIME", 0)
 stats.set_int(mpx .. "LONGEST_WHEELIE_DIST", 0)
 stats.set_int(mpx .. "RACES_WON", 0)
 stats.set_int(mpx .. "COUNT_HOTRING_RACE", 0)
 stats.set_int(mpx .. "AWD_0_HEADSHOTS", 0)
 stats.set_int(mpx .. "AWD_FMOVERALLKILLS", 0)
 stats.set_int(mpx .. "AWD_FMKILLBOUNTY", 0)
 stats.set_int(mpx .. "AWD_FM_DM_3KILLSAMEGUY", 0)
 stats.set_int(mpx .. "AWD_FM_DM_KILLSTREAK", 0)
 stats.set_int(mpx .. "AWD_FM_DM_STOLENKILL", 0)
 stats.set_int(mpx .. "AWD_FM_DM_TOTALKILLS", 0)
 stats.set_int(mpx .. "AWD_FMREVENGEKILLSDM", 0)
 stats.set_int(mpx .. "AWD_KILL_CARRIER_CAPTURE", 0)
 stats.set_int(mpx .. "AWD_NIGHTVISION_KILLS", 0)
 stats.set_int(mpx .. "AWD_KILL_PSYCHOPATHS", 0)
 stats.set_int(mpx .. "AWD_TAKEDOWNSMUGPLANE", 0)
 stats.set_int(mpx .. "AWD_0_KILLS_PISTOL", 0)
 stats.set_int(mpx .. "AWD_0_KILLS_SMG", 0)
 stats.set_int(mpx .. "AWD_0_KILLS_SHOTGUN", 0)
 stats.set_int(mpx .. "ASLTRIFLE_ENEMY_KILLS", 0)
 stats.set_int(mpx .. "AWD_0_KILLS_SNIPER", 0)
 stats.set_int(mpx .. "MG_ENEMY_KILLS", 0)
 stats.set_int(mpx .. "AWD_0_KILLS_STICKYBOMBS", 0)
 stats.set_int(mpx .. "AWD_0_KILLS_GRENADES", 0)
 stats.set_int(mpx .. "AWD_0_KILLS_ROCKETLAUNCH", 0)
 stats.set_int(mpx .. "AWD_0_KILLS_MELEE", 0)
 stats.set_int(mpx .. "AWD_CAR_BOMBS_ENEMY_KILLS", 0)
 stats.set_int(mpx .. "MELEEKILLS", 0)
 stats.set_int(mpx .. "HITS", 0)
 stats.set_int(mpx .. "DEATHS", 0)
 stats.set_int(mpx .. "HIGHEST_SKITTLES", 0)
 stats.set_int(mpx .. "NUMBER_NEAR_MISS", 0)
 stats.set_int(mpx .. "AWD_FINISH_HEISTS", 0)
 stats.set_int(mpx .. "AWD_FINISH_HEIST_SETUP_JOB", 0)
 stats.set_int(mpx .. "AWD_COMPLETE_HEIST_NOT_DIE", 0)
 stats.set_int(mpx .. "AWD_WIN_GOLD_MEDAL_HEISTS", 0)
 stats.set_int(mpx .. "AWD_DO_HEIST_AS_MEMBER", 0)
 stats.set_int(mpx .. "AWD_DO_HEIST_AS_THE_LEADER", 0)
 stats.set_int(mpx .. "AWD_CONTROL_CROWDS", 0)
 stats.set_int(mpx .. "HEIST_COMPLETION", 0)
 stats.set_int(mpx .. "HEISTS_ORGANISED", 0)
 stats.set_int(mpx .. "HEIST_START", 0)
 stats.set_int(mpx .. "HEIST_END", 0)
 stats.set_int(mpx .. "CUTSCENE_MID_PRISON", 0)
 stats.set_int(mpx .. "CUTSCENE_MID_HUMANE", 0)
 stats.set_int(mpx .. "CUTSCENE_MID_NARC", 0)
 stats.set_int(mpx .. "CUTSCENE_MID_ORNATE", 0)
 stats.set_int(mpx .. "CR_FLEECA_PREP_1", 0)
 stats.set_int(mpx .. "CR_FLEECA_PREP_2", 0)
 stats.set_int(mpx .. "CR_FLEECA_FINALE", 0)
 stats.set_int(mpx .. "CR_PRISON_PLANE", 0)
 stats.set_int(mpx .. "CR_PRISON_BUS", 0)
 stats.set_int(mpx .. "CR_PRISON_STATION", 0)
 stats.set_int(mpx .. "CR_PRISON_UNFINISHED_BIZ", 0)
 stats.set_int(mpx .. "CR_PRISON_FINALE", 0)
 stats.set_int(mpx .. "CR_HUMANE_KEY_CODES", 0)
 stats.set_int(mpx .. "CR_HUMANE_ARMORDILLOS", 0)
 stats.set_int(mpx .. "CR_HUMANE_EMP", 0)
 stats.set_int(mpx .. "CR_HUMANE_VALKYRIE", 0)
 stats.set_int(mpx .. "CR_HUMANE_FINALE", 0)
 stats.set_int(mpx .. "CR_NARC_COKE", 0)
 stats.set_int(mpx .. "CR_NARC_TRASH_TRUCK", 0)
 stats.set_int(mpx .. "CR_NARC_BIKERS", 0)
 stats.set_int(mpx .. "CR_NARC_WEED", 0)
 stats.set_int(mpx .. "CR_NARC_STEAL_METH", 0)
 stats.set_int(mpx .. "CR_NARC_FINALE", 0)
 stats.set_int(mpx .. "CR_PACIFIC_TRUCKS", 0)
 stats.set_int(mpx .. "CR_PACIFIC_WITSEC", 0)
 stats.set_int(mpx .. "CR_PACIFIC_HACK", 0)
 stats.set_int(mpx .. "CR_PACIFIC_BIKES", 0)
 stats.set_int(mpx .. "CR_PACIFIC_CONVOY", 0)
 stats.set_int(mpx .. "CR_PACIFIC_FINALE", 0)
 stats.set_int(mpx .. "HEIST_PLANNING_STAGE", 0)
 stats.set_int(mpx .. "GANGOPS_HEIST_STATUS", 0)
 stats.set_int(mpx .. "GANGOPS_HEIST_STATUS", 0)
 stats.set_int(mpx .. "GANGOPS_FM_MISSION_PROG", 0)
 stats.set_int(mpx .. "GANGOPS_FLOW_MISSION_PROG", 0)
 stats.set_int(mpx .. "CR_GANGOP_MORGUE", 0)
 stats.set_int(mpx .. "CR_GANGOP_DELUXO", 0)
 stats.set_int(mpx .. "CR_GANGOP_SERVERFARM", 0)
 stats.set_int(mpx .. "CR_GANGOP_IAABASE_FIN", 0)
 stats.set_int(mpx .. "CR_GANGOP_STEALOSPREY", 0)
 stats.set_int(mpx .. "CR_GANGOP_FOUNDRY", 0)
 stats.set_int(mpx .. "CR_GANGOP_RIOTVAN", 0)
 stats.set_int(mpx .. "CR_GANGOP_SUBMARINECAR", 0)
 stats.set_int(mpx .. "CR_GANGOP_SUBMARINE_FIN", 0)
 stats.set_int(mpx .. "CR_GANGOP_PREDATOR", 0)
 stats.set_int(mpx .. "CR_GANGOP_BMLAUNCHER", 0)
 stats.set_int(mpx .. "CR_GANGOP_BCCUSTOM", 0)
 stats.set_int(mpx .. "CR_GANGOP_STEALTHTANKS", 0)
 stats.set_int(mpx .. "CR_GANGOP_SPYPLANE", 0)
 stats.set_int(mpx .. "CR_GANGOP_FINALE", 0)
 stats.set_int(mpx .. "CR_GANGOP_FINALE_P2", 0)
 stats.set_int(mpx .. "CR_GANGOP_FINALE_P3", 0)
 stats.set_int(mpx .. "AWD_DANCE_TO_SOLOMUN", 0)
 stats.set_int(mpx .. "AWD_DANCE_TO_TALEOFUS", 0)
 stats.set_int(mpx .. "AWD_DANCE_TO_DIXON", 0)
 stats.set_int(mpx .. "AWD_DANCE_TO_BLKMAD", 0)
 stats.set_int(mpx .. "AWD_CLUB_DRUNK", 0)
 stats.set_int(mpx .. "NIGHTCLUB_VIP_APPEAR", 0)
 stats.set_int(mpx .. "NIGHTCLUB_JOBS_DONE", 0)
 stats.set_int(mpx .. "NIGHTCLUB_EARNINGS", 0)
 stats.set_int(mpx .. "HUB_SALES_COMPLETED", 0)
 stats.set_int(mpx .. "HUB_EARNINGS", 0)
 stats.set_int(mpx .. "DANCE_COMBO_DURATION_MINS", 0)
 stats.set_int(mpx .. "NIGHTCLUB_PLAYER_APPEAR", 0)
 stats.set_int(mpx .. "LIFETIME_HUB_GOODS_SOLD", 0)
 stats.set_int(mpx .. "LIFETIME_HUB_GOODS_MADE", 0)
 stats.set_int(mpx .. "DANCEPERFECTOWNCLUB", 0)
 stats.set_int(mpx .. "NUMUNIQUEPLYSINCLUB", 0)
 stats.set_int(mpx .. "DANCETODIFFDJS", 0)
 stats.set_int(mpx .. "NIGHTCLUB_HOTSPOT_TIME_MS", 0)
 stats.set_int(mpx .. "NIGHTCLUB_CONT_TOTAL", 0)
 stats.set_int(mpx .. "NIGHTCLUB_CONT_MISSION", 0)
 stats.set_int(mpx .. "CLUB_CONTRABAND_MISSION", 0)
 stats.set_int(mpx .. "HUB_CONTRABAND_MISSION", 0)
 stats.set_int(mpx .. "ARN_BS_TRINKET_TICKERS", 0)
 stats.set_int(mpx .. "ARN_BS_TRINKET_SAVED", 0)
 stats.set_int(mpx .. "AWD_WATCH_YOUR_STEP", 0)
 stats.set_int(mpx .. "AWD_TOWER_OFFENSE", 0)
 stats.set_int(mpx .. "AWD_READY_FOR_WAR", 0)
 stats.set_int(mpx .. "AWD_THROUGH_A_LENS", 0)
 stats.set_int(mpx .. "AWD_SPINNER", 0)
 stats.set_int(mpx .. "AWD_YOUMEANBOOBYTRAPS", 0)
 stats.set_int(mpx .. "AWD_MASTER_BANDITO", 0)
 stats.set_int(mpx .. "AWD_SITTING_DUCK", 0)
 stats.set_int(mpx .. "AWD_CROWDPARTICIPATION", 0)
 stats.set_int(mpx .. "AWD_KILL_OR_BE_KILLED", 0)
 stats.set_int(mpx .. "AWD_MASSIVE_SHUNT", 0)
 stats.set_int(mpx .. "AWD_YOURE_OUTTA_HERE", 0)
 stats.set_int(mpx .. "AWD_WEVE_GOT_ONE", 0)
 stats.set_int(mpx .. "AWD_ARENA_WAGEWORKER", 0)
 stats.set_int(mpx .. "AWD_TIME_SERVED", 0)
 stats.set_int(mpx .. "AWD_TOP_SCORE", 0)
 stats.set_int(mpx .. "AWD_CAREER_WINNER", 0)
 stats.set_int(mpx .. "ARENAWARS_SP", 0)
 stats.set_int(mpx .. "ARENAWARS_SKILL_LEVEL", 0)
 stats.set_int(mpx .. "ARENAWARS_SP_LIFETIME", 0)
 stats.set_int(mpx .. "ARENAWARS_AP", 0)
 stats.set_int(mpx .. "ARENAWARS_AP_TIER", 0)
 stats.set_int(mpx .. "ARENAWARS_AP_LIFETIME", 0)
 stats.set_int(mpx .. "ARENAWARS_CARRER_UNLK", 0)
 stats.set_int(mpx .. "ARN_W_THEME_SCIFI", 0)
 stats.set_int(mpx .. "ARN_W_THEME_APOC", 0)
 stats.set_int(mpx .. "ARN_W_THEME_CONS", 0)
 stats.set_int(mpx .. "ARN_W_PASS_THE_BOMB", 0)
 stats.set_int(mpx .. "ARN_W_DETONATION", 0)
 stats.set_int(mpx .. "ARN_W_ARCADE_RACE", 0)
 stats.set_int(mpx .. "ARN_W_CTF", 0)
 stats.set_int(mpx .. "ARN_W_TAG_TEAM", 0)
 stats.set_int(mpx .. "ARN_W_DESTR_DERBY", 0)
 stats.set_int(mpx .. "ARN_W_CARNAGE", 0)
 stats.set_int(mpx .. "ARN_W_MONSTER_JAM", 0)
 stats.set_int(mpx .. "ARN_W_GAMES_MASTERS", 0)
 stats.set_int(mpx .. "ARN_L_PASS_THE_BOMB", 0)
 stats.set_int(mpx .. "ARN_L_DETONATION", 0)
 stats.set_int(mpx .. "ARN_L_ARCADE_RACE", 0)
 stats.set_int(mpx .. "ARN_L_CTF", 0)
 stats.set_int(mpx .. "ARN_L_TAG_TEAM", 0)
 stats.set_int(mpx .. "ARN_L_DESTR_DERBY", 0)
 stats.set_int(mpx .. "ARN_L_CARNAGE", 0)
 stats.set_int(mpx .. "ARN_L_MONSTER_JAM", 0)
 stats.set_int(mpx .. "ARN_L_GAMES_MASTERS", 0)
 stats.set_int(mpx .. "NUMBER_OF_CHAMP_BOUGHT", 0)
 stats.set_int(mpx .. "ARN_SPECTATOR_KILLS", 0)
 stats.set_int(mpx .. "ARN_LIFETIME_KILLS", 0)
 stats.set_int(mpx .. "ARN_LIFETIME_DEATHS", 0)
 stats.set_int(mpx .. "ARENAWARS_CARRER_WINS", 0)
 stats.set_int(mpx .. "ARENAWARS_CARRER_WINT", 0)
 stats.set_int(mpx .. "ARENAWARS_MATCHES_PLYD", 0)
 stats.set_int(mpx .. "ARENAWARS_MATCHES_PLYDT", 0)
 stats.set_int(mpx .. "ARN_SPEC_BOX_TIME_MS", 0)
 stats.set_int(mpx .. "ARN_SPECTATOR_DRONE", 0)
 stats.set_int(mpx .. "ARN_SPECTATOR_CAMS", 0)
 stats.set_int(mpx .. "ARN_SMOKE", 0)
 stats.set_int(mpx .. "ARN_DRINK", 0)
 stats.set_int(mpx .. "ARN_VEH_MONSTER", 0)
 stats.set_int(mpx .. "ARN_VEH_MONSTER", 0)
 stats.set_int(mpx .. "ARN_VEH_MONSTER", 0)
 stats.set_int(mpx .. "ARN_VEH_CERBERUS", 0)
 stats.set_int(mpx .. "ARN_VEH_CERBERUS2", 0)
 stats.set_int(mpx .. "ARN_VEH_CERBERUS3", 0)
 stats.set_int(mpx .. "ARN_VEH_BRUISER", 0)
 stats.set_int(mpx .. "ARN_VEH_BRUISER2", 0)
 stats.set_int(mpx .. "ARN_VEH_BRUISER3", 0)
 stats.set_int(mpx .. "ARN_VEH_SLAMVAN0", 0)
 stats.set_int(mpx .. "ARN_VEH_SLAMVAN5", 0)
 stats.set_int(mpx .. "ARN_VEH_SLAMVAN6", 0)
 stats.set_int(mpx .. "ARN_VEH_BRUTUS", 0)
 stats.set_int(mpx .. "ARN_VEH_BRUTUS2", 0)
 stats.set_int(mpx .. "ARN_VEH_BRUTUS3", 0)
 stats.set_int(mpx .. "ARN_VEH_SCARAB", 0)
 stats.set_int(mpx .. "ARN_VEH_SCARAB2", 0)
 stats.set_int(mpx .. "ARN_VEH_SCARAB3", 0)
 stats.set_int(mpx .. "ARN_VEH_DOMINATOR0", 0)
 stats.set_int(mpx .. "ARN_VEH_DOMINATOR5", 0)
 stats.set_int(mpx .. "ARN_VEH_DOMINATOR6", 0)
 stats.set_int(mpx .. "ARN_VEH_IMPALER2", 0)
 stats.set_int(mpx .. "ARN_VEH_IMPALER3", 0)
 stats.set_int(mpx .. "ARN_VEH_IMPALER0", 0)
 stats.set_int(mpx .. "ARN_VEH_ISSI0", 0)
 stats.set_int(mpx .. "ARN_VEH_ISSI5", 0)
 stats.set_int(mpx .. "ARN_VEH_ISSI", 0)
 stats.set_int(mpx .. "ARN_VEH_IMPERATOR", 0)
 stats.set_int(mpx .. "ARN_VEH_IMPERATOR2", 0)
 stats.set_int(mpx .. "ARN_VEH_IMPERATOR3", 0)
 stats.set_int(mpx .. "ARN_VEH_ZR30", 0)
 stats.set_int(mpx .. "ARN_VEH_ZR30", 0)
 stats.set_int(mpx .. "ARN_VEH_ZR0", 0)
 stats.set_int(mpx .. "ARN_VEH_DEATHBIKE", 0)
 stats.set_int(mpx .. "ARN_VEH_DEATHBIKE2", 0)
 stats.set_int(mpx .. "ARN_VEH_DEATHBIKE3", 0)
 stats.set_int(mpx .. "AWD_ODD_JOBS", 0)
 stats.set_int(mpx .. "VCM_FLOW_PROGRESS", 0)
 stats.set_int(mpx .. "VCM_STORY_PROGRESS", 5)
 stats.set_int(mpx .. "CAS_HEIST_NOTS", 0)
 stats.set_int(mpx .. "CAS_HEIST_FLOW", 0)
 stats.set_int(mpx .. "SIGNAL_JAMMERS_COLLECTED", 0)
 stats.set_int(mpx .. "AWD_PREPARATION", 0)
 stats.set_int(mpx .. "AWD_ASLEEPONJOB", 0)
 stats.set_int(mpx .. "AWD_DAICASHCRAB", 0)
 stats.set_int(mpx .. "AWD_BIGBRO", 0)
 stats.set_int(mpx .. "AWD_SHARPSHOOTER", 0)
 stats.set_int(mpx .. "AWD_RACECHAMP", 0)
 stats.set_int(mpx .. "AWD_BATSWORD", 0)
 stats.set_int(mpx .. "AWD_COINPURSE", 0)
 stats.set_int(mpx .. "AWD_ASTROCHIMP", 0)
 stats.set_int(mpx .. "AWD_MASTERFUL", 0)
 stats.set_int(mpx .. "H3_BOARD_DIALOGUE0", 0)
 stats.set_int(mpx .. "H3_BOARD_DIALOGUE1", 0)
 stats.set_int(mpx .. "H3_BOARD_DIALOGUE2", 0)
 stats.set_int(mpx .. "H3_VEHICLESUSED", 0)
 stats.set_int(mpx .. "H3_CR_STEALTH_1A", 0)
 stats.set_int(mpx .. "H3_CR_STEALTH_2B_RAPP", 0)
 stats.set_int(mpx .. "H3_CR_STEALTH_2C_SIDE", 0)
 stats.set_int(mpx .. "H3_CR_STEALTH_3A", 0)
 stats.set_int(mpx .. "H3_CR_STEALTH_0A", 0)
 stats.set_int(mpx .. "H3_CR_STEALTH_5A", 0)
 stats.set_int(mpx .. "H3_CR_SUBTERFUGE_1A", 0)
 stats.set_int(mpx .. "H3_CR_SUBTERFUGE_2A", 0)
 stats.set_int(mpx .. "H3_CR_SUBTERFUGE_2B", 0)
 stats.set_int(mpx .. "H3_CR_SUBTERFUGE_3A", 0)
 stats.set_int(mpx .. "H3_CR_SUBTERFUGE_3B", 0)
 stats.set_int(mpx .. "H3_CR_SUBTERFUGE_0A", 0)
 stats.set_int(mpx .. "H3_CR_SUBTERFUGE_5A", 0)
 stats.set_int(mpx .. "H3_CR_DIRECT_1A", 0)
 stats.set_int(mpx .. "H3_CR_DIRECT_2A1", 0)
 stats.set_int(mpx .. "H3_CR_DIRECT_2A2", 0)
 stats.set_int(mpx .. "H3_CR_DIRECT_2BP", 0)
 stats.set_int(mpx .. "H3_CR_DIRECT_2C", 0)
 stats.set_int(mpx .. "H3_CR_DIRECT_3A", 0)
 stats.set_int(mpx .. "H3_CR_DIRECT_0A", 0)
 stats.set_int(mpx .. "H3_CR_DIRECT_5A", 0)
 stats.set_int(mpx .. "CR_ORDER", 0)
 stats.set_int(mpx .. "AWD_PREPARATION", 0)
 stats.set_int(mpx .. "AWD_ASLEEPONJOB", 0)
 stats.set_int(mpx .. "AWD_DAICASHCRAB", 0)
 stats.set_int(mpx .. "AWD_BIGBRO", 0)
 stats.set_int(mpx .. "AWD_SHARPSHOOTER", 0)
 stats.set_int(mpx .. "AWD_RACECHAMP", 0)
 stats.set_int(mpx .. "AWD_BATSWORD", 0)
 stats.set_int(mpx .. "AWD_COINPURSE", 0)
 stats.set_int(mpx .. "AWD_ASTROCHIMP", 0)
 stats.set_int(mpx .. "AWD_MASTERFUL", 0)
 stats.set_int(mpx .. "SCGW_NUM_WINS_GANG_0", 0)
 stats.set_int(mpx .. "SCGW_NUM_WINS_GANG_1", 0)
 stats.set_int(mpx .. "SCGW_NUM_WINS_GANG_2", 0)
 stats.set_int(mpx .. "SCGW_NUM_WINS_GANG_3", 0)
 stats.set_int(mpx .. "CH_ARC_CAB_CLAW_TROPHY", 0)
 stats.set_int(mpx .. "CH_ARC_CAB_LOVE_TROPHY", 0)
 stats.set_int(mpx .. "IAP_MAX_MOON_DIST", 0)
 stats.set_int(mpx .. "SCGW_INITIALS_0", 0)
 stats.set_int(mpx .. "SCGW_INITIALS_1", 0)
 stats.set_int(mpx .. "SCGW_INITIALS_2", 0)
 stats.set_int(mpx .. "SCGW_INITIALS_3", 0)
 stats.set_int(mpx .. "SCGW_INITIALS_0", 0)
 stats.set_int(mpx .. "SCGW_INITIALS_5", 0)
 stats.set_int(mpx .. "SCGW_INITIALS_6", 0)
 stats.set_int(mpx .. "SCGW_INITIALS_7", 0)
 stats.set_int(mpx .. "SCGW_INITIALS_8", 0)
 stats.set_int(mpx .. "SCGW_INITIALS_9", 0)
 stats.set_int(mpx .. "FOOTAGE_INITIALS_0",0)
 stats.set_int(mpx .. "FOOTAGE_INITIALS_1", 0)
 stats.set_int(mpx .. "FOOTAGE_INITIALS_2", 0)
 stats.set_int(mpx .. "FOOTAGE_INITIALS_3", 0)
 stats.set_int(mpx .. "FOOTAGE_INITIALS_4", 0)
 stats.set_int(mpx .. "FOOTAGE_INITIALS_5", 0)
 stats.set_int(mpx .. "FOOTAGE_INITIALS_6", 0)
 stats.set_int(mpx .. "FOOTAGE_INITIALS_7", 0)
 stats.set_int(mpx .. "FOOTAGE_INITIALS_8", 0)
 stats.set_int(mpx .. "FOOTAGE_INITIALS_9", 0)
 stats.set_int(mpx .. "FOOTAGE_SCORE_0", 0)
 stats.set_int(mpx .. "FOOTAGE_SCORE_1", 0)
 stats.set_int(mpx .. "FOOTAGE_SCORE_2", 0)
 stats.set_int(mpx .. "FOOTAGE_SCORE_3", 0)
 stats.set_int(mpx .. "FOOTAGE_SCORE_0", 0)
 stats.set_int(mpx .. "FOOTAGE_SCORE_5", 0)
 stats.set_int(mpx .. "FOOTAGE_SCORE_6", 0)
 stats.set_int(mpx .. "FOOTAGE_SCORE_7", 0)
 stats.set_int(mpx .. "FOOTAGE_SCORE_8", 0)
 stats.set_int(mpx .. "FOOTAGE_SCORE_9", 0)
 stats.set_int(mpx .. "AWD_CAR_CLUB_MEM", 0)
 stats.set_int(mpx .. "AWD_SPRINTRACER", 0)
 stats.set_int(mpx .. "AWD_STREETRACER", 0)
 stats.set_int(mpx .. "AWD_PURSUITRACER", 0)
 stats.set_int(mpx .. "AWD_TEST_CAR", 0)
 stats.set_int(mpx .. "AWD_AUTO_SHOP", 0)	
 stats.set_int(mpx .. "AWD_GROUNDWORK", 0)
 stats.set_int(mpx .. "AWD_CAR_EXPORT", 0)
 stats.set_int(mpx .. "AWD_ROBBERY_CONTRACT", 0)
 stats.set_int(mpx .. "AWD_FACES_OF_DEATH", 0)
 stats.set_int(mpx .. "AWD_CONTRACTOR", 0)
 stats.set_int(mpx .. "AWD_COLD_CALLER", 0)
 stats.set_int(mpx .. "AWD_PRODUCER", 0)
 stats.set_int(mpx .. "FIXERTELEPHONEHITSCOMPL", 0)
 stats.set_int(mpx .. "PAYPHONE_BONUS_KILL_METHOD", 0)
 stats.set_int(mpx .. "PAYPHONE_BONUS_KILL_METHOD", 0)
 stats.set_int(mpx .. "FIXER_GENERAL_BS", 0)
 stats.set_int(mpx .. "FIXER_COMPLETED_BS", 0)
 stats.set_int(mpx .. "FIXER_STORY_BS", 0)
 stats.set_int(mpx .. "FIXER_STORY_STRAND", 0)
 stats.set_int(mpx .. "FIXER_STORY_COOLDOWN", 0)
 stats.set_int(mpx .. "FIXER_COUNT", 0)
 stats.set_int(mpx .. "FIXER_SC_VEH_RECOVERED", 0)
 stats.set_int(mpx .. "FIXER_SC_VAL_RECOVERED", 0)
 stats.set_int(mpx .. "FIXER_SC_GANG_TERMINATED", 0)
 stats.set_int(mpx .. "FIXER_SC_VIP_RESCUED", 0)
 stats.set_int(mpx .. "FIXER_SC_ASSETS_PROTECTED", 0)
 stats.set_int(mpx .. "FIXER_SC_EQ_DESTROYED", 0)
 stats.set_int(mpx .. "FIXER_EARNINGS", 0)
 stats.set_int(mpx .. "AWD_LOSTANDFOUND", 0)
 stats.set_int(mpx .. "AWD_SUNSET", 0)
 stats.set_int(mpx .. "AWD_TREASURE_HUNTER", 0)
 stats.set_int(mpx .. "AWD_WRECK_DIVING", 0)
 stats.set_int(mpx .. "AWD_KEINEMUSIK", 0)
 stats.set_int(mpx .. "AWD_PALMS_TRAX", 0)
 stats.set_int(mpx .. "AWD_MOODYMANN", 0)
 stats.set_int(mpx .. "AWD_FILL_YOUR_BAGS", 0)
 stats.set_int(mpx .. "AWD_WELL_PREPARED", 0)
 stats.set_int(mpx .. "H0_H0_DJ_MISSIONS", 0)
 stats.set_int(mpx .. "H0CNF_APPROACH", 0)
 stats.set_int(mpx .. "H0_MISSIONS", 0)
 stats.set_int(mpx .. "H0_PLAYTHROUGH_STATUS", 0)
 stats.set_int("MPPLY_TOTAL_RACES_WON", 0)
 stats.set_int("MPPLY_TOTAL_RACES_LOST", 0)
 stats.set_int("MPPLY_TOTAL_CUSTOM_RACES_WON", 0)
 stats.set_int("MPPLY_TOTAL_DEATHMATCH_LOST", 0)
 stats.set_int("MPPLY_TOTAL_DEATHMATCH_WON", 0)
 stats.set_int("MPPLY_TOTAL_TDEATHMATCH_LOST", 0)
 stats.set_int("MPPLY_TOTAL_TDEATHMATCH_WON", 0)
 stats.set_int("MPPLY_SHOOTINGRANGE_WINS", 0)
 stats.set_int("MPPLY_SHOOTINGRANGE_LOSSES", 0)
 stats.set_int("MPPLY_TENNIS_MATCHES_WON", 0)
 stats.set_int("MPPLY_TENNIS_MATCHES_LOST", 0)
 stats.set_int("MPPLY_GOLF_WINS", 0)
 stats.set_int("MPPLY_GOLF_LOSSES", 0)
 stats.set_int("MPPLY_DARTS_TOTAL_WINS", 0)
 stats.set_int("MPPLY_DARTS_TOTAL_MATCHES", 0)
 stats.set_int("MPPLY_SHOOTINGRANGE_TOTAL_MATCH", 0)
 stats.set_int("MPPLY_BJ_WINS", 0)
 stats.set_int("MPPLY_BJ_LOST", 0)
 stats.set_int("MPPLY_RACE_2_POINT_WINS", 0)
 stats.set_int("MPPLY_RACE_2_POINT_LOST", 0)
 stats.set_int("MPPLY_KILLS_PLAYERS", 0)
 stats.set_int("MPPLY_DEATHS_PLAYER", 0)
 stats.set_int("MPPLY_MISSIONS_CREATED", 0)
 stats.set_int("MPPLY_LTS_CREATED", 0)
 stats.set_int("MPPLY_FM_MISSION_LIKES", 0)
 stats.set_int("MPPLY_AWD_FM_CR_DM_MADE", 0)
 stats.set_int("MPPLY_AWD_FM_CR_RACES_MADE", 0)
 stats.set_int("MPPLY_AWD_FM_CR_PLAYED_BY_PEEP", 0)
 stats.set_int("MPPLY_AWD_FM_CR_MISSION_SCORE", 0)
 stats.set_int("MPPLY_HEIST_ACH_TRACKER", 0)
 stats.set_int("MPPLY_WIN_GOLD_MEDAL_HEISTS", 0)
 stats.set_int("MPPLY_GANGOPS_ALLINORDER", 0)
 stats.set_int("MPPLY_GANGOPS_LOYALTY", 0)
 stats.set_int("MPPLY_GANGOPS_CRIMMASMD", 0)
 stats.set_int("MPPLY_GANGOPS_LOYALTY2", 0)
 stats.set_int("MPPLY_GANGOPS_LOYALTY3", 0)
 stats.set_int("MPPLY_GANGOPS_CRIMMASMD2", 0)
 stats.set_int("MPPLY_GANGOPS_CRIMMASMD3", 0)
 stats.set_int("MPPLY_GANGOPS_SUPPORT", 0)

for i = 2, 19 do stats.set_int(mpx .. "WEAP_FM_ADDON_PURCH"..i, 0) end
for j = 1, 19 do stats.set_int(mpx .. "CHAR_FM_WEAP_ADDON_"..j.."_UNLCK", 0) end
for m = 1, 01 do stats.set_int(mpx .. "CHAR_KIT_"..m.."_FM_UNLCK", 0) end
for l = 2, 01 do stats.set_int(mpx .. "CHAR_KIT_FM_PURCHASE"..l, 0) end
for i = 0, 9 do stats.set_int(mpx .. "IAP_INITIALS_"..i, 0) stats.set_int(mpx .. "IAP_SCORE_"..i, 0) stats.set_int(mpx .. "IAP_SCORE_"..i, 0) stats.set_int(mpx .. "SCGW_SCORE_"..i, 0) stats.set_int(mpx .. "DG_DEFENDER_INITIALS_"..i, 0) stats.set_int(mpx .. "DG_DEFENDER_SCORE_"..i, 0) stats.set_int(mpx .. "DG_MONKEY_INITIALS_"..i, 0) stats.set_int(mpx .. "DG_MONKEY_SCORE_"..i, 0) stats.set_int(mpx .. "DG_PENETRATOR_INITIALS_"..i, 0) stats.set_int(mpx .. "DG_PENETRATOR_SCORE_"..i, 0) stats.set_int(mpx .. "GGSM_INITIALS_"..i, 0) stats.set_int(mpx .. "GGSM_SCORE_"..i, 0) stats.set_int(mpx .. "TWR_INITIALS_"..i, 0) stats.set_int(mpx .. "TWR_SCORE_"..i, 0) end 

 stats.set_bool(mpx .. "AWD_FMKILL3ANDWINGTARACE", false)
 stats.set_bool(mpx .. "AWD_FMWINCUSTOMRACE", false)
 stats.set_bool(mpx .. "CL_RACE_MODDED_CAR", false)
 stats.set_bool(mpx .. "AWD_FMRACEWORLDRECHOLDER", false)
 stats.set_bool(mpx .. "AWD_FMWINALLRACEMODES", false)
 stats.set_bool(mpx .. "AWD_FM_TENNIS_5_SET_WINS", false)
 stats.set_bool(mpx .. "AWD_FM_TENNIS_STASETWIN", false)
 stats.set_bool(mpx .. "AWD_FM_SHOOTRANG_GRAN_WON", false)
 stats.set_bool(mpx .. "AWD_FMWINEVERYGAMEMODE", false)
 stats.set_bool(mpx .. "AWD_FM0DIFFERENTDM", false)
 stats.set_bool(mpx .. "AWD_FM0DIFFERENTRACES", false)
 stats.set_bool(mpx .. "AWD_FMATTGANGHQ", false)
 stats.set_bool(mpx .. "AWD_FM6DARTCHKOUT", false)
 stats.set_bool(mpx .. "AWD_FM_GOLF_HOLE_IN_1", false)
 stats.set_bool(mpx .. "AWD_FMPICKUPDLCCRATE1ST", false)
 stats.set_bool(mpx .. "AWD_FM0DIFITEMSCLOTHES", false)
 stats.set_bool(mpx .. "AWD_BUY_EVERY_GUN", false)
 stats.set_bool(mpx .. "AWD_DRIVELESTERCAR5MINS", false)
 stats.set_bool(mpx .. "AWD_FMTATTOOALLBODYPARTS", false)
 stats.set_bool(mpx .. "AWD_STORE_0_CAR_IN_GARAGES", false)
 stats.set_bool(mpx .. "AWD_DAILYOBJWEEKBONUS", false)
 stats.set_bool(mpx .. "AWD_DAILYOBJMONTHBONUS", false)
 stats.set_bool(mpx .. "CL_DRIVE_RALLY", false)
 stats.set_bool(mpx .. "CL_PLAY_GTA_RACE", false)
 stats.set_bool(mpx .. "CL_PLAY_BOAT_RACE", false)
 stats.set_bool(mpx .. "CL_PLAY_FOOT_RACE", false)
 stats.set_bool(mpx .. "CL_PLAY_TEAM_DM", false)
 stats.set_bool(mpx .. "CL_PLAY_VEHICLE_DM", false)
 stats.set_bool(mpx .. "CL_PLAY_MISSION_CONTACT", false)
 stats.set_bool(mpx .. "CL_PLAY_A_PLAYLIST", false)
 stats.set_bool(mpx .. "CL_PLAY_POINT_TO_POINT", false)
 stats.set_bool(mpx .. "CL_PLAY_ONE_ON_ONE_DM", false)
 stats.set_bool(mpx .. "CL_PLAY_ONE_ON_ONE_RACE", false)
 stats.set_bool(mpx .. "CL_SURV_A_BOUNTY", false)
 stats.set_bool(mpx .. "CL_SET_WANTED_LVL_ON_PLAY", false)
 stats.set_bool(mpx .. "CL_GANG_BACKUP_GANGS", false)
 stats.set_bool(mpx .. "CL_GANG_BACKUP_LOST", false)
 stats.set_bool(mpx .. "CL_GANG_BACKUP_VAGOS", false)
 stats.set_bool(mpx .. "CL_CALL_MERCENARIES", false)
 stats.set_bool(mpx .. "CL_PHONE_MECH_DROP_CAR", false)
 stats.set_bool(mpx .. "CL_GONE_OFF_RADAR", false)
 stats.set_bool(mpx .. "CL_FILL_TITAN", false)
 stats.set_bool(mpx .. "CL_MOD_CAR_USING_APP", false)
 stats.set_bool(mpx .. "CL_MOD_CAR_USING_APP", false)
 stats.set_bool(mpx .. "CL_BUY_INSURANCE", false)
 stats.set_bool(mpx .. "CL_BUY_GARAGE", false)
 stats.set_bool(mpx .. "CL_ENTER_FRIENDS_HOUSE", false)
 stats.set_bool(mpx .. "CL_CALL_STRIPPER_HOUSE", false)
 stats.set_bool(mpx .. "CL_CALL_FRIEND", false)
 stats.set_bool(mpx .. "CL_SEND_FRIEND_REQUEST", false)
 stats.set_bool(mpx .. "CL_W_WANTED_PLAYER_TV", false)
 stats.set_bool(mpx .. "FM_INTRO_CUT_DONE", false)
 stats.set_bool(mpx .. "FM_INTRO_MISS_DONE", false)
 stats.set_bool(mpx .. "SHOOTINGRANGE_SEEN_TUT", false)
 stats.set_bool(mpx .. "TENNIS_SEEN_TUTORIAL", false)
 stats.set_bool(mpx .. "DARTS_SEEN_TUTORIAL", false)
 stats.set_bool(mpx .. "ARMWRESTLING_SEEN_TUTORIAL", false)
 stats.set_bool(mpx .. "HAS_WATCHED_BENNY_CUTSCE", false)
 stats.set_bool(mpx .. "AWD_FMFURTHESTWHEELIE", false)
 stats.set_bool(mpx .. "AWD_FMFULLYMODDEDCAR", false)
 stats.set_bool(mpx .. "AWD_FMKILLSTREAKSDM", false)
 stats.set_bool(mpx .. "AWD_FMMOSTKILLSGANGHIDE", false)
 stats.set_bool(mpx .. "AWD_FMMOSTKILLSSURVIVE", false)
 stats.set_bool(mpx .. "AWD_FINISH_HEIST_NO_DAMAGE", false)
 stats.set_bool(mpx .. "AWD_SPLIT_HEIST_TAKE_EVENLY", false)
 stats.set_bool(mpx .. "AWD_ACTIVATE_2_PERSON_KEY", false)
 stats.set_bool(mpx .. "AWD_ALL_ROLES_HEIST", false)
 stats.set_bool(mpx .. "HEIST_PLANNING_DONE_PRINT", false)
 stats.set_bool(mpx .. "HEIST_PLANNING_DONE_HELP_0", false)
 stats.set_bool(mpx .. "HEIST_PLANNING_DONE_HELP_1", false)
 stats.set_bool(mpx .. "HEIST_PRE_PLAN_DONE_HELP_0", false)
 stats.set_bool(mpx .. "HEIST_CUTS_DONE_FINALE", false)
 stats.set_bool(mpx .. "HEIST_IS_TUTORIAL", false)
 stats.set_bool(mpx .. "HEIST_STRAND_INTRO_DONE", false)
 stats.set_bool(mpx .. "HEIST_CUTS_DONE_ORNATE", false)
 stats.set_bool(mpx .. "HEIST_CUTS_DONE_PRISON", false)
 stats.set_bool(mpx .. "HEIST_CUTS_DONE_BIOLAB", false)
 stats.set_bool(mpx .. "HEIST_CUTS_DONE_NARCOTIC", false)
 stats.set_bool(mpx .. "HEIST_CUTS_DONE_TUTORIAL", false)
 stats.set_bool(mpx .. "HEIST_AWARD_DONE_PREP", false)
 stats.set_bool(mpx .. "HEIST_AWARD_BOUGHT_IN", false)
 stats.set_bool(mpx .. "AWD_MATCHING_OUTFIT_HEIST", false)
 stats.set_bool(mpx .. "AWD_CLUB_HOTSPOT", false)
 stats.set_bool(mpx .. "AWD_CLUB_CLUBBER", false)
 stats.set_bool(mpx .. "AWD_CLUB_COORD", false)
 stats.set_bool(mpx .. "AWD_BEGINNER", false)
 stats.set_bool(mpx .. "AWD_FIELD_FILLER", false)
 stats.set_bool(mpx .. "AWD_ARMCHAIR_RACER", false)
 stats.set_bool(mpx .. "AWD_LEARNER", false)
 stats.set_bool(mpx .. "AWD_SUNDAY_DRIVER", false)
 stats.set_bool(mpx .. "AWD_THE_ROOKIE", false)
 stats.set_bool(mpx .. "AWD_BUMP_AND_RUN", false)
 stats.set_bool(mpx .. "AWD_GEAR_HEAD", false)
 stats.set_bool(mpx .. "AWD_DOOR_SLAMMER", false)
 stats.set_bool(mpx .. "AWD_HOT_LAP", false)
 stats.set_bool(mpx .. "AWD_ARENA_AMATEUR", false)
 stats.set_bool(mpx .. "AWD_PAINT_TRADER", false)
 stats.set_bool(mpx .. "AWD_SHUNTER", false)
 stats.set_bool(mpx .. "AWD_JOCK", false)
 stats.set_bool(mpx .. "AWD_WARRIOR", false)
 stats.set_bool(mpx .. "AWD_T_BONE", false)
 stats.set_bool(mpx .. "AWD_MAYHEM", false)
 stats.set_bool(mpx .. "AWD_WRECKER", false)
 stats.set_bool(mpx .. "AWD_CRASH_COURSE", false)
 stats.set_bool(mpx .. "AWD_ARENA_LEGEND", false)
 stats.set_bool(mpx .. "AWD_PEGASUS", false)
 stats.set_bool(mpx .. "AWD_UNSTOPPABLE", false)
 stats.set_bool(mpx .. "AWD_CONTACT_SPORT", false)
 stats.set_bool(mpx .. "AWD_FIRST_TIME1", false)
 stats.set_bool(mpx .. "AWD_FIRST_TIME2", false)
 stats.set_bool(mpx .. "AWD_FIRST_TIME3", false)
 stats.set_bool(mpx .. "AWD_FIRST_TIME0", false)
 stats.set_bool(mpx .. "AWD_FIRST_TIME5", false)
 stats.set_bool(mpx .. "AWD_FIRST_TIME6", false)
 stats.set_bool(mpx .. "AWD_ALL_IN_ORDER", false)
 stats.set_bool(mpx .. "AWD_SUPPORTING_ROLE", false)
 stats.set_bool(mpx .. "AWD_LEADER", false)
 stats.set_bool(mpx .. "AWD_SURVIVALIST", false)
Paragon = stats.get_bool(mpx .. "CAS_VEHICLE_REWARD") if Paragon == false then stats.set_bool(mpx .. "CAS_VEHICLE_REWARD",false) else stats.set_bool(mpx .. "CAS_VEHICLE_REWARD", false) end
 stats.set_bool(mpx .. "AWD_SCOPEOUT", false)
 stats.set_bool(mpx .. "AWD_CREWEDUP", false)
 stats.set_bool(mpx .. "AWD_MOVINGON", false)
 stats.set_bool(mpx .. "AWD_PROMOCAMP", false)
 stats.set_bool(mpx .. "AWD_GUNMAN", false)
 stats.set_bool(mpx .. "AWD_SMASHNGRAB", false)
 stats.set_bool(mpx .. "AWD_INPLAINSI", false)
 stats.set_bool(mpx .. "AWD_UNDETECTED", false)
 stats.set_bool(mpx .. "AWD_ALLROUND", false)
 stats.set_bool(mpx .. "AWD_ELITETHEIF", false)
 stats.set_bool(mpx .. "AWD_PRO", false)
 stats.set_bool(mpx .. "AWD_SUPPORTACT", false)
 stats.set_bool(mpx .. "AWD_SHAFTED", false)
 stats.set_bool(mpx .. "AWD_COLLECTOR", false)
 stats.set_bool(mpx .. "AWD_DEADEYE", false)
 stats.set_bool(mpx .. "AWD_PISTOLSATDAWN", false)
 stats.set_bool(mpx .. "AWD_TRAFFICAVOI", false)
 stats.set_bool(mpx .. "AWD_CANTCATCHBRA", false)
 stats.set_bool(mpx .. "AWD_WIZHARD", false)
 stats.set_bool(mpx .. "AWD_APEESCAPE", false)
 stats.set_bool(mpx .. "AWD_MONKEYKIND", false)
 stats.set_bool(mpx .. "AWD_AQUAAPE", false)
 stats.set_bool(mpx .. "AWD_KEEPFAITH", false)
 stats.set_bool(mpx .. "AWD_falseLOVE", false)
 stats.set_bool(mpx .. "AWD_NEMESIS", false)
 stats.set_bool(mpx .. "AWD_FRIENDZONED", false)
 stats.set_bool(mpx .. "VCM_FLOW_CS_RSC_SEEN", false)
 stats.set_bool(mpx .. "VCM_FLOW_CS_BWL_SEEN", false)
 stats.set_bool(mpx .. "VCM_FLOW_CS_MTG_SEEN", false)
 stats.set_bool(mpx .. "VCM_FLOW_CS_OIL_SEEN", false)
 stats.set_bool(mpx .. "VCM_FLOW_CS_DEF_SEEN", false)
 stats.set_bool(mpx .. "VCM_FLOW_CS_FIN_SEEN", false)
 stats.set_bool(mpx .. "HELP_FURIA", false)
 stats.set_bool(mpx .. "HELP_MINITAN", false)
 stats.set_bool(mpx .. "HELP_YOSEMITE2", false)
 stats.set_bool(mpx .. "HELP_ZHABA", false)
 stats.set_bool(mpx .. "HELP_IMORGEN", false)
 stats.set_bool(mpx .. "HELP_SULTAN2", false)
 stats.set_bool(mpx .. "HELP_VAGRANT", false)
 stats.set_bool(mpx .. "HELP_VSTR", false)
 stats.set_bool(mpx .. "HELP_STRYDER", false)
 stats.set_bool(mpx .. "HELP_SUGOI", false)
 stats.set_bool(mpx .. "HELP_KANJO", false)
 stats.set_bool(mpx .. "HELP_FORMULA", false)
 stats.set_bool(mpx .. "HELP_FORMULA2", false)
 stats.set_bool(mpx .. "HELP_JB0", false)
 stats.set_bool(mpx .. "AWD_SCOPEOUT", false)
 stats.set_bool(mpx .. "AWD_CREWEDUP", false)
 stats.set_bool(mpx .. "AWD_MOVINGON", false)
 stats.set_bool(mpx .. "AWD_PROMOCAMP", false)
 stats.set_bool(mpx .. "AWD_GUNMAN", false)
 stats.set_bool(mpx .. "AWD_SMASHNGRAB", false)
 stats.set_bool(mpx .. "AWD_INPLAINSI", false)
 stats.set_bool(mpx .. "AWD_UNDETECTED", false)
 stats.set_bool(mpx .. "AWD_ALLROUND", false)
 stats.set_bool(mpx .. "AWD_ELITETHEIF", false)
 stats.set_bool(mpx .. "AWD_PRO", false)
 stats.set_bool(mpx .. "AWD_SUPPORTACT", false)
 stats.set_bool(mpx .. "AWD_SHAFTED", false)
 stats.set_bool(mpx .. "AWD_COLLECTOR", false)
 stats.set_bool(mpx .. "AWD_DEADEYE", false)
 stats.set_bool(mpx .. "AWD_PISTOLSATDAWN", false)
 stats.set_bool(mpx .. "AWD_TRAFFICAVOI", false)
 stats.set_bool(mpx .. "AWD_CANTCATCHBRA", false)
 stats.set_bool(mpx .. "AWD_WIZHARD", false)
 stats.set_bool(mpx .. "AWD_APEESCAP", false)
 stats.set_bool(mpx .. "AWD_MONKEYKIND", false)
 stats.set_bool(mpx .. "AWD_AQUAAPE", false)
 stats.set_bool(mpx .. "AWD_KEEPFAITH", false)
 stats.set_bool(mpx .. "AWD_falseLOVE", false)
 stats.set_bool(mpx .. "AWD_NEMESIS", false)
 stats.set_bool(mpx .. "AWD_FRIENDZONED", false)
 stats.set_bool(mpx .. "IAP_CHALLENGE_0", false)
 stats.set_bool(mpx .. "IAP_CHALLENGE_1", false)
 stats.set_bool(mpx .. "IAP_CHALLENGE_2", false)
 stats.set_bool(mpx .. "IAP_CHALLENGE_3", false)
 stats.set_bool(mpx .. "IAP_CHALLENGE_0", false)
 stats.set_bool(mpx .. "IAP_GOLD_TANK", false)
 stats.set_bool(mpx .. "SCGW_WON_NO_DEATHS", false)
 stats.set_bool(mpx .. "AWD_KINGOFQUB3D", false)
 stats.set_bool(mpx .. "AWD_QUBISM", false)
 stats.set_bool(mpx .. "AWD_QUIBITS", false)
 stats.set_bool(mpx .. "AWD_GODOFQUB3D", false)
 stats.set_bool(mpx .. "AWD_ELEVENELEVEN", false)
 stats.set_bool(mpx .. "AWD_GOFOR11TH", false)
 stats.set_bool(mpx .. "AWD_INTELGATHER", false)
 stats.set_bool(mpx .. "AWD_COMPOUNDINFILT", false)
 stats.set_bool(mpx .. "AWD_LOOT_FINDER", false)
 stats.set_bool(mpx .. "AWD_MAX_DISRUPT", false)
 stats.set_bool(mpx .. "AWD_THE_ISLAND_HEIST", false)
 stats.set_bool(mpx .. "AWD_GOING_ALONE", false)
 stats.set_bool(mpx .. "AWD_TEAM_WORK", false)
 stats.set_bool(mpx .. "AWD_MIXING_UP", false)
 stats.set_bool(mpx .. "AWD_TEAM_WORK", false)
 stats.set_bool(mpx .. "AWD_MIXING_UP", false)
 stats.set_bool(mpx .. "AWD_PRO_THIEF", false)
 stats.set_bool(mpx .. "AWD_CAT_BURGLAR", false)
 stats.set_bool(mpx .. "AWD_ONE_OF_THEM", false)
 stats.set_bool(mpx .. "AWD_GOLDEN_GUN", false)
 stats.set_bool(mpx .. "AWD_ELITE_THIEF", false)
 stats.set_bool(mpx .. "AWD_PROFESSIONAL", false)
 stats.set_bool(mpx .. "AWD_HELPING_OUT", false)
 stats.set_bool(mpx .. "AWD_COURIER", false)
 stats.set_bool(mpx .. "AWD_PARTY_VIBES", false)
 stats.set_bool(mpx .. "AWD_HELPING_HAND", false)
 stats.set_bool(mpx .. "AWD_ELEVENELEVEN", false)
 stats.set_bool(mpx .. "COMPLETE_H0_F_USING_VETIR", false)
 stats.set_bool(mpx .. "COMPLETE_H0_F_USING_LONGFIN", false)
 stats.set_bool(mpx .. "COMPLETE_H0_F_USING_ANNIH", false)
 stats.set_bool(mpx .. "COMPLETE_H0_F_USING_ALKONOS", false)
 stats.set_bool(mpx .. "COMPLETE_H0_F_USING_PATROLB", false)
 stats.set_bool(mpx .. "AWD_CAR_CLUB", false)
 stats.set_bool(mpx .. "AWD_PRO_CAR_EXPORT", false)
 stats.set_bool(mpx .. "AWD_UNION_DEPOSITORY", false)
 stats.set_bool(mpx .. "AWD_MILITARY_CONVOY", false)
 stats.set_bool(mpx .. "AWD_FLEECA_BANK", false)
 stats.set_bool(mpx .. "AWD_FREIGHT_TRAIN", false)
 stats.set_bool(mpx .. "AWD_BOLINGBROKE_ASS", false)
 stats.set_bool(mpx .. "AWD_IAA_RAID", false)
 stats.set_bool(mpx .. "AWD_METH_JOB", false)
 stats.set_bool(mpx .. "AWD_BUNKER_RAID", false)
 stats.set_bool(mpx .. "AWD_STRAIGHT_TO_VIDEO", false)
 stats.set_bool(mpx .. "AWD_MONKEY_C_MONKEY_DO", false)
 stats.set_bool(mpx .. "AWD_TRAINED_TO_KILL", false)
 stats.set_bool(mpx .. "AWD_DIRECTOR", false)
 stats.set_bool(mpx .. "AWD_TEEING_OFF", false)
 stats.set_bool(mpx .. "AWD_PARTY_NIGHT", false)
 stats.set_bool(mpx .. "AWD_BILLIONAIRE_GAMES", false)
 stats.set_bool(mpx .. "AWD_HOOD_PASS", false)
 stats.set_bool(mpx .. "AWD_STUDIO_TOUR", false)
 stats.set_bool(mpx .. "AWD_DONT_MESS_DRE", false)
 stats.set_bool(mpx .. "AWD_BACKUP", false)
 stats.set_bool(mpx .. "AWD_SHORTFRANK_1", false)
 stats.set_bool(mpx .. "AWD_SHORTFRANK_2", false)
 stats.set_bool(mpx .. "AWD_SHORTFRANK_3", false)
 stats.set_bool(mpx .. "AWD_CONTR_KILLER", false)
 stats.set_bool(mpx .. "AWD_DOGS_BEST_FRIEND", false)
 stats.set_bool(mpx .. "AWD_MUSIC_STUDIO", false)
 stats.set_bool(mpx .. "AWD_SHORTLAMAR_1", false)
 stats.set_bool(mpx .. "AWD_SHORTLAMAR_2", false)
 stats.set_bool(mpx .. "AWD_SHORTLAMAR_3", false)
 stats.set_bool(mpx .. "BS_FRANKLIN_DIALOGUE_0", false)
 stats.set_bool(mpx .. "BS_FRANKLIN_DIALOGUE_1", false)
 stats.set_bool(mpx .. "BS_FRANKLIN_DIALOGUE_2", false)
 stats.set_bool(mpx .. "BS_IMANI_D_APP_SETUP", false)
 stats.set_bool(mpx .. "BS_IMANI_D_APP_STRAND", false)
 stats.set_bool(mpx .. "BS_IMANI_D_APP_PARTY", false)
 stats.set_bool(mpx .. "BS_IMANI_D_APP_PARTY_2", false)
 stats.set_bool(mpx .. "BS_IMANI_D_APP_PARTY_F", false)
 stats.set_bool(mpx .. "BS_IMANI_D_APP_BILL", false)
 stats.set_bool(mpx .. "BS_IMANI_D_APP_BILL_2", false)
 stats.set_bool(mpx .. "BS_IMANI_D_APP_BILL_F", false)
 stats.set_bool(mpx .. "BS_IMANI_D_APP_HOOD", false)
 stats.set_bool(mpx .. "BS_IMANI_D_APP_HOOD_2", false)
 stats.set_bool(mpx .. "BS_IMANI_D_APP_HOOD_F", false)
 
 stats.set_bool("MPPLY_AWD_FLEECA_FIN", false)
 stats.set_bool("MPPLY_AWD_PRISON_FIN", false)
 stats.set_bool("MPPLY_AWD_HUMANE_FIN", false)
 stats.set_bool("MPPLY_AWD_SERIESA_FIN", false)
 stats.set_bool("MPPLY_AWD_PACIFIC_FIN", false)
 stats.set_bool("MPPLY_AWD_HST_ORDER", false)
 stats.set_bool("MPPLY_AWD_COMPLET_HEIST_MEM", false)
 stats.set_bool("MPPLY_AWD_COMPLET_HEIST_1STPER", false)
 stats.set_bool("MPPLY_AWD_HST_SAME_TEAM", false)
 stats.set_bool("MPPLY_AWD_HST_ULT_CHAL", false)
 stats.set_bool("MPPLY_AWD_GANGOPS_IAA", false)
 stats.set_bool("MPPLY_AWD_GANGOPS_SUBMARINE", false)
 stats.set_bool("MPPLY_AWD_GANGOPS_MISSILE", false)
 stats.set_bool("MPPLY_AWD_GANGOPS_ALLINORDER", false)
 stats.set_bool("MPPLY_AWD_GANGOPS_LOYALTY", false)
 stats.set_bool("MPPLY_AWD_GANGOPS_LOYALTY2", false)
 stats.set_bool("MPPLY_AWD_GANGOPS_LOYALTY3", false)
 stats.set_bool("MPPLY_AWD_GANGOPS_CRIMMASMD", false)
 stats.set_bool("MPPLY_AWD_GANGOPS_CRIMMASMD2", false)
 stats.set_bool("MPPLY_AWD_GANGOPS_CRIMMASMD3", false)
 stats.set_bool("MPPLY_AWD_GANGOPS_SUPPORT", false)
end)
--[[carMenu = mainMenu:add_submenu("Vehicle Spawner")
carMenu:add_toggle("Enable Spawn Unreleased", function(v) if v == 1 then globals.set_bool(4539659, true) else globals.set_bool(4539659, false) end end)
carMenu:add_array_item("Vehicle Class", 
]]

--[[
levels = 
{ 0, 800, 2100, 3800, 6100, 9500, 12500, 16000, 19800, 24000, 28500, 33400, 38700, 44200, 50200, 56400, 63000, 69900, 77100, 84700, 92500, 100700, 109200, 118000, 127100, 136500, 146200,
156200, 166500, 177100, 188000, 199200, 210700, 222400, 234500, 246800, 259400, 272300, 285500, 299000, 312700, 326800, 341000, 355600, 370500, 385600, 401000, 416600, 432600, 448800, 465200, 482000, 499000,
516300, 533800, 551600, 569600, 588000, 606500, 625400, 644500, 663800, 683400, 703300, 723400, 743800, 764500, 785400, 806500, 827900, 849600, 871500, 893600, 916000, 938700, 961600, 984700, 1008100, 1031800,
1055700, 1079800, 1104200, 1128800, 1153700, 1178800, 1204200, 1229800, 1255600, 1281700, 1308100, 1334600, 1361400, 1388500, 1415800, 1443300, 1471100, 1499100, 1527300, 1555800, 1584350, 1612950, 1641600,
1670300, 1699050, 1727850, 1756700, 1785600, 1814550, 1843550, 1872600, 1901700, 1930850, 1960050, 1989300, 2018600, 2047950, 2077350, 2106800, 2136300, 2165850, 2195450, 2225100, 2254800, 2284550, 2314350,
2344200, 2374100, 2404050, 2434050, 2464100, 2494200, 2524350, 2554550, 2584800, 2615100, 2645450, 2675850, 2706300, 2736800, 2767350, 2797950, 2828600, 2859300, 2890050, 2920850, 2951700, 2982600, 3013550,
3044550, 3075600, 3106700, 3137850, 3169050, 3200300, 3231600, 3262950, 3294350, 3325800, 3357300, 3388850, 3420450, 3452100, 3483800, 3515550, 3547350, 3579200, 3611100, 3643050, 3675050, 3707100, 3739200,
3771350, 3803550, 3835800, 3868100, 3900450, 3932850, 3965300, 3997800, 4030350, 4062950, 4095600, 4128300, 4161050, 4193850, 4226700, 4259600, 4292550, 4325550, 4358600, 4391700, 4424850, 4458050, 4491300,
4524600, 4557950, 4591350, 4624800, 4658300, 4691850, 4725450, 4759100, 4792800, 4826550, 4860350, 4894200, 4928100, 4962050, 4996050, 5030100, 5064200, 5098350, 5132550, 5166800, 5201100, 5235450, 5269850,
5304300, 5338800, 5373350, 5407950, 5442600, 5477300, 5512050, 5546850, 5581700, 5616600, 5651550, 5686550, 5721600, 5756700, 5791850, 5827050, 5862300, 5897600, 5932950, 5968350, 6003800, 6039300, 6074850,
6110450, 6146100, 6181800, 6217550, 6253350, 6289200, 6325100, 6361050, 6397050, 6433100, 6469200, 6505350, 6541550, 6577800, 6614100, 6650450, 6686850, 6723300, 6759800, 6796350, 6832950, 6869600, 6906300,
6943050, 6979850, 7016700, 7053600, 7090550, 7127550, 7164600, 7201700, 7238850, 7276050, 7313300, 7350600, 7387950, 7425350, 7462800, 7500300, 7537850, 7575450, 7613100, 7650800, 7688550, 7726350, 7764200,
7802100, 7840050, 7878050, 7916100, 7954200, 7992350, 8030550, 8068800, 8107100, 8145450, 8183850, 8222300, 8260800, 8299350, 8337950, 8376600, 8415300, 8454050, 8492850, 8531700, 8570600, 8609550, 8648550,
8687600, 8726700, 8765850, 8805050, 8844300, 8883600, 8922950, 8962350, 9001800, 9041300, 9080850, 9120450, 9160100, 9199800, 9239550, 9279350, 9319200, 9359100, 9399050, 9439050, 9479100, 9519200, 9559350,
9599550, 9639800, 9680100, 9720450, 9760850, 9801300, 9841800, 9882350, 9922950, 9963600, 10004300, 10045050, 10085850, 10126700, 10167600, 10208550, 10249550, 10290600, 10331700, 10372850, 10414050, 10455300,
10496600, 10537950, 10579350, 10620800, 10662300, 10703850, 10745450, 10787100, 10828800, 10870550, 10912350, 10954200, 10996100, 11038050, 11080050, 11122100, 11164200, 11206350, 11248550, 11290800, 11333100,
11375450, 11417850, 11460300, 11502800, 11545350, 11587950, 11630600, 11673300, 11716050, 11758850, 11801700, 11844600, 11887550, 11930550, 11973600, 12016700, 12059850, 12103050, 12146300, 12189600, 12232950,
12276350, 12319800, 12363300, 12406850, 12450450, 12494100, 12537800, 12581550, 12625350, 12669200, 12713100, 12757050, 12801050, 12845100, 12889200, 12933350, 12977550, 13021800, 13066100, 13110450, 13154850,
13199300, 13243800, 13288350, 13332950, 13377600, 13422300, 13467050, 13511850, 13556700, 13601600, 13646550, 13691550, 13736600, 13781700, 13826850, 13872050, 13917300, 13962600, 14007950, 14053350, 14098800,
14144300, 14189850, 14235450, 14281100, 14326800, 14372550, 14418350, 14464200, 14510100, 14556050, 14602050, 14648100, 14694200, 14740350, 14786550, 14832800, 14879100, 14925450, 14971850, 15018300, 15064800,
15111350, 15157950, 15204600, 15251300, 15298050, 15344850, 15391700, 15438600, 15485550, 15532550, 15579600, 15626700, 15673850, 15721050, 15768300, 15815600, 15862950, 15910350, 15957800, 16005300, 16052850,
16100450, 16148100, 16195800, 16243550, 16291350, 16339200, 16387100, 16435050, 16483050, 16531100, 16579200, 16627350, 16675550, 16723800, 16772100, 16820450, 16868850, 16917300, 16965800, 17014350, 17062950,
17111600, 17160300, 17209050, 17257850, 17306700, 17355600, 17404550, 17453550, 17502600, 17551700, 17600850, 17650050, 17699300, 17748600, 17797950, 17847350, 17896800, 17946300, 17995850, 18045450, 18095100,
18144800, 18194550, 18244350, 18294200, 18344100, 18394050, 18444050, 18494100, 18544200, 18594350, 18644550, 18694800, 18745100, 18795450, 18845850, 18896300, 18946800, 18997350, 19047950, 19098600, 19149300,
19200050, 19250850, 19301700, 19352600, 19403550, 19454550, 19505600, 19556700, 19607850, 19659050, 19710300, 19761600, 19812950, 19864350, 19915800, 19967300, 20018850, 20070450, 20122100, 20173800, 20225550,
20277350, 20329200, 20381100, 20433050, 20485050, 20537100, 20589200, 20641350, 20693550, 20745800, 20798100, 20850450, 20902850, 20955300, 21007800, 21060350, 21112950, 21165600, 21218300, 21271050, 21323850,
21376700, 21429600, 21482550, 21535550, 21588600, 21641700, 21694850, 21748050, 21801300, 21854600, 21907950, 21961350, 22014800, 22068300, 22121850, 22175450, 22229100, 22282800, 22336550, 22390350, 22444200,
22498100, 22552050, 22606050, 22660100, 22714200, 22768350, 22822550, 22876800, 22931100, 22985450, 23039850, 23094300, 23148800, 23203350, 23257950, 23312600, 23367300, 23422050, 23476850, 23531700, 23586600,
23641550, 23696550, 23751600, 23806700, 23861850, 23917050, 23972300, 24027600, 24082950, 24138350, 24193800, 24249300, 24304850, 24360450, 24416100, 24471800, 24527550, 24583350, 24639200, 24695100, 24751050,
24807050, 24863100, 24919200, 24975350, 25031550, 25087800, 25144100, 25200450, 25256850, 25313300, 25369800, 25426350, 25482950, 25539600, 25596300, 25653050, 25709850, 25766700, 25823600, 25880550, 25937550,
25994600, 26051700, 26108850, 26166050, 26223300, 26280600, 26337950, 26395350, 26452800, 26510300, 26567850, 26625450, 26683100, 26740800, 26798550, 26856350, 26914200, 26972100, 27030050, 27088050, 27146100,
27204200, 27262350, 27320550, 27378800, 27437100, 27495450, 27553850, 27612300, 27670800, 27729350, 27787950, 27846600, 27905300, 27964050, 28022850, 28081700, 28140600, 28199550, 28258550, 28317600, 28376700,
28435850, 28495050, 28554300, 28613600, 28672950, 28732350, 28791800, 28851300, 28910850, 28970450, 29030100, 29089800, 29149550, 29209350, 29269200, 29329100, 29389050, 29449050, 29509100, 29569200, 29629350,
29689550, 29749800, 29810100, 29870450, 29930850, 29991300, 30051800, 30112350, 30172950, 30233600, 30294300, 30355050, 30415850, 30476700, 30537600, 30598550, 30659550, 30720600, 30781700, 30842850, 30904050,
30965300, 31026600, 31087950, 31149350, 31210800, 31272300, 31333850, 31395450, 31457100, 31518800, 31580550, 31642350, 31704200, 31766100, 31828050, 31890050, 31952100, 32014200, 32076350, 32138550, 32200800,
32263100, 32325450, 32387850, 32450300, 32512800, 32575350, 32637950, 32700600, 32763300, 32826050, 32888850, 32951700, 33014600, 33077550, 33140550, 33203600, 33266700, 33329850, 33393050, 33456300, 33519600,
33582950, 33646350, 33709800, 33773300, 33836850, 33900450, 33964100, 34027800, 34091550, 34155350, 34219200, 34283100, 34347050, 34411050, 34475100, 34539200, 34603350, 34667550, 34731800, 34796100, 34860450,
34924850, 34989300, 35053800, 35118350, 35182950, 35247600, 35312300, 35377050, 35441850, 35506700, 35571600, 35636550, 35701550, 35766600, 35831700, 35896850, 35962050, 36027300, 36092600, 36157950, 36223350,
36288800, 36354300, 36419850, 36485450, 36551100, 36616800, 36682550, 36748350, 36814200, 36880100, 36946050, 37012050, 37078100, 37144200, 37210350, 37276550, 37342800, 37409100, 37475450, 37541850, 37608300,
37674800, 37741350, 37807950, 37874600, 37941300, 38008050, 38074850, 38141700, 38208600, 38275550, 38342550, 38409600, 38476700, 38543850, 38611050, 38678300, 38745600, 38812950, 38880350, 38947800, 39015300,
39082850, 39150450, 39218100, 39285800, 39353550, 39421350, 39489200, 39557100, 39625050, 39693050, 39761100, 39829200, 39897350, 39965550, 40033800, 40102100, 40170450, 40238850, 40307300, 40375800, 40444350,
40512950, 40581600, 40650300, 40719050, 40787850, 40856700, 40925600, 40994550, 41063550, 41132600, 41201700, 41270850, 41340050, 41409300, 41478600, 41547950, 41617350, 41686800, 41756300, 41825850, 41895450,
41965100, 42034800, 42104550, 42174350, 42244200, 42314100, 42384050, 42454050, 42524100, 42594200, 42664350, 42734550, 42804800, 42875100, 42945450, 43015850, 43086300, 43156800, 43227350, 43297950, 43368600,
43439300, 43510050, 43580850, 43651700, 43722600, 43793550, 43864550, 43935600, 44006700, 44077850, 44149050, 44220300, 44291600, 44362950, 44434350, 44505800, 44577300, 44648850, 44720450, 44792100, 44863800,
44935550, 45007350, 45079200, 45151100, 45223050, 45295050, 45367100, 45439200, 45511350, 45583550, 45655800, 45728100, 45800450, 45872850, 45945300, 46017800, 46090350, 46162950, 46235600, 46308300, 46381050,
46453850, 46526700, 46599600, 46672550, 46745550, 46818600, 46891700, 46964850, 47038050, 47111300, 47184600, 47257950, 47331350, 47404800, 47478300, 47551850, 47625450, 47699100, 47772800, 47846550, 47920350,
47994200, 48068100, 48142050, 48216050, 48290100, 48364200, 48438350, 48512550, 48586800, 48661100, 48735450, 48809850, 48884300, 48958800, 49033350, 49107950, 49182600, 49257300, 49332050, 49406850, 49481700,
49556600, 49631550, 49706550, 49781600, 49856700, 49931850, 50007050, 50082300, 50157600, 50232950, 50308350, 50383800, 50459300, 50534850, 50610450, 50686100, 50761800, 50837550, 50913350, 50989200, 51065100,
51141050, 51217050, 51293100, 51369200, 51445350, 51521550, 51597800, 51674100, 51750450, 51826850, 51903300, 51979800, 52056350, 52132950, 52209600, 52286300, 52363050, 52439850, 52516700, 52593600, 52670550,
52747550, 52824600, 52901700, 52978850, 53056050, 53133300, 53210600, 53287950, 53365350, 53442800, 53520300, 53597850, 53675450, 53753100, 53830800, 53908550, 53986350, 54064200, 54142100, 54220050, 54298050,
54376100, 54454200, 54532350, 54610550, 54688800, 54767100, 54845450, 54923850, 55002300, 55080800, 55159350, 55237950, 55316600, 55395300, 55474050, 55552850, 55631700, 55710600, 55789550, 55868550, 55947600,
56026700, 56105850, 56185050, 56264300, 56343600, 56422950, 56502350, 56581800, 56661300, 56740850, 56820450, 56900100, 56979800, 57059550, 57139350, 57219200, 57299100, 57379050, 57459050, 57539100, 57619200,
57699350, 57779550, 57859800, 57940100, 58020450, 58100850, 58181300, 58261800, 58342350, 58422950, 58503600, 58584300, 58665050, 58745850, 58826700, 58907600, 58988550, 59069550, 59150600, 59231700, 59312850,
59394050, 59475300, 59556600, 59637950, 59719350, 59800800, 59882300, 59963850, 60045450, 60127100, 60208800, 60290550, 60372350, 60454200, 60536100, 60618050, 60700050, 60782100, 60864200, 60946350, 61028550,
61110800, 61193100, 61275450, 61357850, 61440300, 61522800, 61605350, 61687950, 61770600, 61853300, 61936050, 62018850, 62101700, 62184600, 62267550, 62350550, 62433600, 62516700, 62599850, 62683050, 62766300,
62849600, 62932950, 63016350, 63099800, 63183300, 63266850, 63350450, 63434100, 63517800, 63601550, 63685350, 63769200, 63853100, 63937050, 64021050, 64105100, 64189200, 64273350, 64357550, 64441800, 64526100,
64610450, 64694850, 64779300, 64863800, 64948350, 65032950, 65117600, 65202300, 65287050, 65371850, 65456700, 65541600, 65626550, 65711550, 65796600, 65881700, 65966850, 66052050, 66137300, 66222600, 66307950,
66393350, 66478800, 66564300, 66649850, 66735450, 66821100, 66906800, 66992550, 67078350, 67164200, 67250100, 67336050, 67422050, 67508100, 67594200, 67680350, 67766550, 67852800, 67939100, 68025450, 68111850,
68198300, 68284800, 68371350, 68457950, 68544600, 68631300, 68718050, 68804850, 68891700, 68978600, 69065550, 69152550, 69239600, 69326700, 69413850, 69501050, 69588300, 69675600, 69762950, 69850350, 69937800,
70025300, 70112850, 70200450, 70288100, 70375800, 70463550, 70551350, 70639200, 70727100, 70815050, 70903050, 70991100, 71079200, 71167350, 71255550, 71343800, 71432100, 71520450, 71608850, 71697300, 71785800,
71874350, 71962950, 72051600, 72140300, 72229050, 72317850, 72406700, 72495600, 72584550, 72673550, 72762600, 72851700, 72940850, 73030050, 73119300, 73208600, 73297950, 73387350, 73476800, 73566300, 73655850,
73745450, 73835100, 73924800, 74014550, 74104350, 74194200, 74284100, 74374050, 74464050, 74554100, 74644200, 74734350, 74824550, 74914800, 75005100, 75095450, 75185850, 75276300, 75366800, 75457350, 75547950,
75638600, 75729300, 75820050, 75910850, 76001700, 76092600, 76183550, 76274550, 76365600, 76456700, 76547850, 76639050, 76730300, 76821600, 76912950, 77004350, 77095800, 77187300, 77278850, 77370450, 77462100,
77553800, 77645550, 77737350, 77829200, 77921100, 78013050, 78105050, 78197100, 78289200, 78381350, 78473550, 78565800, 78658100, 78750450, 78842850, 78935300, 79027800, 79120350, 79212950, 79305600, 79398300,
79491050, 79583850, 79676700, 79769600, 79862550, 79955550, 80048600, 80141700, 80234850, 80328050, 80421300, 80514600, 80607950, 80701350, 80794800, 80888300, 80981850, 81075450, 81169100, 81262800, 81356550,
81450350, 81544200, 81638100, 81732050, 81826050, 81920100, 82014200, 82108350, 82202550, 82296800, 82391100, 82485450, 82579850, 82674300, 82768800, 82863350, 82957950, 83052600, 83147300, 83242050, 83336850,
83431700, 83526600, 83621550, 83716550, 83811600, 83906700, 84001850, 84097050, 84192300, 84287600, 84382950, 84478350, 84573800, 84669300, 84764850, 84860450, 84956100, 85051800, 85147550, 85243350, 85339200,
85435100, 85531050, 85627050, 85723100, 85819200, 85915350, 86011550, 86107800, 86204100, 86300450, 86396850, 86493300, 86589800, 86686350, 86782950, 86879600, 86976300, 87073050, 87169850, 87266700, 87363600,
87460550, 87557550, 87654600, 87751700, 87848850, 87946050, 88043300, 88140600, 88237950, 88335350, 88432800, 88530300, 88627850, 88725450, 88823100, 88920800, 89018550, 89116350, 89214200, 89312100, 89410050,
89508050, 89606100, 89704200, 89802350, 89900550, 89998800, 90097100, 90195450, 90293850, 90392300, 90490800, 90589350, 90687950, 90786600, 90885300, 90984050, 91082850, 91181700, 91280600, 91379550, 91478550,
91577600, 91676700, 91775850, 91875050, 91974300, 92073600, 92172950, 92272350, 92371800, 92471300, 92570850, 92670450, 92770100, 92869800, 92969550, 93069350, 93169200, 93269100, 93369050, 93469050, 93569100,
93669200, 93769350, 93869550, 93969800, 94070100, 94170450, 94270850, 94371300, 94471800, 94572350, 94672950, 94773600, 94874300, 94975050, 95075850, 95176700, 95277600, 95378550, 95479550, 95580600, 95681700,
95782850, 95884050, 95985300, 96086600, 96187950, 96289350, 96390800, 96492300, 96593850, 96695450, 96797100, 96898800, 97000550, 97102350, 97204200, 97306100, 97408050, 97510050, 97612100, 97714200, 97816350,
97918550, 98020800, 98123100, 98225450, 98327850, 98430300, 98532800, 98635350, 98737950, 98840600, 98943300, 99046050, 99148850, 99251700, 99354600, 99457550, 99560550, 99663600, 99766700, 99869850, 99973050,
100076300, 100179600, 100282950, 100386350, 100489800, 100593300, 100696850, 100800450, 100904100, 101007800, 101111550, 101215350, 101319200, 101423100, 101527050, 101631050, 101735100, 101839200, 101943350,
102047550, 102151800, 102256100, 102360450, 102464850, 102569300, 102673800, 102778350, 102882950, 102987600, 103092300, 103197050, 103301850, 103406700, 103511600, 103616550, 103721550, 103826600, 103931700,
104036850, 104142050, 104247300, 104352600, 104457950, 104563350, 104668800, 104774300, 104879850, 104985450, 105091100, 105196800, 105302550, 105408350, 105514200, 105620100, 105726050, 105832050, 105938100,
106044200, 106150350, 106256550, 106362800, 106469100, 106575450, 106681850, 106788300, 106894800, 107001350, 107107950, 107214600, 107321300, 107428050, 107534850, 107641700, 107748600, 107855550, 107962550,
108069600, 108176700, 108283850, 108391050, 108498300, 108605600, 108712950, 108820350, 108927800, 109035300, 109142850, 109250450, 109358100, 109465800, 109573550, 109681350, 109789200, 109897100, 110005050,
110113050, 110221100, 110329200, 110437350, 110545550, 110653800, 110762100, 110870450, 110978850, 111087300, 111195800, 111304350, 111412950, 111521600, 111630300, 111739050, 111847850, 111956700, 112065600,
112174550, 112283550, 112392600, 112501700, 112610850, 112720050, 112829300, 112938600, 113047950, 113157350, 113266800, 113376300, 113485850, 113595450, 113705100, 113814800, 113924550, 114034350, 114144200,
114254100, 114364050, 114474050, 114584100, 114694200, 114804350, 114914550, 115024800, 115135100, 115245450, 115355850, 115466300, 115576800, 115687350, 115797950, 115908600, 116019300, 116130050, 116240850,
116351700, 116462600, 116573550, 116684550, 116795600, 116906700, 117017850, 117129050, 117240300, 117351600, 117462950, 117574350, 117685800, 117797300, 117908850, 118020450, 118132100, 118243800, 118355550,
118467350, 118579200, 118691100, 118803050, 118915050, 119027100, 119139200, 119251350, 119363550, 119475800, 119588100, 119700450, 119812850, 119925300, 120037800, 120150350, 120262950, 120375600, 120488300,
120601050, 120713850, 120826700, 120939600, 121052550, 121165550, 121278600, 121391700, 121504850, 121618050, 121731300, 121844600, 121957950, 122071350, 122184800, 122298300, 122411850, 122525450, 122639100,
122752800, 122866550, 122980350, 123094200, 123208100, 123322050, 123436050, 123550100, 123664200, 123778350, 123892550, 124006800, 124121100, 124235450, 124349850, 124464300, 124578800, 124693350, 124807950,
124922600, 125037300, 125152050, 125266850, 125381700, 125496600, 125611550, 125726550, 125841600, 125956700, 126071850, 126187050, 126302300, 126417600, 126532950, 126648350, 126763800, 126879300, 126994850,
127110450, 127226100, 127341800, 127457550, 127573350, 127689200, 127805100, 127921050, 128037050, 128153100, 128269200, 128385350, 128501550, 128617800, 128734100, 128850450, 128966850, 129083300, 129199800,
129316350, 129432950, 129549600, 129666300, 129783050, 129899850, 130016700, 130133600, 130250550, 130367550, 130484600, 130601700, 130718850, 130836050, 130953300, 131070600, 131187950, 131305350, 131422800,
131540300, 131657850, 131775450, 131893100, 132010800, 132128550, 132246350, 132364200, 132482100, 132600050, 132718050, 132836100, 132954200, 133072350, 133190550, 133308800, 133427100, 133545450, 133663850,
133782300, 133900800, 134019350, 134137950, 134256600, 134375300, 134494050, 134612850, 134731700, 134850600, 134969550, 135088550, 135207600, 135326700, 135445850, 135565050, 135684300, 135803600, 135922950,
136042350, 136161800, 136281300, 136400850, 136520450, 136640100, 136759800, 136879550, 136999350, 137119200, 137239100, 137359050, 137479050, 137599100, 137719200, 137839350, 137959550, 138079800, 138200100,
138320450, 138440850, 138561300, 138681800, 138802350, 138922950, 139043600, 139164300, 139285050, 139405850, 139526700, 139647600, 139768550, 139889550, 140010600, 140131700, 140252850, 140374050, 140495300,
140616600, 140737950, 140859350, 140980800, 141102300, 141223850, 141345450, 141467100, 141588800, 141710550, 141832350, 141954200, 142076100, 142198050, 142320050, 142442100, 142564200, 142686350, 142808550,
142930800, 143053100, 143175450, 143297850, 143420300, 143542800, 143665350, 143787950, 143910600, 144033300, 144156050, 144278850, 144401700, 144524600, 144647550, 144770550, 144893600, 145016700, 145139850,
145263050, 145386300, 145509600, 145632950, 145756350, 145879800, 146003300, 146126850, 146250450, 146374100, 146497800, 146621550, 146745350, 146869200, 146993100, 147117050, 147241050, 147365100, 147489200,
147613350, 147737550, 147861800, 147986100, 148110450, 148234850, 148359300, 148483800, 148608350, 148732950, 148857600, 148982300, 149107050, 149231850, 149356700, 149481600, 149606550, 149731550, 149856600,
149981700, 150106850, 150232050, 150357300, 150482600, 150607950, 150733350, 150858800, 150984300, 151109850, 151235450, 151361100, 151486800, 151612550, 151738350, 151864200, 151990100, 152116050, 152242050,
152368100, 152494200, 152620350, 152746550, 152872800, 152999100, 153125450, 153251850, 153378300, 153504800, 153631350, 153757950, 153884600, 154011300, 154138050, 154264850, 154391700, 154518600, 154645550,
154772550, 154899600, 155026700, 155153850, 155281050, 155408300, 155535600, 155662950, 155790350, 155917800, 156045300, 156172850, 156300450, 156428100, 156555800, 156683550, 156811350, 156939200, 157067100,
157195050, 157323050, 157451100, 157579200, 157707350, 157835550, 157963800, 158092100, 158220450, 158348850, 158477300, 158605800, 158734350, 158862950, 158991600, 159120300, 159249050, 159377850, 159506700,
159635600, 159764550, 159893550, 160022600, 160151700, 160280850, 160410050, 160539300, 160668600, 160797950, 160927350, 161056800, 161186300, 161315850, 161445450, 161575100, 161704800, 161834550, 161964350,
162094200, 162224100, 162354050, 162484050, 162614100, 162744200, 162874350, 163004550, 163134800, 163265100, 163395450, 163525850, 163656300, 163786800, 163917350, 164047950, 164178600, 164309300, 164440050,
164570850, 164701700, 164832600, 164963550, 165094550, 165225600, 165356700, 165487850, 165619050, 165750300, 165881600, 166012950, 166144350, 166275800, 166407300, 166538850, 166670450, 166802100, 166933800,
167065550, 167197350, 167329200, 167461100, 167593050, 167725050, 167857100, 167989200, 168121350, 168253550, 168385800, 168518100, 168650450, 168782850, 168915300, 169047800, 169180350, 169312950, 169445600,
169578300, 169711050, 169843850, 169976700, 170109600, 170242550, 170375550, 170508600, 170641700, 170774850, 170908050, 171041300, 171174600, 171307950, 171441350, 171574800, 171708300, 171841850, 171975450,
172109100, 172242800, 172376550, 172510350, 172644200, 172778100, 172912050, 173046050, 173180100, 173314200, 173448350, 173582550, 173716800, 173851100, 173985450, 174119850, 174254300, 174388800, 174523350,
174657950, 174792600, 174927300, 175062050, 175196850, 175331700, 175466600, 175601550, 175736550, 175871600, 176006700, 176141850, 176277050, 176412300, 176547600, 176682950, 176818350, 176953800, 177089300,
177224850, 177360450, 177496100, 177631800, 177767550, 177903350, 178039200, 178175100, 178311050, 178447050, 178583100, 178719200, 178855350, 178991550, 179127800, 179264100, 179400450, 179536850, 179673300,
179809800, 179946350, 180082950, 180219600, 180356300, 180493050, 180629850, 180766700, 180903600, 181040550, 181177550, 181314600, 181451700, 181588850, 181726050, 181863300, 182000600, 182137950, 182275350,
182412800, 182550300, 182687850, 182825450, 182963100, 183100800, 183238550, 183376350, 183514200, 183652100, 183790050, 183928050, 184066100, 184204200, 184342350, 184480550, 184618800, 184757100, 184895450,
185033850, 185172300, 185310800, 185449350, 185587950, 185726600, 185865300, 186004050, 186142850, 186281700, 186420600, 186559550, 186698550, 186837600, 186976700, 187115850, 187255050, 187394300, 187533600,
187672950, 187812350, 187951800, 188091300, 188230850, 188370450, 188510100, 188649800, 188789550, 188929350, 189069200, 189209100, 189349050, 189489050, 189629100, 189769200, 189909350, 190049550, 190189800,
190330100, 190470450, 190610850, 190751300, 190891800, 191032350, 191172950, 191313600, 191454300, 191595050, 191735850, 191876700, 192017600, 192158550, 192299550, 192440600, 192581700, 192722850, 192864050,
193005300, 193146600, 193287950, 193429350, 193570800, 193712300, 193853850, 193995450, 194137100, 194278800, 194420550, 194562350, 194704200, 194846100, 194988050, 195130050, 195272100, 195414200, 195556350,
195698550, 195840800, 195983100, 196125450, 196267850, 196410300, 196552800, 196695350, 196837950, 196980600, 197123300, 197266050, 197408850, 197551700, 197694600, 197837550, 197980550, 198123600, 198266700,
198409850, 198553050, 198696300, 198839600, 198982950, 199126350, 199269800, 199413300, 199556850, 199700450, 199844100, 199987800, 200131550, 200275350, 200419200, 200563100, 200707050, 200851050, 200995100,
201139200, 201283350, 201427550, 201571800, 201716100, 201860450, 202004850, 202149300, 202293800, 202438350, 202582950, 202727600, 202872300, 203017050, 203161850, 203306700, 203451600, 203596550, 203741550,
203886600, 204031700, 204176850, 204322050, 204467300, 204612600, 204757950, 204903350, 205048800, 205194300, 205339850, 205485450, 205631100, 205776800, 205922550, 206068350, 206214200, 206360100, 206506050,
206652050, 206798100, 206944200, 207090350, 207236550, 207382800, 207529100, 207675450, 207821850, 207968300, 208114800, 208261350, 208407950, 208554600, 208701300, 208848050, 208994850, 209141700, 209288600,
209435550, 209582550, 209729600, 209876700, 210023850, 210171050, 210318300, 210465600, 210612950, 210760350, 210907800, 211055300, 211202850, 211350450, 211498100, 211645800, 211793550, 211941350, 212089200,
212237100, 212385050, 212533050, 212681100, 212829200, 212977350, 213125550, 213273800, 213422100, 213570450, 213718850, 213867300, 214015800, 214164350, 214312950, 214461600, 214610300, 214759050, 214907850,
215056700, 215205600, 215354550, 215503550, 215652600, 215801700, 215950850, 216100050, 216249300, 216398600, 216547950, 216697350, 216846800, 216996300, 217145850, 217295450, 217445100, 217594800, 217744550,
217894350, 218044200, 218194100, 218344050, 218494050, 218644100, 218794200, 218944350, 219094550, 219244800, 219395100, 219545450, 219695850, 219846300, 219996800, 220147350, 220297950, 220448600, 220599300,
220750050, 220900850, 221051700, 221202600, 221353550, 221504550, 221655600, 221806700, 221957850, 222109050, 222260300, 222411600, 222562950, 222714350, 222865800, 223017300, 223168850, 223320450, 223472100,
223623800, 223775550, 223927350, 224079200, 224231100, 224383050, 224535050, 224687100, 224839200, 224991350, 225143550, 225295800, 225448100, 225600450, 225752850, 225905300, 226057800, 226210350, 226362950,
226515600, 226668300, 226821050, 226973850, 227126700, 227279600, 227432550, 227585550, 227738600, 227891700, 228044850, 228198050, 228351300, 228504600, 228657950, 228811350, 228964800, 229118300, 229271850,
229425450, 229579100, 229732800, 229886550, 230040350, 230194200, 230348100, 230502050, 230656050, 230810100, 230964200, 231118350, 231272550, 231426800, 231581100, 231735450, 231889850, 232044300, 232198800,
232353350, 232507950, 232662600, 232817300, 232972050, 233126850, 233281700, 233436600, 233591550, 233746550, 233901600, 234056700, 234211850, 234367050, 234522300, 234677600, 234832950, 234988350, 235143800,
235299300, 235454850, 235610450, 235766100, 235921800, 236077550, 236233350, 236389200, 236545100, 236701050, 236857050, 237013100, 237169200, 237325350, 237481550, 237637800, 237794100, 237950450, 238106850,
238263300, 238419800, 238576350, 238732950, 238889600, 239046300, 239203050, 239359850, 239516700, 239673600, 239830550, 239987550, 240144600, 240301700, 240458850, 240616050, 240773300, 240930600, 241087950,
241245350, 241402800, 241560300, 241717850, 241875450, 242033100, 242190800, 242348550, 242506350, 242664200, 242822100, 242980050, 243138050, 243296100, 243454200, 243612350, 243770550, 243928800, 244087100,
244245450, 244403850, 244562300, 244720800, 244879350, 245037950, 245196600, 245355300, 245514050, 245672850, 245831700, 245990600, 246149550, 246308550, 246467600, 246626700, 246785850, 246945050, 247104300,
247263600, 247422950, 247582350, 247741800, 247901300, 248060850, 248220450, 248380100, 248539800, 248699550, 248859350, 249019200, 249179100, 249339050, 249499050, 249659100, 249819200, 249979350, 250139550,
250299800, 250460100, 250620450, 250780850, 250941300, 251101800, 251262350, 251422950, 251583600, 251744300, 251905050, 252065850, 252226700, 252387600, 252548550, 252709550, 252870600, 253031700, 253192850,
253354050, 253515300, 253676600, 253837950, 253999350, 254160800, 254322300, 254483850, 254645450, 254807100, 254968800, 255130550, 255292350, 255454200, 255616100, 255778050, 255940050, 256102100, 256264200,
256426350, 256588550, 256750800, 256913100, 257075450, 257237850, 257400300, 257562800, 257725350, 257887950, 258050600, 258213300, 258376050, 258538850, 258701700, 258864600, 259027550, 259190550, 259353600,
259516700, 259679850, 259843050, 260006300, 260169600, 260332950, 260496350, 260659800, 260823300, 260986850, 261150450, 261314100, 261477800, 261641550, 261805350, 261969200, 262133100, 262297050, 262461050,
262625100, 262789200, 262953350, 263117550, 263281800, 263446100, 263610450, 263774850, 263939300, 264103800, 264268350, 264432950, 264597600, 264762300, 264927050, 265091850, 265256700, 265421600, 265586550,
265751550, 265916600, 266081700, 266246850, 266412050, 266577300, 266742600, 266907950, 267073350, 267238800, 267404300, 267569850, 267735450, 267901100, 268066800, 268232550, 268398350, 268564200, 268730100,
268896050, 269062050, 269228100, 269394200, 269560350, 269726550, 269892800, 270059100, 270225450, 270391850, 270558300, 270724800, 270891350, 271057950, 271224600, 271391300, 271558050, 271724850, 271891700,
272058600, 272225550, 272392550, 272559600, 272726700, 272893850, 273061050, 273228300, 273395600, 273562950, 273730350, 273897800, 274065300, 274232850, 274400450, 274568100, 274735800, 274903550, 275071350,
275239200, 275407100, 275575050, 275743050, 275911100, 276079200, 276247350, 276415550, 276583800, 276752100, 276920450, 277088850, 277257300, 277425800, 277594350, 277762950, 277931600, 278100300, 278269050,
278437850, 278606700, 278775600, 278944550, 279113550, 279282600, 279451700, 279620850, 279790050, 279959300, 280128600, 280297950, 280467350, 280636800, 280806300, 280975850, 281145450, 281315100, 281484800,
281654550, 281824350, 281994200, 282164100, 282334050, 282504050, 282674100, 282844200, 283014350, 283184550, 283354800, 283525100, 283695450, 283865850, 284036300, 284206800, 284377350, 284547950, 284718600,
284889300, 285060050, 285230850, 285401700, 285572600, 285743550, 285914550, 286085600, 286256700, 286427850, 286599050, 286770300, 286941600, 287112950, 287284350, 287455800, 287627300, 287798850, 287970450,
288142100, 288313800, 288485550, 288657350, 288829200, 289001100, 289173050, 289345050, 289517100, 289689200, 289861350, 290033550, 290205800, 290378100, 290550450, 290722850, 290895300, 291067800, 291240350,
291412950, 291585600, 291758300, 291931050, 292103850, 292276700, 292449600, 292622550, 292795550, 292968600, 293141700, 293314850, 293488050, 293661300, 293834600, 294007950, 294181350, 294354800, 294528300,
294701850, 294875450, 295049100, 295222800, 295396550, 295570350, 295744200, 295918100, 296092050, 296266050, 296440100, 296614200, 296788350, 296962550, 297136800, 297311100, 297485450, 297659850, 297834300,
298008800, 298183350, 298357950, 298532600, 298707300, 298882050, 299056850, 299231700, 299406600, 299581550, 299756550, 299931600, 300106700, 300281850, 300457050, 300632300, 300807600, 300982950, 301158350,
301333800, 301509300, 301684850, 301860450, 302036100, 302211800, 302387550, 302563350, 302739200, 302915100, 303091050, 303267050, 303443100, 303619200, 303795350, 303971550, 304147800, 304324100, 304500450,
304676850, 304853300, 305029800, 305206350, 305382950, 305559600, 305736300, 305913050, 306089850, 306266700, 306443600, 306620550, 306797550, 306974600, 307151700, 307328850, 307506050, 307683300, 307860600,
308037950, 308215350, 308392800, 308570300, 308747850, 308925450, 309103100, 309280800, 309458550, 309636350, 309814200, 309992100, 310170050, 310348050, 310526100, 310704200, 310882350, 311060550, 311238800,
311417100, 311595450, 311773850, 311952300, 312130800, 312309350, 312487950, 312666600, 312845300, 313024050, 313202850, 313381700, 313560600, 313739550, 313918550, 314097600, 314276700, 314455850, 314635050,
314814300, 314993600, 315172950, 315352350, 315531800, 315711300, 315890850, 316070450, 316250100, 316429800, 316609550, 316789350, 316969200, 317149100, 317329050, 317509050, 317689100, 317869200, 318049350,
318229550, 318409800, 318590100, 318770450, 318950850, 319131300, 319311800, 319492350, 319672950, 319853600, 320034300, 320215050, 320395850, 320576700, 320757600, 320938550, 321119550, 321300600, 321481700,
321662850, 321844050, 322025300, 322206600, 322387950, 322569350, 322750800, 322932300, 323113850, 323295450, 323477100, 323658800, 323840550, 324022350, 324204200, 324386100, 324568050, 324750050, 324932100,
325114200, 325296350, 325478550, 325660800, 325843100, 326025450, 326207850, 326390300, 326572800, 326755350, 326937950, 327120600, 327303300, 327486050, 327668850, 327851700, 328034600, 328217550, 328400550,
328583600, 328766700, 328949850, 329133050, 329316300, 329499600, 329682950, 329866350, 330049800, 330233300, 330416850, 330600450, 330784100, 330967800, 331151550, 331335350, 331519200, 331703100, 331887050,
332071050, 332255100, 332439200, 332623350, 332807550, 332991800, 333176100, 333360450, 333544850, 333729300, 333913800, 334098350, 334282950, 334467600, 334652300, 334837050, 335021850, 335206700, 335391600,
335576550, 335761550, 335946600, 336131700, 336316850, 336502050, 336687300, 336872600, 337057950, 337243350, 337428800, 337614300, 337799850, 337985450, 338171100, 338356800, 338542550, 338728350, 338914200,
339100100, 339286050, 339472050, 339658100, 339844200, 340030350, 340216550, 340402800, 340589100, 340775450, 340961850, 341148300, 341334800, 341521350, 341707950, 341894600, 342081300, 342268050, 342454850,
342641700, 342828600, 343015550, 343202550, 343389600, 343576700, 343763850, 343951050, 344138300, 344325600, 344512950, 344700350, 344887800, 345075300, 345262850, 345450450, 345638100, 345825800, 346013550,
346201350, 346389200, 346577100, 346765050, 346953050, 347141100, 347329200, 347517350, 347705550, 347893800, 348082100, 348270450, 348458850, 348647300, 348835800, 349024350, 349212950, 349401600, 349590300,
349779050, 349967850, 350156700, 350345600, 350534550, 350723550, 350912600, 351101700, 351290850, 351480050, 351669300, 351858600, 352047950, 352237350, 352426800, 352616300, 352805850, 352995450, 353185100,
353374800, 353564550, 353754350, 353944200, 354134100, 354324050, 354514050, 354704100, 354894200, 355084350, 355274550, 355464800, 355655100, 355845450, 356035850, 356226300, 356416800, 356607350, 356797950,
356988600, 357179300, 357370050, 357560850, 357751700, 357942600, 358133550, 358324550, 358515600, 358706700, 358897850, 359089050, 359280300, 359471600, 359662950, 359854350, 360045800, 360237300, 360428850,
360620450, 360812100, 361003800, 361195550, 361387350, 361579200, 361771100, 361963050, 362155050, 362347100, 362539200, 362731350, 362923550, 363115800, 363308100, 363500450, 363692850, 363885300, 364077800,
364270350, 364462950, 364655600, 364848300, 365041050, 365233850, 365426700, 365619600, 365812550, 366005550, 366198600, 366391700, 366584850, 366778050, 366971300, 367164600, 367357950, 367551350, 367744800,
367938300, 368131850, 368325450, 368519100, 368712800, 368906550, 369100350, 369294200, 369488100, 369682050, 369876050, 370070100, 370264200, 370458350, 370652550, 370846800, 371041100, 371235450, 371429850,
371624300, 371818800, 372013350, 372207950, 372402600, 372597300, 372792050, 372986850, 373181700, 373376600, 373571550, 373766550, 373961600, 374156700, 374351850, 374547050, 374742300, 374937600, 375132950,
375328350, 375523800, 375719300, 375914850, 376110450, 376306100, 376501800, 376697550, 376893350, 377089200, 377285100, 377481050, 377677050, 377873100, 378069200, 378265350, 378461550, 378657800, 378854100,
379050450, 379246850, 379443300, 379639800, 379836350, 380032950, 380229600, 380426300, 380623050, 380819850, 381016700, 381213600, 381410550, 381607550, 381804600, 382001700, 382198850, 382396050, 382593300,
382790600, 382987950, 383185350, 383382800, 383580300, 383777850, 383975450, 384173100, 384370800, 384568550, 384766350, 384964200, 385162100, 385360050, 385558050, 385756100, 385954200, 386152350, 386350550,
386548800, 386747100, 386945450, 387143850, 387342300, 387540800, 387739350, 387937950, 388136600, 388335300, 388534050, 388732850, 388931700, 389130600, 389329550, 389528550, 389727600, 389926700, 390125850,
390325050, 390524300, 390723600, 390922950, 391122350, 391321800, 391521300, 391720850, 391920450, 392120100, 392319800, 392519550, 392719350, 392919200, 393119100, 393319050, 393519050, 393719100, 393919200,
394119350, 394319550, 394519800, 394720100, 394920450, 395120850, 395321300, 395521800, 395722350, 395922950, 396123600, 396324300, 396525050, 396725850, 396926700, 397127600, 397328550, 397529550, 397730600,
397931700, 398132850, 398334050, 398535300, 398736600, 398937950, 399139350, 399340800, 399542300, 399743850, 399945450, 400147100, 400348800, 400550550, 400752350, 400954200, 401156100, 401358050, 401560050,
401762100, 401964200, 402166350, 402368550, 402570800, 402773100, 402975450, 403177850, 403380300, 403582800, 403785350, 403987950, 404190600, 404393300, 404596050, 404798850, 405001700, 405204600, 405407550,
405610550, 405813600, 406016700, 406219850, 406423050, 406626300, 406829600, 407032950, 407236350, 407439800, 407643300, 407846850, 408050450, 408254100, 408457800, 408661550, 408865350, 409069200, 409273100,
409477050, 409681050, 409885100, 410089200, 410293350, 410497550, 410701800, 410906100, 411110450, 411314850, 411519300, 411723800, 411928350, 412132950, 412337600, 412542300, 412747050, 412951850, 413156700,
413361600, 413566550, 413771550, 413976600, 414181700, 414386850, 414592050, 414797300, 415002600, 415207950, 415413350, 415618800, 415824300, 416029850, 416235450, 416441100, 416646800, 416852550, 417058350,
417264200, 417470100, 417676050, 417882050, 418088100, 418294200, 418500350, 418706550, 418912800, 419119100, 419325450, 419531850, 419738300, 419944800, 420151350, 420357950, 420564600, 420771300, 420978050,
421184850, 421391700, 421598600, 421805550, 422012550, 422219600, 422426700, 422633850, 422841050, 423048300, 423255600, 423462950, 423670350, 423877800, 424085300, 424292850, 424500450, 424708100, 424915800,
425123550, 425331350, 425539200, 425747100, 425955050, 426163050, 426371100, 426579200, 426787350, 426995550, 427203800, 427412100, 427620450, 427828850, 428037300, 428245800, 428454350, 428662950, 428871600,
429080300, 429289050, 429497850, 429706700, 429915600, 430124550, 430333550, 430542600, 430751700, 430960850, 431170050, 431379300, 431588600, 431797950, 432007350, 432216800, 432426300, 432635850, 432845450,
433055100, 433264800, 433474550, 433684350, 433894200, 434104100, 434314050, 434524050, 434734100, 434944200, 435154350, 435364550, 435574800, 435785100, 435995450, 436205850, 436416300, 436626800, 436837350,
437047950, 437258600, 437469300, 437680050, 437890850, 438101700, 438312600, 438523550, 438734550, 438945600, 439156700, 439367850, 439579050, 439790300, 440001600, 440212950, 440424350, 440635800, 440847300,
441058850, 441270450, 441482100, 441693800, 441905550, 442117350, 442329200, 442541100, 442753050, 442965050, 443177100, 443389200, 443601350, 443813550, 444025800, 444238100, 444450450, 444662850, 444875300,
445087800, 445300350, 445512950, 445725600, 445938300, 446151050, 446363850, 446576700, 446789600, 447002550, 447215550, 447428600, 447641700, 447854850, 448068050, 448281300, 448494600, 448707950, 448921350,
449134800, 449348300, 449561850, 449775450, 449989100, 450202800, 450416550, 450630350, 450844200, 451058100, 451272050, 451486050, 451700100, 451914200, 452128350, 452342550, 452556800, 452771100, 452985450,
453199850, 453414300, 453628800, 453843350, 454057950, 454272600, 454487300, 454702050, 454916850, 455131700, 455346600, 455561550, 455776550, 455991600, 456206700, 456421850, 456637050, 456852300, 457067600,
457282950, 457498350, 457713800, 457929300, 458144850, 458360450, 458576100, 458791800, 459007550, 459223350, 459439200, 459655100, 459871050, 460087050, 460303100, 460519200, 460735350, 460951550, 461167800,
461384100, 461600450, 461816850, 462033300, 462249800, 462466350, 462682950, 462899600, 463116300, 463333050, 463549850, 463766700, 463983600, 464200550, 464417550, 464634600, 464851700, 465068850, 465286050,
465503300, 465720600, 465937950, 466155350, 466372800, 466590300, 466807850, 467025450, 467243100, 467460800, 467678550, 467896350, 468114200, 468332100, 468550050, 468768050, 468986100, 469204200, 469422350,
469640550, 469858800, 470077100, 470295450, 470513850, 470732300, 470950800, 471169350, 471387950, 471606600, 471825300, 472044050, 472262850, 472481700, 472700600, 472919550, 473138550, 473357600, 473576700,
473795850, 474015050, 474234300, 474453600, 474672950, 474892350, 475111800, 475331300, 475550850, 475770450, 475990100, 476209800, 476429550, 476649350, 476869200, 477089100, 477309050, 477529050, 477749100,
477969200, 478189350, 478409550, 478629800, 478850100, 479070450, 479290850, 479511300, 479731800, 479952350, 480172950, 480393600, 480614300, 480835050, 481055850, 481276700, 481497600, 481718550, 481939550,
482160600, 482381700, 482602850, 482824050, 483045300, 483266600, 483487950, 483709350, 483930800, 484152300, 484373850, 484595450, 484817100, 485038800, 485260550, 485482350, 485704200, 485926100, 486148050, 486370050, 486592100, 486814200, 487036350, 487258550, 487480800, 487703100, 487925450, 488147850, 488370300, 488592800, 488815350, 489037950, 489260600, 489483300, 489706050, 489928850, 490151700, 490374600, 490597550, 490820550, 491043600, 491266700, 491489850, 491713050, 491936300, 492159600, 492382950, 492606350, 492829800, 493053300, 493276850, 493500450, 493724100, 493947800, 494171550, 494395350, 494619200, 494843100, 495067050, 495291050, 495515100, 495739200, 495963350, 496187550, 496411800, 496636100, 496860450, 497084850, 497309300, 497533800, 497758350, 497982950, 498207600, 498432300, 498657050, 498881850, 499106700, 499331600, 499556550, 499781550, 500006600, 500231700, 500456850, 500682050, 500907300, 501132600, 501357950, 501583350, 501808800, 502034300, 502259850, 502485450, 502711100, 502936800, 503162550, 503388350, 503614200, 503840100, 504066050, 504292050, 504518100, 504744200, 504970350, 505196550, 505422800, 505649100, 505875450, 506101850, 506328300, 506554800, 506781350, 507007950, 507234600, 507461300, 507688050, 507914850, 508141700, 508368600, 508595550, 508822550, 509049600, 509276700, 509503850, 509731050, 509958300, 510185600, 510412950, 510640350, 510867800, 511095300, 511322850, 511550450, 511778100, 512005800, 512233550, 512461350, 512689200, 512917100, 513145050, 513373050, 513601100, 513829200, 514057350, 514285550, 514513800, 514742100, 514970450, 515198850, 515427300, 515655800, 515884350, 516112950, 516341600, 516570300, 516799050, 517027850, 517256700, 517485600, 517714550, 517943550, 518172600, 518401700, 518630850, 518860050, 519089300, 519318600, 519547950, 519777350, 520006800, 520236300, 520465850, 520695450, 520925100, 521154800, 521384550, 521614350, 521844200, 522074100, 522304050, 522534050, 522764100, 522994200, 523224350, 523454550, 523684800, 523915100, 524145450, 524375850, 524606300, 524836800, 525067350, 525297950, 525528600, 525759300, 525990050, 526220850, 526451700, 526682600, 526913550, 527144550, 527375600, 527606700, 527837850, 528069050, 528300300, 528531600, 528762950, 528994350, 529225800, 529457300, 529688850, 529920450, 530152100, 530383800, 530615550, 530847350, 531079200, 531311100, 531543050, 531775050, 532007100, 532239200, 532471350, 532703550, 532935800, 533168100, 533400450, 533632850, 533865300, 534097800, 534330350, 534562950, 534795600, 535028300, 535261050, 535493850, 535726700, 535959600, 536192550, 536425550, 536658600, 536891700, 537124850, 537358050, 537591300, 537824600, 538057950, 538291350, 538524800, 538758300, 538991850, 539225450, 539459100, 539692800, 539926550, 540160350, 540394200, 540628100, 540862050, 541096050, 541330100, 541564200, 541798350, 542032550, 542266800, 542501100, 542735450, 542969850, 543204300, 543438800, 543673350, 543907950, 544142600, 544377300, 544612050, 544846850, 545081700, 545316600, 545551550, 545786550, 546021600, 546256700, 546491850, 546727050, 546962300, 547197600, 547432950, 547668350, 547903800, 548139300, 548374850, 548610450, 548846100, 549081800, 549317550, 549553350, 549789200, 550025100, 550261050, 550497050, 550733100, 550969200, 551205350, 551441550, 551677800, 551914100, 552150450, 552386850, 552623300, 552859800, 553096350, 553332950, 553569600, 553806300, 554043050, 554279850, 554516700, 554753600, 554990550, 555227550, 555464600, 555701700, 555938850, 556176050, 556413300, 556650600, 556887950, 557125350, 557362800, 557600300, 557837850, 558075450, 558313100, 558550800, 558788550, 559026350, 559264200, 559502100, 559740050, 559978050, 560216100, 560454200, 560692350, 560930550, 561168800, 561407100, 561645450, 561883850, 562122300, 562360800, 562599350, 562837950, 563076600, 563315300, 563554050, 563792850, 564031700, 564270600, 564509550, 564748550, 564987600, 565226700, 565465850, 565705050, 565944300, 566183600, 566422950, 566662350, 566901800, 567141300, 567380850, 567620450, 567860100, 568099800, 568339550, 568579350, 568819200, 569059100, 569299050, 569539050, 569779100, 570019200, 570259350, 570499550, 570739800, 570980100, 571220450, 571460850, 571701300, 571941800, 572182350, 572422950, 572663600, 572904300, 573145050, 573385850, 573626700, 573867600, 574108550, 574349550, 574590600, 574831700, 575072850, 575314050, 575555300, 575796600, 576037950, 576279350, 576520800, 576762300, 577003850, 577245450, 577487100, 577728800, 577970550, 578212350, 578454200, 578696100, 578938050, 579180050, 579422100, 579664200, 579906350, 580148550, 580390800, 580633100, 580875450, 581117850, 581360300, 581602800, 581845350, 582087950, 582330600, 582573300, 582816050, 583058850, 583301700, 583544600, 583787550, 584030550, 584273600, 584516700, 584759850, 585003050, 585246300, 585489600, 585732950, 585976350, 586219800, 586463300, 586706850, 586950450, 587194100, 587437800, 587681550, 587925350, 588169200, 588413100, 588657050, 588901050, 589145100, 589389200, 589633350, 589877550, 590121800, 590366100, 590610450, 590854850, 591099300, 591343800, 591588350, 591832950, 592077600, 592322300, 592567050, 592811850, 593056700, 593301600, 593546550, 593791550, 594036600, 594281700, 594526850, 594772050, 595017300, 595262600, 595507950, 595753350, 595998800, 596244300, 596489850, 596735450, 596981100, 597226800, 597472550, 597718350, 597964200, 598210100, 598456050, 598702050, 598948100, 599194200, 599440350, 599686550, 599932800, 600179100, 600425450, 600671850, 600918300, 601164800, 601411350, 601657950, 601904600, 602151300, 602398050, 602644850, 602891700, 603138600, 603385550, 603632550, 603879600, 604126700, 604373850, 604621050, 604868300, 605115600, 605362950, 605610350, 605857800, 606105300, 606352850, 606600450, 606848100, 607095800, 607343550, 607591350, 607839200, 608087100, 608335050, 608583050, 608831100, 609079200, 609327350, 609575550, 609823800, 610072100, 610320450, 610568850, 610817300, 611065800, 611314350, 611562950, 611811600, 612060300, 612309050, 612557850, 612806700, 613055600, 613304550, 613553550, 613802600, 614051700, 614300850, 614550050, 614799300, 615048600, 615297950, 615547350, 615796800, 616046300, 616295850, 616545450, 616795100, 617044800, 617294550, 617544350, 617794200, 618044100, 618294050, 618544050, 618794100, 619044200, 619294350, 619544550, 619794800, 620045100, 620295450, 620545850, 620796300, 621046800, 621297350, 621547950, 621798600, 622049300, 622300050, 622550850, 622801700, 623052600, 623303550, 623554550, 623805600, 624056700, 624307850, 624559050, 624810300, 625061600, 625312950, 625564350, 625815800, 626067300, 626318850, 626570450, 626822100, 627073800, 627325550, 627577350, 627829200, 628081100, 628333050, 628585050, 628837100, 629089200, 629341350, 629593550, 629845800, 630098100, 630350450, 630602850, 630855300, 631107800, 631360350, 631612950, 631865600, 632118300, 632371050, 632623850, 632876700, 633129600, 633382550, 633635550, 633888600, 634141700, 634394850, 634648050, 634901300, 635154600, 635407950, 635661350, 635914800, 636168300, 636421850, 636675450, 636929100, 637182800, 637436550, 637690350, 637944200, 638198100, 638452050, 638706050, 638960100, 639214200, 639468350, 639722550, 639976800, 640231100, 640485450, 640739850, 640994300, 641248800, 641503350, 641757950, 642012600, 642267300, 642522050, 642776850, 643031700, 643286600, 643541550, 643796550, 644051600, 644306700, 644561850, 644817050, 645072300, 645327600, 645582950, 645838350, 646093800, 646349300, 646604850, 646860450, 647116100, 647371800, 647627550, 647883350, 648139200, 648395100, 648651050, 648907050, 649163100, 649419200, 649675350, 649931550, 650187800, 650444100, 650700450, 650956850, 651213300, 651469800, 651726350, 651982950, 652239600, 652496300, 652753050, 653009850, 653266700, 653523600, 653780550, 654037550, 654294600, 654551700, 654808850, 655066050, 655323300, 655580600, 655837950, 656095350, 656352800, 656610300, 656867850, 657125450, 657383100, 657640800, 657898550, 658156350, 658414200, 658672100, 658930050, 659188050, 659446100, 659704200, 659962350, 660220550, 660478800, 660737100, 660995450, 661253850, 661512300, 661770800, 662029350, 662287950, 662546600, 662805300, 663064050, 663322850, 663581700, 663840600, 664099550, 664358550, 664617600, 664876700, 665135850, 665395050, 665654300, 665913600, 666172950, 666432350, 666691800, 666951300, 667210850, 667470450, 667730100, 667989800, 668249550, 668509350, 668769200, 669029100, 669289050, 669549050, 669809100, 670069200, 670329350, 670589550, 670849800, 671110100, 671370450, 671630850, 671891300, 672151800, 672412350, 672672950, 672933600, 673194300, 673455050, 673715850, 673976700, 674237600, 674498550, 674759550, 675020600, 675281700, 675542850, 675804050, 676065300, 676326600, 676587950, 676849350, 677110800, 677372300, 677633850, 677895450, 678157100, 678418800, 678680550, 678942350, 679204200, 679466100, 679728050, 679990050, 680252100, 680514200, 680776350, 681038550, 681300800, 681563100, 681825450, 682087850, 682350300, 682612800, 682875350, 683137950, 683400600, 683663300, 683926050, 684188850, 684451700, 684714600, 684977550, 685240550, 685503600, 685766700, 686029850, 686293050, 686556300, 686819600, 687082950, 687346350, 687609800, 687873300, 688136850, 688400450, 688664100, 688927800, 689191550, 689455350, 689719200, 689983100, 690247050, 690511050, 690775100, 691039200, 691303350, 691567550, 691831800, 692096100, 692360450, 692624850, 692889300, 693153800, 693418350, 693682950, 693947600, 694212300, 694477050, 694741850, 695006700, 695271600, 695536550, 695801550, 696066600, 696331700, 696596850, 696862050, 697127300, 697392600, 697657950, 697923350, 698188800, 698454300, 698719850, 698985450, 699251100, 699516800, 699782550, 700048350, 700314200, 700580100, 700846050, 701112050, 701378100, 701644200, 701910350, 702176550, 702442800, 702709100, 702975450, 703241850, 703508300, 703774800, 704041350, 704307950, 704574600, 704841300, 705108050, 705374850, 705641700, 705908600, 706175550, 706442550, 706709600, 706976700, 707243850, 707511050, 707778300, 708045600, 708312950, 708580350, 708847800, 709115300, 709382850, 709650450, 709918100, 710185800, 710453550, 710721350, 710989200, 711257100, 711525050, 711793050, 712061100, 712329200, 712597350, 712865550, 713133800, 713402100, 713670450, 713938850, 714207300, 714475800, 714744350, 715012950, 715281600, 715550300, 715819050, 716087850, 716356700, 716625600, 716894550, 717163550, 717432600, 717701700, 717970850, 718240050, 718509300, 718778600, 719047950, 719317350, 719586800, 719856300, 720125850, 720395450, 720665100, 720934800, 721204550, 721474350, 721744200, 722014100, 722284050, 722554050, 722824100, 723094200, 723364350, 723634550, 723904800, 724175100, 724445450, 724715850, 724986300, 725256800, 725527350, 725797950, 726068600, 726339300, 726610050, 726880850, 727151700, 727422600, 727693550, 727964550, 728235600, 728506700, 728777850, 729049050, 729320300, 729591600, 729862950, 730134350, 730405800, 730677300, 730948850, 731220450, 731492100, 731763800, 732035550, 732307350, 732579200, 732851100, 733123050, 733395050, 733667100, 733939200, 734211350, 734483550, 734755800, 735028100, 735300450, 735572850, 735845300, 736117800, 736390350, 736662950, 736935600, 737208300, 737481050, 737753850, 738026700, 738299600, 738572550, 738845550, 739118600, 739391700, 739664850, 739938050, 740211300, 740484600, 740757950, 741031350, 741304800, 741578300, 741851850, 742125450, 742399100, 742672800, 742946550, 743220350, 743494200, 743768100, 744042050, 744316050, 744590100, 744864200, 745138350, 745412550, 745686800, 745961100, 746235450, 746509850, 746784300, 747058800, 747333350, 747607950, 747882600, 748157300, 748432050, 748706850, 748981700, 749256600, 749531550, 749806550, 750081600, 750356700, 750631850, 750907050, 751182300, 751457600, 751732950, 752008350, 752283800, 752559300, 752834850, 753110450, 753386100, 753661800, 753937550, 754213350, 754489200, 754765100, 755041050, 755317050, 755593100, 755869200, 756145350, 756421550, 756697800, 756974100, 757250450, 757526850, 757803300, 758079800, 758356350, 758632950, 758909600, 759186300, 759463050, 759739850, 760016700, 760293600, 760570550, 760847550, 761124600, 761401700, 761678850, 761956050, 762233300, 762510600, 762787950, 763065350, 763342800, 763620300, 763897850, 764175450, 764453100, 764730800, 765008550, 765286350, 765564200, 765842100, 766120050, 766398050, 766676100, 766954200, 767232350, 767510550, 767788800, 768067100, 768345450, 768623850, 768902300, 769180800, 769459350, 769737950, 770016600, 770295300, 770574050, 770852850, 771131700, 771410600, 771689550, 771968550, 772247600, 772526700, 772805850, 773085050, 773364300, 773643600, 773922950, 774202350, 774481800, 774761300, 775040850, 775320450, 775600100, 775879800, 776159550, 776439350, 776719200, 776999100, 777279050, 777559050, 777839100, 778119200, 778399350, 778679550, 778959800, 779240100, 779520450, 779800850, 780081300, 780361800, 780642350, 780922950, 781203600, 781484300, 781765050, 782045850, 782326700, 782607600, 782888550, 783169550, 783450600, 783731700, 784012850, 784294050, 784575300, 784856600, 785137950, 785419350, 785700800, 785982300, 786263850, 786545450, 786827100, 787108800, 787390550, 787672350, 787954200, 788236100, 788518050, 788800050, 789082100, 789364200, 789646350, 789928550, 790210800, 790493100, 790775450, 791057850, 791340300, 791622800, 791905350, 792187950, 792470600, 792753300, 793036050, 793318850, 793601700, 793884600, 794167550, 794450550, 794733600, 795016700, 795299850, 795583050, 795866300, 796149600, 796432950, 796716350, 796999800, 797283300, 797566850, 797850450, 798134100, 798417800, 798701550, 798985350, 799269200, 799553100, 799837050, 800121050, 800405100, 800689200, 800973350, 801257550, 801541800, 801826100, 802110450, 802394850, 802679300, 802963800, 803248350, 803532950, 803817600, 804102300, 804387050, 804671850, 804956700, 805241600, 805526550, 805811550, 806096600, 806381700, 806666850, 806952050, 807237300, 807522600, 807807950, 808093350, 808378800, 808664300, 808949850, 809235450, 809521100, 809806800, 810092550, 810378350, 810664200, 810950100, 811236050, 811522050, 811808100, 812094200, 812380350, 812666550, 812952800, 813239100, 813525450, 813811850, 814098300, 814384800, 814671350, 814957950, 815244600, 815531300, 815818050, 816104850, 816391700, 816678600, 816965550, 817252550, 817539600, 817826700, 818113850, 818401050, 818688300, 818975600, 819262950, 819550350, 819837800, 820125300, 820412850, 820700450, 820988100, 821275800, 821563550, 821851350, 822139200, 822427100, 822715050, 823003050, 823291100, 823579200, 823867350, 824155550, 824443800, 824732100, 825020450, 825308850, 825597300, 825885800, 826174350, 826462950, 826751600, 827040300, 827329050, 827617850, 827906700, 828195600, 828484550, 828773550, 829062600, 829351700, 829640850, 829930050, 830219300, 830508600, 830797950, 831087350, 831376800, 831666300, 831955850, 832245450, 832535100, 832824800, 833114550, 833404350, 833694200, 833984100, 834274050, 834564050, 834854100, 835144200, 835434350, 835724550, 836014800, 836305100, 836595450, 836885850, 837176300, 837466800, 837757350, 838047950, 838338600, 838629300, 838920050, 839210850, 839501700, 839792600, 840083550, 840374550, 840665600, 840956700, 841247850, 841539050, 841830300, 842121600, 842412950, 842704350, 842995800, 843287300, 843578850, 843870450, 844162100, 844453800, 844745550, 845037350, 845329200, 845621100, 845913050, 846205050, 846497100, 846789200, 847081350, 847373550, 847665800, 847958100, 848250450, 848542850, 848835300, 849127800, 849420350, 849712950, 850005600, 850298300, 850591050, 850883850, 851176700, 851469600, 851762550, 852055550, 852348600, 852641700, 852934850, 853228050, 853521300, 853814600, 854107950, 854401350, 854694800, 854988300, 855281850, 855575450, 855869100, 856162800, 856456550, 856750350, 857044200, 857338100, 857632050, 857926050, 858220100, 858514200, 858808350, 859102550, 859396800, 859691100, 859985450, 860279850, 860574300, 860868800, 861163350, 861457950, 861752600, 862047300, 862342050, 862636850, 862931700, 863226600, 863521550, 863816550, 864111600, 864406700, 864701850, 864997050, 865292300, 865587600, 865882950, 866178350, 866473800, 866769300, 867064850, 867360450, 867656100, 867951800, 868247550, 868543350, 868839200, 869135100, 869431050, 869727050, 870023100, 870319200, 870615350, 870911550, 871207800, 871504100, 871800450, 872096850, 872393300, 872689800, 872986350, 873282950, 873579600, 873876300, 874173050, 874469850, 874766700, 875063600, 875360550, 875657550, 875954600, 876251700, 876548850, 876846050, 877143300, 877440600, 877737950, 878035350, 878332800, 878630300, 878927850, 879225450, 879523100, 879820800, 880118550, 880416350, 880714200, 881012100, 881310050, 881608050, 881906100, 882204200, 882502350, 882800550, 883098800, 883397100, 883695450, 883993850, 884292300, 884590800, 884889350, 885187950, 885486600, 885785300, 886084050, 886382850, 886681700, 886980600, 887279550, 887578550, 887877600, 888176700, 888475850, 888775050, 889074300, 889373600, 889672950, 889972350, 890271800, 890571300, 890870850, 891170450, 891470100, 891769800, 892069550, 892369350, 892669200, 892969100, 893269050, 893569050, 893869100,
894169200, 894469350, 894769550, 895069800, 895370100, 895670450, 895970850, 896271300, 896571800, 896872350, 897172950, 897473600, 897774300, 898075050, 898375850, 898676700, 898977600, 899278550, 899579550, 899880600, 900181700, 900482850, 900784050, 901085300, 901386600, 901687950, 901989350, 902290800, 902592300, 902893850, 903195450, 903497100, 903798800, 904100550, 904402350, 904704200, 905006100, 905308050, 905610050, 905912100, 906214200, 906516350, 906818550, 907120800, 907423100, 907725450, 908027850, 908330300, 908632800, 908935350, 909237950, 909540600, 909843300, 910146050, 910448850, 910751700, 911054600, 911357550, 911660550, 911963600, 912266700, 912569850, 912873050, 913176300, 913479600, 913782950, 914086350, 914389800, 914693300, 914996850, 915300450, 915604100, 915907800, 916211550, 916515350, 916819200, 917123100, 917427050, 917731050, 918035100, 918339200, 918643350, 918947550, 919251800, 919556100, 919860450, 920164850, 920469300, 920773800, 921078350, 921382950, 921687600, 921992300, 922297050, 922601850, 922906700, 923211600, 923516550, 923821550, 924126600, 924431700, 924736850, 925042050, 925347300, 925652600, 925957950, 926263350, 926568800, 926874300, 927179850, 927485450, 927791100, 928096800, 928402550, 928708350, 929014200, 929320100, 929626050, 929932050, 930238100, 930544200, 930850350, 931156550, 931462800, 931769100, 932075450, 932381850, 932688300, 932994800, 933301350, 933607950, 933914600, 934221300, 934528050, 934834850, 935141700, 935448600, 935755550, 936062550, 936369600, 936676700, 936983850, 937291050, 937598300, 937905600, 938212950, 938520350, 938827800, 939135300, 939442850, 939750450, 940058100, 940365800, 940673550, 940981350, 941289200, 941597100, 941905050, 942213050, 942521100, 942829200, 943137350, 943445550, 943753800, 944062100, 944370450, 944678850, 944987300, 945295800, 945604350, 945912950, 946221600, 946530300, 946839050, 947147850, 947456700, 947765600, 948074550, 948383550, 948692600, 949001700, 949310850, 949620050, 949929300, 950238600, 950547950, 950857350, 951166800, 951476300, 951785850, 952095450, 952405100, 952714800, 953024550, 953334350, 953644200, 953954100, 954264050, 954574050, 954884100, 955194200, 955504350, 955814550, 956124800, 956435100, 956745450, 957055850, 957366300, 957676800, 957987350, 958297950, 958608600, 958919300, 959230050, 959540850, 959851700, 960162600, 960473550, 960784550, 961095600, 961406700, 961717850, 962029050, 962340300, 962651600, 962962950, 963274350, 963585800, 963897300, 964208850, 964520450, 964832100, 965143800, 965455550, 965767350, 966079200, 966391100, 966703050, 967015050, 967327100, 967639200, 967951350, 968263550, 968575800, 968888100, 969200450, 969512850, 969825300, 970137800, 970450350, 970762950, 971075600, 971388300, 971701050, 972013850, 972326700, 972639600, 972952550, 973265550, 973578600, 973891700, 974204850, 974518050, 974831300, 975144600, 975457950, 975771350, 976084800, 976398300, 976711850, 977025450, 977339100, 977652800, 977966550, 978280350, 978594200, 978908100, 979222050, 979536050, 979850100, 980164200, 980478350, 980792550, 981106800, 981421100, 981735450, 982049850, 982364300, 982678800, 982993350, 983307950, 983622600, 983937300, 984252050, 984566850, 984881700, 985196600, 985511550, 985826550, 986141600, 986456700, 986771850, 987087050, 987402300, 987717600, 988032950, 988348350, 988663800, 988979300, 989294850, 989610450, 989926100, 990241800, 990557550, 990873350, 991189200, 991505100, 991821050, 992137050, 992453100, 992769200, 993085350, 993401550, 993717800, 994034100, 994350450, 994666850, 994983300, 995299800, 995616350, 995932950, 996249600, 996566300, 996883050, 997199850, 997516700, 997833600, 998150550, 998467550, 998784600, 999101700, 999418850, 999736050, 1000053300, 1000370600, 1000687950, 1001005350, 1001322800, 1001640300, 1001957850, 1002275450, 1002593100, 1002910800, 1003228550, 1003546350, 1003864200, 1004182100, 1004500050, 1004818050, 1005136100, 1005454200, 1005772350, 1006090550, 1006408800, 1006727100, 1007045450, 1007363850, 1007682300, 1008000800, 1008319350, 1008637950, 1008956600, 1009275300, 1009594050, 1009912850, 1010231700, 1010550600, 1010869550, 1011188550, 1011507600, 1011826700, 1012145850, 1012465050, 1012784300, 1013103600, 1013422950, 1013742350, 1014061800, 1014381300, 1014700850, 1015020450, 1015340100, 1015659800, 1015979550, 1016299350, 1016619200, 1016939100, 1017259050, 1017579050, 1017899100, 1018219200, 1018539350, 1018859550, 1019179800, 1019500100, 1019820450, 1020140850, 1020461300, 1020781800, 1021102350, 1021422950, 1021743600, 1022064300, 1022385050, 1022705850, 1023026700, 1023347600, 1023668550, 1023989550, 1024310600, 1024631700, 1024952850, 1025274050, 1025595300, 1025916600, 1026237950, 1026559350, 1026880800, 1027202300, 1027523850, 1027845450, 1028167100, 1028488800, 1028810550, 1029132350, 1029454200, 1029776100, 1030098050, 1030420050, 1030742100, 1031064200, 1031386350, 1031708550, 1032030800, 1032353100, 1032675450, 1032997850, 1033320300, 1033642800, 1033965350, 1034287950, 1034610600, 1034933300, 1035256050, 1035578850, 1035901700, 1036224600, 1036547550, 1036870550, 1037193600, 1037516700, 1037839850, 1038163050, 1038486300, 1038809600, 1039132950, 1039456350, 1039779800, 1040103300, 1040426850, 1040750450, 1041074100, 1041397800, 1041721550, 1042045350, 1042369200, 1042693100, 1043017050, 1043341050, 1043665100, 1043989200, 1044313350, 1044637550, 1044961800, 1045286100, 1045610450, 1045934850, 1046259300, 1046583800, 1046908350, 1047232950, 1047557600, 1047882300, 1048207050, 1048531850, 1048856700, 1049181600, 1049506550, 1049831550, 1050156600, 1050481700, 1050806850, 1051132050, 1051457300, 1051782600, 1052107950, 1052433350, 1052758800, 1053084300, 1053409850, 1053735450, 1054061100, 1054386800, 1054712550, 1055038350, 1055364200, 1055690100, 1056016050, 1056342050, 1056668100, 1056994200, 1057320350, 1057646550, 1057972800, 1058299100, 1058625450, 1058951850, 1059278300, 1059604800, 1059931350, 1060257950, 1060584600, 1060911300, 1061238050, 1061564850, 1061891700, 1062218600, 1062545550, 1062872550, 1063199600, 1063526700, 1063853850, 1064181050, 1064508300, 1064835600, 1065162950, 1065490350, 1065817800, 1066145300, 1066472850, 1066800450, 1067128100, 1067455800, 1067783550, 1068111350, 1068439200, 1068767100, 1069095050, 1069423050, 1069751100, 1070079200, 1070407350, 1070735550, 1071063800, 1071392100, 1071720450, 1072048850, 1072377300, 1072705800, 1073034350, 1073362950, 1073691600, 1074020300, 1074349050, 1074677850, 1075006700, 1075335600, 1075664550, 1075993550, 1076322600, 1076651700, 1076980850, 1077310050, 1077639300, 1077968600, 1078297950, 1078627350, 1078956800, 1079286300, 1079615850, 1079945450, 1080275100, 1080604800, 1080934550, 1081264350, 1081594200, 1081924100, 1082254050, 1082584050, 1082914100, 1083244200, 1083574350, 1083904550, 1084234800, 1084565100, 1084895450, 1085225850, 1085556300, 1085886800, 1086217350, 1086547950, 1086878600, 1087209300, 1087540050, 1087870850, 1088201700, 1088532600, 1088863550, 1089194550, 1089525600, 1089856700, 1090187850, 1090519050, 1090850300, 1091181600, 1091512950, 1091844350, 1092175800, 1092507300, 1092838850, 1093170450, 1093502100, 1093833800, 1094165550, 1094497350, 1094829200, 1095161100, 1095493050, 1095825050, 1096157100, 1096489200, 1096821350, 1097153550, 1097485800, 1097818100, 1098150450, 1098482850, 1098815300, 1099147800, 1099480350, 1099812950, 1100145600, 1100478300, 1100811050, 1101143850, 1101476700, 1101809600, 1102142550, 1102475550, 1102808600, 1103141700, 1103474850, 1103808050, 1104141300, 1104474600, 1104807950, 1105141350, 1105474800, 1105808300, 1106141850, 1106475450, 1106809100, 1107142800, 1107476550, 1107810350, 1108144200, 1108478100, 1108812050, 1109146050, 1109480100, 1109814200, 1110148350, 1110482550, 1110816800, 1111151100, 1111485450, 1111819850, 1112154300, 1112488800, 1112823350, 1113157950, 1113492600, 1113827300, 1114162050, 1114496850, 1114831700, 1115166600, 1115501550, 1115836550, 1116171600, 1116506700, 1116841850, 1117177050, 1117512300, 1117847600, 1118182950, 1118518350, 1118853800, 1119189300, 1119524850, 1119860450, 1120196100, 1120531800, 1120867550, 1121203350, 1121539200, 1121875100, 1122211050, 1122547050, 1122883100, 1123219200, 1123555350, 1123891550, 1124227800, 1124564100, 1124900450, 1125236850, 1125573300, 1125909800, 1126246350, 1126582950, 1126919600, 1127256300, 1127593050, 1127929850, 1128266700, 1128603600, 1128940550, 1129277550, 1129614600, 1129951700, 1130288850, 1130626050, 1130963300, 1131300600, 1131637950, 1131975350, 1132312800, 1132650300, 1132987850, 1133325450, 1133663100, 1134000800, 1134338550, 1134676350, 1135014200, 1135352100, 1135690050, 1136028050, 1136366100, 1136704200, 1137042350, 1137380550, 1137718800, 1138057100, 1138395450, 1138733850, 1139072300, 1139410800, 1139749350, 1140087950, 1140426600, 1140765300, 1141104050, 1141442850, 1141781700, 1142120600, 1142459550, 1142798550, 1143137600, 1143476700, 1143815850, 1144155050, 1144494300, 1144833600, 1145172950, 1145512350, 1145851800, 1146191300, 1146530850, 1146870450, 1147210100, 1147549800, 1147889550, 1148229350, 1148569200, 1148909100, 1149249050, 1149589050, 1149929100, 1150269200, 1150609350, 1150949550, 1151289800, 1151630100, 1151970450, 1152310850, 1152651300, 1152991800, 1153332350, 1153672950, 1154013600, 1154354300, 1154695050, 1155035850, 1155376700, 1155717600, 1156058550, 1156399550, 1156740600, 1157081700, 1157422850, 1157764050, 1158105300, 1158446600, 1158787950, 1159129350, 1159470800, 1159812300, 1160153850, 1160495450, 1160837100, 1161178800, 1161520550, 1161862350, 1162204200, 1162546100, 1162888050, 1163230050, 1163572100, 1163914200, 1164256350, 1164598550, 1164940800, 1165283100, 1165625450, 1165967850, 1166310300, 1166652800, 1166995350, 1167337950, 1167680600, 1168023300, 1168366050, 1168708850, 1169051700, 1169394600, 1169737550, 1170080550, 1170423600, 1170766700, 1171109850, 1171453050, 1171796300, 1172139600, 1172482950, 1172826350, 1173169800, 1173513300, 1173856850, 1174200450, 1174544100, 1174887800, 1175231550, 1175575350, 1175919200, 1176263100, 1176607050, 1176951050, 1177295100, 1177639200, 1177983350, 1178327550, 1178671800, 1179016100, 1179360450, 1179704850, 1180049300, 1180393800, 1180738350, 1181082950, 1181427600, 1181772300, 1182117050, 1182461850, 1182806700, 1183151600, 1183496550, 1183841550, 1184186600, 1184531700, 1184876850, 1185222050, 1185567300, 1185912600, 1186257950, 1186603350, 1186948800, 1187294300, 1187639850, 1187985450, 1188331100, 1188676800, 1189022550, 1189368350, 1189714200, 1190060100, 1190406050, 1190752050, 1191098100, 1191444200, 1191790350, 1192136550, 1192482800, 1192829100, 1193175450, 1193521850, 1193868300, 1194214800, 1194561350, 1194907950, 1195254600, 1195601300, 1195948050, 1196294850, 1196641700, 1196988600, 1197335550, 1197682550, 1198029600, 1198376700, 1198723850, 1199071050, 1199418300, 1199765600, 1200112950, 1200460350, 1200807800, 1201155300, 1201502850, 1201850450, 1202198100, 1202545800, 1202893550, 1203241350, 1203589200, 1203937100, 1204285050, 1204633050, 1204981100, 1205329200, 1205677350, 1206025550, 1206373800, 1206722100, 1207070450, 1207418850, 1207767300, 1208115800, 1208464350, 1208812950, 1209161600, 1209510300, 1209859050, 1210207850, 1210556700, 1210905600, 1211254550, 1211603550, 1211952600, 1212301700, 1212650850, 1213000050, 1213349300, 1213698600, 1214047950, 1214397350, 1214746800, 1215096300, 1215445850, 1215795450, 1216145100, 1216494800, 1216844550, 1217194350, 1217544200, 1217894100, 1218244050, 1218594050, 1218944100, 1219294200, 1219644350, 1219994550, 1220344800, 1220695100, 1221045450, 1221395850, 1221746300, 1222096800, 1222447350, 1222797950, 1223148600, 1223499300, 1223850050, 1224200850, 1224551700, 1224902600, 1225253550, 1225604550, 1225955600, 1226306700, 1226657850, 1227009050, 1227360300, 1227711600, 1228062950, 1228414350, 1228765800, 1229117300, 1229468850, 1229820450, 1230172100, 1230523800, 1230875550, 1231227350, 1231579200, 1231931100, 1232283050, 1232635050, 1232987100, 1233339200, 1233691350, 1234043550, 1234395800, 1234748100, 1235100450, 1235452850, 1235805300, 1236157800, 1236510350, 1236862950, 1237215600, 1237568300, 1237921050, 1238273850, 1238626700, 1238979600, 1239332550, 1239685550, 1240038600, 1240391700, 1240744850, 1241098050, 1241451300, 1241804600, 1242157950, 1242511350, 1242864800, 1243218300, 1243571850, 1243925450, 1244279100, 1244632800, 1244986550, 1245340350, 1245694200, 1246048100, 1246402050, 1246756050, 1247110100, 1247464200, 1247818350, 1248172550, 1248526800, 1248881100, 1249235450, 1249589850, 1249944300, 1250298800, 1250653350, 1251007950, 1251362600, 1251717300, 1252072050, 1252426850, 1252781700, 1253136600, 1253491550, 1253846550, 1254201600, 1254556700, 1254911850, 1255267050, 1255622300, 1255977600, 1256332950, 1256688350, 1257043800, 1257399300, 1257754850, 1258110450, 1258466100, 1258821800, 1259177550, 1259533350, 1259889200, 1260245100, 1260601050, 1260957050, 1261313100, 1261669200, 1262025350, 1262381550, 1262737800, 1263094100, 1263450450, 1263806850, 1264163300, 1264519800, 1264876350, 1265232950, 1265589600, 1265946300, 1266303050, 1266659850, 1267016700, 1267373600, 1267730550, 1268087550, 1268444600, 1268801700, 1269158850, 1269516050, 1269873300, 1270230600, 1270587950, 1270945350, 1271302800, 1271660300, 1272017850, 1272375450, 1272733100, 1273090800, 1273448550, 1273806350, 1274164200, 1274522100, 1274880050, 1275238050, 1275596100, 1275954200, 1276312350, 1276670550, 1277028800, 1277387100, 1277745450, 1278103850, 1278462300, 1278820800, 1279179350, 1279537950, 1279896600, 1280255300, 1280614050, 1280972850, 1281331700, 1281690600, 1282049550, 1282408550, 1282767600, 1283126700, 1283485850, 1283845050, 1284204300, 1284563600, 1284922950, 1285282350, 1285641800, 1286001300, 1286360850, 1286720450, 1287080100, 1287439800, 1287799550, 1288159350, 1288519200, 1288879100, 1289239050, 1289599050, 1289959100, 1290319200, 1290679350, 1291039550, 1291399800, 1291760100, 1292120450, 1292480850, 1292841300, 1293201800, 1293562350, 1293922950, 1294283600, 1294644300, 1295005050, 1295365850, 1295726700, 1296087600, 1296448550, 1296809550, 1297170600, 1297531700, 1297892850, 1298254050, 1298615300, 1298976600, 1299337950, 1299699350, 1300060800, 1300422300, 1300783850, 1301145450, 1301507100, 1301868800, 1302230550, 1302592350, 1302954200, 1303316100, 1303678050, 1304040050, 1304402100, 1304764200, 1305126350, 1305488550, 1305850800, 1306213100, 1306575450, 1306937850, 1307300300, 1307662800, 1308025350, 1308387950, 1308750600, 1309113300, 1309476050, 1309838850, 1310201700, 1310564600, 1310927550, 1311290550, 1311653600, 1312016700, 1312379850, 1312743050, 1313106300, 1313469600, 1313832950, 1314196350, 1314559800, 1314923300, 1315286850, 1315650450, 1316014100, 1316377800, 1316741550, 1317105350, 1317469200, 1317833100, 1318197050, 1318561050, 1318925100, 1319289200, 1319653350, 1320017550, 1320381800, 1320746100, 1321110450, 1321474850, 1321839300, 1322203800, 1322568350, 1322932950, 1323297600, 1323662300, 1324027050, 1324391850, 1324756700, 1325121600, 1325486550, 1325851550, 1326216600, 1326581700, 1326946850, 1327312050, 1327677300, 1328042600, 1328407950, 1328773350, 1329138800, 1329504300, 1329869850, 1330235450, 1330601100, 1330966800, 1331332550, 1331698350, 1332064200, 1332430100, 1332796050, 1333162050, 1333528100, 1333894200, 1334260350, 1334626550, 1334992800, 1335359100, 1335725450, 1336091850, 1336458300, 1336824800, 1337191350, 1337557950, 1337924600, 1338291300, 1338658050, 1339024850, 1339391700, 1339758600, 1340125550, 1340492550, 1340859600, 1341226700, 1341593850, 1341961050, 1342328300, 1342695600, 1343062950, 1343430350, 1343797800, 1344165300, 1344532850, 1344900450, 1345268100, 1345635800, 1346003550, 1346371350, 1346739200, 1347107100, 1347475050, 1347843050, 1348211100, 1348579200, 1348947350, 1349315550, 1349683800, 1350052100, 1350420450, 1350788850, 1351157300, 1351525800, 1351894350, 1352262950, 1352631600, 1353000300, 1353369050, 1353737850, 1354106700, 1354475600, 1354844550, 1355213550, 1355582600, 1355951700, 1356320850, 1356690050, 1357059300, 1357428600, 1357797950, 1358167350, 1358536800, 1358906300, 1359275850, 1359645450, 1360015100, 1360384800, 1360754550, 1361124350, 1361494200, 1361864100, 1362234050, 1362604050, 1362974100, 1363344200, 1363714350, 1364084550, 1364454800, 1364825100, 1365195450, 1365565850, 1365936300, 1366306800, 1366677350, 1367047950, 1367418600, 1367789300, 1368160050, 1368530850, 1368901700, 1369272600, 1369643550, 1370014550, 1370385600, 1370756700, 1371127850, 1371499050, 1371870300, 1372241600, 1372612950, 1372984350, 1373355800, 1373727300, 1374098850, 1374470450, 1374842100, 1375213800, 1375585550, 1375957350, 1376329200, 1376701100, 1377073050, 1377445050, 1377817100, 1378189200, 1378561350, 1378933550, 1379305800, 1379678100, 1380050450, 1380422850, 1380795300, 1381167800, 1381540350, 1381912950, 1382285600, 1382658300, 1383031050, 1383403850, 1383776700, 1384149600, 1384522550, 1384895550, 1385268600, 1385641700, 1386014850, 1386388050, 1386761300, 1387134600, 1387507950, 1387881350, 1388254800, 1388628300, 1389001850, 1389375450, 1389749100, 1390122800, 1390496550, 1390870350, 1391244200, 1391618100, 1391992050, 1392366050, 1392740100, 1393114200, 1393488350, 1393862550, 1394236800, 1394611100, 1394985450, 1395359850, 1395734300, 1396108800, 1396483350, 1396857950, 1397232600, 1397607300, 1397982050, 1398356850, 1398731700, 1399106600, 1399481550, 1399856550, 1400231600, 1400606700, 1400981850, 1401357050, 1401732300, 1402107600, 1402482950, 1402858350, 1403233800, 1403609300, 1403984850, 1404360450, 1404736100, 1405111800, 1405487550, 1405863350, 1406239200, 1406615100, 1406991050, 1407367050, 1407743100, 1408119200, 1408495350, 1408871550, 1409247800, 1409624100, 1410000450, 1410376850, 1410753300, 1411129800, 1411506350, 1411882950, 1412259600, 1412636300, 1413013050, 1413389850, 1413766700, 1414143600, 1414520550, 1414897550, 1415274600, 1415651700, 1416028850, 1416406050, 1416783300, 1417160600, 1417537950, 1417915350, 1418292800, 1418670300, 1419047850, 1419425450, 1419803100, 1420180800, 1420558550, 1420936350, 1421314200, 1421692100, 1422070050, 1422448050, 1422826100, 1423204200, 1423582350, 1423960550, 1424338800, 1424717100, 1425095450, 1425473850, 1425852300, 1426230800, 1426609350, 1426987950, 1427366600, 1427745300, 1428124050, 1428502850, 1428881700, 1429260600, 1429639550, 1430018550, 1430397600, 1430776700, 1431155850, 1431535050, 1431914300, 1432293600, 1432672950, 1433052350, 1433431800, 1433811300, 1434190850, 1434570450, 1434950100, 1435329800, 1435709550, 1436089350, 1436469200, 1436849100, 1437229050, 1437609050, 1437989100, 1438369200, 1438749350, 1439129550, 1439509800, 1439890100, 1440270450, 1440650850, 1441031300, 1441411800, 1441792350, 1442172950, 1442553600, 1442934300, 1443315050, 1443695850, 1444076700, 1444457600, 1444838550, 1445219550, 1445600600, 1445981700, 1446362850, 1446744050, 1447125300, 1447506600, 1447887950, 1448269350, 1448650800, 1449032300, 1449413850, 1449795450, 1450177100, 1450558800, 1450940550, 1451322350, 1451704200, 1452086100, 1452468050, 1452850050, 1453232100, 1453614200, 1453996350, 1454378550, 1454760800, 1455143100, 1455525450, 1455907850, 1456290300, 1456672800, 1457055350, 1457437950, 1457820600, 1458203300, 1458586050, 1458968850, 1459351700, 1459734600, 1460117550, 1460500550, 1460883600, 1461266700, 1461649850, 1462033050, 1462416300, 1462799600, 1463182950, 1463566350, 1463949800, 1464333300, 1464716850, 1465100450, 1465484100, 1465867800, 1466251550, 1466635350, 1467019200, 1467403100, 1467787050, 1468171050, 1468555100, 1468939200, 1469323350, 1469707550, 1470091800, 1470476100, 1470860450, 1471244850, 1471629300, 1472013800, 1472398350, 1472782950, 1473167600, 1473552300, 1473937050, 1474321850, 1474706700, 1475091600, 1475476550, 1475861550, 1476246600, 1476631700, 1477016850, 1477402050, 1477787300, 1478172600, 1478557950, 1478943350, 1479328800, 1479714300, 1480099850, 1480485450, 1480871100, 1481256800, 1481642550, 1482028350, 1482414200, 1482800100, 1483186050, 1483572050, 1483958100, 1484344200, 1484730350, 1485116550, 1485502800, 1485889100, 1486275450, 1486661850, 1487048300, 1487434800, 1487821350, 1488207950, 1488594600, 1488981300, 1489368050, 1489754850, 1490141700, 1490528600, 1490915550, 1491302550, 1491689600, 1492076700, 1492463850, 1492851050, 1493238300, 1493625600, 1494012950, 1494400350, 1494787800, 1495175300, 1495562850, 1495950450, 1496338100, 1496725800, 1497113550, 1497501350, 1497889200, 1498277100, 1498665050, 1499053050, 1499441100, 1499829200, 1500217350, 1500605550, 1500993800, 1501382100, 1501770450, 1502158850, 1502547300, 1502935800, 1503324350, 1503712950, 1504101600, 1504490300, 1504879050, 1505267850, 1505656700, 1506045600, 1506434550, 1506823550, 1507212600, 1507601700, 1507990850, 1508380050, 1508769300, 1509158600, 1509547950, 1509937350, 1510326800, 1510716300, 1511105850, 1511495450, 1511885100, 1512274800, 1512664550, 1513054350, 1513444200, 1513834100, 1514224050, 1514614050, 1515004100, 1515394200, 1515784350, 1516174550, 1516564800, 1516955100, 1517345450, 1517735850, 1518126300, 1518516800, 1518907350, 1519297950, 1519688600, 1520079300, 1520470050, 1520860850, 1521251700, 1521642600, 1522033550, 1522424550, 1522815600, 1523206700, 1523597850, 1523989050, 1524380300, 1524771600, 1525162950, 1525554350, 1525945800, 1526337300, 1526728850, 1527120450, 1527512100, 1527903800, 1528295550, 1528687350, 1529079200, 1529471100, 1529863050, 1530255050, 1530647100, 1531039200, 1531431350, 1531823550, 1532215800, 1532608100, 1533000450, 1533392850, 1533785300, 1534177800, 1534570350, 1534962950, 1535355600, 1535748300, 1536141050, 1536533850, 1536926700, 1537319600, 1537712550, 1538105550, 1538498600, 1538891700, 1539284850, 1539678050, 1540071300, 1540464600, 1540857950, 1541251350, 1541644800, 1542038300, 1542431850, 1542825450, 1543219100, 1543612800, 1544006550, 1544400350, 1544794200, 1545188100, 1545582050, 1545976050, 1546370100, 1546764200, 1547158350, 1547552550, 1547946800, 1548341100, 1548735450, 1549129850, 1549524300, 1549918800, 1550313350, 1550707950, 1551102600, 1551497300, 1551892050, 1552286850, 1552681700, 1553076600, 1553471550, 1553866550, 1554261600, 1554656700, 1555051850, 1555447050, 1555842300, 1556237600, 1556632950, 1557028350, 1557423800, 1557819300, 1558214850, 1558610450, 1559006100, 1559401800, 1559797550, 1560193350, 1560589200, 1560985100, 1561381050, 1561777050, 1562173100, 1562569200, 1562965350, 1563361550, 1563757800, 1564154100, 1564550450, 1564946850, 1565343300, 1565739800, 1566136350, 1566532950, 1566929600, 1567326300, 1567723050, 1568119850, 1568516700, 1568913600, 1569310550, 1569707550, 1570104600, 1570501700, 1570898850, 1571296050, 1571693300, 1572090600, 1572487950, 1572885350, 1573282800, 1573680300, 1574077850, 1574475450, 1574873100, 1575270800, 1575668550, 1576066350, 1576464200, 1576862100, 1577260050, 1577658050, 1578056100, 1578454200, 1578852350, 1579250550, 1579648800, 1580047100, 1580445450, 1580843850, 1581242300, 1581640800, 1582039350, 1582437950, 1582836600, 1583235300, 1583634050, 1584032850, 1584431700, 1584830600, 1585229550, 1585628550, 1586027600, 1586426700, 1586825850, 1587225050, 1587624300, 1588023600, 1588422950, 1588822350, 1589221800, 1589621300, 1590020850, 1590420450, 1590820100, 1591219800, 1591619550, 1592019350, 1592419200, 1592819100, 1593219050, 1593619050, 1594019100, 1594419200, 1594819350, 1595219550, 1595619800, 1596020100, 1596420450, 1596820850, 1597221300, 1597621800, 1598022350, 1598422950, 1598823600, 1599224300, 1599625050, 1600025850, 1600426700, 1600827600, 1601228550, 1601629550, 1602030600, 1602431700, 1602832850, 1603234050, 1603635300, 1604036600, 1604437950, 1604839350, 1605240800, 1605642300, 1606043850, 1606445450, 1606847100, 1607248800, 1607650550, 1608052350, 1608454200, 1608856100, 1609258050, 1609660050, 1610062100, 1610464200, 1610866350, 1611268550, 1611670800, 1612073100, 1612475450, 1612877850, 1613280300, 1613682800, 1614085350, 1614487950, 1614890600, 1615293300, 1615696050, 1616098850, 1616501700, 1616904600, 1617307550, 1617710550, 1618113600, 1618516700, 1618919850, 1619323050, 1619726300, 1620129600, 1620532950, 1620936350, 1621339800, 1621743300, 1622146850, 1622550450, 1622954100, 1623357800, 1623761550, 1624165350, 1624569200, 1624973100, 1625377050, 1625781050, 1626185100, 1626589200, 1626993350, 1627397550, 1627801800, 1628206100, 1628610450, 1629014850, 1629419300, 1629823800, 1630228350, 1630632950, 1631037600, 1631442300, 1631847050, 1632251850, 1632656700, 1633061600, 1633466550, 1633871550, 1634276600, 1634681700, 1635086850, 1635492050, 1635897300, 1636302600, 1636707950, 1637113350, 1637518800, 1637924300, 1638329850, 1638735450, 1639141100, 1639546800, 1639952550, 1640358350, 1640764200, 1641170100, 1641576050, 1641982050, 1642388100, 1642794200, 1643200350, 1643606550, 1644012800, 1644419100, 1644825450, 1645231850, 1645638300, 1646044800, 1646451350, 1646857950, 1647264600, 1647671300, 1648078050, 1648484850, 1648891700, 1649298600, 1649705550, 1650112550, 1650519600, 1650926700, 1651333850, 1651741050, 1652148300, 1652555600, 1652962950, 1653370350, 1653777800, 1654185300, 1654592850, 1655000450, 1655408100, 1655815800, 1656223550, 1656631350, 1657039200, 1657447100, 1657855050, 1658263050, 1658671100, 1659079200, 1659487350, 1659895550, 1660303800, 1660712100, 1661120450, 1661528850, 1661937300, 1662345800, 1662754350, 1663162950, 1663571600, 1663980300, 1664389050, 1664797850, 1665206700, 1665615600, 1666024550, 1666433550, 1666842600, 1667251700, 1667660850, 1668070050, 1668479300, 1668888600, 1669297950, 1669707350, 1670116800, 1670526300, 1670935850, 1671345450, 1671755100, 1672164800, 1672574550, 1672984350, 1673394200, 1673804100, 1674214050, 1674624050, 1675034100, 1675444200, 1675854350, 1676264550, 1676674800, 1677085100, 1677495450, 1677905850, 1678316300, 1678726800, 1679137350, 1679547950, 1679958600, 1680369300, 1680780050, 1681190850, 1681601700, 1682012600, 1682423550, 1682834550, 1683245600, 1683656700, 1684067850, 1684479050, 1684890300, 1685301600, 1685712950, 1686124350, 1686535800, 1686947300, 1687358850, 1687770450, 1688182100, 1688593800, 1689005550, 1689417350, 1689829200, 1690241100, 1690653050, 1691065050, 1691477100, 1691889200, 1692301350, 1692713550, 1693125800, 1693538100, 1693950450, 1694362850, 1694775300, 1695187800, 1695600350, 1696012950, 1696425600, 1696838300, 1697251050, 1697663850, 1698076700, 1698489600, 1698902550, 1699315550, 1699728600, 1700141700, 1700554850, 1700968050, 1701381300, 1701794600, 1702207950, 1702621350, 1703034800, 1703448300, 1703861850, 1704275450, 1704689100, 1705102800, 1705516550, 1705930350, 1706344200, 1706758100, 1707172050, 1707586050, 1708000100, 1708414200, 1708828350, 1709242550, 1709656800, 1710071100, 1710485450, 1710899850, 1711314300, 1711728800, 1712143350, 1712557950, 1712972600, 1713387300, 1713802050, 1714216850, 1714631700, 1715046600, 1715461550, 1715876550, 1716291600, 1716706700, 1717121850, 1717537050, 1717952300, 1718367600, 1718782950, 1719198350, 1719613800, 1720029300, 1720444850, 1720860450, 1721276100, 1721691800, 1722107550, 1722523350, 1722939200, 1723355100, 1723771050, 1724187050, 1724603100, 1725019200, 1725435350, 1725851550, 1726267800, 1726684100, 1727100450, 1727516850, 1727933300, 1728349800, 1728766350, 1729182950, 1729599600, 1730016300, 1730433050, 1730849850, 1731266700, 1731683600, 1732100550, 1732517550, 1732934600, 1733351700, 1733768850, 1734186050, 1734603300, 1735020600, 1735437950, 1735855350, 1736272800, 1736690300, 1737107850, 1737525450, 1737943100, 1738360800, 1738778550, 1739196350, 1739614200, 1740032100, 1740450050, 1740868050, 1741286100, 1741704200, 1742122350, 1742540550, 1742958800, 1743377100, 1743795450, 1744213850, 1744632300, 1745050800, 1745469350, 1745887950, 1746306600, 1746725300, 1747144050, 1747562850, 1747981700, 1748400600, 1748819550, 1749238550, 1749657600, 1750076700, 1750495850, 1750915050, 1751334300, 1751753600, 1752172950, 1752592350, 1753011800, 1753431300, 1753850850, 1754270450, 1754690100, 1755109800, 1755529550, 1755949350, 1756369200, 1756789100, 1757209050, 1757629050, 1758049100, 1758469200, 1758889350, 1759309550, 1759729800, 1760150100, 1760570450, 1760990850, 1761411300, 1761831800, 1762252350, 1762672950, 1763093600, 1763514300, 1763935050, 1764355850, 1764776700, 1765197600, 1765618550, 1766039550, 1766460600, 1766881700, 1767302850, 1767724050, 1768145300, 1768566600, 1768987950, 1769409350, 1769830800, 1770252300, 1770673850, 1771095450, 1771517100, 1771938800, 1772360550, 1772782350, 1773204200, 1773626100, 1774048050, 1774470050, 1774892100, 1775314200, 1775736350, 1776158550, 1776580800, 1777003100, 1777425450, 1777847850, 1778270300, 1778692800, 1779115350, 1779537950, 1779960600, 1780383300, 1780806050, 1781228850, 1781651700, 1782074600, 1782497550, 1782920550, 1783343600, 1783766700, 1784189850, 1784613050, 1785036300, 1785459600, 1785882950, 1786306350, 1786729800, 1787153300, 1787576850 }



local CarDirectory = nil
local CarSubSaves = nil
local CurrentHash = nil
local SavedVehicles = 0
local vehicle = nil
-- Vehicle Types
local boats = {}
boats[1033245328] = "Spawn Dinghy1"
boats[276773164] = "Spawn Dinghy2"
boats[509498602] = "Spawn Dinghy3"
boats[867467158] = "Spawn Dinghy4"
boats[861409633] = "Spawn Jetmax"
boats[-1043459709] = "Spawn Marquis"
boats[-1030275036] = "Spawn SeaShark"
boats[-616331036] = "Spawn SeaShark2"
boats[-311022263] = "Spawn SeaShark3"
boats[231083307] = "Spawn Speeder"
boats[437538602] = "Spawn Speeder2"
boats[400514754] = "Spawn Squalo"
boats[771711535] = "Spawn Submersible"
boats[-1066334226] = "Spawn Submersible2"
boats[-282946103] = "Spawn Suntrap"
boats[1070967343] = "Spawn Toro"
boats[908897389] = "Spawn Toro2"
boats[290013743] = "Spawn Tropic"
boats[1448677353] = "Spawn Tropic2"
boats[-2100640717] = "Spawn Tug"
local compacts = {}
compacts[-344943009] = "Spawn Blista"
compacts[1039032026] = "Spawn Blista2"
compacts[-591651781] = "Spawn Blista3"
compacts[1549126457] = "Spawn Brioso"
compacts[-1130810103] = "Spawn Dilettante"
compacts[1682114128] = "Spawn Dilettante2"
compacts[-1177863319] = "Spawn Issi2"
compacts[-431692672] = "Spawn Panto"
compacts[-1450650718] = "Spawn Prairie"
compacts[841808271] = "Spawn Rhapsody"
local coupes = {}
coupes[330661258] = "Spawn CogCabrio"
coupes[-5153954] = "Spawn Exemplar"
coupes[-591610296] = "Spawn F620"
coupes[-391594584] = "Spawn Felon"
coupes[-89291282] = "Spawn Felon2"
coupes[-624529134] = "Spawn Jackal"
coupes[64075878] = "Spawn Kanjo"
coupes[1348744438] = "Spawn Oracle"
coupes[-511601230] = "Spawn Oracle2"
coupes[294678663] = "Spawn Postlude"
coupes[1349725314] = "Spawn Sentinel"
coupes[873639469] = "Spawn Sentinel2"
coupes[1581459400] = "Spawn Windsor"
coupes[1930048799] = "Spawn Windsor2"
coupes[-1122289213] = "Spawn Zion"
coupes[-1193103848] = "Spawn Zion2"
local cyles ={}
cyles[1131912276] = "Spawn BMX"
cyles[448402357] = "Spawn Cruiser"
cyles[-836512833] = "Spawn Fixter"
cyles[-186537451] = "Spawn Scorcher"
cyles[1127861609] = "Spawn TriBike"
cyles[-1233807380] = "Spawn TriBike2"
cyles[-400295096] = "Spawn TriBike3"
local emergency = {}
emergency[1171614426] = "Spawn Ambulance"
emergency[1127131465] = "Spawn FBI"
emergency[-1647941228] = "Spawn FBI2"
emergency[1938952078] = "Spawn FireTruck"
emergency[-2007026063] = "Spawn PrisonBus"
emergency[2046537925] = "Spawn Police"
emergency[-1627000575] = "Spawn Police2"
emergency[1912215274] = "Spawn Police3"
emergency[-1973172295] = "Spawn Police4"
emergency[-1536924937] = "Spawn PoliceOld1"
emergency[-1779120616] = "Spawn PoliceOld2"
emergency[456714581] = "Spawn PoliceTransport"
emergency[-34623805] = "Spawn PoliceBike"
emergency[353883353] = "Spawn PoliceHelicopter"
emergency[741586030] = "Spawn ParkRanger"
emergency[-488123221] = "Spawn Predator"
emergency[-1205689942] = "Spawn Riot"
emergency[-1683328900] = "Spawn Sheriff"
emergency[1922257928] = "Spawn Sheriff2"
local heli = {}
heli[837858166] = "Spawn Annihilator"
heli[788747387] = "Spawn Buzzard"
heli[745926877] = "Spawn Buzzard2"
heli[-50547061] = "Spawn Cargobob"
heli[1621617168] = "Spawn Cargobob2"
heli[1394036463] = "Spawn Cargobob3"
heli[2025593404] = "Spawn Cargobob4"
heli[-477831899] = "Spawn Canoda"
heli[744705981] = "Spawn Frogger"
heli[1949211328] = "Spawn Frogger2"
heli[-1660661558] = "Spawn Maverick"
heli[-82626025] = "Spawn Savage"
heli[1044954915] = "Spawn Skylift"
heli[710198397] = "Spawn Supervolito"
heli[-1671539132] = "Spawn Supervolito2"
heli[-339587598] = "Spawn Swift"
heli[1075432268] = "Spawn Swift2"
heli[-1600252419] = "Spawn Valkyrie"
heli[1543134283] = "Spawn Valkyrie2"
heli[-1845487887] = "Spawn Volatus"
local industrial = {}
industrial[1886712733] = "Spawn Bulldozer"
industrial[-1006919392] = "Spawn Cutter"
industrial[-2130482718] = "Spawn Dump"
industrial[1353720154] = "Spawn Flatbed"
industrial[-2107990196] = "Spawn Guardian"
industrial[444583674] = "Spawn Handler"
industrial[-784816453] = "Spawn Mixer"
industrial[475220373] = "Spawn Mixer2"
industrial[-1705304628] = "Spawn Rubble"
industrial[48339065] = "Spawn TipTruck"
industrial[-947761570] = "Spawn TipTruck2"
local military = {}
military[562680400] = "Spawn APC"
military[-823509173] = "Spawn Barracks"
military[1074326203] = "Spawn Barracks2"
military[630371791] = "Spawn Barracks3"
military[321739290] = "Spawn Crusader"
military[-32236122] = "Spawn Halftrack"
military[782665360] = "Spawn Rhino"
military[-1881846085] = "Spawn Trailersmall2"
local motorcycles = {}
motorcycles[1672195559] = "Spawn Akuma"
motorcycles[-2115793025] = "Spawn Avarus"
motorcycles[-2140431165] = "Spawn Bagger"
motorcycles[-891462355] = "Spawn Bati2"
motorcycles[-114291515] = "Spawn Bati"
motorcycles[86520421] = "Spawn BF400"
motorcycles[-440768424] = "Spawn Blazer4"
motorcycles[11251904] = "Spawn CarbonRS"
motorcycles[6774487] = "Spawn Chimera"
motorcycles[390201602] = "Spawn Cliffhanger"
motorcycles[-1404136503] = "Spawn Daemon2"
motorcycles[2006142190] = "Spawn Daemon"
motorcycles[822018448] = "Spawn Defiler"
motorcycles[-1670998136] = "Spawn Double"
motorcycles[1753414259] = "Spawn Enduro"
motorcycles[2035069708] = "Spawn Esskey"
motorcycles[-1842748181] = "Spawn Faggio"
motorcycles[55628203] = "Spawn Faggio2"
motorcycles[-1289178744] = "Spawn Faggio3"
motorcycles[-757735410] = "Spawn Fcr2"
motorcycles[627535535] = "Spawn Fcr"
motorcycles[741090084] = "Spawn Gargoyle"
motorcycles[-255678177] = "Spawn Hakuchou2"
motorcycles[1265391242] = "Spawn Hakuchou"
motorcycles[301427732] = "Spawn Hexer"
motorcycles[-159126838] = "Spawn Innovation"
motorcycles[640818791] = "Spawn Lectro"
motorcycles[-1523428744] = "Spawn Manchez"
motorcycles[1384502824] = "Spawn Manchez2"
motorcycles[-634879114] = "Spawn Nemesis"
motorcycles[-1606187161] = "Spawn Nightblade"
motorcycles[884483972] = "Spawn Oppressor"
motorcycles[884483972] = "Spawn OppressorMK2"
motorcycles[-909201658] = "Spawn PCJ"
motorcycles[1873600305] = "Spawn Ratbike"
motorcycles[-893578776] = "Spawn Ruffian"
motorcycles[-1453280962] = "Spawn Sanchez2"
motorcycles[788045382] = "Spawn Sanchez"
motorcycles[1491277511] = "Spawn Sanctus"
motorcycles[-405626514] = "Spawn Shotaro"
motorcycles[743478836] = "Spawn Sovereign"
motorcycles[1836027715] = "Spawn Thrust"
motorcycles[-140902153] = "Spawn Vader"
motorcycles[-1353081087] = "Spawn Vindicator"
motorcycles[-609625092] = "Spawn Vortex"
motorcycles[-618617997] = "Spawn Wolfsbane"
motorcycles[-1009268949] = "Spawn Zombiea"
motorcycles[-570033273] = "Spawn Zombieb"
local muscle = {}
muscle[-1205801634] = "Spawn Blade"
muscle[-682211828] = "Spawn Buccaneer"
muscle[-1013450936] = "Spawn Buccaneer2"
muscle[-1933242328] = "Spawn Broadway"
muscle[349605904] = "Spawn Chino"
muscle[-1361687965] = "Spawn Chino2"
muscle[80636076] = "Spawn Dominator"
muscle[-915704871] = "Spawn Dominator2"
muscle[723973206] = "Spawn Dukes"
muscle[-326143852] = "Spawn Dukes2"
muscle[-1249788006] = "Spawn Eudora"
muscle[-2119578145] = "Spawn Faction"
muscle[-1790546981] = "Spawn Faction2"
muscle[-2039755226] = "Spawn Faction3"
muscle[-1800170043] = "Spawn Gauntlet"
muscle[349315417] = "Spawn Gauntlet2"
muscle[40817712] = "Spawn Greenwood"
muscle[37348240] = "Spawn Hotknife"
muscle[51706945532] = "Spawn Ruinerzz8"
muscle[2068293287] = "Spawn Lurcher"
muscle[525509695] = "Spawn Moonbeam"
muscle[1896491931] = "Spawn Moonbeam2"
muscle[-1943285540] = "Spawn Nightshade"
muscle[-2095439403] = "Spawn Phoenix"
muscle[1507916787] = "Spawn Picador"
muscle[-667151410] = "Spawn RatLoader"
muscle[-589178377] = "Spawn RatLoader2"
muscle[-227741703] = "Spawn Ruiner"
muscle[941494461] = "Spawn Ruiner2"
muscle[-1685021548] = "Spawn SabreGT"
muscle[223258115] = "Spawn SabreGT2"
muscle[734217681] = "Spawn Sadler2"
muscle[729783779] = "Spawn SlamVan"
muscle[833469436] = "Spawn SlamVan2"
muscle[1119641113] = "Spawn SlamVan3"
muscle[1923400478] = "Spawn Stalion"
muscle[-401643538] = "Spawn Stalion2"
muscle[972671128] = "Spawn Tampa"
muscle[-1210451983] = "Spawn Tampa3"
muscle[461850249] = "Spawn Tahoma"
muscle[268758436] = "Spawn Tulip"
muscle[-825837129] = "Spawn Vigero"
muscle[1758379524] = "Spawn Vigero2"
muscle[-498054846] = "Spawn Virgo"
muscle[-899509638] = "Spawn Virgo2"
muscle[16646064] = "Spawn Virgo3"
muscle[2006667053] = "Spawn Voodoo"
muscle[523724515] = "Spawn Voodoo2"
muscle[1644055914] = "Spawn Weevil"
local offroad = {}
offroad[1126868326] = "Spawn BfInjection"
offroad[-349601129] = "Spawn Bifta"
offroad[-2128233223] = "Spawn Blazer"
offroad[-48031959] = "Spawn Blazer2"
offroad[-1269889662] = "Spawn Blazer3"
offroad[-1590337689] = "Spawn Blazer5"
offroad[-1435919434] = "Spawn Bodhi2"
offroad[-1479664699] = "Spawn Brawler"
offroad[996383885] = "Spawn Boar"
offroad[1770332643] = "Spawn DLoader"
offroad[-1661854193] = "Spawn Dune"
offroad[534258863] = "Spawn Dune2"
offroad[1897744184] = "Spawn Dune3"
offroad[-827162039] = "Spawn Dune4"
offroad[-312295511] = "Spawn Dune5"
offroad[768236378] = "Spawn Drauger"
offroad[-1860900134] = "Spawn Insurgent"
offroad[2071877360] = "Spawn Insurgent2"
offroad[-1924433270] = "Spawn Insurgent3"
offroad[92612664] = "Spawn Kalahari"
offroad[469291905] = "Spawn Lifeguard"
offroad[1233534620] = "Spawn Marshall"
offroad[914654722] = "Spawn Mesa"
offroad[-748008636] = "Spawn Mesa2"
offroad[-2064372143] = "Spawn Mesa3"
offroad[-845961253] = "Spawn Monster"
offroad[433954513] = "Spawn Nightshark"
offroad[-2064372143] = "Spawn RancherXL"
offroad[-845961253] = "Spawn RancherXL2"
offroad[-1207771834] = "Spawn Rebel"
offroad[-2045594037] = "Spawn Rebel2"
offroad[-1189015600] = "Spawn Sandking"
offroad[989381445] = "Spawn Sandking2"
offroad[-2096818938] = "Spawn Technical"
offroad[1180875963] = "Spawn Technical2"
offroad[1356124575] = "Spawn Technical3"
offroad[101905590] = "Spawn TrophyTruck"
offroad[-663299102] = "Spawn TrophyTruck2"
local planes = {}
planes[1824333165] = "Spawn Besra"
planes[-150975354] = "Spawn Blimp"
planes[-613725916] = "Spawn Blimp2"
planes[368211810] = "Spawn CargoPlane"
planes[-644710429] = "Spawn Cuban800"
planes[-901163259] = "Spawn Dodo"
planes[-970356638] = "Spawn Duster"
planes[970385471] = "Spawn Hydra"
planes[1058115860] = "Spawn Jet"
planes[-1281684762] = "Spawn Lazer"
planes[621481054] = "Spawn Luxor"
planes[-1214293858] = "Spawn Luxor2"
planes[-1746576111] = "Spawn Mammatus"
planes[165154707] = "Spawn Miljet"
planes[-1295027632] = "Spawn Nimbus"
planes[-1214505995] = "Spawn Shamal"
planes[-2122757008] = "Spawn Stunt"
planes[1981688531] = "Spawn Titan"
planes[-1673356438] = "Spawn Velum"
planes[1077420264] = "Spawn Velum2"
planes[1341619767] = "Spawn Vestra"
local sedans = {}
sedans[-1809822327] = "Spawn Asea"
sedans[-1807623979] = "Spawn Asea2"
sedans[-1903012613] = "Spawn Asterope"
sedans[906642318] = "Spawn Cog55"
sedans[704435172] = "Spawn Cog552"
sedans[-2030171296] = "Spawn Cognoscenti"
sedans[-604842630] = "Spawn Cognoscenti2"
sedans[-685276541] = "Spawn Emperor"
sedans[-1883002148] = "Spawn Emperor2"
sedans[-1241712818] = "Spawn Emperor3"
sedans[1909141499] = "Spawn Fugitive"
sedans[75131841] = "Spawn Glendale"
sedans[-1289722222] = "Spawn Ingot"
sedans[886934177] = "Spawn Intruder"
sedans[-114627507] = "Spawn Limo2"
sedans[-1883869285] = "Spawn Premier"
sedans[-1150599089] = "Spawn Primo"
sedans[-2040426790] = "Spawn Primo2"
sedans[-14495224] = "Spawn Regina"
sedans[627094268] = "Spawn Romero"
sedans[1855505138] = "Spawn Rhinehart"
sedans[-1477580979] = "Spawn Stanier"
sedans[1723137093] = "Spawn Stratum"
sedans[-1961627517] = "Spawn Stretch"
sedans[-1894894188] = "Spawn Surge"
sedans[-1008861746] = "Spawn Tailgater"
sedans[1373123368] = "Spawn Warrener"
sedans[1777363799] = "Spawn Washington"
local service = {}
service[1283517198] = "Spawn Airbus"
service[-305727417] = "Spawn Brickade"
service[-1576586413] = "Spawn Brickade2 | (Acid Lab)"
service[-713569950] = "Spawn Bus"
service[-2072933068] = "Spawn Coach"
service[-2103821244] = "Spawn Rallytruck"
service[-1098802077] = "Spawn RentalBus"
service[-956048545] = "Spawn Taxi"
service[1941029835] = "Spawn Tourbus"
service[1917016601] = "Spawn Trash"
service[-1255698084] = "Spawn Trash2"
local sports = {}
sports[1076201208] = "Spawn 300R"
sports[767087018] = "Spawn Alpha"
sports[-1041692462] = "Spawn Banshee"
sports[633712403] = "Spawn Banshee2"
sports[1274868363] = "Spawn BestiaGTS"
sports[-304802106] = "Spawn Buffalo"
sports[736902334] = "Spawn Buffalo2"
sports[237764926] = "Spawn Buffalo3"
sports[2072687711] = "Spawn Carbonizzare"
sports[-1045541610] = "Spawn Comet2"
sports[-2022483795] = "Spawn Comet3"
sports[754687673] = "Spawn Corsita"
sports[108773431] = "Spawn Coquette"
sports[196747873] = "Spawn Elegy"
sports[-566387422] = "Spawn Elegy2"
sports[1748565021] = "Spawn Entity"
sports[-131348178] = "Spawn Everon"
sports[-1995326987] = "Spawn Feltzer2"
sports[-1566741232] = "Spawn Feltzer3"
sports[-1089039904] = "Spawn Furoregt"
sports[499169875] = "Spawn Fusilade"
sports[2016857647] = "Spawn Futo"
sports[-1405937764] = "Spawn Infernus2"
sports[-1297672541] = "Spawn Jester"
sports[-1106353882] = "Spawn Jester2"
sports[544021352] = "Spawn Khamelion"
sports[-1372848492] = "Spawn Kuruma"
sports[410882957] = "Spawn ArmoredKuruma"
sports[10917683] = "Spawn LM87"
sports[482197771] = "Spawn Lynx"
sports[-142942670] = "Spawn Massacro"
sports[-631760477] = "Spawn Massacro2"
sports[1032823388] = "Spawn Ninef"
sports[-1461482751] = "Spawn Ninef2"
sports[893984159] = "Spawn tenf"
sports[274946574] = "Spawn tenf2"
sports[-777172681] = "Spawn Omnis"
sports[505223465] = "Spawn Omnisegt"
sports[2100457220] = "Spawn Panthere"
sports[-377465520] = "Spawn Penumbra"
sports[-1934452204] = "Spawn RapidGT"
sports[1737773231] = "Spawn RapidGT2"
sports[-674927303] = "Spawn Raptor"
sports[719660200] = "Spawn Ruston"
sports[-1255452397] = "Spawn Schafter2"
sports[-1485523546] = "Spawn Schafter3"
sports[1489967196] = "Spawn Schafter4"
sports[-888242983] = "Spawn Schafter5"
sports[1922255844] = "Spawn Schafter6"
sports[-746882698] = "Spawn Schwarzer"
sports[-1757836725] = "Spawn Seven70"
sports[1886268224] = "Spawn Specter"
sports[1074745671] = "Spawn Specter2"
sports[970598228] = "Spawn Sultan"
sports[384071873] = "Spawn Surano"
sports[775514032] = "Spawn sm722"
sports[-1071380347] = "Spawn Tampa2"
sports[165394758] = "Spawn Torero"
sports[1887331236] = "Spawn Tropos"
sports[1102544804] = "Spawn Verlierer2"
sports[669204833] = "Spawn Virtue"
local suvs = {}
suvs[850565707] = "Spawn BJXL"
suvs[-808831384] = "Spawn Baller"
suvs[142944341] = "Spawn Baller2"
suvs[1878062887] = "Spawn Baller3"
suvs[634118882] = "Spawn Baller4"
suvs[470404958] = "Spawn Baller5"
suvs[666166960] = "Spawn Baller6"
suvs[2006918058] = "Spawn Cavalcade"
suvs[-789894171] = "Spawn Cavalcade2"
suvs[683047626] = "Spawn Contender"
suvs[1177543287] = "Spawn Dubsta"
suvs[-394074634] = "Spawn Dubsta2"
suvs[-1237253773] = "Spawn Dubsta3"
suvs[-1137532101] = "Spawn FQ2"
suvs[-1775728740] = "Spawn Granger"
suvs[-1543762099] = "Spawn Gresley"
suvs[884422927] = "Spawn Habanero"
suvs[486987393] = "Spawn Huntley"
suvs[1550581940] = "Spawn Issi"
suvs[1269098716] = "Spawn Landstalker"
suvs[-808457413] = "Spawn Patriot"
suvs[-1651067813] = "Spawn Radi"
suvs[2136773105] = "Spawn Rocoto"
suvs[1221512915] = "Spawn Seminole"
suvs[1337041428] = "Spawn Serrano"
suvs[1203490606] = "Spawn XLS"
suvs[-432008408] = "Spawn XLS2"
local utility = {}
utility[1560980623] = "Spawn Airtug"
utility[1147287684] = "Spawn Caddy"
utility[-537896628] = "Spawn Caddy2"
utility[-769147461] = "Spawn Caddy3"
utility[-884690486] = "Spawn Docktug"
utility[1491375716] = "Spawn Forklift"
utility[1783355638] = "Spawn Mower"
utility[-845979911] = "Spawn Ripley"
utility[-599568815] = "Spawn Sadler"
utility[-1700801569] = "Spawn Scrap"
utility[-1323100960] = "Spawn TowTruck"
utility[-442313018] = "Spawn TowTruck2"
utility[1641462412] = "Spawn Tractor"
utility[-2076478498] = "Spawn Tractor2"
utility[1445631933] = "Spawn Tractor3"
utility[1502869817] = "Spawn TrailerLarge"
utility[-1100548694] = "Spawn TrailerS4"
utility[516990260] = "Spawn UtilliTruck"
utility[887537515] = "Spawn UtilliTruck2"
utility[2132890591] = "Spawn UtilliTruck3"
local subvans = {}
subvans[-16948145] = "Spawn Bison"
subvans[2072156101] = "Spawn Bison2"
subvans[1739845664] = "Spawn Bison3"
subvans[1069929536] = "Spawn BobcatXL"
subvans[-1987130134] = "Spawn Boxville"
subvans[-233098306] = "Spawn Boxville2"
subvans[121658888] = "Spawn Boxville3"
subvans[444171386] = "Spawn Boxville4"
subvans[682434785] = "Spawn Boxville5"
subvans[-1346687836] = "Spawn Burrito"
subvans[-907477130] = "Spawn Burrito2"
subvans[-1743316013] = "Spawn Burrito3"
subvans[893081117] = "Spawn Burrito4"
subvans[1132262048] = "Spawn Burrito5"
subvans[1876516712] = "Spawn Camper"
subvans[-1745203402] = "Spawn GBurrito"
subvans[296357396] = "Spawn GBurrito2"
subvans[296357396] = "Spawn Journey"
subvans[-1627077503] = "Spawn Journey2"
subvans[-310465116] = "Spawn Minivan"
subvans[-1126264336] = "Spawn Minivan2"
subvans[1488164764] = "Spawn Paradise"
subvans[-119658072] = "Spawn Pony"
subvans[943752001] = "Spawn Pony2"
subvans[1162065741] = "Spawn Rumpo"
subvans[-1776615689] = "Spawn Rumpo2"
subvans[1475773103] = "Spawn Rumpo3"
subvans[-810318068] = "Spawn Speedo"
subvans[728614474] = "Spawn Speedo2"
subvans[699456151] = "Spawn Surfer"
subvans[-1311240698] = "Spawn Surfer2"
subvans[-1035489563] = "Spawn Surfer3"
subvans[1951180813] = "Spawn Taco"
subvans[65402552] = "Spawn Youga"
subvans[1026149675] = "Spawn Youga2"
local commercial = {}
commercial[2053223216] = "Spawn Benson"
commercial[850991848] = "Spawn Biff"
commercial[1518533038] = "Spawn Hauler"
commercial[387748548] = "Spawn Hauler2"
commercial[904750859] = "Spawn Mule"
commercial[-1050465301] = "Spawn Mule2"
commercial[-2052737935] = "Spawn Mule3"
commercial[569305213] = "Spawn Packer"
commercial[-2137348917] = "Spawn Phantom"
commercial[-1649536104] = "Spawn Phantom2"
commercial[177270108] = "Spawn Phantom3"
commercial[2112052861] = "Spawn Pounder"
commercial[1747439474] = "Spawn Stockade"
commercial[-214455498] = "Spawn Stockade2"

function SpawnVehicle(Hash)
    local pos = localplayer:get_position()
    globals.set_int(UCR1, Hash)
    globals.set_float(DOCT3, pos.x)
    globals.set_float(CG1, pos.y)
    globals.set_float(RM1, pos.z)
    globals.set_boolean(RPN2, true)
    sleep(0.5)
    menu.send_key_press(70)
    
end
function SaveVehicle()
        vehicle = localplayer:get_current_vehicle()
        CurrentHash = vehicle:get_model_hash()
        SavedVehicles = SavedVehicles + 1
        CarSubSaves:add_action("Saved Vehicle #" .. SavedVehicles .. "| " .. CurrentHash,
         function() SpawnVehicle(CurrentHash)end)
end
local vehiclos = nil
local function veh_spawner()
    local CarSubBoat = CarDirectory:add_submenu("Boats | 20")
    for vehicle_id, name in pairs(boats) do
        CarSubBoat:add_action(name, function() SpawnVehicle(vehicle_id) end)
        
    end
    local CarSubCompacts = CarDirectory:add_submenu("Compacts | 16")
    for vehicle_id, name in pairs(compacts) do
        CarSubCompacts:add_action(name, function() SpawnVehicle(vehicle_id) end)
        
    end
    local CarSubCoupes = CarDirectory:add_submenu("Coupes | 17")
    for vehicle_id, name in pairs(coupes) do
        CarSubCoupes:add_action(name, function() SpawnVehicle(vehicle_id) end)
        
    end
    local CarSubCycles = CarDirectory:add_submenu("Cycles | 7")
    for vehicle_id, name in pairs(cyles) do
        CarSubCycles:add_action(name, function() SpawnVehicle(vehicle_id) end)
        
    end
    local CarSubEmergency = CarDirectory:add_submenu("Emergency | 22")
    for vehicle_id, name in pairs(emergency) do
        CarSubEmergency:add_action(name, function() SpawnVehicle(vehicle_id) end)
        
    end
    local CarSubHelicopters = CarDirectory:add_submenu("Helicopters | 23")
    for vehicle_id, name in pairs(heli) do
        CarSubHelicopters:add_action(name, function() SpawnVehicle(vehicle_id) end)
        
    end
    local CarSubIndustrial = CarDirectory:add_submenu("Industrial | 11")
    for vehicle_id, name in pairs(industrial) do
        CarSubIndustrial:add_action(name, function() SpawnVehicle(vehicle_id) end)
        
    end
    local CarSubMilitary = CarDirectory:add_submenu("Military | 17")
    for vehicle_id, name in pairs(military) do
        CarSubMilitary:add_action(name, function() SpawnVehicle(vehicle_id) end)
        
    end
    local CarSubMotorcycles = CarDirectory:add_submenu("Motorcycles | 57")
    for vehicle_id, name in pairs(motorcycles) do
        CarSubMotorcycles:add_action(name, function() SpawnVehicle(vehicle_id) end)
        
    end
    local CarSubMuscle = CarDirectory:add_submenu("Muscle | 74")
    for vehicle_id, name in pairs(muscle) do
        CarSubMuscle:add_action(name, function() SpawnVehicle(vehicle_id) end)
        
    end
    local CarSubOffRoad = CarDirectory:add_submenu("Off-Road | 65")
    for vehicle_id, name in pairs(offroad) do
        CarSubOffRoad:add_action(name, function() SpawnVehicle(vehicle_id) end)
        
    end
    local CarSubPlanes = CarDirectory:add_submenu("Planes | 38")
    for vehicle_id, name in pairs(planes) do
        CarSubPlanes:add_action(name, function() SpawnVehicle(vehicle_id) end)
        
    end
    local CarSubSedans = CarDirectory:add_submenu("Sedans | 37")
    for vehicle_id, name in pairs(sedans) do
        CarSubSedans:add_action(name, function() SpawnVehicle(vehicle_id) end)
        
    end
    local CarSubService = CarDirectory:add_submenu("Service | 15")
    for vehicle_id, name in pairs(service) do
        CarSubService:add_action(name, function() SpawnVehicle(vehicle_id) end)
        
    end
    local CarSubSports = CarDirectory:add_submenu("Sports | 202")
    for vehicle_id, name in pairs(sports) do
        CarSubSports:add_action(name, function() SpawnVehicle(vehicle_id) end)
        
    end
    local CarSubSUV = CarDirectory:add_submenu("SUVs | 43")
    for vehicle_id, name in pairs(suvs) do
        CarSubSUV:add_action(name, function() SpawnVehicle(vehicle_id) end)
        
    end
    local CarSubUtility = CarDirectory:add_submenu("Utility | 20")
    for vehicle_id, name in pairs(utility) do
        CarSubUtility:add_action(name, function() SpawnVehicle(vehicle_id) end)
        
    end
    local CarSubVans = CarDirectory:add_submenu("Vans | 31")
    for vehicle_id, name in pairs(subvans) do
        CarSubVans:add_action(name, function() SpawnVehicle(vehicle_id) end)
        
    end
    local CarSubCommercial = CarDirectory:add_submenu("Commercial | 16")
    for vehicle_id, name in pairs(commercial) do
        CarSubCommercial:add_action(name, function() SpawnVehicle(vehicle_id) end)
        
    end
end
CarDirectory = mainMenu:add_submenu("Vehicle Spawner", veh_spawner)
CarSubSaves = CarDirectory:add_submenu("Saved Vehicles")
CarSubSaves:add_action("Save Vehicle", function() SaveVehicle()end)
]]--55

CREDMenu = mainMenu:add_submenu("Credits") CREDMenu:add_action("DiverPete ", function() end) CREDMenu:add_action("Kiddions ", function() end) CREDMenu:add_action("Boredom1234", function() end) CREDMenu:add_action("Thorben ", function() end) CREDMenu:add_action("Nyx ", function() end) CREDMenu:add_action("randomAlt69420 ", function() end) CREDMenu:add_action("jonaaa20", function() end) CREDMenu:add_action("jhowkNx ", function() end) CREDMenu:add_action("mon99 ", function() end) CREDMenu:add_action("Volkret ", function() end) CREDMenu:add_action("IceDoomfist ", function() end)

--[[                                                                                                                                                                        
██████╗ ██████╗  ██████╗ ████████╗███████╗ ██████╗████████╗██╗ ██████╗ ███╗   ██╗███████╗
██╔══██╗██╔══██╗██╔═══██╗╚══██╔══╝██╔════╝██╔════╝╚══██╔══╝██║██╔═══██╗████╗  ██║██╔════╝
██████╔╝██████╔╝██║   ██║   ██║   █████╗  ██║        ██║   ██║██║   ██║██╔██╗ ██║███████╗
██╔═══╝ ██╔══██╗██║   ██║   ██║   ██╔══╝  ██║        ██║   ██║██║   ██║██║╚██╗██║╚════██║
██║     ██║  ██║╚██████╔╝   ██║   ███████╗╚██████╗   ██║   ██║╚██████╔╝██║ ╚████║███████║
╚═╝     ╚═╝  ╚═╝ ╚═════╝    ╚═╝   ╚══════╝ ╚═════╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝                                                                                                                                                                                                                                                                                     
--]]

pro = mainMenu:add_submenu("Protections")
local boolall = false 
local blockSocialClubSpamState = false
 
local function Text(text)
	pro:add_action(text, function() end)
end
 
Text("➫GTAv1.68 Protections")
Text("--")
 
local function Activity(bool)
	globals.set_bool(1683531+584, bool) 
end
 
local function Bounty(bool)
	globals.set_bool(1683531+65, bool) 
end
 
local function CeoKick(bool)
	globals.set_bool(1683531+556, bool) 
end
 
local function KickCrashes(bool)
	globals.set_bool(1683531+753, bool)
	globals.set_bool(1683531+453, bool)
	globals.set_bool(1683531+608, bool)
	globals.set_bool(1683531+623, bool)
	globals.set_bool(1683531+523, bool)
	globals.set_bool(1683531+600, bool)
	globals.set_bool(1683531+845, bool)
end
 
local function getKickCrashesState()
	return ( globals.get_bool(1683531+753) and
	globals.get_bool(1683531+453) and 
	globals.get_bool(1683531+608) and
	globals.get_bool(1683531+623) and
	globals.get_bool(1683531+523) and
	globals.get_bool(1683531+600) and
	globals.get_bool(1683531+845))
end
 
local function CeoBan(bool)
	globals.set_bool(1683531+578, bool) 
end
 
local function SoundSpam(bool)
	globals.set_bool(1683531+451, bool)
	globals.set_bool(1683531+850, bool)
	globals.set_bool(1683531, bool)
	--globals.set_bool(1670529, bool)
	globals.set_bool(1683531+630, bool)
	globals.set_bool(1683531+17, bool)
end
 
local function getSoundSpamState()
	return (globals.get_bool(1683531+451) and
	globals.get_bool(1683531+850) and
	globals.get_bool(1683531) and
	--globals.get_bool(1670529) and
	globals.get_bool(1683531+630) and
	globals.get_bool(1683531+17))
end
 
local function InfiniteLoad(bool)	
	globals.set_bool(1683531+579, bool) 
	globals.set_bool(1683531+648, bool)
end
 
local function getInfiniteLoadState()
	return (globals.get_bool(1683531+579) and
	globals.get_bool(1683531+648))
end
 
local function Collectibles(bool)
	globals.set_bool(1683531+815, bool) 
end
 
local function PassiveMode(bool)
	globals.set_bool(1683531+568, bool) 
end
 
local function TransactionError(bool) 
	globals.set_bool(1683531+369, bool) 
end
 
local function RemoveMoneyMessage(bool) 
	globals.set_bool(1683531+452, bool)
	globals.set_bool(1683531+22, bool)
	globals.set_bool(1683531+629, bool)
end
 
local function getRemoveMoneyMessageState()
	return (globals.get_bool(1683531+452) and
	globals.get_bool(1683531+22) and
	globals.get_bool(1683531+629))
end
 
local function ExtraTeleport(bool) 
	globals.set_bool(1683531+324, bool) 
	globals.set_bool(1683531+745, bool) 
    globals.set_bool(1683531+844, bool)
    globals.set_bool(1683531+845, bool)
    globals.set_bool(1683531+840, bool) 
end
 
local function getExtraTeleportState()
	return (globals.get_bool(1683531+324) and
	globals.get_bool(1683531+745) and globals.get_bool(1683531+844) and globals.get_bool(1683531+845) and globals.get_bool(1683531+840))
end
 
local function ClearWanted(bool) 
	globals.set_bool(1683531+510, bool)
end
 
local function OffTheRadar(bool) 
	globals.set_bool(1683531+512, bool) 
end
 
local function SendCutscene(bool) 
	globals.set_bool(1683531+805, bool)
end
 
local function Godmode(bool) 
	globals.set_bool(1683531+2, bool)
end
 
local function PersonalVehicleDestroy(bool) 
	globals.set_bool(1683531+73, bool)
	globals.set_bool(1683531+635, bool) 
end
 
local function getPersonalVehicleDestroyState()
	return (globals.get_bool(1683531+73) and
	globals.get_bool(1683531+635))
end
 
local function RemoteGlobalModification(bool)
	local setting = 0
	if bool then
		setting = 1
	end
	globals.set_int(1683531+793, setting)
	globals.set_int(1683531+470, setting)
end
 
local function getRemoteGlobalModificationState()
	return ((globals.get_int(1683531+793) == 1) and
	(globals.get_int(1683531+470) == 1))
end
 
local function BlockSocialclubSpam(bool)
	blockSocialClubSpamState = bool
end
 
local function getBlockSocialClubSpamState()
	return blockSocialClubSpamState
end
 
 
 
local function All(bool) 
	Activity(bool)
	Bounty(bool)
	CeoKick(bool)
	CeoBan(bool)
	SoundSpam(bool)
	InfiniteLoad(bool)
	PassiveMode(bool)
	TransactionError(bool)
	RemoveMoneyMessage(bool)
	ClearWanted(bool)
	OffTheRadar(bool)
	PersonalVehicleDestroy(bool)
	SendCutscene(bool)
	Godmode(bool)
	Collectibles(bool)
	ExtraTeleport(bool)
	KickCrashes(bool)
	RemoteGlobalModification(bool)
	BlockSocialclubSpam(bool)
end
 
pro:add_toggle("Activate All", function()
	return boolall
end, function()
	boolall = not boolall
	All(boolall)
end)
Text("--")
pro:add_toggle("Block Start Activity", function() --Credits to YimMenu
	return globals.get_bool(1683531+584)
end, function()
	Activity(not globals.get_bool(1683531+584))
end)
 
pro:add_toggle("Block Bounty", function()
	return globals.get_bool(1683531+65)
end, function()
	Bounty(not globals.get_bool(1683531+65))
end)
 
 
pro:add_toggle("Block Socialclub Spam", function()
	return getBlockSocialClubSpamState()
end, function(value)
	BlockSocialclubSpam(value)
end)
 
pro:add_toggle("Block Remote Global Modification", function()
	return getRemoteGlobalModificationState()
end, function()
	RemoteGlobalModification(not getRemoteGlobalModificationState())
end)
 
pro:add_toggle("Block Some Kicks&&Crashes", function()
	return getKickCrashesState()
end, function()
	KickCrashes(not getKickCrashesState())
end)
 
pro:add_toggle("Block Ceo Kick", function()
	return globals.get_bool(1683531+556)
end, function()
	CeoKick(not globals.get_bool(1683531+556))
end)
 
pro:add_toggle("Block Ceo Ban", function()
	return globals.get_bool(1683531+578) 
end, function()
	CeoBan(not globals.get_bool(1683531+578))
end)
 
pro:add_toggle("Block Sound Spam", function()
	return getSoundSpamState()
end, function()
	SoundSpam(not getSoundSpamState())
end)
 
pro:add_toggle("Block Infinite Loadingscreen", function()
	return getInfiniteLoadState()
end, function()
	InfiniteLoad(not getInfiniteLoadState())
end)
 
pro:add_toggle("Block Passive Mode", function()
	return globals.get_bool(1683531+568) 
end, function()
	PassiveMode(not globals.get_bool(1683531+568))
end)
 
pro:add_toggle("Block Transaction Error", function()
	return globals.get_bool(1683531+369)
end, function()
	TransactionError(not globals.get_bool(1683531+369))
end)
 
pro:add_toggle("Block Modded Notifys/SMS", function()
	return getRemoveMoneyMessageState()
end, function()
	RemoveMoneyMessage(not getRemoveMoneyMessageState())
end)
 
pro:add_toggle("Block Clear Wanted", function()
	return globals.get_bool(1683531+510)
end, function()
	ClearWanted(not globals.get_bool(1683531+510))
end)
 
pro:add_toggle("Block Off The Radar", function()
	return globals.get_bool(1683531+512)
end, function()
	OffTheRadar(not globals.get_bool(1683531+512))
end)
 
pro:add_toggle("Block Personal Vehicle Destroy", function()
	return getPersonalVehicleDestroyState()
end, function()
	PersonalVehicleDestroy(not getPersonalVehicleDestroyState())
end)
 
pro:add_toggle("Block Send to Cutscene", function()
	return globals.get_bool(1683531+805)
end, function()
	SendCutscene(not globals.get_bool(1683531+805))
end)
 
pro:add_toggle("Block Remove Godmode", function()
	return globals.get_bool(1683531+2)
end, function()
	Godmode(not globals.get_bool(1683531+2))
end)
 
pro:add_toggle("Block Give Collectibles", function()
	return globals.get_bool(1683531+815)
end, function()
	Collectibles(not globals.get_bool(1683531+815))
end)
 
pro:add_toggle("Block Cayo && Beach Teleport", function()
	return getExtraTeleportState()
end, function()
	ExtraTeleport(not getExtraTeleportState())
end)
 
 
function OnScriptsLoaded()
	local social_controller = script("social_controller")
	while true do
		if blockSocialClubSpamState then
			if social_controller:is_active() then
				social_controller:set_int(169, 0)
			end
		end
			
		-- Some sort of sleep is mandatory so other code can be executed (menu get/set and other triggers)
		sleep(1)
	end
end
 
menu.register_callback('OnScriptsLoaded', OnScriptsLoaded)

--[[                                                                                                                                                                        
████████╗██████╗  ██████╗ ██╗     ██╗     ██╗███╗   ██╗ ██████╗ 
╚══██╔══╝██╔══██╗██╔═══██╗██║     ██║     ██║████╗  ██║██╔════╝ 
   ██║   ██████╔╝██║   ██║██║     ██║     ██║██╔██╗ ██║██║  ███╗
   ██║   ██╔══██╗██║   ██║██║     ██║     ██║██║╚██╗██║██║   ██║
   ██║   ██║  ██║╚██████╔╝███████╗███████╗██║██║ ╚████║╚██████╔╝
   ╚═╝   ╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚══════╝╚═╝╚═╝  ╚═══╝ ╚═════╝ 
                                                                
--]]

local Config = {}
Config.SubmenuStyle = false
Config.SlamType = 1
Config.SlamHeight = 1
Config.SlamTypes = { "Rhino", "Khanjali", "Halftrack" }
Config.VehicleSpawnGlobal = 2640095
Config.TrickOrTreatBase = 2640095
Config.TrickOrTreatType = Config.TrickOrTreatBase + 579
Config.TrickOrTreatTimer = Config.TrickOrTreatBase + 581
Config.TrickOrTreatTrigger = Config.TrickOrTreatBase + 581 + 1
Config.ExplodeTpBack = true
Config.VehicleTypes = {}
Config.VehicleTypes["Criminal Enterprises"] = {
	"Vigero2",
	"Sm722",
	"Omnisegt",
	"Conada",
	"Ruiner4",
	"Brioso3",
	"Corsita",
	"Kanjosj",
	"Postlude",
	"Torero2",
	"Lm87",
	"Tenf",
	"Rhinehart",
	"Weevil2",
	"Greenwood",
}
Config.VehicleTypes["Super"] = { "Krieger", "Prototipo", "T20" }
Config.VehicleTypes["Sports"] = { "Kuruma", "Kuruma2" }
Config.VehicleTypes["Sports Classic"] = { "Toreador", "Artdent", "Deluxo" }
Config.VehicleTypes["Millitary"] = { "Rhino", "Khanjali", "Halftrack" }
Config.VehicleTypes["Bikes"] = { "Oppressor", "Oppressor2", "Akuma" }
Config.VehicleTypes["Planes"] = { "Hydra", "Lazer", "Titan", "Cargoplane" }

local function null() end

local function Text(submenu, text)
	if submenu ~= nil then
		submenu:add_action(text, null)
	else
		menu.add_action(text, null)
	end
end

local function sqrt(i)
	return math.sqrt(i)
end

local function DistanceToSqr(vec1, vec2)
	return ((vec2.x - vec1.x) ^ 2) + ((vec2.y - vec1.y) ^ 2) + ((vec2.z - vec1.z) ^ 2)
end

local function Distance(vec1, vec2)
	return sqrt(DistanceToSqr(vec1, vec2))
end

local function floor(num)
	return math.floor(num)
end

local function clamp(num, min, max)
	if num > max then
		return max
	elseif num < min then
		return min
	else
		return num
	end
end
-- Player / Ped functions

local function IsPlayer(ped)
	if ped == nil or ped:get_pedtype() >= 4 then
		return false
	end
	return true
end

local function IsNPC(ped)
	if ped == nil or ped:get_pedtype() < 4 then
		return false
	end
	return true
end

local function IsModder(ply)
	if not IsPlayer(ply) then
		return false
	end

	if ply:get_max_health() < 100 then
		return true
	end
	if ply:is_in_vehicle() and ply:get_godmode() then
		return true
	end
	if ply:get_run_speed() > 1.0 or ply:get_swim_speed() > 1.0 then
		return true
	end

	return false
end

local function GetPlayerCount()
	return player.get_number_of_players()
end

local function createVehicle(modelhash, pos)
	globals.set_int(Config.VehicleSpawnGlobal + 46, modelhash)
	globals.set_float(Config.VehicleSpawnGlobal + 42, pos.x)
	globals.set_float(Config.VehicleSpawnGlobal + 43, pos.y)
	globals.set_float(Config.VehicleSpawnGlobal + 44, pos.z)
	globals.set_boolean(Config.VehicleSpawnGlobal + 41, true)
end

local function GiveVehicle(ply, model)
	if not ply or ply == nil then
		return
	end
	local pos = ply:get_position()
	local heading = ply:get_heading()
	createVehicle(joaat(model), pos + heading * 10)
end

local function TeleportToPlayer(ply, seconds)
	if not ply or ply == nil then
		return
	end
	local pos = ply:get_position()
	if seconds then
		if localplayer:is_in_vehicle() then
			return
		end

		local oldpos = localplayer:get_position()
		local oldgod = localplayer:get_godmode()
		local oldoffradar = menu.get_offradar()
		localplayer:set_godmode(true)
		menu.set_offradar(true)
		localplayer:set_freeze_momentum(true)
		localplayer:set_config_flag(292, true)
		localplayer:set_position(pos)

		sleep(seconds)

		localplayer:set_position(oldpos)
		localplayer:set_freeze_momentum(false)
		localplayer:set_config_flag(292, false)
		if not oldgod then
			localplayer:set_godmode(false)
		end
		if not oldoffradar then
			menu.set_offradar(false)
		end
		return
	end

	if not localplayer:is_in_vehicle() then
		localplayer:set_position(pos)
	else
		localplayer:get_current_vehicle():set_position(pos)
	end
end

local function TeleportVehiclesToPlayer(ply)
	if not ply or ply == nil then
		return
	end

	local pos = ply:get_position()
	local currentvehicle = nil

	if localplayer:is_in_vehicle() then
		currentvehicle = localplayer:get_current_vehicle()
	end

	for veh in replayinterface.get_vehicles() do
		if not currentvehicle or currentvehicle ~= veh then
			veh:set_position(pos)
		end
	end
end

local function TeleportClosestVehicleToPlayer(ply)
	if not ply or ply == nil then
		return
	end

	local pos = ply:get_position()
	local veh = localplayer:get_nearest_vehicle()
	if not veh then
		return
	end

	veh:set_position(pos)
end

local function TeleportPedsToPlayer(ply, dead)
	if not ply or ply == nil then
		return
	end

	local pos = ply:get_position()
	for ped in replayinterface.get_peds() do
		if IsNPC(ped) then
			if not ped:is_in_vehicle() then
				if dead then
					ped:set_health(0)
				end
				ped:set_position(pos)
			end
		end
	end
end

local function ExplodePlayer(ply)
	if not ply or ply == nil then
		return
	end

	local pos = ply:get_position()
	local currentvehicle = nil

	if localplayer:is_in_vehicle() then
		currentvehicle = localplayer:get_current_vehicle()
	end

	for veh in replayinterface.get_vehicles() do
		if not currentvehicle or currentvehicle ~= veh then
			veh:set_rotation(vector3(0, 0, 180))
			veh:set_health(-1)
			veh:set_position(pos)
		end
	end
end

local function TeleportToAndExplode(ply, mode, bool)
	if not ply or ply == nil then
		return
	end

	local currentvehicle = nil

	local oldpos = localplayer:get_position()
	local oldgod = localplayer:get_godmode()
	local oldoffradar = menu.get_offradar()

	localplayer:set_godmode(true)
	menu.set_offradar(true)

	if mode == 0 then
		localplayer:set_freeze_momentum(true)
		localplayer:set_config_flag(292, true)
		local pos = ply:get_position()
		localplayer:set_position(pos)
		sleep(0.05)
		globals.set_int(Config.TrickOrTreatType, 0)
		globals.set_int(Config.TrickOrTreatTimer, 1000000)
		globals.set_int(Config.TrickOrTreatTrigger, 1)
	else
		globals.set_int(Config.TrickOrTreatType, 1)
		globals.set_int(Config.TrickOrTreatTimer, 1000000)
		globals.set_int(Config.TrickOrTreatTrigger, 1)
		localplayer:set_freeze_momentum(true)
		localplayer:set_config_flag(292, true)
		sleep(2)
		local pos = ply:get_position()
		localplayer:set_position(pos)
	end
	sleep(1)

	if bool then
		localplayer:set_position(oldpos)
	end
	localplayer:set_freeze_momentum(false)
	localplayer:set_config_flag(292, false)
	if not oldgod then
		localplayer:set_godmode(false)
	end
	if not oldoffradar then
		menu.set_offradar(false)
	end
end

local function LaunchPlayer(ply)
	if not ply or ply == nil then
		return
	end

	local currentvehicle = nil

	if localplayer:is_in_vehicle() then
		currentvehicle = localplayer:get_current_vehicle()
	end
	local i = 0
	for veh in replayinterface.get_vehicles() do
		if not currentvehicle or currentvehicle ~= veh then
			local pos = ply:get_position()
			veh:set_rotation(vector3(0, 0, 0))
			veh:set_gravity(-100)
			veh:set_position(vector3(pos.x, pos.y, pos.z - 20))
		end
	end
	sleep(1)
	for veh in replayinterface.get_vehicles() do
		if not currentvehicle or currentvehicle ~= veh then
			local pos = ply:get_position()
			veh:set_gravity(9.8)
		end
	end
end

local function SlamPlayer(ply, model)
	if not ply or ply == nil then
		return
	end

	if model then
		createVehicle(joaat(model), ply:get_position() + vector3(0, 0, 10 * Config.SlamHeight))
		return
	end

	local currentvehicle = nil

	if localplayer:is_in_vehicle() then
		currentvehicle = localplayer:get_current_vehicle()
	end
	local i = 0
	for veh in replayinterface.get_vehicles() do
		if not currentvehicle or currentvehicle ~= veh then
			local pos = ply:get_position()
			veh:set_rotation(vector3(0, 0, 0))
			veh:set_gravity(10000)
			veh:set_position(vector3(pos.x, pos.y, pos.z + 10 * Config.SlamHeight))
		end
	end
	sleep(1)
	for veh in replayinterface.get_vehicles() do
		if not currentvehicle or currentvehicle ~= veh then
			local pos = ply:get_position()
			veh:set_gravity(9.8)
		end
	end
end

local selectedplayer = -1

local function f_p_o(ply_id, ply, ply_name)
	local text = ""

	if player.get_player_ped(ply_id) == nil then
		return "**Invalid**"
	end

	-- Player Name
	if ply == localplayer then
		text = text .. "YOU"
	else
		text = text .. ply_name
	end

	if IsModder(ply) then
		text = text .. "*"
	end

	if ply:get_godmode() then
		text = text .. " | God"
	else
		local max_hp = ply:get_max_health()
		text = text .. " | " .. floor(clamp((ply:get_health() - 100), 0, max_hp) / (max_hp - 100) * 100) .. "\u{2665}"
		local armour = ply:get_armour()
		if armour > 0 then
			text = text .. " | " .. floor(ply:get_armour()) .. "\u{1f455}"
		end
	end

	-- Is In Vehicle
	if ply:is_in_vehicle() then
		text = text .. " | \u{1F697}"
	end

	-- Player Wanted Level
	local wanted = ply:get_wanted_level()

	if wanted > 0 then
		text = text .. " | " .. wanted .. "\u{2730}"
	end

	text = text .. " | " .. floor(Distance(ply:get_position(), localplayer:get_position())) .. " m"

	return text
end

local function add_player_option(submenu, ply_id, ply, ply_name)
	local text = f_p_o(ply_id, ply, ply_name)

	local d = ply_id

	if submenu ~= nil then
		submenu:add_bare_item(text, function()
			return f_p_o(ply_id, ply, ply_name) .. "|" .. (selectedplayer == ply_id and "\u{2713}" or "\u{25A1}")
		end, function()
			selectedplayer = d
		end, null, null)
	else
		menu.add_bare_item(text, function()
			return f_p_o(ply_id, ply, ply_name) .. "|" .. (selectedplayer == ply_id and "\u{2713}" or "\u{25A1}")
		end, function()
			selectedplayer = d
		end, null, null)
	end
end

local function add_info_option(submenu, text, funcget, forceplayer)
	local func = function()
		local ply = player.get_player_ped(forceplayer and forceplayer or selectedplayer)
		if not ply then
			return text .. ": **Invalid**"
		end

		return text .. ": " .. funcget(ply)
	end

	if submenu ~= nil then
		submenu:add_bare_item(text .. ": ", func, null, null, null)
	else
		menu.add_bare_item(text .. ": ", func, null, null, null)
	end
end

local L7NEGPL = nil
local was_opened = true

local function BuildListSub()
	L7NEGPL:add_bare_item("---Player List " .. GetPlayerCount() .. " Players---", function()
		was_opened = true
		return "---Player List, " .. GetPlayerCount() .. " Players---"
	end, null, null, null)

	add_info_option(subtp, "Player", function()
		return player.get_player_name(selectedplayer)
	end)
	subtp:add_action("Teleport To Player", function()
		TeleportToPlayer(player.get_player_ped(selectedplayer))
	end)
	subtp:add_int_range("Teleport To Player Then Back", 1, 1, 5, function()
		return 2
	end, function(n)
		TeleportToPlayer(player.get_player_ped(selectedplayer), n)
	end)
	subtp:add_action("Teleport Closest Vehicle To Player", function()
		TeleportClosestVehicleToPlayer(player.get_player_ped(selectedplayer))
	end)
	subtp:add_action("Teleport Vehicles To Player", function()
		TeleportVehiclesToPlayer(player.get_player_ped(selectedplayer))
	end)
	subtp:add_action("Teleport Peds To Player", function()
		TeleportPedsToPlayer(player.get_player_ped(selectedplayer))
	end)
	subtp:add_action("Teleport Dead Peds To Player", function()
		TeleportPedsToPlayer(player.get_player_ped(selectedplayer), true)
	end)

	add_info_option(subtroll, "Player", function()
		return player.get_player_name(selectedplayer)
	end)
	subtroll:add_action("Cash Drop Player", function()
		PedDrop(player.get_player_ped(selectedplayer))
	end)
	subtroll:add_action("Crash Player ", function()
		Crash_Player(player.get_player_ped(selectedplayer))
	end)
	subtroll:add_action("Launch Player", function()
		LaunchPlayer(player.get_player_ped(selectedplayer))
	end)
	subtroll:add_action("Slam Player", function()
		SlamPlayer(player.get_player_ped(selectedplayer))
	end)
	subtroll:add_toggle("Teleport Myself Back", function()
		return Config.ExplodeTpBack
	end, function(v)
		Config.ExplodeTpBack = v
	end)
	subtroll:add_action("Explode Player (Cars Rush)", function()
		ExplodePlayer(player.get_player_ped(selectedplayer))
	end)
	subtroll:add_action("Explode Player", function()
		ExplodePlayer(player.get_player_ped(selectedplayer))
	end)
	subtroll:add_array_item("Slam Player Using", Config.SlamTypes, function()
		return Config.SlamType
	end, function(value)
		Config.SlamType = value
		SlamPlayer(player.get_player_ped(selectedplayer), Config.SlamTypes[value])
	end)
	subtroll:add_int_range("Slam Height", 1, 0, 10, function()
		return Config.SlamHeight
	end, function(v)
		Config.SlamHeight = v
	end)

	add_info_option(subgiveveh, "Player", function()
		return player.get_player_name(selectedplayer)
	end, nil, enterfunc)
	for name, array in pairs(Config.VehicleTypes) do
		local sub = subgiveveh:add_submenu(name)
		for k, model in pairs(array) do
			sub:add_action(model, function()
				GiveVehicle(player.get_player_ped(selectedplayer), model)
			end)
		end
	end

	add_info_option(subinfo, "Player", function()
		return player.get_player_name(selectedplayer)
	end)
	add_info_option(subinfo, "Distance from you", function(p)
		return floor(Distance(p:get_position(), localplayer:get_position())) .. " m"
	end)
	add_info_option(subinfo, "Health", function(p)
		return floor(clamp((p:get_health() - 100), 0, p:get_max_health()) / (p:get_max_health() - 100) * 100)
	end)
	add_info_option(subinfo, "Armour", function(p)
		return floor(p:get_armour())
	end)
	add_info_option(subinfo, "Is In Vehicle", function(p)
		return (p:is_in_vehicle() and "Yes" or "No")
	end)
	add_info_option(subinfo, "Vehicle Health", function(p)
		return (
			(p:is_in_vehicle() and p:get_current_vehicle() ~= nil)
				and floor(p:get_current_vehicle():get_health() / (p:get_current_vehicle():get_max_health()) * 100)
			or 0
		)
	end)
	add_info_option(subinfo, "Is In GodMode", function(p)
		return (p:get_godmode() and "Yes" or "No")
	end)
	add_info_option(subinfo, "Is Modder", function(p)
		return (IsModder(p) and "Yes" or "No")
	end)
	add_info_option(subinfo, "X", function(p)
		return p:get_position().x
	end)
	add_info_option(subinfo, "Y", function(p)
		return p:get_position().y
	end)
	add_info_option(subinfo, "Z", function(p)
		return p:get_position().z
	end)
end

local function BuildList()
	L7NEGPL:add_bare_item("---Player List " .. GetPlayerCount() .. " Players---", function()
		was_opened = true
		return "---Player List, " .. GetPlayerCount() .. " Players---"
	end, null, null, null)

	for i = 0, 31 do
		local ply = player.get_player_ped(i)
		if ply then
			add_player_option(L7NEGPL, i, ply, player.get_player_name(i))
		end
	end

	Text(L7NEGPL, "---End---")

	local subtp = L7NEGPL:add_submenu("Teleport Options")
	local subtroll = L7NEGPL:add_submenu("Trolling Options")
	local subgiveveh = L7NEGPL:add_submenu("Spawn Vehicle")
	local subinfo = L7NEGPL:add_submenu("Player Info")

	add_info_option(subtp, "Player", function()
		return player.get_player_name(selectedplayer)
	end)

	subtp:add_action("Teleport To Player", function()
		TeleportToPlayer(player.get_player_ped(selectedplayer))
	end)
	subtp:add_int_range("Teleport To Player Then Back", 1, 1, 5, function()
		return 2
	end, function(n)
		TeleportToPlayer(player.get_player_ped(selectedplayer), n)
	end)
	subtp:add_action("Teleport Closest Vehicle To Player", function()
		TeleportClosestVehicleToPlayer(player.get_player_ped(selectedplayer))
	end)
	subtp:add_action("Teleport Vehicles To Player", function()
		TeleportVehiclesToPlayer(player.get_player_ped(selectedplayer))
	end)
	subtp:add_action("Teleport Peds To Player", function()
		TeleportPedsToPlayer(player.get_player_ped(selectedplayer))
	end)
	subtp:add_action("Teleport Dead Peds To Player", function()
		TeleportPedsToPlayer(player.get_player_ped(selectedplayer), true)
	end)

	add_info_option(subtroll, "Player", function()
		return player.get_player_name(selectedplayer)
	end)

	subtroll:add_action("Launch Player", function()
		LaunchPlayer(player.get_player_ped(selectedplayer))
	end)
	subtroll:add_action("Slam Player", function()
		SlamPlayer(player.get_player_ped(selectedplayer))
	end)
	subtroll:add_action("Explode Player", function()
		ExplodePlayer(player.get_player_ped(selectedplayer))
	end)
	subtroll:add_array_item("Slam Player Using", Config.SlamTypes, function()
		return Config.SlamType
	end, function(value)
		Config.SlamType = value
		SlamPlayer(player.get_player_ped(selectedplayer), Config.SlamTypes[value])
	end)
	subtroll:add_int_range("Slam Height", 1, 0, 10, function()
		return Config.SlamHeight
	end, function(v)
		Config.SlamHeight = v
	end)
	subtroll:add_toggle("Teleport Myself Back", function()
		return Config.ExplodeTpBack
	end, function(v)
		Config.ExplodeTpBack = v
	end)
	subtroll:add_action("Explode Player (Cars Rush)", function()
		ExplodePlayer(player.get_player_ped(selectedplayer))
	end)

	add_info_option(subgiveveh, "Player", function()
		return player.get_player_name(selectedplayer)
	end, nil, enterfunc)
	for name, array in pairs(Config.VehicleTypes) do
		local sub = subgiveveh:add_submenu(name)
		for k, model in pairs(array) do
			sub:add_action(model, function()
				GiveVehicle(player.get_player_ped(selectedplayer), model)
			end)
		end
	end

	add_info_option(subinfo, "Player", function()
		return player.get_player_name(selectedplayer)
	end)
	add_info_option(subinfo, "Distance from you", function(p)
		return floor(Distance(p:get_position(), localplayer:get_position())) .. " m"
	end)
	add_info_option(subinfo, "Health", function(p)
		return floor(clamp((p:get_health() - 100), 0, p:get_max_health()) / (p:get_max_health() - 100) * 100)
	end)
	add_info_option(subinfo, "Armour", function(p)
		return floor(p:get_armour())
	end)
	add_info_option(subinfo, "Is In Vehicle", function(p)
		return (p:is_in_vehicle() and "Yes" or "No")
	end)
	add_info_option(subinfo, "Vehicle Health", function(p)
		return (
			(p:is_in_vehicle() and p:get_current_vehicle() ~= nil)
				and floor(p:get_current_vehicle():get_health() / (p:get_current_vehicle():get_max_health()) * 100)
			or 0
		)
	end)
	add_info_option(subinfo, "Is In GodMode", function(p)
		return (p:get_godmode() and "Yes" or "No")
	end)
	add_info_option(subinfo, "Is Modder", function(p)
		return (IsModder(p) and "Yes" or "No")
	end)
	add_info_option(subinfo, "X", function(p)
		return p:get_position().x
	end)
	add_info_option(subinfo, "Y", function(p)
		return p:get_position().y
	end)
	add_info_option(subinfo, "Z", function(p)
		return p:get_position().z
	end)
end

function Update()
	L7NEGPL:clear()
	if Config.SubmenuStyle then
		BuildListSub()
	else
		BuildList()
	end
end

L7NEGPL = mainMenu:add_submenu("Online Players", Update)

--[[                                                                                                                                                                        
███████╗ █████╗ ███████╗███████╗    ██╗      ██████╗  ██████╗ ██████╗ 
██╔════╝██╔══██╗██╔════╝██╔════╝    ██║     ██╔═══██╗██╔═══██╗██╔══██╗
███████╗███████║█████╗  █████╗      ██║     ██║   ██║██║   ██║██████╔╝
╚════██║██╔══██║██╔══╝  ██╔══╝      ██║     ██║   ██║██║   ██║██╔═══╝ 
███████║██║  ██║██║     ███████╗    ███████╗╚██████╔╝╚██████╔╝██║     
╚══════╝╚═╝  ╚═╝╚═╝     ╚══════╝    ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝     
                                                                --]]

local isRunning = false
local function safeLoop(state)
    while state do
        stats.set_int("MP0_CLUB_POPULARITY", 1000)
        stats.set_int("MP0_CLUB_PAY_TIME_LEFT", -1)
        sleep(1.5)
        stats.set_int("MP0_CLUB_POPULARITY", 1000)
        stats.set_int("MP0_CLUB_PAY_TIME_LEFT", -1)
        sleep(1.5)
        stats.set_int("MP0_CLUB_POPULARITY", 1000)
        stats.set_int("MP0_CLUB_PAY_TIME_LEFT", -1)
        sleep(1.5)
        stats.set_int("MP0_CLUB_POPULARITY", 1000)
        stats.set_int("MP0_CLUB_PAY_TIME_LEFT", -1)
        sleep(1.5)
        stats.set_int("MP0_CLUB_POPULARITY", 1000)
        stats.set_int("MP0_CLUB_PAY_TIME_LEFT", -1)
        sleep(4)
    end
end
 
submenuSafe = mainMenu:add_submenu("Safe loop")

submenuSafe:add_toggle(
    "Nightclub Safe Abuse $250k/10s (AFK)",
    function()
        return isRunning
    end,
    function()
        isRunning = not isRunning
        safeLoop(isRunning)
    end
)

--[[


████████╗██╗░░██╗░█████╗░███╗░░██╗██╗░░██╗  ██╗░░░██╗░█████╗░██╗░░░██╗
╚══██╔══╝██║░░██║██╔══██╗████╗░██║██║░██╔╝  ╚██╗░██╔╝██╔══██╗██║░░░██║
░░░██║░░░███████║███████║██╔██╗██║█████═╝░  ░╚████╔╝░██║░░██║██║░░░██║
░░░██║░░░██╔══██║██╔══██║██║╚████║██╔═██╗░  ░░╚██╔╝░░██║░░██║██║░░░██║
░░░██║░░░██║░░██║██║░░██║██║░╚███║██║░╚██╗  ░░░██║░░░╚█████╔╝╚██████╔╝
░░░╚═╝░░░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚══╝╚═╝░░╚═╝  ░░░╚═╝░░░░╚════╝░░╚═════╝░
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤
⣿⡁⠶⢶⡖⠒⠒⠒⠒⠒⠒⠒⠖⣲⠶⠆⣿⣿⡇⠶⢶⣖⠒⠒⠒⢒⡶⠶⠀⣿
⠛⠛⠻⢦⡙⣦⡀⠀⠀⠀⠀⠀⢰⠡⣾⣿⣿⣿⣿⣿⣶⠘⡆⠀⡴⢫⡶⠛⠛⠛
⠀⠀⠀⠀⢹⡼⢷⡄⠀⠀⠀⠀⠘⣆⢻⣿⣿⣿⣿⣿⡟⣰⡇⡞⣱⠟⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠹⡌⢿⡄⠀⠀⠀⠀⠘⣆⢻⣿⣿⣿⡿⣱⣿⡞⣰⡟⠀⠀⠀⠀⠀				░░███╗░░░░░░█████╗░███████╗
⠀⠀⠀⠀⠀⠀⠹⣌⢻⡄⠀⠀⠀⠀⠘⣆⢻⣿⡿⢡⣿⡟⢠⡟⠀⠀⠀⠀⠀				░████║░░░░░██╔═══╝░╚════██║
⠀⠀⠀⠀⠀⠀⠀⠹⣆⢻⣄⠀⠀⠀⠀⠘⢆⠻⢣⣿⡿⢡⡟⠀					 ██╔██║░░░░░██████╗░░░░░██╔╝⠀⠀⠀	
⠀⠀⠀⠀⠀⠀⠀⠀⠹⣆⢻⣆⠀⠀⠀⠀⠈⢦⣾⡿⢡⡟⠀⠀⠀⠀⠀⠀⠀⠀				╚═╝██║░░░░░██╔══██╗░░░██╔╝░
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣆⢻⣆⠀⠀⠀⠀⠀⢻⢡⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀				███████╗██╗╚█████╔╝░░██╔╝░░
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣦⢻⣆⠀⠀⠀⢰⢃⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀				╚══════╝╚═╝░╚════╝░░░╚═╝░░░
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣧⢻⣆⠀⢠⢃⡾⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣧⠹⠦⠃⣾⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠛⠛⠛⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀

▀▀█▀▀ █░░█ █▀▀█ █▀▀█ █▀▀▄ █▀▀ █▀▀▄ 　 ▒█▀▀█ █▀▀█ █▀▄▀█ █▀▄▀█ █░░█ █▀▀▄ ░▀░ ▀▀█▀▀ █░░█ https://dsc.gg/thorben_
░▒█░░ █▀▀█ █░░█ █▄▄▀ █▀▀▄ █▀▀ █░░█ 　 ▒█░░░ █░░█ █░▀░█ █░▀░█ █░░█ █░░█ ▀█▀ ░░█░░ █▄▄█ 
░▒█░░ ▀░░▀ ▀▀▀▀ ▀░▀▀ ▀▀▀░ ▀▀▀ ▀░░▀ 　 ▒█▄▄█ ▀▀▀▀ ▀░░░▀ ▀░░░▀ ░▀▀▀ ▀░░▀ ▀▀▀ ░░▀░░ ▄▄▄█ 
	December 29, 2022
]]
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
--                                                                                      --
--                          ||       ||   ||        |||  ||||||||         ||            --
--                         ||||      ||  ||        ||||        ||  	      ||			--
--                        ||  ||     || ||        || ||       ||          ||			--
--                       ||||||||    ||||        |||||||     ||     ||||||||||||||  	--
--                      ||      ||   || ||           ||     ||         	  ||			--
--                     ||        ||  ||  ||          ||    ||        	  ||			--
--                    ||          || ||   ||         ||   ||         	  ||			--
--                                                                                      --
------------------------------------------------------------------------------------------
--																						--
--						  	 		   > [ERROR]										--
--									   > [Arrays]		   								--
--									   > [Attachments]				    				--
--									   > [Override]				    					--
--									   > [Adds] 										--
--									   > [Forbids] 										--
--									   > [Stance]										--
--									   > [Underbarrel] 							    	--
--									   > [Tweaks] 										--
--									   > [WIP] 											--
--																						--
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------


-----------------------------------------------------------
----<A><K><E><X><T><R><A> -ERROR- <A><K><E><X><T><R><A>----
-----------------------------------------------------------

Hooks:PostHook( WeaponFactoryTweakData, "init", "AK47EXTRAModInit", function(self)

------------------------------------------------------------
----<A><K><E><X><T><R><A> -Arrays- <A><K><E><X><T><R><A>----
------------------------------------------------------------

if ( self.wpn_fps_ass_heffy_762 ) then
--- Stocks ---
local all_akex_stock = {
	"wpn_fps_ass_heffy_all_st_moe",
	"wpn_fps_ass_heffy_all_sad_alpha",
	"wpn_fps_ass_heffy_all_st_sho",
	"wpn_fps_ass_heffy_all_st_pkm"
}
--- Stock Pads ---
local all_akex1_stockpad = {
	"wpn_fps_ass_heffy_all_stpa_gl"
}
--- Fore Grip ---
-- Upper --
local all_akex_lowerforegrip = {
	"wpn_fps_ass_heffy_all_lfg_moe",
	"wpn_fps_ass_heffy_all_lfg_honor",
	"wpn_fps_ass_heffy_all_lfg_zenit",
	"wpn_fps_ass_heffy_all_lfg_warrior",
}
-- Lower --
local all_akex_upperforegrip = {
	"wpn_fps_ass_heffy_all_ufg_heat",
	"wpn_fps_ass_heffy_all_ufg_moe",
	"wpn_fps_ass_heffy_all_ufg_ulti",
	"wpn_fps_ass_heffy_all_ufg_honor",
	"wpn_fps_ass_heffy_all_ufg_zenit",
}

--- Barrel ---
-- Default length --

--- Front Sights ---
local all_akex_fo = {
	"wpn_fps_ass_heffy_556_fo_ak101"
}
--- Rear Sights ---
local all_akex_ro = {
	"wpn_fps_ass_heffy_all_ro_ins",
	"wpn_fps_ass_heffy_all_ro_blops",
}

--- Barrel Extensions --
local all_akex_ext = {
	"wpn_fps_upg_ns_ass_smg_large",
	"wpn_fps_upg_ns_ass_smg_medium",
	"wpn_fps_upg_ns_ass_smg_small",
	"wpn_fps_upg_ns_ass_smg_firepig",
	"wpn_fps_upg_ns_ass_smg_stubby",
	"wpn_fps_upg_ns_ass_smg_tank",
	"wpn_fps_upg_ns_ass_pbs1",
	"wpn_fps_upg_ass_ns_jprifles",
	"wpn_fps_upg_ass_ns_linear",
	"wpn_fps_upg_ass_ns_surefire",
	"wpn_fps_upg_ass_ns_battle"
}

--- Gadgets (Flashlights/Lasers) ---
local all_akex_fl = {
	"wpn_fps_upg_fl_ass_smg_sho_peqbox",
	"wpn_fps_upg_fl_ass_smg_sho_surefire",
	"wpn_fps_upg_fl_ass_peq15",
	"wpn_fps_upg_fl_ass_laser",
	"wpn_fps_upg_fl_ass_utg",
	"wpn_fps_addon_ris"
}

--- Sights ---
local all_akex_sight = {
	"wpn_fps_upg_o_specter",
	"wpn_fps_upg_o_aimpoint",
	"wpn_fps_upg_o_aimpoint_2",
	"wpn_fps_upg_o_docter",
	"wpn_fps_upg_o_eotech",
	"wpn_fps_upg_o_t1micro",
	"wpn_fps_upg_o_cmore",
	"wpn_fps_upg_o_acog",
	"wpn_fps_upg_o_cs",
	"wpn_fps_upg_o_eotech_xps",
	"wpn_fps_upg_o_reflex",
	"wpn_fps_upg_o_rx01",
	"wpn_fps_upg_o_rx30",
	"wpn_fps_upg_o_spot"
}
local nonacog_aksight = {
	"wpn_fps_upg_o_specter",
	"wpn_fps_upg_o_aimpoint",
	"wpn_fps_upg_o_aimpoint_2",
	"wpn_fps_upg_o_docter",
	"wpn_fps_upg_o_eotech",
	"wpn_fps_upg_o_t1micro",
	"wpn_fps_upg_o_cmore",
	"wpn_fps_upg_o_cs",
	"wpn_fps_upg_o_eotech_xps",
	"wpn_fps_upg_o_reflex",
	"wpn_fps_upg_o_rx01",
	"wpn_fps_upg_o_rx30",
	"wpn_fps_upg_o_spot"
}

--- Grips ---
local all_akex_grips = {
	"wpn_fps_ass_heffy_all_pg_moe",
	"wpn_fps_ass_heffy_all_pg_rk3",
	"wpn_fps_ass_heffy_all_pg_rub",
	"wpn_fps_ass_heffy_all_pg_sco",
	"wpn_fps_ass_heffy_all_pg_akmwood"
}

------------------------
---- END ARRAYS END ----
------------------------


--- Lower ---
local all_ak47lower = {
	"wpn_fps_ass_heffy_762_lr_akm",
	"wpn_fps_ass_heffy_762_lr_rpk",
	"wpn_fps_ass_heffy_762_lr_vepr",
	"wpn_fps_ass_heffy_762_lr_ak103",
	"wpn_fps_ass_heffy_762_lr_ak47",
	"wpn_fps_ass_heffy_762_lr_akmsu",
	"wpn_fps_ass_heffy_762_lr_m92"
}
local akmlower = {
	"wpn_fps_ass_heffy_762_lr_akm",
	"wpn_fps_ass_heffy_762_lr_rpk",
	"wpn_fps_ass_heffy_762_lr_vepr"
}
local akmsulower = {
	"wpn_fps_ass_heffy_762_lr_ak103",
	"wpn_fps_ass_heffy_762_lr_akmsu",
	"wpn_fps_ass_heffy_762_lr_m92"
}

--- Stocks ---
local all_ak47stock = {
	"wpn_fps_ass_heffy_762_st_ak47",
	"wpn_fps_ass_heffy_762_st_akm",
	"wpn_fps_ass_heffy_762_st_akm_worn",
	"wpn_fps_ass_heffy_762_st_akms",
	"wpn_fps_ass_heffy_762_st_akmsu",
	"wpn_fps_ass_heffy_762_st_rpk",
	"wpn_fps_ass_heffy_762_st_ak103",
	"wpn_fps_ass_heffy_762_st_vepr",
	"wpn_fps_ass_heffy_762_st_bl_t56",
	"wpn_fps_ass_heffy_762_st_br_t56",
	"wpn_fps_ass_heffy_762_st_mpi",
	"wpn_fps_ass_heffy_762_st_2_mpi",
	"wpn_fps_ass_heffy_762_st_3_mpi",
	"wpn_fps_ass_heffy_762_st_amd63",
	"wpn_fps_ass_heffy_762_st_amd65",
	"wpn_fps_ass_heffy_762_st_tabuk",
	"wpn_fps_ass_heffy_762_st_rk62"
}
local akmstock = {
	"wpn_fps_ass_heffy_762_st_akm",
	"wpn_fps_ass_heffy_762_st_akms",
	"wpn_fps_ass_heffy_762_st_rpk",
	"wpn_fps_ass_heffy_762_st_ak103",
	"wpn_fps_ass_heffy_762_st_bl_t56",
	"wpn_fps_ass_heffy_762_st_br_t56",
	"wpn_fps_ass_heffy_762_st_mpi",
	"wpn_fps_ass_heffy_762_st_2_mpi",
	"wpn_fps_ass_heffy_762_st_3_mpi",
	"wpn_fps_ass_heffy_762_st_amd63",
	"wpn_fps_ass_heffy_762_st_amd65",
	"wpn_fps_ass_heffy_762_st_tabuk",
	"wpn_fps_ass_heffy_762_st_rk62"
}
--- Stock Pads ---
--[[
local akmstockpad = {
	"wpn_fps_ass_heffy_762_sp_mpi",
	"wpn_fps_ass_heffy_762_sp_2_mpi",
	"wpn_fps_ass_heffy_762_sp_akm",
	"wpn_fps_ass_heffy_762_sp_tabuk",
	"wpn_fps_ass_heffy_762_stp_mpi",
	"wpn_fps_ass_heffy_762_sp_amd63"
}
]]
--- Fore Grip ---
-- Default length --
local all_ak47lowerforegrip = {
	"wpn_fps_ass_heffy_762_lfg_ak47",
	"wpn_fps_ass_heffy_all_lfg_ak47",
	"wpn_fps_ass_heffy_762_lfg_akm",
	"wpn_fps_ass_heffy_762_lfg_akmsu",
	"wpn_fps_ass_heffy_762_lfg_rpk",
	"wpn_fps_ass_heffy_762_lfg_ak103",
	"wpn_fps_ass_heffy_762_lfg_vepr",
	"wpn_fps_ass_heffy_762_lfg_bl_t56",
	"wpn_fps_ass_heffy_762_lfg_br_t56",
	"wpn_fps_ass_heffy_762_lfg_mpi",
	"wpn_fps_ass_heffy_762_lfg_amd63",
	"wpn_fps_ass_heffy_762_lfg_m70",
	"wpn_fps_ass_heffy_762_lfg_m92",
	"wpn_fps_ass_heffy_762_lfg_none"
}
local ak47foregrip = {
	"wpn_fps_ass_heffy_all_lfg_ak47",
	"wpn_fps_ass_heffy_762_lfg_ak47",
	"wpn_fps_ass_heffy_762_lfg_akm",
	"wpn_fps_ass_heffy_762_lfg_akm_worn",
	"wpn_fps_ass_heffy_762_lfg_rpk",
	"wpn_fps_ass_heffy_762_lfg_ak103",
	"wpn_fps_ass_heffy_762_lfg_vepr",
	"wpn_fps_ass_heffy_762_lfg_bl_t56",
	"wpn_fps_ass_heffy_762_lfg_br_t56",
	"wpn_fps_ass_heffy_762_lfg_mpi",
	"wpn_fps_ass_heffy_762_lfg_mpi_wood",
	"wpn_fps_ass_heffy_762_lfg_amd63"
}
local all_ak47upperforegrip = {
	"wpn_fps_ass_heffy_all_ufg_ak47",
	"wpn_fps_ass_heffy_762_ufg_ak47",
	"wpn_fps_ass_heffy_762_ufg_akm",
	"wpn_fps_ass_heffy_762_ufg_akm_worn",
	"wpn_fps_ass_heffy_762_ufg_akmsu",
	"wpn_fps_ass_heffy_762_ufg_rpk",
	"wpn_fps_ass_heffy_762_ufg_ak103",
	"wpn_fps_ass_heffy_762_ufg_bl_t56",
	"wpn_fps_ass_heffy_762_ufg_br_t56",
	"wpn_fps_ass_heffy_762_ufg_mpi",
	"wpn_fps_ass_heffy_762_ufg_mpi_wood",
	"wpn_fps_ass_heffy_762_ufg_m70",
	"wpn_fps_ass_heffy_762_ufg_m92",
	"wpn_fps_ass_heffy_762_ufg_none"
}
--- Barrel ---
-- Default length --
local ak47barrel = {
	"wpn_fps_ass_heffy_762_ba_ak47",
	"wpn_fps_ass_heffy_762_ba_akm",
	"wpn_fps_ass_heffy_762_ba_t56",
	"wpn_fps_ass_heffy_762_ba_amd63",
	"wpn_fps_ass_heffy_762_ba_ak109"
}
local all_ak47barrel = {
	"wpn_fps_ass_heffy_762_ba_ak47",
	"wpn_fps_ass_heffy_762_ba_akm",
	"wpn_fps_ass_heffy_762_ba_akmsu",
	"wpn_fps_ass_heffy_762_ba_rpk",
	"wpn_fps_ass_heffy_762_ba_ak104",
	"wpn_fps_ass_heffy_762_ba_md90",
	"wpn_fps_ass_heffy_762_ba_vepr",
	"wpn_fps_ass_heffy_762_ba_t56",
	"wpn_fps_ass_heffy_762_ba_amd63",
	"wpn_fps_ass_heffy_762_ba_amd65",
	"wpn_fps_ass_heffy_762_ba_m92",
	"wpn_fps_ass_heffy_762_ba_tabuk",
	"wpn_fps_ass_heffy_762_ba_rk62",
	"wpn_fps_ass_heffy_762_ba_ak109"
}

--- Front Sights ---
local all_ak47fo = {
	"wpn_fps_ass_heffy_762_fo_akm"
}

--- Barrel Extensions --
local all_ak47ext = {
	"wpn_fps_upg_ns_ass_smg_large",
	"wpn_fps_upg_ns_ass_smg_medium",
	"wpn_fps_upg_ns_ass_smg_small",
	"wpn_fps_upg_ns_ass_smg_firepig",
	"wpn_fps_upg_ns_ass_smg_stubby",
	"wpn_fps_upg_ns_ass_smg_tank",
	"wpn_fps_upg_ns_ass_pbs1",
	"wpn_fps_upg_ass_ns_jprifles",
	"wpn_fps_upg_ass_ns_linear",
	"wpn_fps_upg_ass_ns_surefire",
	"wpn_fps_upg_ass_ns_battle",
	"wpn_fps_ass_heffy_762_fh_ak47",
	"wpn_fps_ass_heffy_762_fh_akm",
	"wpn_fps_ass_heffy_762_fh_akmsu",
	"wpn_fps_ass_heffy_762_fh_ak103",
	"wpn_fps_ass_heffy_762_fh_ak104",
	"wpn_fps_ass_heffy_762_fh_md90",
	"wpn_fps_ass_heffy_762_fh_t56",
	"wpn_fps_ass_heffy_762_fh_amd63",
	"wpn_fps_ass_heffy_762_fh_m70",
	"wpn_fps_ass_heffy_762_fh_m92",
	"wpn_fps_ass_heffy_762_fh_tabuk",
	"wpn_fps_ass_heffy_762_fh_rk62",
	"wpn_fps_ass_heffy_762_fh_dummy"
}

--- Gadgets (Flashlights/Lasers) ---
local all_ak47fl = {
	"wpn_fps_upg_fl_ass_smg_sho_peqbox",
	"wpn_fps_upg_fl_ass_smg_sho_surefire",
	"wpn_fps_upg_fl_ass_peq15",
	"wpn_fps_upg_fl_ass_laser",
	"wpn_fps_upg_fl_ass_utg",
	"wpn_fps_addon_ris"
}

--- Sights ---
local all_ak47sight = {
	"wpn_fps_upg_o_specter",
	"wpn_fps_upg_o_aimpoint",
	"wpn_fps_upg_o_aimpoint_2",
	"wpn_fps_upg_o_docter",
	"wpn_fps_upg_o_eotech",
	"wpn_fps_upg_o_t1micro",
	"wpn_fps_upg_o_cmore",
	"wpn_fps_upg_o_acog",
	"wpn_fps_upg_o_cs",
	"wpn_fps_upg_o_eotech_xps",
	"wpn_fps_upg_o_reflex",
	"wpn_fps_upg_o_rx01",
	"wpn_fps_upg_o_rx30",
	"wpn_fps_upg_o_spot"
}
local nonacog_aksight = {
	"wpn_fps_upg_o_specter",
	"wpn_fps_upg_o_aimpoint",
	"wpn_fps_upg_o_aimpoint_2",
	"wpn_fps_upg_o_docter",
	"wpn_fps_upg_o_eotech",
	"wpn_fps_upg_o_t1micro",
	"wpn_fps_upg_o_cmore",
	"wpn_fps_upg_o_cs",
	"wpn_fps_upg_o_eotech_xps",
	"wpn_fps_upg_o_reflex",
	"wpn_fps_upg_o_rx01",
	"wpn_fps_upg_o_rx30",
	"wpn_fps_upg_o_spot"
}

--- Grips ---
local all_ak47grips = {
	"wpn_fps_ass_heffy_762_pg_ak47",
	"wpn_fps_ass_heffy_762_pg_akm",
	"wpn_fps_ass_heffy_762_pg_ak103",
	"wpn_fps_ass_heffy_762_pg_bl_t56",
	"wpn_fps_ass_heffy_762_pg_br_t56",
	"wpn_fps_ass_heffy_762_pg_mpi",
	"wpn_fps_ass_heffy_762_pg_amd63",
	"wpn_fps_ass_heffy_762_pg_amd65",
	"wpn_fps_ass_heffy_762_pg_m92",
	"wpn_fps_ass_heffy_762_pg_rk62"
}
local akmgrips = {
	"wpn_fps_ass_heffy_762_pg_akm",
	"wpn_fps_ass_heffy_762_pg_ak103",
	"wpn_fps_ass_heffy_762_pg_bl_t56",
	"wpn_fps_ass_heffy_762_pg_br_t56",
	"wpn_fps_ass_heffy_762_pg_mpi",
	"wpn_fps_ass_heffy_762_pg_amd63",
	"wpn_fps_ass_heffy_762_pg_amd65",
	"wpn_fps_ass_heffy_762_pg_m92",
	"wpn_fps_ass_heffy_762_pg_rk62"
}

local all_ak47bipod = {
	"wpn_fps_ass_heffy_762_bp_rpk",
	"wpn_fps_ass_heffy_762_bp_rpk_folded"
}

-----------------------------
------ Combined Arrays ------
local non_grp_stock = {
	"wpn_fps_ass_heffy_762_st_2_mpi",
	"wpn_fps_ass_heffy_762_st_3_mpi",
	"wpn_fps_ass_heffy_762_st_amd65",
	"wpn_fps_ass_heffy_762_st_rk62",
	"wpn_fps_ass_heffy_762_st_rpk",
	"wpn_fps_ass_heffy_762_st_akms",
	"wpn_fps_ass_heffy_all_st_moe",
	"wpn_fps_ass_heffy_all_st_sho"
}
local combined_stockpad = {
	"wpn_fps_ass_heffy_all_stpa_gl"
}
-- add extra stocks into default stocks --
--for id, st_id in pairs(all_akex_stock) do 
--	table.insert(akmstock, st_id)
--end

-----------------------------------------------------------------
----<A><K><E><X><T><R><A> -Attachments- <A><K><E><X><T><R><A>----
-----------------------------------------------------------------
for _, part_id in pairs(ak_pack_extras_vanilla_attachments) do
	table.insert(self.wpn_fps_ass_heffy_762.uses_parts, part_id)
end
--------------------------------------------------------------
----<A><K><E><X><T><R><A> -Override- <A><K><E><X><T><R><A>----
--------------------------------------------------------------

--- Gun ---
--- Barrel ---
for id, ro_id in pairs(all_akex_ro) do 
	self.parts.wpn_fps_ass_heffy_762_ba_ak109.override[ro_id] = {a_obj = "a_ro_ak109"}
end

--- LFG ---
self:akpack_check_override( "part", "wpn_fps_ass_heffy_all_lfg_warrior" )
for id, ba_id in pairs(all_ak47barrel) do 
	self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override[ba_id] = {a_obj = "a_b_war"}
	self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override[ba_id].override   = self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override[ba_id].override or {}
end
-- Front sight overrides by lfgs --
for id, ba_id in pairs(ak47barrel) do
	for id, fo_id in pairs(all_ak47fo) do
		self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override[ba_id].override[fo_id] = {a_obj = "a_fo_war_std"}
	end
end
for id, fo_id in pairs(all_ak47fo) do
	self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_762_ba_rpk.override[fo_id] 	 = {a_obj = "a_fo_war_rpk"}
	self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_762_ba_tabuk.override[fo_id] = {a_obj = "a_fo_war_tabuk"}
	self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_762_ba_akmsu.override[fo_id] = {a_obj = "a_fo_war_akmsu"}
	self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_762_ba_m92.override[fo_id] 	 = {a_obj = "a_fo_war_m92"}
	self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_762_ba_ak104.override[fo_id] = {a_obj = "a_fo_war_ak104"}
	self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_762_ba_rk62.override[fo_id]  = {a_obj = "a_fo_war_rk62"}
	self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_762_ba_md90.override[fo_id]  = {a_obj = "a_fo_war_md90"}
	self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_762_ba_vepr.override[fo_id]  = {a_obj = "a_fo_war_vepr"}
	self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_762_ba_amd65.override[fo_id] = {a_obj = "a_fo_war_amd65"}
end
-- Barrel Extensions position override by lfgs --
for id, ba_id in pairs(ak47barrel) do
	for id, ext_id in pairs(all_ak47ext) do
		if ext_id ~= "wpn_fps_ass_heffy_762_fh_dummy" then
			self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override[ba_id].override[ext_id] = {a_obj = "a_ns_war_std"}
		end
	end
end
self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_762_ba_akm.override.wpn_fps_ass_heffy_762_fh_dummy 	 = {a_obj = "a_ns_war_std", unit="units/mods/weapons/wpn_fps_ass_heffy_762_akm_pts/wpn_fps_ass_heffy_762_fh_akm"}
self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_762_ba_t56.override.wpn_fps_ass_heffy_762_fh_dummy 	 = {a_obj = "a_ns_war_std", unit="units/mods/weapons/wpn_fps_ass_heffy_762_t56_pts/wpn_fps_ass_heffy_762_fh_t56"}
self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_762_ba_amd63.override.wpn_fps_ass_heffy_762_fh_dummy = {a_obj = "a_ns_war_std", unit="units/mods/weapons/wpn_fps_ass_heffy_762_ak47_pts/wpn_fps_ass_heffy_762_fh_ak47"}
self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_762_ba_ak47.override.wpn_fps_ass_heffy_762_fh_dummy  = {a_obj = "a_ns_war_std", unit="units/mods/weapons/wpn_fps_ass_heffy_762_ak47_pts/wpn_fps_ass_heffy_762_fh_ak47"}
self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_762_ba_ak109.override.wpn_fps_ass_heffy_762_fh_dummy = {a_obj = "a_ns_war_std", unit="units/mods/weapons/wpn_fps_ass_heffy_762_ak103_pts/wpn_fps_ass_heffy_762_fh_ak103"}

for id, ext_id in pairs(all_ak47ext) do
	if ext_id == "wpn_fps_ass_heffy_762_fh_dummy" then
		self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_762_ba_tabuk.override[ext_id] = {a_obj = "a_ns_war_tabuk", unit="units/mods/weapons/wpn_fps_ass_heffy_762_tabuk_pts/wpn_fps_ass_heffy_762_fh_tabuk"}
		self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_762_ba_akmsu.override[ext_id] = {a_obj = "a_ns_war_akmsu", unit="units/mods/weapons/wpn_fps_ass_heffy_762_akmsu_pts/wpn_fps_ass_heffy_762_fh_akmsu"}
		self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_762_ba_m92.override[ext_id]   = {a_obj = "a_ns_war_m92", unit="units/mods/weapons/wpn_fps_ass_heffy_762_m92_pts/wpn_fps_ass_heffy_762_fh_m92"}
		self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_762_ba_ak104.override[ext_id] = {a_obj = "a_ns_war_ak104", unit="units/mods/weapons/wpn_fps_ass_heffy_762_ak104_pts/wpn_fps_ass_heffy_762_fh_ak104"}
		self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_762_ba_rk62.override[ext_id]  = {a_obj = "a_ns_war_rk62", unit="units/mods/weapons/wpn_fps_ass_heffy_762_rk62_pts/wpn_fps_ass_heffy_762_fh_rk62"}
		self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_762_ba_md90.override[ext_id]  = {a_obj = "a_ns_war_md90", unit="units/mods/weapons/wpn_fps_ass_heffy_762_md90_pts/wpn_fps_ass_heffy_762_fh_md90"}
		self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_762_ba_rpk.override[ext_id]  = {a_obj = "a_ns_war_rpk", unit="units/mods/weapons/wpn_fps_ass_heffy_762_ak47_pts/wpn_fps_ass_heffy_762_fh_ak47"}
		self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_762_ba_amd65.override[ext_id]  = {a_obj = "a_ns_war_amd65", unit="units/mods/weapons/wpn_fps_ass_heffy_762_ak47_pts/wpn_fps_ass_heffy_762_fh_ak47"}
	else
		self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_762_ba_rpk.override[ext_id]   = {a_obj = "a_ns_war_rpk"}
		self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_762_ba_tabuk.override[ext_id] = {a_obj = "a_ns_war_tabuk"}
		self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_762_ba_akmsu.override[ext_id] = {a_obj = "a_ns_war_akmsu"}
		self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_762_ba_m92.override[ext_id]   = {a_obj = "a_ns_war_m92"}
		self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_762_ba_ak104.override[ext_id] = {a_obj = "a_ns_war_ak104"}
		self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_762_ba_rk62.override[ext_id]  = {a_obj = "a_ns_war_rk62"}
		self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_762_ba_md90.override[ext_id]  = {a_obj = "a_ns_war_md90"}
		self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_762_ba_vepr.override[ext_id]  = {a_obj = "a_ns_war_vepr"}
		self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_762_ba_amd65.override[ext_id] = {a_obj = "a_ns_war_amd65"}
	end
end
-- Warrior Overrides --
self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_762_ufg_ak47 	= {unit="units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy"}
self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_762_ufgc_ak47 	= {unit="units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy"}
self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_762_lfgc_ak47 	= {unit="units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy"}
self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_762_rsb_ak47 	= {unit="units/mods/weapons/wpn_fps_ass_heffy_all_shared_pts/wpn_fps_ass_heffy_762_rsb_warrior"}
self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_762_ro_akm  	= {unit="units/mods/weapons/wpn_fps_ass_heffy_all_warrior_pts/wpn_fps_ass_heffy_all_ro_warrior_s"}
self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_upg_o_ak47_scopemount 	= {unit="units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy"}
--- Barrel ---
-- Other length barrel barrel extension overrides --
-- Other length barrel Front Sight overrides --

--- Receiver aka Lower ---
self:akpack_check_override( "part", "wpn_fps_ass_heffy_762_lr_akm" )
self:akpack_check_override( "part", "wpn_fps_ass_heffy_762_lr_ak103" )
self:akpack_check_override( "part", "wpn_fps_ass_heffy_762_lr_ak47" )
self:akpack_check_override( "part", "wpn_fps_ass_heffy_762_lr_akmsu" )
self:akpack_check_override( "part", "wpn_fps_ass_heffy_762_lr_m92" )
--Stock overrides--
for id, st_id in pairs(all_akex_stock) do
	self.parts.wpn_fps_ass_heffy_762_lr_ak47.override[st_id]  = {a_obj = "a_s_ak47"}
	self.parts.wpn_fps_ass_heffy_762_lr_akmsu.override[st_id] = {a_obj = "a_s_akmsu"}
	self.parts.wpn_fps_ass_heffy_762_lr_ak103.override[st_id] = {a_obj = "a_s_akmsu"}
end
for id, st_id in pairs(ak_pack_extras_vanilla_attachments) do
	self.parts.wpn_fps_ass_heffy_762_lr_ak47.override[st_id]  = {a_obj = "a_s_v_ak47"}
	self.parts.wpn_fps_ass_heffy_762_lr_akmsu.override[st_id] = {a_obj = "a_s_v_akmsu"}
	self.parts.wpn_fps_ass_heffy_762_lr_ak103.override[st_id] = {a_obj = "a_s_v_akmsu"}
end
--Stockpad--
for id, st_id in pairs(akmstock) do
	self.parts.wpn_fps_ass_heffy_762_lr_ak47.override[st_id] = self.parts.wpn_fps_ass_heffy_762_lr_ak47.override[st_id] or {}
	self.parts.wpn_fps_ass_heffy_762_lr_akmsu.override[st_id] = self.parts.wpn_fps_ass_heffy_762_lr_akmsu.override[st_id] or {}
	self.parts.wpn_fps_ass_heffy_762_lr_ak103.override[st_id] = self.parts.wpn_fps_ass_heffy_762_lr_ak103.override[st_id] or {}
	self.parts.wpn_fps_ass_heffy_762_lr_ak47.override[st_id].override = self.parts.wpn_fps_ass_heffy_762_lr_ak47.override[st_id].override or {}
	self.parts.wpn_fps_ass_heffy_762_lr_akmsu.override[st_id].override = self.parts.wpn_fps_ass_heffy_762_lr_akmsu.override[st_id].override or {}
	self.parts.wpn_fps_ass_heffy_762_lr_ak103.override[st_id].override = self.parts.wpn_fps_ass_heffy_762_lr_ak103.override[st_id].override or {}
end
for id, st_id in pairs(akmstock) do
	if self.parts[st_id] then
		for id, sp_id in pairs(all_akex1_stockpad) do
			if self.parts[sp_id] then
				self.parts.wpn_fps_ass_heffy_762_lr_ak47.override[st_id].override[sp_id]  = {a_obj = "a_s_ak47"}
				self.parts.wpn_fps_ass_heffy_762_lr_akmsu.override[st_id].override[sp_id] = {a_obj = "a_s_akmsu"}
				self.parts.wpn_fps_ass_heffy_762_lr_ak103.override[st_id].override[sp_id] = {a_obj = "a_s_akmsu"}
			end
		end
	end
end
--- Bipods ---
for id, bp_id in pairs(all_ak47bipod) do
	self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override[bp_id] = {a_obj = "a_bp_war"}
end
----------------------------------------------------------
----<A><K><E><X><T><R><A> -Adds- <A><K><E><X><T><R><A>----
----------------------------------------------------------
--- Gun ---
-------------------------------------------------------------
----<A><K><E><X><T><R><A> -Forbids- <A><K><E><X><T><R><A>----
-------------------------------------------------------------
--- LFG ---
--Warrior forbids (Added Override)--
for id, ufg_id in pairs(all_ak47upperforegrip) do
	if ufg_id ~= "wpn_fps_ass_heffy_762_ufg_ak47" then
		self:akpack_setup_forbid( ufg_id, "wpn_fps_ass_heffy_all_lfg_warrior" )
	else
		self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override[ufg_id] = {unit="units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy"}
	end
end
self:akpack_setup_forbid( "wpn_fps_ass_heffy_762_lr_akmsu", "wpn_fps_ass_heffy_all_lfg_warrior" )
self:akpack_setup_forbid( "wpn_fps_ass_heffy_762_lr_m92", "wpn_fps_ass_heffy_all_lfg_warrior" )
self:akpack_setup_forbid( "wpn_fps_ass_heffy_762_ro_m92", "wpn_fps_ass_heffy_all_lfg_warrior" )
self:akpack_setup_forbid( "wpn_fps_upg_o_ak47_l_scopemount", "wpn_fps_ass_heffy_all_lfg_warrior" )
--- Stockpad ---
for id, st_id in pairs(non_grp_stock) do
	for id, sp_id in pairs(combined_stockpad) do
		self:akpack_setup_forbid ( st_id, sp_id )
	end
end
for id, sp_id in pairs(all_akex1_stockpad) do
	self:akpack_setup_forbid( "wpn_fps_ass_heffy_762_st_ak47", sp_id )
end

self:akpack_setup_forbid( "wpn_fps_ass_heffy_762_bp_rpk", "wpn_fps_ass_heffy_all_gl_gp25" )
self:akpack_setup_forbid( "wpn_fps_ass_heffy_762_bp_rpk_folded", "wpn_fps_ass_heffy_all_gl_gp25" )

self:akpack_setup_forbid( "wpn_fps_ass_heffy_762_bp_rpk", "wpn_fps_upg_gl_lpo70" )
self:akpack_setup_forbid( "wpn_fps_ass_heffy_762_bp_rpk_folded", "wpn_fps_upg_gl_lpo70" )

--- FGs ---
for id, lr_id in pairs(akmsulower) do
	if lr_id ~= "wpn_fps_ass_heffy_762_lr_ak103" then
		for id, lfg_id in pairs(all_akex_lowerforegrip) do
			self:akpack_setup_forbid( lr_id, lfg_id )
			self:akpack_setup_forbid( "wpn_fps_ass_heffy_762_ba_vepr", lfg_id )
		end
		for id, ufg_id in pairs(all_akex_upperforegrip) do
			self:akpack_setup_forbid( lr_id, ufg_id )
			self:akpack_setup_forbid( "wpn_fps_ass_heffy_762_ba_vepr", ufg_id )
		end
		self:akpack_setup_forbid( lr_id, "wpn_fps_ass_heffy_all_sm_cover" )
	end
end
-- UFGs --
for id, ufg_id in pairs(all_akex_upperforegrip) do
	if ufg_id ~= "wpn_fps_ass_heffy_762_ufg_ak47" then
		self:akpack_setup_forbid( "wpn_fps_ass_heffy_762_lfg_m70", ufg_id )
	end
end
-- Grips --
for id, g_id in pairs(all_akex_grips) do
	self:akpack_setup_forbid( "wpn_fps_ass_heffy_762_st_vepr", g_id )
end
-- lowers --
for id, ro_id in pairs(all_akex_ro) do
	self:akpack_setup_forbid( "wpn_fps_ass_heffy_762_lr_akmsu", ro_id )
	self:akpack_setup_forbid( "wpn_fps_ass_heffy_762_lr_m92", ro_id )
end
------------------------------------------------------------
----<A><K><E><X><T><R><A> -Stance- <A><K><E><X><T><R><A>----
------------------------------------------------------------
--- Foregrips ---
-- Warrior --
--- Stance overrides by barrels ---
--- Vanilla sights ---
-- Underbarrel sight
self.parts.wpn_fps_ass_heffy_all_gl_gp25_sight_up.stance_mod.wpn_fps_ass_heffy_762 = {
				translation = Vector3(4.3, -2, 4),
				rotation = Rotation(0, -3.5, 0)
			}
-----------------------------------------------------------------
----<A><K><E><X><T><R><A> -Underbarrel- <A><K><E><X><T><R><A>----
-----------------------------------------------------------------

------------------------------------------------------------
----<A><K><E><X><T><R><A> -Tweaks- <A><K><E><X><T><R><A>----
------------------------------------------------------------

--- Barrel Extensions ---

---------------------------------------------------------
----<A><K><E><X><T><R><A> -WIP- <A><K><E><X><T><R><A>----
---------------------------------------------------------
end


end )

----------------------------------------------------------------------
----<A><K><E><X><T><R><A> -Matconfig_Arrays- <A><K><E><X><T><R><A>----
----------------------------------------------------------------------

--------------------------------------------------------------------------
----<A><K><E><X><T><R><A> -Matconfig_Definition- <A><K><E><X><T><R><A>----
--------------------------------------------------------------------------


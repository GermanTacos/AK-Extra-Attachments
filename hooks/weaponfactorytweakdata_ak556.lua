------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
--                                                                                      --
--                          ||       ||   ||       ||||     |||||    ||||       ||      --
--                         ||||      ||  ||       || ||    ||   ||  || ||       ||		--
--                        ||  ||     || ||           ||   ||     ||    ||       ||		--
--                       ||||||||    ||||            ||   ||     ||    ||  |||||||||||| --
--                      ||      ||   || ||           ||   ||     ||    ||       ||		--
--                     ||        ||  ||  ||          ||    ||   ||     ||       ||		--
--                    ||          || ||   ||      |||||||   |||||   |||||||     ||		--
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

Hooks:PostHook( WeaponFactoryTweakData, "init", "AK101EXTRAModInit", function(self)

------------------------------------------------------------
----<A><K><E><X><T><R><A> -Arrays- <A><K><E><X><T><R><A>----
------------------------------------------------------------

if ( self.wpn_fps_ass_heffy_556 ) then
--- Stocks ---
local all_akex_stock = {
	"wpn_fps_ass_heffy_all_st_moe",
	"wpn_fps_ass_heffy_all_sad_alpha",
	"wpn_fps_ass_heffy_all_st_sho",
	"wpn_fps_ass_heffy_all_st_pkm"
}
--- Stock Pads ---
local all_akex101_stockpad = {
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
	"wpn_fps_ass_heffy_all_pg_sco"
}

------------------------
---- END ARRAYS END ----
------------------------




--- Stocks ---
local all_ak101stock = {
	"wpn_fps_ass_heffy_556_st_ak101"
}
local ak101stock = {
	"wpn_fps_ass_heffy_556_st_ak101"
}
--- Stock Pads ---
local ak101stockpad = {
	"wpn_fps_ass_heffy_556_stp_ak101",
	"wpn_fps_ass_heffy_556_stp2_ak101"
}
--- Fore Grip ---
-- Default length --
local all_ak101lowerforegrip = {
	"wpn_fps_ass_heffy_556_lfg_ak101"
}
local ak101foregrip = {
	"wpn_fps_ass_heffy_556_lfg_ak101"
}
local all_ak101upperforegrip = {
	"wpn_fps_ass_heffy_556_ufg_ak101"
}

--- Barrel ---
-- Default length --
local ak101barrel = {
	"wpn_fps_ass_heffy_556_ba_ak101",
	"wpn_fps_ass_heffy_556_ba_ak108"
}
local all_ak101barrel = {
	"wpn_fps_ass_heffy_556_ba_ak101",
	"wpn_fps_ass_heffy_556_ba_ak102",
	"wpn_fps_ass_heffy_556_ba_ak108"
}

--- Front Sights ---
local all_ak101fo = {
	"wpn_fps_ass_heffy_556_fo_ak101"
}

--- Barrel Extensions --
local all_ak101ext = {
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
	"wpn_fps_ass_heffy_556_fh_dummy",
	"wpn_fps_ass_heffy_556_fh_ak101",
	"wpn_fps_ass_heffy_556_fh_ak102",
	"wpn_fps_ass_heffy_556_fh_ak108"
}

--- Gadgets (Flashlights/Lasers) ---
local all_ak101fl = {
	"wpn_fps_upg_fl_ass_smg_sho_peqbox",
	"wpn_fps_upg_fl_ass_smg_sho_surefire",
	"wpn_fps_upg_fl_ass_peq15",
	"wpn_fps_upg_fl_ass_laser",
	"wpn_fps_upg_fl_ass_utg",
	"wpn_fps_addon_ris"
}

--- Sights ---
local all_ak101sight = {
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
local ak101grips = {
	"wpn_fps_ass_heffy_556_pg_ak101"
}
-----------------------------
------ Combined Arrays ------
local non_grp_stock = {
	"wpn_fps_ass_heffy_all_st_moe",
	"wpn_fps_ass_heffy_all_st_sho"
}

-----------------------------------------------------------------
----<A><K><E><X><T><R><A> -Attachments- <A><K><E><X><T><R><A>----
-----------------------------------------------------------------
for _, part_id in pairs(ak_pack_extras_vanilla_attachments) do
	table.insert(self.wpn_fps_ass_heffy_556.uses_parts, part_id)
end
--------------------------------------------------------------
----<A><K><E><X><T><R><A> -Override- <A><K><E><X><T><R><A>----
--------------------------------------------------------------

--- Gun ---
--- Barrel ---
for id, ro_id in pairs(all_akex_ro) do 
	self.parts.wpn_fps_ass_heffy_556_ba_ak108.override[ro_id] = {a_obj = "a_ro_ak108"}
end
--- LFG ---
self:akpack_check_override( "part", "wpn_fps_ass_heffy_all_lfg_warrior" )
for id, ba_id in pairs(all_ak101barrel) do 
	self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override[ba_id] = {a_obj = "a_b_war"}
	self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override[ba_id].override   = self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override[ba_id].override or {}
end
-- Front sight overrides by lfgs --
for id, ba_id in pairs(ak101barrel) do
	for id, fo_id in pairs(all_ak101fo) do
		self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override[ba_id].override[fo_id] = {a_obj = "a_fo_war_std"}
	end
end
for id, fo_id in pairs(all_ak101fo) do
	self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_556_ba_ak102.override[fo_id]  = {a_obj = "a_fo_war_ak102"}
end
-- Barrel Extensions position override by lfgs --
for id, ba_id in pairs(ak101barrel) do
	for id, ext_id in pairs(all_ak101ext) do
		if ext_id ~= "wpn_fps_ass_heffy_556_fh_dummy" then
			self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override[ba_id].override[ext_id] = {a_obj = "a_ns_war_std"}
		end
	end
end
self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_556_ba_ak108.override.wpn_fps_ass_heffy_556_fh_dummy = {a_obj = "a_ns_war_std", unit="units/mods/weapons/wpn_fps_ass_heffy_556_ak108_pts/wpn_fps_ass_heffy_556_fh_ak108"}
self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_556_ba_ak101.override.wpn_fps_ass_heffy_556_fh_dummy  = {a_obj = "a_ns_war_std", unit="units/mods/weapons/wpn_fps_ass_heffy_556_ak101_pts/wpn_fps_ass_heffy_556_fh_ak101"}

for id, ext_id in pairs(all_ak101ext) do
	if ext_id == "wpn_fps_ass_heffy_556_fh_dummy" then
		self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_556_ba_ak102.override[ext_id] 	= {a_obj = "a_ns_war_ak102", unit="units/mods/weapons/wpn_fps_ass_heffy_556_ak102_pts/wpn_fps_ass_heffy_556_fh_ak102"}
	else
		self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_556_ba_ak102.override[ext_id]   = {a_obj = "a_ns_war_ak102"}
	end
end

-- Warrior Overrides --
self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_556_ufg_ak101 = {unit="units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy"}
self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_556_ro_ak101  = {unit="units/mods/weapons/wpn_fps_ass_heffy_all_warrior_pts/wpn_fps_ass_heffy_all_ro_warrior_s"}
self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_556_rsb_ak101 = {unit="units/mods/weapons/wpn_fps_ass_heffy_all_shared_pts/wpn_fps_ass_heffy_556_rsb_war"}
self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_556_ufgc_ak101 = {unit="units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy"}
self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_556_lfgc_ak101 = {unit="units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy"}
self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_upg_o_ak101_scopemount = {unit="units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy"}
--- Barrel ---
-- Other length barrel barrel extension overrides --
-- Other length barrel Front Sight overrides --

--- Receiver aka Lower ---
self:akpack_check_override( "part", "wpn_fps_ass_heffy_556_lr_ak101" )
--Stock overrides--
for id, st_id in pairs(all_akex_stock) do
	self.parts.wpn_fps_ass_heffy_556_lr_ak101.override[st_id] = {a_obj = "a_s_akmsu"}
end
for id, st_id in pairs(ak_pack_extras_vanilla_attachments) do
	self.parts.wpn_fps_ass_heffy_556_lr_ak101.override[st_id] = {a_obj = "a_s_v_akmsu"}
end
for id, st_id in pairs(all_ak101stock) do
	self.parts.wpn_fps_ass_heffy_556_lr_ak101.override[st_id] = self.parts.wpn_fps_ass_heffy_556_lr_ak101.override[st_id] or {}
	self.parts.wpn_fps_ass_heffy_556_lr_ak101.override[st_id].override = self.parts.wpn_fps_ass_heffy_556_lr_ak101.override[st_id].override or {}
end
for id, st_id in pairs(all_ak101stock) do
	for id, sp_id in pairs(all_akex101_stockpad) do
		self.parts.wpn_fps_ass_heffy_556_lr_ak101.override[st_id].override[sp_id]  = {a_obj = "a_s_ak101"}
	end
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
for id, ufg_id in pairs(all_ak101upperforegrip) do
	if ufg_id ~= "wpn_fps_ass_heffy_556_ufg_ak101" then
		self:akpack_setup_forbid( ufg_id, "wpn_fps_ass_heffy_all_lfg_warrior" )
	else
		self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override[ufg_id] = {unit="units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy"}
	end
end
self:akpack_setup_forbid( "wpn_fps_upg_o_ak101_l_scopemount", "wpn_fps_ass_heffy_all_lfg_warrior" )

--- Stockpad ---
for id, st_id in pairs(non_grp_stock) do
	for id, sp_id in pairs(all_akex101_stockpad) do
		self:akpack_setup_forbid ( st_id, sp_id )
	end
end
------------------------------------------------------------
----<A><K><E><X><T><R><A> -Stance- <A><K><E><X><T><R><A>----
------------------------------------------------------------
--- Foregrips ---
-- Warrior --
self.parts.wpn_fps_ass_heffy_all_lfg_warrior.weapon_stance_override.bm_w_heffy_556 	= "warrior_ads"
--- Stance overrides by barrels ---
--- Vanilla sights ---
-----------------------------------------------------------------
----<A><K><E><X><T><R><A> -Underbarrel- <A><K><E><X><T><R><A>----
-----------------------------------------------------------------

--- GP25 ---
if BeardLib.Utils:FindMod("Custom underbarrels for custom weapons") then
	self:cufcw_setup_underbarrel( 
		"wpn_fps_ass_heffy_556",
		"bm_w_heffy_556",
		"wpn_fps_ass_heffy_all_gl_gp25",
		"bm_w_contraband_m203",
		"units/mods/weapons/wpn_fps_ass_heffy_all_shared_pts/wpn_fps_ass_heffy_all_gl_gp25",
		"units/mods/weapons/wpn_fps_ass_heffy_all_shared_pts/wpn_fps_ass_heffy_all_gl_gp25",
		"gl25_gl",
		{
			translation = Vector3(-1.05, 0, -12.67),
			rotation = Rotation(0, 0, -45)
		}
	)
else 
	self.parts.wpn_fps_ass_heffy_all_gl_gp25.weapon_hold_override.bm_w_heffy_556	= "contraband"
	self.parts.wpn_fps_ass_heffy_all_gl_gp25.weapon_stance_override.bm_w_heffy_556 	= "gl25_gl"
	self.parts.wpn_fps_ass_heffy_all_gl_gp25.override.wpn_fps_upg_o_45rds.stance_mod.wpn_fps_ass_heffy_556 = {
				translation = Vector3(-1.05, 0, -12.67),
				rotation = Rotation(0, 0, -45)
			}
	self.parts.wpn_fps_ass_heffy_all_gl_gp25.override.wpn_fps_upg_o_45rds_v2.stance_mod.wpn_fps_ass_heffy_556 = {
				translation = Vector3(-1.05, 0, -12.67),
				rotation = Rotation(0, 0, -45)
			}
end
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


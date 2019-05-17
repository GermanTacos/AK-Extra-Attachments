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

------------------------
---- END ARRAYS END ----
------------------------


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
		for id, sp_id in pairs(all_akex_stockpad) do
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

for id, ro_id in pairs(all_ak47ro) do
	self:akpack_setup_forbid( ro_id, "wpn_fps_ass_heffy_all_lfg_warrior" )
	self:akpack_setup_forbid( ro_id, "wpn_fps_ass_heffy_all_ur_alpha" )
end

--- Stockpad ---
for id, st_id in pairs(non_grp_stock) do
	for id, sp_id in pairs(combined_stockpad) do
		self:akpack_setup_forbid ( st_id, sp_id )
	end
end
for id, sp_id in pairs(all_akex_stockpad) do
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


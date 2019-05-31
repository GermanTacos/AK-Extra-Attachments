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
	for id, sp_id in pairs(all_akex_stockpad) do
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
for id, ufg_id in pairs(all_ak101ufg) do
	if ufg_id ~= "wpn_fps_ass_heffy_556_ufg_ak101" then
		self:akpack_setup_forbid( ufg_id, "wpn_fps_ass_heffy_all_lfg_warrior" )
	else
		self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override[ufg_id] = {unit="units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy"}
	end
end
self:akpack_setup_forbid( "wpn_fps_upg_o_ak101_l_scopemount", "wpn_fps_ass_heffy_all_lfg_warrior" )
self:akpack_setup_forbid( "wpn_fps_upg_o_ak101_l_scopemount", "wpn_fps_ass_heffy_all_ur_alpha" )

--- Stockpad ---
for id, st_id in pairs(non_grp_stock) do
	for id, sp_id in pairs(all_akex_stockpad) do
		self:akpack_setup_forbid ( st_id, sp_id )
	end
end
------------------------------------------------------------
----<A><K><E><X><T><R><A> -Stance- <A><K><E><X><T><R><A>----
------------------------------------------------------------
--- Foregrips ---
-- Warrior --
--- Stance overrides by barrels ---
--- Vanilla sights ---
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


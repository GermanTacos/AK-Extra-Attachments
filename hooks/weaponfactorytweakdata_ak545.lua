------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
--                                                                                      --
--                          ||       ||   ||     ||||||||    |||          ||            --
--                         ||||      ||  ||            ||   ||||  	      ||			--
--                        ||  ||     || ||            ||   || ||          ||			--
--                       ||||||||    ||||            ||   |||||||   ||||||||||||||  	--
--                      ||      ||   || ||          ||  	  ||       	  ||			--
--                     ||        ||  ||  ||        ||         ||     	  ||			--
--                    ||          || ||   ||      ||  	      ||       	  ||			--
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

Hooks:PostHook( WeaponFactoryTweakData, "init", "AK74EXTRAModInit", function(self)

------------------------------------------------------------
----<A><K><E><X><T><R><A> -Arrays- <A><K><E><X><T><R><A>----
------------------------------------------------------------

if ( self.wpn_fps_ass_heffy_545 ) then

local non_grp_stock = { 
	"wpn_fps_ass_heffy_545_st_aks74",
	"wpn_fps_ass_heffy_all_st_moe",
	"wpn_fps_ass_heffy_all_st_sho"
}
-----------------------------------------------------------------
----<A><K><E><X><T><R><A> -Attachments- <A><K><E><X><T><R><A>----
-----------------------------------------------------------------

for _, part_id in pairs(ak_pack_extras_vanilla_attachments) do
	table.insert(self.wpn_fps_ass_heffy_545.uses_parts, part_id)
end


--------------------------------------------------------------
----<A><K><E><X><T><R><A> -Override- <A><K><E><X><T><R><A>----
--------------------------------------------------------------

--- Gun ---
--- Barrel ---
for id, ro_id in pairs(all_akex_ro) do 
	self.parts.wpn_fps_ass_heffy_545_ba_ak107.override[ro_id] = {a_obj = "a_ro_ak107"}
end
--- LFG ---
self:akpack_check_override( "part", "wpn_fps_ass_heffy_all_lfg_warrior" )
for id, ba_id in pairs(all_ak74barrel) do 
	self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override[ba_id] = {a_obj = "a_b_war"}
	self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override[ba_id].override   = self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override[ba_id].override or {}
end
-- Front sight overrides by lfgs --
for id, ba_id in pairs(ak74barrel) do
	for id, fo_id in pairs(all_ak74fo) do
		self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override[ba_id].override[fo_id] = {a_obj = "a_fo_war_std"}
	end
end
for id, fo_id in pairs(all_ak74fo) do
	self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_545_ba_rpk74.override[fo_id]  = {a_obj = "a_fo_war_rpk"}
	self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_545_ba_aks74u.override[fo_id] = {a_obj = "a_fo_war_aks74u"}
	self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_545_ba_ak105.override[fo_id]  = {a_obj = "a_fo_war_ak105"}
end
-- Barrel Extensions position override by lfgs --
for id, ba_id in pairs(ak74barrel) do
	for id, ext_id in pairs(all_ak74ext) do
		if ext_id ~= "wpn_fps_ass_heffy_545_fh_dummy" then
			self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override[ba_id].override[ext_id] = {a_obj = "a_ns_war_std"}
		end
	end
end
self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_545_ba_ak107.override.wpn_fps_ass_heffy_545_fh_dummy = {a_obj = "a_ns_war_std", unit="units/mods/weapons/wpn_fps_ass_heffy_545_ak107_pts/wpn_fps_ass_heffy_545_fh_ak107"}
self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_545_ba_ak74.override.wpn_fps_ass_heffy_545_fh_dummy  = {a_obj = "a_ns_war_std", unit="units/mods/weapons/wpn_fps_ass_heffy_545_ak74_pts/wpn_fps_ass_heffy_545_fh_ak74"}

for id, ext_id in pairs(all_ak74ext) do
	if ext_id == "wpn_fps_ass_heffy_545_fh_dummy" then
		self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_545_ba_aks74u.override[ext_id]  = {a_obj = "a_ns_war_aks74u", unit="units/mods/weapons/wpn_fps_ass_heffy_545_aks74u_pts/wpn_fps_ass_heffy_545_fh_aks74u"}
		self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_545_ba_ak105.override[ext_id] 	= {a_obj = "a_ns_war_ak105", unit="units/mods/weapons/wpn_fps_ass_heffy_545_ak105_pts/wpn_fps_ass_heffy_545_fh_ak105"}
		self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_545_ba_rpk74.override[ext_id]   = {a_obj = "a_ns_war_rpk", unit="units/mods/weapons/wpn_fps_ass_heffy_545_rpk74_pts/wpn_fps_ass_heffy_545_fh_rpk74"}
	else
		self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_545_ba_aks74u.override[ext_id]   = {a_obj = "a_ns_war_aks74u"}
		self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_545_ba_ak105.override[ext_id] = {a_obj = "a_ns_war_ak105"}
		self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_545_ba_rpk74.override[ext_id] = {a_obj = "a_ns_war_rpk"}
	end
end
-- Warrior Overrides --
self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_545_ufg_ak74  = {unit="units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy"}
self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_545_ro_ak74   = {unit="units/mods/weapons/wpn_fps_ass_heffy_all_warrior_pts/wpn_fps_ass_heffy_all_ro_warrior_s"}
self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_545_rsb_ak74  = {unit="units/mods/weapons/wpn_fps_ass_heffy_all_shared_pts/wpn_fps_ass_heffy_762_rsb_warrior"}
self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_545_ufgc_ak74 = {unit="units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy"}
self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_ass_heffy_545_lfgc_ak74 = {unit="units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy"}
self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override.wpn_fps_upg_o_ak74_scopemount = {unit="units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy"}
--- Barrel ---
-- Other length barrel barrel extension overrides --
-- Other length barrel Front Sight overrides --

--- Receiver aka Lower ---
self:akpack_check_override( "part", "wpn_fps_ass_heffy_545_lr_ak74m" )
self:akpack_check_override( "part", "wpn_fps_ass_heffy_545_lr_aks74u" )
--Stock overrides--
for id, st_id in pairs(all_akex_stock) do
	self.parts.wpn_fps_ass_heffy_545_lr_ak74m.override[st_id]  = {a_obj = "a_s_ak74m"}
	self.parts.wpn_fps_ass_heffy_545_lr_aks74u.override[st_id] = {a_obj = "a_s_aks74u"}
end
for id, st_id in pairs(ak_pack_extras_vanilla_attachments) do
	self.parts.wpn_fps_ass_heffy_545_lr_ak74m.override[st_id] = {a_obj = "a_s_v_akmsu"}
	self.parts.wpn_fps_ass_heffy_545_lr_aks74u.override[st_id] = {a_obj = "a_s_v_akmsu"}
end

--- Bipods ---
for id, bp_id in pairs(all_ak74bipod) do
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
for id, ufg_id in pairs(all_ak74ufg) do
	if ufg_id ~= "wpn_fps_ass_heffy_545_ufg_ak74" then
		self:akpack_setup_forbid( ufg_id, "wpn_fps_ass_heffy_all_lfg_warrior" )
	else
		self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override[ufg_id] = {unit="units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy"}
	end
end
self:akpack_setup_forbid( "wpn_fps_ass_heffy_545_lr_aks74u", "wpn_fps_ass_heffy_all_lfg_warrior" )
self:akpack_setup_forbid( "wpn_fps_upg_o_ak74_l_scopemount", "wpn_fps_ass_heffy_all_lfg_warrior" )
self:akpack_setup_forbid( "wpn_fps_ass_heffy_545_ro_rpk74", "wpn_fps_ass_heffy_all_lfg_warrior" )

self:akpack_setup_forbid( "wpn_fps_ass_heffy_545_lr_aks74u", "wpn_fps_ass_heffy_all_ur_alpha" )
self:akpack_setup_forbid( "wpn_fps_upg_o_ak74_l_scopemount", "wpn_fps_ass_heffy_all_ur_alpha" )
self:akpack_setup_forbid( "wpn_fps_ass_heffy_545_ro_rpk74", "wpn_fps_ass_heffy_all_ur_alpha" )
--please send help
--- Stockpad ---
for id, st_id in pairs(non_grp_stock) do
	for id, sp_id in pairs(all_akex_stockpad) do
		self:akpack_setup_forbid ( st_id, sp_id )
	end
end
for id, st_id in pairs(all_ak74stock) do
		self.parts.wpn_fps_ass_heffy_545_lr_ak74m.override[st_id] = self.parts.wpn_fps_ass_heffy_545_lr_ak74m.override[st_id] or {}
		self.parts.wpn_fps_ass_heffy_545_lr_aks74u.override[st_id] = self.parts.wpn_fps_ass_heffy_545_lr_ak74m.override[st_id] or {}
		self.parts.wpn_fps_ass_heffy_545_lr_ak74m.override[st_id].override = self.parts.wpn_fps_ass_heffy_545_lr_ak74m.override[st_id].override or {}
		self.parts.wpn_fps_ass_heffy_545_lr_aks74u.override[st_id].override = self.parts.wpn_fps_ass_heffy_545_lr_ak74m.override[st_id].override or {}
end
for id, ro_id in pairs(all_akex_ro) do
	self:akpack_setup_forbid( "wpn_fps_ass_heffy_545_lr_aks74u", ro_id )
end
for id, st_id in pairs(all_ak74stock) do
	for id, sp_id in pairs(all_akex_stockpad) do
		self.parts.wpn_fps_ass_heffy_545_lr_ak74m.override[st_id].override[sp_id]  = {a_obj = "a_s_ak74m"}
		self.parts.wpn_fps_ass_heffy_545_lr_aks74u.override[st_id].override[sp_id] = {a_obj = "a_s_aks74u"}
	end
end
self:akpack_setup_forbid( "wpn_fps_ass_heffy_545_bp_rpk74", "wpn_fps_ass_heffy_all_gl_gp25" )
self:akpack_setup_forbid( "wpn_fps_ass_heffy_545_bp_rpk74_folded", "wpn_fps_ass_heffy_all_gl_gp25" )
self:akpack_setup_forbid( "wpn_fps_ass_heffy_545_bp_rpk74", "wpn_fps_upg_gl_lpo70" )
self:akpack_setup_forbid( "wpn_fps_ass_heffy_545_bp_rpk74_folded", "wpn_fps_upg_gl_lpo70" )
------------------------------------------------------------
----<A><K><E><X><T><R><A> -Stance- <A><K><E><X><T><R><A>----
------------------------------------------------------------
--- Foregrips ---
-- Warrior --
--- Magazine ---
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


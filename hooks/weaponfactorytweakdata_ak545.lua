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
--- Stocks ---
local all_akex_stock = {
	"wpn_fps_ass_heffy_all_st_moe",
	"wpn_fps_ass_heffy_all_sad_alpha",
	"wpn_fps_ass_heffy_all_st_sho",
	"wpn_fps_ass_heffy_all_st_pkm"
}
--- Stock Pads ---
local all_akex2_stockpad = {
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
local all_ak74stock = {
	"wpn_fps_ass_heffy_545_st_ak74",
	"wpn_fps_ass_heffy_545_st_aks74",
	"wpn_fps_ass_heffy_545_st_rpk74",
	"wpn_fps_ass_heffy_545_st_ak74m",
	"wpn_fps_ass_heffy_545_st_md86",
	"wpn_fps_ass_heffy_545_st_mpi"
}
--- Stock Pads ---
local all_ak74stockpad = {
	"wpn_fps_ass_heffy_545_stp_ak74",
	"wpn_fps_ass_heffy_545_stp_ak74_2",
	"wpn_fps_ass_heffy_545_stp_rpk74",
	"wpn_fps_ass_heffy_545_stp_ak74m",
	"wpn_fps_ass_heffy_545_stp2_ak74m",
	"wpn_fps_ass_heffy_545_stp_md86",
	"wpn_fps_ass_heffy_545_stp_mpi"
}
local ak74stockpad = {
	"wpn_fps_ass_heffy_545_stp_ak74",
	"wpn_fps_ass_heffy_545_stp_ak74_2",
	"wpn_fps_ass_heffy_545_stp_rpk74",
	"wpn_fps_ass_heffy_545_stp_md86",
	"wpn_fps_ass_heffy_545_stp_mpi"
}
--- Fore Grip ---
-- Default length --
local all_ak74lowerforegrip = {
	"wpn_fps_ass_heffy_545_lfg_ak74",
	"wpn_fps_ass_heffy_545_lfg_rpk74",
	"wpn_fps_ass_heffy_545_lfg_ak74m",
	"wpn_fps_ass_heffy_545_lfg_mpi",
	"wpn_fps_ass_heffy_all_lfg_ak74"
}
local all_ak74upperforegrip = {
	"wpn_fps_ass_heffy_all_ufg_ak74",
	"wpn_fps_ass_heffy_545_ufg_ak74",
	"wpn_fps_ass_heffy_545_ufg_ak74m",
	"wpn_fps_ass_heffy_545_ufg_mpi",
	"wpn_fps_ass_heffy_545_ufg_tantal"
}
--- Barrel ---
-- Default length --
local ak74barrel = {
	"wpn_fps_ass_heffy_545_ba_ak74",
	"wpn_fps_ass_heffy_545_ba_ak107"
}
local all_ak74barrel = {
	"wpn_fps_ass_heffy_545_ba_ak74",
	"wpn_fps_ass_heffy_545_ba_rpk74",
	"wpn_fps_ass_heffy_545_ba_ak105",
	"wpn_fps_ass_heffy_545_ba_ak107",
	"wpn_fps_ass_heffy_545_ba_aks74u"
}

--- Front Sights ---
local all_ak74fo = {
	"wpn_fps_ass_heffy_545_fo_ak74"
}

--- Rear Sights ---
local all_ak74ro = {
	"wpn_fps_ass_heffy_545_ro_ak74"
}

--- Barrel Extensions --
local all_ak74ext = {
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
	"wpn_fps_ass_heffy_545_fh_dummy",
	"wpn_fps_ass_heffy_545_fh_ak74",
	"wpn_fps_ass_heffy_545_fh_rpk74",
	"wpn_fps_ass_heffy_545_fh_ak105",
	"wpn_fps_ass_heffy_545_fh_tantal",
	"wpn_fps_ass_heffy_545_fh_aks74u"
}

--- Gadgets (Flashlights/Lasers) ---
local all_ak74fl = {
	"wpn_fps_upg_fl_ass_smg_sho_peqbox",
	"wpn_fps_upg_fl_ass_smg_sho_surefire",
	"wpn_fps_upg_fl_ass_peq15",
	"wpn_fps_upg_fl_ass_laser",
	"wpn_fps_upg_fl_ass_utg",
	"wpn_fps_addon_ris"
}

--- Sights ---
local all_ak74sight = {
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
local ak74grips = {
	"wpn_fps_ass_heffy_545_pg_ak74",
	"wpn_fps_ass_heffy_545_pg_ak74m",
	"wpn_fps_ass_heffy_545_pg_mpi"
}

local all_ak74bipod = {
	"wpn_fps_ass_heffy_545_bp_rpk74",
	"wpn_fps_ass_heffy_545_bp_rpk74_folded"
}

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
for id, ufg_id in pairs(all_ak74upperforegrip) do
	if ufg_id ~= "wpn_fps_ass_heffy_545_ufg_ak74" then
		self:akpack_setup_forbid( ufg_id, "wpn_fps_ass_heffy_all_lfg_warrior" )
	else
		self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override[ufg_id] = {unit="units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy"}
	end
end
self:akpack_setup_forbid( "wpn_fps_ass_heffy_545_lr_aks74u", "wpn_fps_ass_heffy_all_lfg_warrior" )
self:akpack_setup_forbid( "wpn_fps_upg_o_ak74_l_scopemount", "wpn_fps_ass_heffy_all_lfg_warrior" )
--please send help
--- Stockpad ---
for id, st_id in pairs(non_grp_stock) do
	for id, sp_id in pairs(all_akex2_stockpad) do
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
	for id, sp_id in pairs(all_akex2_stockpad) do
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


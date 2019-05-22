------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
--                                                                                      --
--                          ||       ||   ||      ||||||        ||     					--
--                         ||||      ||  ||      ||    ||       ||						--
--                        ||  ||     || ||       ||    ||       ||						--
--                       ||||||||    ||||         |||||||  ||||||||||||	 				--
--                      ||      ||   || ||            ||        ||						--
--                     ||        ||  ||  ||         |||         ||						--
--                    ||          || ||   ||      |||           ||						--
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

Hooks:PostHook( WeaponFactoryTweakData, "init", "AK9EXTRAModInit", function(self)

------------------------------------------------------------
----<A><K><E><X><T><R><A> -Arrays- <A><K><E><X><T><R><A>----
------------------------------------------------------------

if ( self.wpn_fps_ass_heffy_939 ) then
--- Stocks ---
local all_akex_stock = {
	"wpn_fps_ass_heffy_all_st_moe",
	"wpn_fps_ass_heffy_all_sad_alpha",
	"wpn_fps_ass_heffy_all_st_sho",
	"wpn_fps_ass_heffy_all_st_pkm"
}
--- Stock Pads ---
local all_akex3_stockpad = {
	"wpn_fps_ass_heffy_all_stpa_gl"
}
--- Fore Grip ---

--- Barrel ---
-- Default length --

--- Front Sights ---
local all_akex_fo = {
	"wpn_fps_ass_heffy_939_fo_ak9"
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
local all_ak9stock = {
	"wpn_fps_ass_heffy_939_st_ak9"
}
local ak9stock = {
	"wpn_fps_ass_heffy_939_st_ak9"
}
--- Stock Pads ---
local ak9stockpad = {
	"wpn_fps_ass_heffy_939_stp_ak9",
	"wpn_fps_ass_heffy_939_stp2_ak9"
}
--- Fore Grip ---
-- Default length --
local all_ak9lowerforegrip = {
	"wpn_fps_ass_heffy_939_lfg_ak9"
}
local ak9foregrip = {
	"wpn_fps_ass_heffy_939_lfg_ak9"
}
local all_ak9upperforegrip = {
	"wpn_fps_ass_heffy_939_ufg_ak9"
}

--- Barrel ---
-- Default length --
local ak9barrel = {
	"wpn_fps_ass_heffy_939_ba_ak9"
}
local all_ak9barrel = {
	"wpn_fps_ass_heffy_939_ba_ak9"
}

--- Front Sights ---
local all_ak9fo = {
	"wpn_fps_ass_heffy_939_fo_ak9"
}

--- Barrel Extensions --
local all_ak9ext = {
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
	"wpn_fps_ass_heffy_939_fh_dummy",
	"wpn_fps_ass_heffy_939_fh_ak9"
}

--- Gadgets (Flashlights/Lasers) ---
local all_ak9fl = {
	"wpn_fps_upg_fl_ass_smg_sho_peqbox",
	"wpn_fps_upg_fl_ass_smg_sho_surefire",
	"wpn_fps_upg_fl_ass_peq15",
	"wpn_fps_upg_fl_ass_laser",
	"wpn_fps_upg_fl_ass_utg",
	"wpn_fps_addon_ris"
}

--- Sights ---
local all_ak9sight = {
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
local ak9grips = {
	"wpn_fps_ass_heffy_939_pg_ak9"
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
	table.insert(self.wpn_fps_ass_heffy_939.uses_parts, part_id)
	table.insert(self.wpn_fps_ass_x_heffy_939.uses_parts, part_id)
end
--------------------------------------------------------------
----<A><K><E><X><T><R><A> -Override- <A><K><E><X><T><R><A>----
--------------------------------------------------------------

--- Receiver aka Lower ---
self:akpack_check_override( "part", "wpn_fps_ass_heffy_939_lr_ak9" )
--Stock overrides--
for i, st_id in pairs(all_akex_stock) do
	self.parts.wpn_fps_ass_heffy_939_lr_ak9.override[st_id] = {a_obj = "a_s_akmsu"}
	self.parts.wpn_fps_ass_heffy_939_lr_tiss.override[st_id] = {a_obj = "a_s_akmsu"}
end
for id, st_id in pairs(ak_pack_extras_vanilla_attachments) do
	self.parts.wpn_fps_ass_heffy_939_lr_ak9.override[st_id] = {a_obj = "a_s_v_akmsu"}
	self.parts.wpn_fps_ass_heffy_939_lr_tiss.override[st_id] = {a_obj = "a_s_v_akmsu"}
end
for i, st_id in pairs(all_ak9stock) do
	self.parts.wpn_fps_ass_heffy_939_lr_ak9.override[st_id] = self.parts.wpn_fps_ass_heffy_939_lr_ak9.override[st_id] or {}
	self.parts.wpn_fps_ass_heffy_939_lr_ak9.override[st_id].override = self.parts.wpn_fps_ass_heffy_939_lr_ak9.override[st_id].override or {}
	self.parts.wpn_fps_ass_heffy_939_lr_tiss.override[st_id] = self.parts.wpn_fps_ass_heffy_939_lr_ak9.override[st_id] or {}
	self.parts.wpn_fps_ass_heffy_939_lr_tiss.override[st_id].override = self.parts.wpn_fps_ass_heffy_939_lr_ak9.override[st_id].override or {}
end
for i, st_id in pairs(all_ak9stock) do
	for i, sp_id in pairs(all_akex3_stockpad) do
		self.parts.wpn_fps_ass_heffy_939_lr_ak9.override[st_id].override[sp_id]  = {a_obj = "a_s_ak101"}
		self.parts.wpn_fps_ass_heffy_939_lr_tiss.override[st_id].override[sp_id]  = {a_obj = "a_s_ak101"}
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

--- Stockpad ---
for i, st_id in pairs(non_grp_stock) do
	for sp_id in pairs(all_akex3_stockpad) do
		self:akpack_setup_forbid( st_id, sp_id )
	end
end
--- Dick ---
self:akpack_setup_forbid( "wpn_fps_ass_heffy_all_sm_cover", "wpn_fps_ass_heffy_939_ro_tiss")
self:akpack_setup_forbid( "wpn_fps_ass_heffy_all_sm_cover", "wpn_fps_ass_heffy_939_ufg_tiss")
------------------------------------------------------------
----<A><K><E><X><T><R><A> -Stance- <A><K><E><X><T><R><A>----
------------------------------------------------------------

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


------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
--                                                                                      --
--                          ||       ||   ||                  ||                        --
--                         ||||      ||  ||      			  ||						--
--                        ||  ||     || ||        			  ||						--
--                       ||||||||    ||||             	||||||||||||||  	            --
--                      ||      ||   || ||       			  ||						--
--                     ||        ||  ||  ||       			  ||						--
--                    ||          || ||   ||      			  ||						--
--                                                                                      --
------------------------------------------------------------------------------------------
--																						--
--						  	 		   > [Functions]									--
--									   > [Arrays]		   								--
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



---------------------------------------------------------------
----<A><K><E><X><T><R><A> -Functions- <A><K><E><X><T><R><A>----
---------------------------------------------------------------

--- Forbid Setup ---
function WeaponFactoryTweakData:akpack_setup_forbid( mod_one, mod_two )
	if self.parts[mod_one] and self.parts[mod_two] then
		self.parts[mod_one].forbids = self.parts[mod_one].forbids or {}
		table.insert(self.parts[mod_one].forbids, mod_two)
		self.parts[mod_two].forbids = self.parts[mod_two].forbids or {}
		table.insert(self.parts[mod_two].forbids, mod_one)
	else
		if not self.parts[mod_one] then
			self:akpack_write_error( "forbid_setup", "fti", "part", mod_two )	
		end
		if not self.parts[mod_two] then
			self:akpack_write_error( "forbid_setup", "fti", "part", mod_two )	
		end
	end
end

--- Override Base ---
function WeaponFactoryTweakData:akpack_check_override( mod_type, mod_woa ) 
	if mod_type == "wpn" then
		if self[mod_woa] then
			self[mod_woa].override = self[mod_woa].override or {}
		else 
			self:akpack_write_error( "override_check", "fti", mod_type, mod_woa )
		end
	elseif mod_type == "part" then
		if self.parts[mod_woa] then
			self.parts[mod_woa].override = self.parts[mod_woa].override or {}
		else 
			self:akpack_write_error( "override_check", "fti", mod_type, mod_woa )
		end
	else
		self:akpack_write_error( "override_check", "fti", "mod_type", mod_type )
	end
end

--- Adds Base ---
function WeaponFactoryTweakData:akpack_check_adds( mod_type, mod_woa ) 
	if mod_type == "wpn" then
		if self[mod_woa] then
			self[mod_woa].adds = self[mod_woa].adds or {}
		else 
			self:akpack_write_error( "adds_check", "fti", mod_type, mod_woa )
		end
	elseif mod_type == "part" then
		if self.parts[mod_woa] then
			self.parts[mod_woa].adds = self.parts[mod_woa].adds or {}
		else 
			self:akpack_write_error( "adds_check", "fti", mod_type, mod_woa )
		end
	else
		self:akpack_write_error( "adds_check", "fti", "mod_type", mod_type )
	end
end

--- ERROR Base ---
function WeaponFactoryTweakData:akpack_write_error( func, cause, error_id, value  )
	if func and cause and error_id then 
		-- fti = failed to index
		if cause == "fti" and value then
			if error_id == "part" then
				log("AKEXTRA_ERROR: (" .. func .. ")Attempt to index Part ID: '" .. value .. "' (a nil value)")
			elseif error_id == "wpn" then
				log("AKEXTRA_ERROR: (" .. func .. ")Attempt to index Weapon ID: '" .. value .. "' (a nil value)")
			elseif error_id == "mod_type" then
				log("AKEXTRA_ERROR: (" .. func .. ")Attempt to index mod_type: '" .. value .. "' (a nil value)")
			end
		end
	end
end 

Hooks:PostHook( WeaponFactoryTweakData, "init", "AKEXTRAModInit", function(self)

------------------------------------------------------------
----<A><K><E><X><T><R><A> -Arrays- <A><K><E><X><T><R><A>----
------------------------------------------------------------

--- Stocks ---
local all_akex_stock = {
	"wpn_fps_ass_heffy_all_st_moe",
	"wpn_fps_ass_heffy_all_st_sho",
	"wpn_fps_ass_heffy_all_st_pkm"
}
--- Stock Pads ---
local all_akex_stockpad = {
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
--------------------------------------------------------------
----<A><K><E><X><T><R><A> -Override- <A><K><E><X><T><R><A>----
--------------------------------------------------------------

--- Gun ---

--- Barrel ---
-- Other length barrel barrel extension overrides --
-- Other length barrel Front Sight overrides --


--- Scope Mount ---
self:akpack_check_override( "part", "wpn_fps_ass_heffy_all_sm_cover" )
--cover rail--
for id, o_id in pairs(all_akex_sight) do
	self.parts.wpn_fps_ass_heffy_all_sm_cover.override[o_id] = {a_obj = "a_o_cover"}
end
for id, fl_id in pairs(all_akex_fl) do
	if fl_id ~= "wpn_fps_addon_ris" then
		self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override[fl_id] = {a_obj = "a_fl_war"}
		self.parts.wpn_fps_ass_heffy_all_lfg_honor.override[fl_id]	 = {a_obj = "a_fl_honor"}
		self.parts.wpn_fps_ass_heffy_all_lfg_zenit.override[fl_id]	 = {a_obj = "a_fl_zenit"}
	end
end
----------------------------------------------------------
----<A><K><E><X><T><R><A> -Adds- <A><K><E><X><T><R><A>----
----------------------------------------------------------
--- Gun ---
-------------------------------------------------------------
----<A><K><E><X><T><R><A> -Forbids- <A><K><E><X><T><R><A>----
-------------------------------------------------------------
--- Stocks ---
--Magpul moe--
self:akpack_setup_forbid( "wpn_fps_ass_heffy_all_st_moe", "wpn_fps_ass_heffy_all_stpa_gl" )
--- Foregrips ---
--Warrior--
for id, ro_id in pairs(all_akex_ro) do
	self:akpack_setup_forbid( ro_id, "wpn_fps_ass_heffy_all_lfg_warrior" )
end
for id, ufg_id in pairs(all_akex_upperforegrip) do
	self:akpack_setup_forbid( ufg_id, "wpn_fps_ass_heffy_all_lfg_warrior" )
end
self:akpack_setup_forbid( "wpn_fps_ass_heffy_all_sm_cover", "wpn_fps_ass_heffy_all_lfg_warrior" )
self:akpack_setup_forbid( "wpn_fps_ass_heffy_all_gl_gp25_sight_up", "wpn_fps_ass_heffy_all_lfg_warrior" )
--- Underbarrel ---
self:akpack_setup_forbid( "wpn_fps_ass_heffy_762_m_helical_64", "wpn_fps_ass_heffy_all_gl_gp25" )
self:akpack_setup_forbid( "wpn_fps_ass_heffy_762_m_steel_90", "wpn_fps_ass_heffy_all_gl_gp25" )
self:akpack_setup_forbid( "wpn_fps_ass_heffy_762_m_steel_100", "wpn_fps_ass_heffy_all_gl_gp25" )
self:akpack_setup_forbid( "wpn_fps_ass_heffy_762_m_steel_180", "wpn_fps_ass_heffy_all_gl_gp25" )
self:akpack_setup_forbid( "wpn_fps_ass_heffy_762_m_steel_260", "wpn_fps_ass_heffy_all_gl_gp25" )
------------------------------------------------------------
----<A><K><E><X><T><R><A> -Stance- <A><K><E><X><T><R><A>----
------------------------------------------------------------

--- Foregrips ---
-- Warrior --
self.parts.wpn_fps_ass_heffy_all_lfg_warrior.weapon_stance_override = {}
--- Stance overrides by barrels ---
--- Vanilla sights ---
-- Underbarrel sight --
self.parts.wpn_fps_ass_heffy_all_gl_gp25_sight_up.stance_mod = {}
-----------------------------------------------------------------
----<A><K><E><X><T><R><A> -Underbarrel- <A><K><E><X><T><R><A>----
-----------------------------------------------------------------

--- GP25 ---
if not BeardLib.Utils:FindMod("Custom underbarrels for custom weapons") then
	self:akpack_check_override( "part", "wpn_fps_ass_heffy_all_gl_gp25" )

	self.parts.wpn_fps_ass_heffy_all_gl_gp25.perks = {"underbarrel"}
	self.parts.wpn_fps_ass_heffy_all_gl_gp25.weapon_hold_override = {
		bm_w_contraband_m203 = "contraband"
	}
	self.parts.wpn_fps_ass_heffy_all_gl_gp25.weapon_stance_override = {
		bm_w_contraband_m203 = "gl25_gl"
	}
	self.parts.wpn_fps_ass_heffy_all_gl_gp25.weapon_reload_override = {
		bm_w_contraband_m203 = "contraband"
	}
	self.parts.wpn_fps_ass_heffy_all_gl_gp25.override.wpn_fps_upg_o_45rds = {stance_mod = {}}
	self.parts.wpn_fps_ass_heffy_all_gl_gp25.override.wpn_fps_upg_o_45rds_v2 = {stance_mod = {}}
end

------------------------------------------------------------
----<A><K><E><X><T><R><A> -Tweaks- <A><K><E><X><T><R><A>----
------------------------------------------------------------

--- Barrel Extensions ---

---------------------------------------------------------
----<A><K><E><X><T><R><A> -WIP- <A><K><E><X><T><R><A>----
---------------------------------------------------------

end )

----------------------------------------------------------------------
----<A><K><E><X><T><R><A> -Matconfig_Arrays- <A><K><E><X><T><R><A>----
----------------------------------------------------------------------

--------------------------------------------------------------------------
----<A><K><E><X><T><R><A> -Matconfig_Definition- <A><K><E><X><T><R><A>----
--------------------------------------------------------------------------


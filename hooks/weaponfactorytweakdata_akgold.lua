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

Hooks:PostHook( WeaponFactoryTweakData, "init", "AKGOLDEXTRAModInit", function(self)

------------------------------------------------------------
----<A><K><E><X><T><R><A> -Arrays- <A><K><E><X><T><R><A>----
------------------------------------------------------------

--- Stocks ---
--- Stock Pads ---
--- Fore Grip ---
-- Upper --
-- Lower --
--- Barrel ---
-- Default length --

--- Front Sights ---
--- Rear Sights ---

--- Barrel Extensions --

--- Gadgets (Flashlights/Lasers) ---

------------------------
---- END ARRAYS END ----
------------------------

if ( self.wpn_fps_ass_heffy_gold ) then

--- Stock Pads ---
--- Fore Grip ---
-- Default length --
--- Barrel ---
-- Default length --

--- Front Sights ---
--- Barrel Extensions --
--- Gadgets (Flashlights/Lasers) ---

--- Sights ---

--- Grips ---
-----------------------------
------ Combined Arrays ------
--------------------------------------------------------------
----<A><K><E><X><T><R><A> -Override- <A><K><E><X><T><R><A>----
--------------------------------------------------------------

--- Gun ---
--- Barrel ---
-- Barrel Extensions position override by lfgs --
-- Warrior Overrides --
--- Barrel ---
-- Other length barrel barrel extension overrides --
-- Other length barrel Front Sight overrides --
--- Receiver aka Lower ---
--Stock overrides--
--Stockpad--
----------------------------------------------------------
----<A><K><E><X><T><R><A> -Adds- <A><K><E><X><T><R><A>----
----------------------------------------------------------
--- Gun ---
-------------------------------------------------------------
----<A><K><E><X><T><R><A> -Forbids- <A><K><E><X><T><R><A>----
-------------------------------------------------------------
--- LFG ---
--- Stockpad ---
self:akpack_setup_forbid( "wpn_fps_ass_heffy_gold_st_akms", "wpn_fps_ass_heffy_all_stpa_gl" )
self:akpack_setup_forbid( "wpn_fps_ass_heffy_gold_st_none", "wpn_fps_ass_heffy_all_stpa_gl" )
--- FGs ---
------------------------------------------------------------
----<A><K><E><X><T><R><A> -Stance- <A><K><E><X><T><R><A>----
------------------------------------------------------------
--- Foregrips ---
-- Warrior --
--- Stance overrides by barrels ---
--- Vanilla sights ---
-- Underbarrel sight
self.parts.wpn_fps_ass_heffy_all_gl_gp25_sight_up.stance_mod.wpn_fps_ass_heffy_gold = {
				translation = Vector3(4.3, -2, 4),
				rotation = Rotation(0, -3.5, 0)
			}
-----------------------------------------------------------------
----<A><K><E><X><T><R><A> -Underbarrel- <A><K><E><X><T><R><A>----
-----------------------------------------------------------------

--- GP25 ---
if BeardLib.Utils:FindMod("Custom underbarrels for custom weapons") then
	self:cufcw_setup_underbarrel( 
		"wpn_fps_ass_heffy_gold",
		"bm_w_heffy_gold",
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
	self.parts.wpn_fps_ass_heffy_all_gl_gp25.weapon_hold_override.bm_w_heffy_gold 	= "contraband"
	self.parts.wpn_fps_ass_heffy_all_gl_gp25.weapon_stance_override.bm_w_heffy_gold 	= "gl25_gl"
	
	self.parts.wpn_fps_ass_heffy_all_gl_gp25.override.wpn_fps_upg_o_45rds.stance_mod.wpn_fps_ass_heffy_gold = {
				translation = Vector3(-1.05, 0, -12.67),
				rotation = Rotation(0, 0, -45)
			}
	self.parts.wpn_fps_ass_heffy_all_gl_gp25.override.wpn_fps_upg_o_45rds_v2.stance_mod.wpn_fps_ass_heffy_gold = {
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


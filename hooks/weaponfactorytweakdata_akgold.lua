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

Hooks:PostHook( WeaponFactoryTweakData, "init", "AKGOLDEXTRAModInit", function(self)

------------------------------------------------------------
----<A><K><E><X><T><R><A> -Arrays- <A><K><E><X><T><R><A>----
------------------------------------------------------------

if ( self.wpn_fps_ass_heffy_gold ) then
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
-----------------------------------------------------------------
----<A><K><E><X><T><R><A> -Attachments- <A><K><E><X><T><R><A>----
-----------------------------------------------------------------
for _, part_id in pairs(ak_pack_extras_vanilla_attachments) do
	table.insert(self.wpn_fps_ass_heffy_gold.uses_parts, part_id)
end
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

self:akpack_setup_forbid( "wpn_fps_upg_o_gold_l_scopemount", "wpn_fps_ass_heffy_all_ur_alpha" )
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


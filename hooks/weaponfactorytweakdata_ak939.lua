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
--- Fore Grip ---

------------------------
---- END ARRAYS END ----
------------------------




--- Stocks ---

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
	for i, sp_id in pairs(all_akex_stockpad) do
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
	for sp_id in pairs(all_akex_stockpad) do
		self:akpack_setup_forbid( st_id, sp_id )
	end
end
--- eh ---
self:akpack_setup_forbid( "wpn_fps_ass_heffy_all_sm_cover", "wpn_fps_ass_heffy_939_ro_tiss")
self:akpack_setup_forbid( "wpn_fps_ass_heffy_all_sm_cover", "wpn_fps_ass_heffy_939_ufg_tiss")

self:akpack_setup_forbid( "wpn_fps_ass_heffy_all_ur_alpha", "wpn_fps_ass_heffy_939_ro_tiss")
self:akpack_setup_forbid( "wpn_fps_ass_heffy_all_ur_alpha", "wpn_fps_ass_heffy_939_ufg_tiss")

self:akpack_setup_forbid( "wpn_fps_upg_o_ak9_scopemount", "wpn_fps_ass_heffy_all_ur_alpha" )
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


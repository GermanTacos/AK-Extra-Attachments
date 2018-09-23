Hooks:PostHook( WeaponTweakData, "init", "AKEXTRAModInit", function(self)


---- CAP aka YEEET ----	

---- AK 762 ----
if ( self.heffy_762 ) then

--- Base stuff ---	
	self:SetupAttachmentPoint("heffy_762", {
		name = "a_glo", 
        base_a_obj = "a_body", 
        position = Vector3( -3, 44.5, 1 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
	
--- Front sights ---
-- Override by lfg ---
	self:SetupAttachmentPoint("heffy_762", {
		name = "a_fo_war_std", 
        base_a_obj = "a_body", 
        position = Vector3( 0, 10.5, 0 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
	self:SetupAttachmentPoint("heffy_762", {
		name = "a_fo_war_akmsu", 
        base_a_obj = "a_body", 
        position = Vector3( 0, -8, 0.3 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
	self:SetupAttachmentPoint("heffy_762", {
		name = "a_fo_war_rk62", 
        base_a_obj = "a_body", 
        position = Vector3( 0, -3, 0.3 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
	self:SetupAttachmentPoint("heffy_762", {
		name = "a_fo_war_ak104", 
        base_a_obj = "a_body", 
        position = Vector3( 0, 0, 0 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
	self:SetupAttachmentPoint("heffy_762", {
		name = "a_fo_war_md90", 
        base_a_obj = "a_body", 
        position = Vector3( 0, -0.5, 0 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
	self:SetupAttachmentPoint("heffy_762", {
		name = "a_fo_war_amd65", 
        base_a_obj = "a_body", 
        position = Vector3( 0, -2.5, -0.1 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
	self:SetupAttachmentPoint("heffy_762", {
		name = "a_fo_war_tabuk", 
        base_a_obj = "a_body", 
        position = Vector3( 0, 17.9, 0 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
	self:SetupAttachmentPoint("heffy_762", {
		name = "a_fo_war_rpk", 
        base_a_obj = "a_body", 
        position = Vector3( 0, 30, 0 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
--- Barrel positions with different FGs ---
	self:SetupAttachmentPoint("heffy_762", {
		name = "a_b_war", 
        base_a_obj = "a_body", 
        position = Vector3( 0, 10.5, 0 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
--- Barrel extensions ---
-- Default positions --
	self:SetupAttachmentPoint("heffy_762", {
		name = "a_ns_war_std", 
        base_a_obj = "a_ns", 
        position = Vector3( 0, 15.8, 0 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
	self:SetupAttachmentPoint("heffy_762", {
		name = "a_ns_war_vepr", 
        base_a_obj = "a_ns", 
        position = Vector3( 0, 17.8, 0 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
	self:SetupAttachmentPoint("heffy_762", {
		name = "a_ns_war_tabuk", 
        base_a_obj = "a_ns", 
        position = Vector3( 0, 23.8, 0 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
	self:SetupAttachmentPoint("heffy_762", {
		name = "a_ns_war_rpk", 
        base_a_obj = "a_ns", 
        position = Vector3( 0, 35.3, 0 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
	self:SetupAttachmentPoint("heffy_762", {
		name = "a_ns_war_akmsu", 
        base_a_obj = "a_ns", 
        position = Vector3( 0, -2.8, 0 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
	self:SetupAttachmentPoint("heffy_762", {
		name = "a_ns_war_amd65", 
        base_a_obj = "a_ns", 
        position = Vector3( 0, 3.3, 0 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
	self:SetupAttachmentPoint("heffy_762", {
		name = "a_ns_war_md90", 
        base_a_obj = "a_ns", 
        position = Vector3( 0, 4.2, 0 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
	self:SetupAttachmentPoint("heffy_762", {
		name = "a_ns_war_ak104", 
        base_a_obj = "a_ns", 
        position = Vector3( 0, 5.2, 0 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
	self:SetupAttachmentPoint("heffy_762", {
		name = "a_ns_war_rk62", 
        base_a_obj = "a_ns", 
        position = Vector3( 0, 11.4, 0 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
--- Fore grips ---
--Warrior--
	self:SetupAttachmentPoint("heffy_762", {
		name = "a_fl_honor", 
        base_a_obj = "a_fl", 
        position = Vector3( -0.4, 0, -2.2 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
	self:SetupAttachmentPoint("heffy_762", {
		name = "a_fl_zenit", 
        base_a_obj = "a_fl", 
        position = Vector3( -0.55, 2, -2.3 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
	self:SetupAttachmentPoint("heffy_762", {
		name = "a_fl_war", 
        base_a_obj = "a_fl", 
        position = Vector3( -0.3, 0, -2.2 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
--- Scope Mount ---
-- cover rail --
	self:SetupAttachmentPoint("heffy_762", {
		name = "a_o_cover", 
        base_a_obj = "a_o", 
        position = Vector3( 0, -7, 0 ), 
        rotation = Rotation( 0, 0, 0 ) 
	}) 
end

---- AK 545 ----
if ( self.heffy_545 ) then

--- Base stuff ---	
	self:SetupAttachmentPoint("heffy_545", {
		name = "a_glo", 
        base_a_obj = "a_body", 
        position = Vector3( -3, 44.5, 1 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
	
--- Front sights ---
-- Override by lfg ---
	self:SetupAttachmentPoint("heffy_545", {
		name = "a_fo_war_std", 
        base_a_obj = "a_body", 
        position = Vector3( 0, 10.5, 0 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
	self:SetupAttachmentPoint("heffy_545", {
		name = "a_fo_war_aks74u", 
        base_a_obj = "a_body", 
        position = Vector3( 0, -8, 0.3 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
	self:SetupAttachmentPoint("heffy_545", {
		name = "a_fo_war_ak105", 
        base_a_obj = "a_body", 
        position = Vector3( 0, 0, 0 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
	self:SetupAttachmentPoint("heffy_545", {
		name = "a_fo_war_rpk", 
        base_a_obj = "a_body", 
        position = Vector3( 0, 30, 0 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
--- Barrel positions with different FGs ---
	self:SetupAttachmentPoint("heffy_545", {
		name = "a_b_war", 
        base_a_obj = "a_body", 
        position = Vector3( 0, 10.5, 0 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
--- Bipods ---
	self:SetupAttachmentPoint("heffy_545", {
		name = "a_bp_war", 
        base_a_obj = "a_body", 
        position = Vector3( 0, 10.5, 0 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
--- Barrel extensions ---
-- Default positions --
	self:SetupAttachmentPoint("heffy_545", {
		name = "a_ns_war_std", 
        base_a_obj = "a_ns", 
        position = Vector3( 0, 15.8, 0 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
	self:SetupAttachmentPoint("heffy_545", {
		name = "a_ns_war_rpk", 
        base_a_obj = "a_ns", 
        position = Vector3( 0, 35.3, 0 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
	self:SetupAttachmentPoint("heffy_545", {
		name = "a_ns_war_aks74u", 
        base_a_obj = "a_ns", 
        position = Vector3( 0, -2.8, 0 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
	self:SetupAttachmentPoint("heffy_545", {
		name = "a_ns_war_ak105", 
        base_a_obj = "a_ns", 
        position = Vector3( 0, 5.2, 0 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
--- Fore grips ---
--Warrior--
	self:SetupAttachmentPoint("heffy_545", {
		name = "a_fl_honor", 
        base_a_obj = "a_fl", 
        position = Vector3( -0.4, 0, -2.2 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
	self:SetupAttachmentPoint("heffy_545", {
		name = "a_fl_zenit", 
        base_a_obj = "a_fl", 
        position = Vector3( -0.55, 2, -2.3 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
	self:SetupAttachmentPoint("heffy_545", {
		name = "a_fl_war", 
        base_a_obj = "a_fl", 
        position = Vector3( -0.3, 0, -2.2 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
--- Scope Mount ---
-- cover rail --
	self:SetupAttachmentPoint("heffy_545", {
		name = "a_o_cover", 
        base_a_obj = "a_o", 
        position = Vector3( 0, -7, 0 ), 
        rotation = Rotation( 0, 0, 0 ) 
	}) 
	
--- Magazines ---
	self:SetupAttachmentPoint("heffy_545", {
		name = "a_m_ak74_nk64", 
        base_a_obj = "a_m",
        position = Vector3( 0.1, 12, 1.3 ), 
        rotation = Rotation( 0, 2, 0 )
	})
end

---- AK 556 ----
if ( self.heffy_556 ) then

--- Base stuff ---	
	self:SetupAttachmentPoint("heffy_556", {
		name = "a_glo", 
        base_a_obj = "a_body", 
        position = Vector3( -3, 44.5, 1 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
	
--- Front sights ---
-- Override by lfg ---
	self:SetupAttachmentPoint("heffy_556", {
		name = "a_fo_war_std", 
        base_a_obj = "a_body", 
        position = Vector3( 0, 10.5, 0 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
	self:SetupAttachmentPoint("heffy_545", {
		name = "a_fo_war_ak102", 
        base_a_obj = "a_body", 
        position = Vector3( 0, 0, 0 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
--- Barrel positions with different FGs ---
	self:SetupAttachmentPoint("heffy_556", {
		name = "a_b_war", 
        base_a_obj = "a_body", 
        position = Vector3( 0, 10.5, 0 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
--- Barrel extensions ---
-- Default positions --
	self:SetupAttachmentPoint("heffy_556", {
		name = "a_ns_war_std", 
        base_a_obj = "a_ns", 
        position = Vector3( 0, 15.8, 0 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
	self:SetupAttachmentPoint("heffy_556", {
		name = "a_ns_war_ak102", 
        base_a_obj = "a_ns", 
        position = Vector3( 0, 5.2, 0 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
--- Fore grips ---
--Warrior--
	self:SetupAttachmentPoint("heffy_556", {
		name = "a_fl_honor", 
        base_a_obj = "a_fl", 
        position = Vector3( -0.4, 2, -2.2 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
	self:SetupAttachmentPoint("heffy_556", {
		name = "a_fl_zenit", 
        base_a_obj = "a_fl", 
        position = Vector3( -0.55, 0, -2.3 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
	self:SetupAttachmentPoint("heffy_556", {
		name = "a_fl_war", 
        base_a_obj = "a_fl", 
        position = Vector3( -0.3, 0, -2.2 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
--- Scope Mount ---
-- cover rail --
	self:SetupAttachmentPoint("heffy_556", {
		name = "a_o_cover", 
        base_a_obj = "a_o", 
        position = Vector3( 0, -7, 0 ), 
        rotation = Rotation( 0, 0, 0 ) 
	}) 
end
end)




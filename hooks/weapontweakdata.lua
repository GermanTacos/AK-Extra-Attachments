Hooks:PostHook( WeaponTweakData, "init", "AKEXTRAModInit", function(self)


---- CAP aka YEEET ----	

---- AK 762 ----
if ( self.heffy_762 ) then
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
end
end)




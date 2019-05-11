Hooks:PostHook( PlayerTweakData, "init", "AKEXTRAModStanceTweakData", function(self)

--AK
--Warrior 
	self.stances.warrior_ads = deep_clone(self.stances.flint)
	local ironsight_translation = Vector3(0, -13, -0.618)
	self.stances.warrior_ads.steelsight.shoulders.translation = self.stances.warrior_ads.steelsight.shoulders.translation + ironsight_translation 

--GL25
	self.stances.gl25_gl = deep_clone(self.stances.contraband)
	self.stances.gl25_gl.steelsight.shoulders.translation = Vector3(-10.49, -4.4, 2.75) 
	self.stances.gl25_gl.steelsight.shoulders.rotation = Rotation(0.05, 0.05, 0) 

--RPK
	self.stances.heffy_bo1_ads = deep_clone(self.stances.flint)
	self.stances.heffy_bo1_ads.steelsight.shoulders.translation = Vector3(-10.26, -5.166, 4.29) 
	self.stances.heffy_bo1_ads.steelsight.shoulders.rotation = Rotation(0, 0, 0) 

end )
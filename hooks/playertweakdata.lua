Hooks:PostHook( PlayerTweakData, "init", "AKEXTRAModStanceTweakData", function(self)

--AK
-- ****** sights
	self.stances.heffy_ins_ads = deep_clone(self.stances.flint)
	self.stances.heffy_ins_ads.steelsight.shoulders.translation = Vector3(-10.247, -5.304, 5.15)

--Warrior 
	self.stances.warrior_ads = deep_clone(self.stances.flint)
	local ironsight_translation = Vector3(0, -13, -0.618)
	self.stances.warrior_ads.steelsight.shoulders.translation = self.stances.warrior_ads.steelsight.shoulders.translation + ironsight_translation 

--GL25
	self.stances.gl25_gl = deep_clone(self.stances.contraband)
	local ironsight_translation = Vector3(0, -6, 1.56)
	self.stances.gl25_gl.steelsight.shoulders.translation = self.stances.gl25_gl.steelsight.shoulders.translation + ironsight_translation 
	
	
end )
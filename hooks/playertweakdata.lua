Hooks:PostHook( PlayerTweakData, "init", "AKEXTRAModStanceTweakData", function(self)

--AK
--GL25
	self.stances.gl25_gl = deep_clone(self.stances.contraband)
	local ironsight_translation = Vector3(0, -6, 1.56)
	self.stances.gl25_gl.steelsight.shoulders.translation = self.stances.gl25_gl.steelsight.shoulders.translation + ironsight_translation 
	
	
end )
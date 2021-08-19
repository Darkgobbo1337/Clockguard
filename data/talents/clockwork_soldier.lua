newTalent{
	name = "Big Hand and  Little Hand", short_name = "CLOCKHAND_MASTERY"
	type = {"chronomancy/clockwork_soldier", 1},
	points = 5,
	require = { stat = { str=function(level) return 12 + level * 6 end }, },
	mode = "passive",
	getDamage = function(self, t) return 30 end,
	getPercentInc = function(self, t) return math.sqrt(self:getTalentLevel(t) / 5) / 1.5 end,
	getoffmult = function(self,t)
		return	self:combatTalentLimit(t, 1, 0.60, 0.90)-- limit <100%
		end,
	getMainhandMult = function(self,t)
		return	self:combatTalentLimit(t, 1, 0.65, 1.10)-- limit <100%
		end,
	info = function(self, t)
		local damage = t.getDamage(self, t)
		local inc = t.getPercentInc(self, t)
		local getMainhandMult = t.getMainhandMult(self, t)
		local getoffmult = t.getoffmult(self, t)
		return ([[You wield the weapons of the clock, A two handed weapon in your main hand and a dagger in the off hand.
		Increase weapon damage by %d%% and Physical power by 30 when using swords, axes, maces, and knives. 
		You now also use your Magic in place of Dexterity when equipping weapons as well as when calculating weapon damage.
		You can wield a two handed weapon in your main hand and reduce it's damage to %d%% and your off hand damage is increased to %d%%
		These bonuses override rather than stack with weapon mastery and dagger mastery.]]):
		tformat(100*inc)
	end,
}


getPassiveSpeed = function(self, t) return self:combatTalentScale(t, 0.08, 0.4, 0.7) end,

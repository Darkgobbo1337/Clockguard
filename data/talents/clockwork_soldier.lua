newTalent{
	name = "Big Hand and Little Hand",
	type = {"chronomancy/clockwork_soldier", 1},
	points = 5,
	require = { stat = { str=function(level) return 12 + level * 6 end }, },
	mode = "passive",
	getDamage = function(self, t) return 30 end,
	getPercentInc = function(self, t) return math.sqrt(self:getTalentLevel(t) / 5) / 1.5 end,
	getoffmult = function(self,t)
		return	self:combatTalentLimit(t, 1, 0.65, 0.85)-- limit <100%
		end,
	info = function(self, t)
		local damage = t.getDamage(self, t)
		local inc = t.getPercentInc(self, t)
		return ([[You wield the weapons of the clock, A two handed weapon in your main hand and a dagger in the off hand.
		Increase weapon damage by 33-76% and Physical power by 30 when using swords, axes, maces, and knives. 
		You now also use your Magic in place of Dexterity when equipping weapons as well as when calculating weapon damage.
		You can wield a two handed weapon in your main hand and your off hand damage is increased to 65-85% 
		These bonuses override rather than stack with weapon mastery and dagger mastery.]]):
		tformat(100*inc)
	end,
}


getPassiveSpeed = function(self, t) return self:combatTalentScale(t, 0.08, 0.4, 0.7) end,

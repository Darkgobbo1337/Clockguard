newTalent{
	name = "Big Hand and Little Hand",
	type = {"chronomancy/clockwork_soldier", 1},
	points = 5,
	require = { stat = { str=function(level) return 12 + level * 6 end }, },
	mode = "passive",
	getDamage = function(self, t) return 30 end,
	getPercentInc = function(self, t) return math.sqrt(self:getTalentLevel(t) / 5) / 1.5 end,
	info = function(self, t)
		local damage = t.getDamage(self, t)
		local inc = t.getPercentInc(self, t)
		return ([[Increases weapon damage by %d%% and physical power by 30 when using swords, axes, maces, knives, or bows.
		You now also use your Magic in place of Strength when equipping weapons and ammo as well as when calculating weapon damage.
		These bonuses override rather than stack with weapon mastery, dagger mastery, and bow mastery.]]):
		tformat(100*inc)
	end,
}


getPassiveSpeed = function(self, t) return self:combatTalentScale(t, 0.08, 0.4, 0.7) end,

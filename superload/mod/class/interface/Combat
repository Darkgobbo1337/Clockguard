class:bindHook(
    "Combat:getDammod:subs",
    function(self, hd) 
        if hd.combat and hd.combat.talented and self:knowTalent(self.T_BIG_HAND_AND_LITTLE_HAND) then
            hd.dammod.mag = (hd.dammod.mag or 0) + (hd.dammod.dex or 0)
            hd.dammod.dex = nil
        end
        return hd   
    end)
	
class:bindHook("Combat:attackTargetWith:attackerBonuses", function(self, hd)
    local weapon = hd.weapon
    local mult = hd.mult or 1
    if self:knowTalent(self.T_CLOCKHAND_MASTERY) and self:hasTwoHandedWeapon() and self:hasOffWeaponType("knife") and weapon and weapon.twohanded then
        local redux = self:callTalent(self.T_CLOCKHAND_MASTERY, "getMainhandMult")
        --game.logPlayer(self, "TWOHAND MAINHAND CLOCK DAM REDUX %d%%!!!", redux*mult)
        hd.mult = mult * redux
    end
    return hd
end)

_M:addCombatTraining('axe', 'T_CLOCKWORK_MASTERY')
_M:addCombatTraining('sword', 'T_CLOCKWORK_MASTERY')
_M:addCombatTraining('mace', 'T_CLOCKWORK_MASTERY')
_M:addCombatTraining('knife', 'T_CLOCKWORK_MASTERY')

return _M

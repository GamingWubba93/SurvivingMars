-- ========== THIS IS AN AUTOMATICALLY GENERATED FILE! ==========

PrgAmbientLife["Workterminal"] = function(unit, bld, obj, spot, slot_data, slot, slotname)
	while unit:VisitTimeLeft() > 0 do
		unit:PlayState("standTerminal")
		if unit.visit_restart then return end
	end
end

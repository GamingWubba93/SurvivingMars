-- ========== THIS IS AN AUTOMATICALLY GENERATED FILE! ==========

PrgAmbientLife["Worklab"] = function(unit, bld, obj, spot, slot_data, slot, slotname)
	while unit:VisitTimeLeft() > 0 do
		unit:PlayState("standTakeNotes")
		if unit.visit_restart then return end
	end
end

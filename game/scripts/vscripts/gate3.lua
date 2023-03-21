function OnStartTouch(trigger)
	local activator = trigger.activator
	if not activator:IsHero() then return end

	if activator:IsRealHero() then
		local gate3key
		
	
		for i=0, 8 do
			local item = activator:GetItemInSlot(i)
			if item and item:GetAbilityName() == "item_iron_gate_key" then
				gate3key = item
			end
		end

		if gate3key then
			local enemies = FindUnitsInRadius( activator:GetTeamNumber(), activator:GetAbsOrigin(), nil, 1500, DOTA_UNIT_TARGET_TEAM_ENEMY, DOTA_UNIT_TARGET_ALL, DOTA_UNIT_TARGET_FLAG_MAGIC_IMMUNE_ENEMIES, FIND_ANY_ORDER, false )
			if enemies[1]:GetUnitName() == "npc_dota_gate_3" then
				EmitSoundOn("Building_Generic.Destruction", enemies[1])
				enemies[1]:ForceKill(true)
				activator:RemoveItem(gate3key)
			end
		end
	end
end
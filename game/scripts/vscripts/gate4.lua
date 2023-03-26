function OnStartTouch(trigger)
	local activator = trigger.activator
	if not activator:IsHero() then return end

	if activator:IsRealHero() then	
		for i=0, 8 do
			local item = activator:GetItemInSlot(i)
			if item and item:GetAbilityName() == "item_gate_4_key" then
				local gate4key = item
				local enemies = FindUnitsInRadius( activator:GetTeamNumber(), activator:GetAbsOrigin(), nil, 2000, DOTA_UNIT_TARGET_TEAM_ENEMY, DOTA_UNIT_TARGET_ALL, DOTA_UNIT_TARGET_FLAG_MAGIC_IMMUNE_ENEMIES, FIND_CLOSEST, false )
				for _, enemy in pairs(enemies) do
					if enemy:GetUnitName() == "npc_dota_gate_4" then
						EmitSoundOn("Building_Generic.Destruction", enemy)
						enemy:ForceKill(true)
						activator:RemoveItem(gate4key)
					end
				end
			end
		end
	end
end
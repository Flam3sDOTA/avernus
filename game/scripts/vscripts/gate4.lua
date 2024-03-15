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
						activator:RemoveItem(gate4key)

						local radius = 400
						local vPos = enemy:GetOrigin()
						vPos.z = vPos.z + 100
						local nFXIndex = ParticleManager:CreateParticle( "particles/dev/library/base_dust_hit.vpcf", PATTACH_CUSTOMORIGIN, nil )
						ParticleManager:SetParticleControl( nFXIndex, 0, vPos )
						ParticleManager:SetParticleControl( nFXIndex, 1, Vector( radius, radius, radius ) )
						ParticleManager:ReleaseParticleIndex( nFXIndex )

						local fShakeAmt = 15
						local fShakeDuration = 0.75
						ScreenShake( activator:GetAbsOrigin(), fShakeAmt, 100.0, fShakeDuration, 1300.0, 0, true )
						local vGateAngles = enemy:GetAnglesAsVector()
						enemy:ForceKill(true)
						UTIL_Remove( enemy )
						local hAnimGate = CreateUnitByName( "npc_dota_gate_4_anim", vPos, false, nil, nil, DOTA_TEAM_BADGUYS )
						hAnimGate:SetAngles( vGateAngles.x, vGateAngles.y, vGateAngles.z )
						hAnimGate:AddNewModifier( hAnimGate, nil, "modifier_destructible_gate_anim", {} )
					end
				end
			end
		end
	end
end
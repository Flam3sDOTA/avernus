function Spawn( keys )
	if not IsServer() then
		return
	end

	if thisEntity == nil then
		return
	end

	hSummonWolvesAbility = thisEntity:FindAbilityByName( "werewolf_summon_wolves" )
	hOverpowerAbility = thisEntity:FindAbilityByName( "ursa_overpower_lua" )

	thisEntity:SetContextThink( "MiniBossWerewolfThink", MiniBossWerewolfThink, 1 )
end

function MiniBossWerewolfThink()
	if GameRules:IsGamePaused() == true then
		return 1
	end

	if not thisEntity.bInitialized then
		thisEntity.vInitialSpawnPos = thisEntity:GetOrigin()
		thisEntity.bInitialized = true
	end

	if thisEntity:GetAttackTarget() == nil and not thisEntity:IsChanneling() then
		local enemies = FindUnitsInRadius( thisEntity:GetTeamNumber(), thisEntity:GetOrigin(), thisEntity, 1100, DOTA_UNIT_TARGET_TEAM_ENEMY, DOTA_UNIT_TARGET_HERO, DOTA_UNIT_TARGET_FLAG_NONE, FIND_CLOSEST, false )
		if #enemies > 0 then
			ExecuteOrderFromTable({
				UnitIndex = thisEntity:entindex(),
				OrderType = DOTA_UNIT_ORDER_ATTACK_TARGET,
				AbilityIndex = nil,
				TargetIndex = enemies[1]:entindex(),
			})
		else
			RetreatSpawnPosition()
		end
	end

	if hSummonWolvesAbility ~= nil and hSummonWolvesAbility:IsFullyCastable() and thisEntity:GetHealthPercent() <= 90 then
		local enemies = FindUnitsInRadius( thisEntity:GetTeamNumber(), thisEntity:GetOrigin(), thisEntity, 1100, DOTA_UNIT_TARGET_TEAM_ENEMY, DOTA_UNIT_TARGET_HERO, DOTA_UNIT_TARGET_FLAG_NONE, FIND_CLOSEST, false )
		if #enemies > 0 then
			CastSummonWolves()
		end
	end

	if hOverpowerAbility ~= nil and hOverpowerAbility:IsFullyCastable() and thisEntity:GetHealthPercent() <= 50 then
		local enemies = FindUnitsInRadius( thisEntity:GetTeamNumber(), thisEntity:GetOrigin(), thisEntity, 1100, DOTA_UNIT_TARGET_TEAM_ENEMY, DOTA_UNIT_TARGET_HERO, DOTA_UNIT_TARGET_FLAG_NONE, FIND_CLOSEST, false )
		if #enemies > 0 then
			CastOverpower()
		end
	end

	local fDist = ( thisEntity:GetOrigin() - thisEntity.vInitialSpawnPos ):Length2D()
	if fDist > 1800 then
		RetreatSpawnPosition()
		return 2.0
	end

	return 0.5
end

function CastSummonWolves()
	ExecuteOrderFromTable({
		UnitIndex = thisEntity:entindex(),
		OrderType = DOTA_UNIT_ORDER_CAST_NO_TARGET,
		AbilityIndex = hSummonWolvesAbility:entindex(),
	})
end

function CastOverpower()
	ExecuteOrderFromTable({
		UnitIndex = thisEntity:entindex(),
		OrderType = DOTA_UNIT_ORDER_CAST_NO_TARGET,
		AbilityIndex = hOverpowerAbility:entindex(),
	})
end

function RetreatSpawnPosition()
	ExecuteOrderFromTable({
		UnitIndex = thisEntity:entindex(),
		OrderType = DOTA_UNIT_ORDER_MOVE_TO_POSITION,
		Position = thisEntity.vInitialSpawnPos
	})
end
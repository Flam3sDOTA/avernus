
werewolf_summon_wolves = class({})

--------------------------------------------------------------------------------

function werewolf_summon_wolves:OnAbilityPhaseStart()
	if IsServer() then
		local nSound = RandomInt( 1, 3 )
		if nSound == 1 then
			EmitSoundOn( "lycan_lycan_ability_summon_02", self:GetCaster() )
		end
		if nSound == 2 then
			EmitSoundOn( "lycan_lycan_ability_summon_03", self:GetCaster() )
		end
		if nSound == 3 then
			EmitSoundOn( "lycan_lycan_ability_summon_06", self:GetCaster() )
		end
	end
	return true
end

--------------------------------------------------------------------------------

function werewolf_summon_wolves:OnSpellStart()
	if IsServer() then
		EmitSoundOn( "LycanBoss.SummonWolves", self:GetCaster() )
		local nHoundSpawns = 2

		for i = 0, nHoundSpawns do
			local hHound = CreateUnitByName( "npc_dota_creature_dire_hound", self:GetCaster():GetAbsOrigin(), true, self:GetCaster(), self:GetCaster(), self:GetCaster():GetTeamNumber() )
			if hHound ~= nil then
				hHound:SetInitialGoalEntity( self:GetCaster():GetInitialGoalEntity() )

				local vRandomOffset = Vector( RandomInt( -300, 300 ), RandomInt( -300, 300 ), 0 )
				local vSpawnPoint = self:GetCaster():GetAbsOrigin() + vRandomOffset
				FindClearSpaceForUnit( hHound, vSpawnPoint, true )

				local nFXIndex = ParticleManager:CreateParticle( "particles/units/heroes/hero_lycan/lycan_summon_wolves_cast.vpcf", PATTACH_CUSTOMORIGIN, self:GetCaster() )
				ParticleManager:SetParticleControlEnt( nFXIndex, 0, self:GetCaster(), PATTACH_POINT_FOLLOW, "attach_attack1", self:GetCaster():GetAbsOrigin(), true )
				ParticleManager:ReleaseParticleIndex( nFXIndex )
				ParticleManager:ReleaseParticleIndex(  ParticleManager:CreateParticle( "particles/units/heroes/hero_lycan/lycan_summon_wolves_spawn.vpcf", PATTACH_ABSORIGIN_FOLLOW, hHound ) )
			end
		end
	end
end

function werewolf_summon_wolves:GetCooldown( level )
	return 30
end

modifier_destructible_gate = class({})

--------------------------------------------------------------------------------

function modifier_destructible_gate:IsHidden()
	return true
end

--------------------------------------------------------------------------------

function modifier_destructible_gate:CanParentBeAutoAttacked()
	return false
end

--------------------------------------------------------------------------------

function modifier_destructible_gate:GetPriority()
	return MODIFIER_PRIORITY_ULTRA
end

--------------------------------------------------------------------------------

function modifier_destructible_gate:OnCreated( kv )
	if IsServer() then
	end
end

--------------------------------------------------------------------------------

function modifier_destructible_gate:CheckState()
	local state = {}
	state[MODIFIER_STATE_ROOTED] = true
	state[MODIFIER_STATE_BLIND] = true
	state[MODIFIER_STATE_MAGIC_IMMUNE] = true
	state[MODIFIER_STATE_NOT_ON_MINIMAP] = true
	state[MODIFIER_STATE_NO_HEALTH_BAR] = true
	state[MODIFIER_STATE_UNSELECTABLE] = true
	state[MODIFIER_STATE_ATTACK_IMMUNE] = true

	return state
end

--------------------------------------------------------------------------------

function modifier_destructible_gate:DeclareFunctions()
	local funcs = {
		MODIFIER_EVENT_ON_DEATH,
		MODIFIER_PROPERTY_PROVIDES_FOW_POSITION,
		MODIFIER_PROPERTY_ABSOLUTE_NO_DAMAGE_MAGICAL,
		MODIFIER_PROPERTY_ABSOLUTE_NO_DAMAGE_PURE,
	}

	return funcs
end

-----------------------------------------------------------------------

function modifier_destructible_gate:OnDeath( params )
	if IsServer() then
		if params.unit == self:GetParent() and not self:GetParent():IsNull() then
			local radius = 400
			self:PlayDustParticle( radius )

			local fShakeAmt = 15
			local fShakeDuration = 0.75

			ScreenShake( self:GetParent():GetOrigin(), fShakeAmt, 100.0, fShakeDuration, 1300.0, 0, true )

			local szGateWithAnim = self:GetParent():GetUnitName() .. "_anim"
			local hAnimGate = CreateUnitByName( szGateWithAnim, self:GetParent():GetAbsOrigin(), false, nil, nil, DOTA_TEAM_BADGUYS )
			local vGateAngles = self:GetParent():GetAnglesAsVector()

			hAnimGate:SetAngles( vGateAngles.x, vGateAngles.y, vGateAngles.z )
			hAnimGate:AddNewModifier( hAnimGate, nil, "modifier_destructible_gate_anim", {} )

			UTIL_Remove( self:GetParent() )
		end
	end
end

-----------------------------------------------------------------------

function modifier_destructible_gate:GetModifierProvidesFOWVision( params )
	return 1
end

------------------------------------------------------------

function modifier_destructible_gate:GetAbsoluteNoDamageMagical( params )
	return 1
end

------------------------------------------------------------

function modifier_destructible_gate:GetAbsoluteNoDamagePure( params )
	return 1
end

------------------------------------------------------------

function modifier_destructible_gate:PlayDustParticle( radius )
	local vPos = self:GetParent():GetOrigin()
	vPos.z = vPos.z + 100

	local nFXIndex = ParticleManager:CreateParticle( "particles/dev/library/base_dust_hit.vpcf", PATTACH_CUSTOMORIGIN, nil )
	ParticleManager:SetParticleControl( nFXIndex, 0, vPos )
	ParticleManager:SetParticleControl( nFXIndex, 1, Vector( radius, radius, radius ) )
	ParticleManager:ReleaseParticleIndex( nFXIndex )
end

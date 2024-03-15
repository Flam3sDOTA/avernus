modifier_frozen = class({})

--------------------------------------------------------------------------------

function modifier_frozen:IsHidden()
	return true
end

--------------------------------------------------------------------------------

function modifier_frozen:CanParentBeAutoAttacked()
	return false
end

--------------------------------------------------------------------------------

function modifier_frozen:GetPriority()
	return MODIFIER_PRIORITY_ULTRA
end

--------------------------------------------------------------------------------

function modifier_frozen:OnCreated( kv )
	if IsServer() then
	end
end

--------------------------------------------------------------------------------

function modifier_frozen:CheckState()
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

function modifier_frozen:DeclareFunctions()
	local funcs = {
		MODIFIER_PROPERTY_PROVIDES_FOW_POSITION,
		MODIFIER_PROPERTY_ABSOLUTE_NO_DAMAGE_MAGICAL,
		MODIFIER_PROPERTY_ABSOLUTE_NO_DAMAGE_PURE,
	}

	return funcs
end

-----------------------------------------------------------------------

function modifier_frozen:GetModifierProvidesFOWVision( params )
	return 1
end

------------------------------------------------------------

function modifier_frozen:GetAbsoluteNoDamageMagical( params )
	return 1
end

------------------------------------------------------------

function modifier_frozen:GetAbsoluteNoDamagePure( params )
	return 1
end
if avernus == nil then
	_G.avernus = class({})
end

require("libraries/animations")
require("libraries/projectiles")
require("libraries/selection")
require("libraries/timers")
require("libraries/utility_functions")
require("events")
require("precache")

LinkLuaModifier( "modifier_destructible_gate",	"lua_abilities/modifiers/modifier_destructible_gate",	LUA_MODIFIER_MOTION_NONE )
LinkLuaModifier( "modifier_destructible_gate_anim",	"lua_abilities/modifiers/modifier_destructible_gate_anim",	LUA_MODIFIER_MOTION_NONE )

function Precache( context )
	for _,Item in pairs( g_ItemPrecache ) do
    	PrecacheItemByNameSync( Item, context )
    end

	for _,Model in pairs( g_ModelPrecache ) do
		PrecacheResource( "model", Model, context )
	end

	for _,Particle in pairs( g_ParticlePrecache ) do
		PrecacheResource( "particle", Particle, context )
	end

	for _,ParticleFolder in pairs( g_ParticleFolderPrecache ) do
		PrecacheResource( "particle_folder", Particle, context )
	end

	for _,Sound in pairs( g_SoundPrecache ) do
		PrecacheResource( "soundfile", Sound, context )
	end
end

function Activate()
	GameRules.avernus = avernus()
	GameRules.avernus:InitGameMode()
end

function avernus:InitGameMode()
	-- Handle Team Colors
	self.m_TeamColors = {}
	self.m_TeamColors[DOTA_TEAM_GOODGUYS] = { 178, 34, 34 }		--		Red
	self.m_TeamColors[DOTA_TEAM_BADGUYS]  = { 0, 100, 0 }		--		Green
	self.m_TeamColors[DOTA_TEAM_CUSTOM_1] = { 30, 144, 225 }	--      Blue
	self.m_TeamColors[DOTA_TEAM_CUSTOM_2] = { 212, 212, 37 }	--		Yellow
	self.m_TeamColors[DOTA_TEAM_CUSTOM_3] = { 0, 0, 0 }	--		
	self.m_TeamColors[DOTA_TEAM_CUSTOM_4] = { 0, 0, 0 }	--		
	self.m_TeamColors[DOTA_TEAM_CUSTOM_5] = { 0, 0, 0 }	--
	self.m_TeamColors[DOTA_TEAM_CUSTOM_6] = { 0, 0, 0 }	--
	self.m_TeamColors[DOTA_TEAM_CUSTOM_7] = { 0, 0, 0 }	--
	self.m_TeamColors[DOTA_TEAM_CUSTOM_8] = { 0, 0, 0 }	--
	
	-- Handle Player Colors
	PLAYER_COLORS = {}
    PLAYER_COLORS[0] = "#cc2727;"
    PLAYER_COLORS[1] = "#0ba30b;"
    PLAYER_COLORS[2] = "#259ef5;"
    PLAYER_COLORS[3] = "#e3e332;"
    PLAYER_COLORS[4] = "#ffffff;"
    PLAYER_COLORS[5] = "#ffffff;"
    PLAYER_COLORS[6] = "#ffffff;"
    PLAYER_COLORS[7] = "#ffffff;"
    PLAYER_COLORS[8] = "#ffffff;"
    PLAYER_COLORS[9] = "#ffffff;"

	for team = 0, (DOTA_TEAM_COUNT-1) do
		color = self.m_TeamColors[ team ]
		if color then
			SetTeamCustomHealthbarColor( team, color[1], color[2], color[3] )
		end
	end

	self.m_VictoryMessages = {}
	self.m_VictoryMessages[DOTA_TEAM_GOODGUYS] = "#VictoryMessage_GoodGuys"
	self.m_VictoryMessages[DOTA_TEAM_BADGUYS]  = "#VictoryMessage_BadGuys"
	self.m_VictoryMessages[DOTA_TEAM_CUSTOM_1] = "#VictoryMessage_Custom1"
	self.m_VictoryMessages[DOTA_TEAM_CUSTOM_2] = "#VictoryMessage_Custom2"
	self.m_VictoryMessages[DOTA_TEAM_CUSTOM_3] = "#VictoryMessage_Custom3"
	self.m_VictoryMessages[DOTA_TEAM_CUSTOM_4] = "#VictoryMessage_Custom4"
	self.m_VictoryMessages[DOTA_TEAM_CUSTOM_5] = "#VictoryMessage_Custom5"
	self.m_VictoryMessages[DOTA_TEAM_CUSTOM_6] = "#VictoryMessage_Custom6"
	self.m_VictoryMessages[DOTA_TEAM_CUSTOM_7] = "#VictoryMessage_Custom7"
	self.m_VictoryMessages[DOTA_TEAM_CUSTOM_8] = "#VictoryMessage_Custom8"

	-- Game Rules
	GameRules:SetCustomGameAllowMusicAtGameStart(false)
	GameRules:SetCustomGameAllowBattleMusic(false)
	GameRules:SetCustomGameAllowHeroPickMusic(false)
	GameRules:EnableCustomGameSetupAutoLaunch(true)
	GameRules:SetSameHeroSelectionEnabled(true)
	GameRules:SetHideKillMessageHeaders(true)
	GameRules:LockCustomGameSetupTeamAssignment(true)
	GameRules:SetUseUniversalShopMode(true)
	GameRules:SetHeroRespawnEnabled(false)
	GameRules:SetSafeToLeave(true)
	GameRules:SetCustomGameSetupAutoLaunchDelay(3)
	GameRules:SetCustomGameEndDelay(15)
	GameRules:SetHeroSelectionTime(10)
	GameRules:SetPreGameTime(0)
	GameRules:SetStrategyTime(0)
	GameRules:SetShowcaseTime(0)
	GameRules:SetGoldTickTime(0)
	GameRules:SetStartingGold(0) -- default 0
	GameRules:SetGoldPerTick(0)
	GameRules:SetTimeOfDay(0.751)

	-- Gamemode Rules
	local GameMode = GameRules:GetGameModeEntity()
	GameMode:SetUseCustomHeroLevels(false)
	GameMode:SetCustomXPRequiredToReachNextLevel(XP_PER_LEVEL_TABLE)
	GameMode:DisableHudFlip(true)
	GameMode:SetBuybackEnabled(false)
	GameMode:SetFogOfWarDisabled(false)
	GameMode:SetUnseenFogOfWarEnabled(false)
	GameMode:SetLoseGoldOnDeath(false)
	GameMode:SetAnnouncerDisabled(true)
	GameMode:SetDeathOverlayDisabled(true)
	GameMode:SetDaynightCycleDisabled(true)
	GameMode:SetWeatherEffectsDisabled(false)
	GameMode:SetRemoveIllusionsOnDeath(true)
	GameMode:SetStashPurchasingDisabled(true)
	GameMode:SetStickyItemDisabled(true)
	GameMode:SetNeutralStashEnabled(false)
	GameMode:SetAllowNeutralItemDrops(false)
	GameMode:SetRecommendedItemsDisabled(true)
	GameMode:SetTopBarTeamValuesVisible(false)
	GameMode:SetTopBarTeamValuesOverride(true)
	GameMode:SetRecommendedItemsDisabled(true)
	GameMode:SetSelectionGoldPenaltyEnabled(false)
	GameMode:SetKillingSpreeAnnouncerDisabled(true)
	GameMode:SetCanSellAnywhere(true)
	GameMode:SetCustomBackpackSwapCooldown(0)
	--GameMode:SetCustomGameForceHero("npc_dota_hero_wisp")
	--GameMode:SetTPScrollSlotItemOverride("item_blink")

	XP_PER_LEVEL_TABLE = {
		3131, -- 1
		3131, -- 2
		3131, -- 3
		3131, -- 4
		99999, -- 5
		99999, -- 6
		99999, -- 7
		99999, -- 8
		99999, -- 9
		99999, -- 10
		99999, -- 11
		99999,  -- 12
		99999,  -- 13
		99999,  -- 14
		99999,  -- 15
		99999,  -- 16
		99999,  -- 17
		99999,  -- 18
		99999,  -- 19
		99999,  -- 20
		99999,  -- 21
		99999,  -- 22
		99999,  -- 23
		99999,  -- 24
		99999,  -- 25
		99999,  -- 26
		99999,  -- 27
		99999,  -- 28
		99999  -- 29
	}

	-- Events
	ListenToGameEvent("npc_spawned", Dynamic_Wrap(avernus, "OnNPCSpawned"), self)
	ListenToGameEvent('dota_team_kill_credit', Dynamic_Wrap(avernus, "OnTeamKillCredit" ), self )
	ListenToGameEvent('entity_killed', Dynamic_Wrap(avernus, 'OnEntityKilled'), self)
	ListenToGameEvent('entity_hurt', Dynamic_Wrap(avernus, 'OnEntityHurt'), self)
	ListenToGameEvent('game_rules_state_change', Dynamic_Wrap( avernus, 'OnGameRulesStateChange' ), self )
	ListenToGameEvent('dota_item_picked_up', Dynamic_Wrap(avernus, 'OnItemPickedUp'), self)

	MAX_NUMBER_OF_TEAMS = 4   
	CUSTOM_TEAM_PLAYER_COUNT = {}        
	CUSTOM_TEAM_PLAYER_COUNT[DOTA_TEAM_GOODGUYS] = 1
	CUSTOM_TEAM_PLAYER_COUNT[DOTA_TEAM_BADGUYS]  = 1
	CUSTOM_TEAM_PLAYER_COUNT[DOTA_TEAM_CUSTOM_1] = 1
	CUSTOM_TEAM_PLAYER_COUNT[DOTA_TEAM_CUSTOM_2] = 1

	local count = 0
	for team,number in pairs(CUSTOM_TEAM_PLAYER_COUNT) do
		if count >= MAX_NUMBER_OF_TEAMS then
			GameRules:SetCustomGameTeamMaxPlayers(team, 0)
		else
			GameRules:SetCustomGameTeamMaxPlayers(team, number)
		end
		count = count + 1
	end

	if IsInToolsMode() then
   end
end

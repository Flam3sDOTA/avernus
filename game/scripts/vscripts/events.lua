---------------------------------------------------------------------------
-- Event: OnNPCSpawned
---------------------------------------------------------------------------
function avernus:OnNPCSpawned(event)
    local spawned = EntIndexToHScript(event.entindex)

    if not spawned then
        return
    end
  
  if spawned:IsRealHero() and spawned.bFirstspawned == nil then
    spawned.bFirstspawned = true
    avernus:OnHeroInGame(spawned)
  end
end

---------------------------------------------------------------------------
-- Event: OnHeroInGame
---------------------------------------------------------------------------
function avernus:OnHeroInGame(hero)
end

---------------------------------------------------------------------------
-- Event: OnEntityHurt
---------------------------------------------------------------------------
function avernus:OnEntityHurt(event)
  local attacker = EntIndexToHScript(event.entindex_attacker)
  local inflictor
  if event.entindex_inflictor then
    inflictor = EntIndexToHScript(event.entindex_inflictor)
  end
  local damagebits = event.damagebits
  local damage = event.damage
end

---------------------------------------------------------------------------
-- Event: OnTeamKillCredit
---------------------------------------------------------------------------
function avernus:OnTeamKillCredit(event)
  local nKillerID = event.killer_userid
  local nTeamID = event.teamnumber
  local nTeamKills = event.herokills
  local KillerName = PlayerResource:GetPlayerName(nKillerID)
end

---------------------------------------------------------------------------
-- Event: OnEntityKilled & RollDrops
---------------------------------------------------------------------------
function avernus:OnEntityKilled(event)
  local killed = EntIndexToHScript(event.entindex_killed)
  if not killed then return end
end

---------------------------------------------------------------------------
-- Event: OnGameRulesStateChange
---------------------------------------------------------------------------
function avernus:OnGameRulesStateChange()
  local nNewState = GameRules:State_Get()
  if nNewState == DOTA_GAMERULES_STATE_PRE_GAME then
    print( "[PRE_GAME] in Progress" )
  elseif nNewState == DOTA_GAMERULES_STATE_GAME_IN_PROGRESS then
    avernus:OnGameInProgress()
	  Convars:SetInt("dota_max_physical_items_purchase_limit", 9999)
    Convars:SetInt("dota_max_physical_items_drop_limit", 9999)
  end
end

function avernus:OnGameInProgress()
end
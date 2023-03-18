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
-- Event: OnEntityKilled
---------------------------------------------------------------------------
function avernus:OnEntityKilled(event)
  local killed = EntIndexToHScript(event.entindex_killed)
  if not killed then return end

  --if not killed:IsRealHero() then
    --local particle = ParticleManager:CreateParticle( "particles/econ/items/faceless_void/faceless_void_arcana/faceless_void_arcana_kill_effect_target.vpcf", PATTACH_ABSORIGIN_FOLLOW, killed)
  --end
end

---------------------------------------------------------------------------
-- Event: OnGameRulesStateChange
---------------------------------------------------------------------------
function avernus:OnGameRulesStateChange()
  local nNewState = GameRules:State_Get()
  if nNewState == DOTA_GAMERULES_STATE_PRE_GAME then
    print( "[PRE_GAME] in Progress" )
  elseif nNewState == DOTA_GAMERULES_STATE_GAME_IN_PROGRESS then
	  Convars:SetInt("dota_max_physical_items_purchase_limit", 9999)
    Convars:SetInt("dota_max_physical_items_drop_limit", 9999)
    Timers:CreateTimer(0.5, function()
      InitializeCrates()
      InitializeVases()
      InitializeMiniBosses()
      InitializeGivingTree()
    end)
  end
end

---------------------------------------------------------------------------
-- Event: OnItemPickedUp
---------------------------------------------------------------------------
function avernus:OnItemPickedUp(event)
  local item = EntIndexToHScript(event.ItemEntityIndex)
  hCollector = EntIndexToHScript(event.HeroEntityIndex)

  if hCollector and hCollector:IsHero() and item then
    item:SetPurchaseTime(99999)
  end
end

function InitializeCrates()
  for i=1,44 do
    local cratespawnpoint = Entities:FindByName(nil, "CratesSpawnPoint" .. i):GetAbsOrigin()
    local crate = CreateUnitByName("npc_dota_crate_custom", cratespawnpoint, true, nil, nil, DOTA_TEAM_NEUTRALS)
  end
end

function InitializeVases()
  for i=1,46 do
    local vasespawnpoint = Entities:FindByName(nil, "VasesSpawnPoint" .. i):GetAbsOrigin()
    local vase = CreateUnitByName("npc_dota_vase_custom", vasespawnpoint, true, nil, nil, DOTA_TEAM_NEUTRALS)
  end
end

function InitializeMiniBosses()
  local minibossogrespawnlocation = Entities:FindByName(nil, "miniboss_spawn_location1"):GetAbsOrigin()
  local miniboss_ogre = CreateUnitByName("miniboss_ogre", minibossogrespawnlocation, true, nil, nil, DOTA_TEAM_NEUTRALS)
end

function InitializeGivingTree()
  local GivingTreeRareLootSpawnLocation1 = Entities:FindByName(nil, "giving_tree1"):GetAbsOrigin()
  local GivingTreeRareLootSpawnLocation2 = Entities:FindByName(nil, "giving_tree2"):GetAbsOrigin()
  local CommonChance = 50
  local RareChance = 10

  if RollPercentage(CommonChance) then
    local itemcommon = CreateItem("item_energy_crystal_valuable", nil, nil)
    local poscommon = GivingTreeRareLootSpawnLocation1
    local spawncommon = CreateItemOnPositionSync( poscommon, itemcommon )
  end

  if RollPercentage(RareChance) then
    local itemrare = CreateItem("item_midas_coin_valuable", nil, nil)
    local posrare = GivingTreeRareLootSpawnLocation2
    local spawnrare = CreateItemOnPositionSync( posrare, itemrare )
  end
end
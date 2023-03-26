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

  for i=1,3 do
    hero:AddItemByName("item_ward_observer")
  end

  if hero:GetUnitName() == "npc_dota_hero_beastmaster" then
    hero:AddItemByName("item_barbarian_thick_skinned")
  end
  
  if hero:GetUnitName() == "npc_dota_hero_drow_ranger" then
    hero:AddItemByName("item_ranger_marksmanship")
  end

  if hero:GetUnitName() == "npc_dota_hero_invoker" then
    hero:AddItemByName("item_mage_perfectionist")
  end

  if hero:GetUnitName() == "npc_dota_hero_muerta" then
    hero:AddItemByName("item_gunslinger_sharpshooter")
  end

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
      InitializeLockedGates()
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

  local minibosswerewolfspawnlocation = Entities:FindByName(nil, "miniboss_spawn_location2"):GetAbsOrigin()
  local miniboss_werewolf = CreateUnitByName("miniboss_werewolf", minibosswerewolfspawnlocation, true, nil, nil, DOTA_TEAM_NEUTRALS)
  miniboss_werewolf:SetAngles(0, 180, 0)

  local particleminibossogre = ParticleManager:CreateParticle( "particles/creep_effects/overhead_boss.vpcf", PATTACH_OVERHEAD_FOLLOW, miniboss_ogre)
  ParticleManager:SetParticleControl(particleminibossogre, 0, miniboss_ogre:GetOrigin())
	ParticleManager:SetParticleControl(particleminibossogre, 3, miniboss_ogre:GetOrigin())

  local particleminibosswerewolf = ParticleManager:CreateParticle( "particles/creep_effects/overhead_boss.vpcf", PATTACH_OVERHEAD_FOLLOW, miniboss_werewolf)
  ParticleManager:SetParticleControl(particleminibosswerewolf, 0, miniboss_werewolf:GetOrigin())
	ParticleManager:SetParticleControl(particleminibosswerewolf, 3, miniboss_werewolf:GetOrigin())
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

function InitializeLockedGates()
  local Gate1SpawnLocation = Entities:FindByName(nil, "gate1spawnlocation"):GetAbsOrigin()
  local Gate1 = CreateUnitByName("npc_dota_gate_1", Gate1SpawnLocation, false, nil, nil, DOTA_TEAM_NEUTRALS)
  Gate1:AddNewModifier( Gate1, nil, "modifier_destructible_gate", { duration = -1 } )
  Gate1:SetAngles(0, 70, 0)

  local Gate2SpawnLocation = Entities:FindByName(nil, "gate2spawnlocation"):GetAbsOrigin()
  local Gate2 = CreateUnitByName("npc_dota_gate_2", Gate2SpawnLocation, false, nil, nil, DOTA_TEAM_NEUTRALS)
  Gate2:AddNewModifier( Gate2, nil, "modifier_destructible_gate", { duration = -1 } )
  Gate2:SetAngles(0, 130, 0)

  local Gate3SpawnLocation = Entities:FindByName(nil, "gate3spawnlocation"):GetAbsOrigin()
  local Gate3 = CreateUnitByName("npc_dota_gate_3", Gate3SpawnLocation, false, nil, nil, DOTA_TEAM_NEUTRALS)
  Gate3:AddNewModifier( Gate3, nil, "modifier_destructible_gate", { duration = -1 } )
  Gate3:SetAngles(0, 130, 0)

  local Gate4SpawnLocation = Entities:FindByName(nil, "gate4spawnlocation"):GetAbsOrigin()
  local Gate4 = CreateUnitByName("npc_dota_gate_4", Gate4SpawnLocation, false, nil, nil, DOTA_TEAM_NEUTRALS)
  Gate4:AddNewModifier( Gate4, nil, "modifier_destructible_gate", { duration = -1 } )
  Gate4:SetAngles(0, 65, 0)
end
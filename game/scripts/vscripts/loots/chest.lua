function chest_open(keys)
    local item_list = LoadKeyValues("scripts/kv/chest_results.kv")
    local caster = keys.caster
    local Player_ID = caster:GetPlayerOwnerID() 
    local item = keys.ability
    local gold = 0
    if keys.gold >0 then
        gold = keys.gold_amt + math.random(-(keys.gold_rand),(keys.gold_rand))
    end
    caster:RemoveItem(item)
    local chest_name = keys.chest_name

    item_list = item_list[chest_name]

    local len = 0
    for k,v in pairs( item_list ) do
        len = len + 1
    end
    local item_number = 0
    if keys.gold == 1 then
        item_number = math.random(1,(len + 1))
    else
        item_number = math.random(1,len)
    end
    if item_number > len then 
        PlayerResource:ModifyGold(Player_ID, gold, true, 0 ) 
    else
        local item_name = item_list[tostring(item_number)]
        local item_reward = CreateItem( item_name, caster, caster )
        caster:AddItem(item_reward)
		item_reward:SetPurchaseTime(99999)
        if keys.gold == 2 then
            PlayerResource:ModifyGold(Player_ID, gold, true, 0 ) 
        end
    end
end
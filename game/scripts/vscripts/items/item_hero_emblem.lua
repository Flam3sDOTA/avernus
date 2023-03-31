function HeroEmblemAncient ( keys )
    Timers:CreateTimer(0.2, function()
        local ability = keys.ability
        local Hero = ability:GetOwner()
        local HeroEmblemTrail = ParticleManager:CreateParticle( "particles/econ/events/fall_2021/fall_2021_emblem_game_effect.vpcf", PATTACH_ABSORIGIN_FOLLOW, Hero)
    end)
end
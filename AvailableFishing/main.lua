if AvailableFishing.Config.Enabled then

    ModUtil.Table.Mutate(ScreenData.WeaponShop.ItemCategories, function (obj)
        if obj.Name ~= "WeaponShop_Tools" then return obj end

        return {
            Name = "WeaponShop_Tools",
            Icon = "GUI\\Screens\\WeaponShop\\Icon-Tools",
            GameStateRequirements =
            {
                {
                   PathTrue = { "GameState", "WorldUpgrades", "WorldUpgradeToolsShop" },
                },
            },
            "ToolPickaxe",
            "ToolExorcismBook",
            "ToolShovel",
            "ToolFishingRod",
        }
    end)

    ModUtil.Table.Merge(WeaponShopItemData, {
        ToolFishingRod =
        {
            Icon = "Shop_BedroomDecor",
            Graphic = "ToolArt04",
            UnlockTextId = "ToolShopUnlock",
            Cost =
            {
                MetaFabric = 3,
                MetaCurrency = 5
            },
            OnActivateFunctionName = "ActivateToolKit",
            SkipSpawnSkelly = true,
            PreRevealVoiceLines =
            {
                TriggerCooldowns = { "MelinoeMiscToolEquipSpeech" },
                {
                    { Cue = "/VO/Melinoe_0237", Text = "You're mine.",      PreLineWait = 1.0 },
                },
                [2] = GlobalVoiceLines.SkellyToolUnlockReactionVoiceLines,
            },
            FlavorText = "ToolFishingRod_FlavorText",
        }
    })
end

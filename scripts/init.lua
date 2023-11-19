-- SDK
ScriptHost:LoadScript("scripts/class.lua")
ScriptHost:LoadScript("scripts/custom_item.lua")
ScriptHost:LoadScript("scripts/logic/helpers.lua")

-- Item Sets
Tracker:AddItems("items/star_spirits.json")
Tracker:AddItems("items/star_spirit_lcl_icons.json")
Tracker:AddItems("items/difficulty.json")
Tracker:AddItems("items/partners.json")
Tracker:AddItems("items/upgrades.json")
Tracker:AddItems("items/prologue.json")
Tracker:AddItems("items/toadtown.json")
Tracker:AddItems("items/ch1.json")
Tracker:AddItems("items/ch2.json")
Tracker:AddItems("items/ch3.json")
Tracker:AddItems("items/ch4.json")
Tracker:AddItems("items/ch5.json")
Tracker:AddItems("items/ch6.json")
Tracker:AddItems("items/ch7.json")
Tracker:AddItems("items/letters.json")
Tracker:AddItems("items/koopakoot.json")

-- Tracker Settings
Tracker:AddItems("items/settings.json")
Tracker:AddItems("items/openareas.json")

-- Maps
if (string.find(Tracker.ActiveVariantUID, "Map_Tracker")) then
    ScriptHost:LoadScript("scripts/logic/region_access.lua")
    Tracker:AddMaps("maps/maps.json")
    ScriptHost:LoadScript("scripts/loadlocations.lua")
end

-- Layouts
Tracker:AddLayouts("layouts/broadcast.json")
if (string.find(Tracker.ActiveVariantUID, "Map_Tracker")) then
    Tracker:AddLayouts("layouts/full_map/items.json")
    Tracker:AddLayouts("layouts/full_map/tracker.json")
else
    Tracker:AddLayouts("layouts/items_only/items.json")
    Tracker:AddLayouts("layouts/items_only/tracker_items_only.json")
end

-- Scripts
ScriptHost:LoadScript("scripts/lcl.lua")

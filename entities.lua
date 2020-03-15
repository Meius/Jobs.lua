--[[---------------------------------------------------------------------------
DarkRP custom entities
---------------------------------------------------------------------------

This file contains your custom entities.
This file should also contain entities from DarkRP that you edited.

Note: If you want to edit a default DarkRP entity, first disable it in darkrp_config/disabled_defaults.lua
    Once you've done that, copy and paste the entity to this file and edit it.

The default entities can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/addentities.lua#L111

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomEntityFields

Add entities under the following line:
---------------------------------------------------------------------------]]
DarkRP.createEntity("Medic Kiosk", {
    ent = "medic_kiosk",
    model = "models/props_lab/hevplate.mdl",
    price = 500,
    max = 3,
    cmd = "buymedickiosk",
    allowed = {TEAM_MEDIC},
    category = "Medic Kiosk"
})

DarkRP.createEntity("Medic Kiosk (Refill)", {
    ent = "medic_kiosk_refill",
    model = "models/healthvial.mdl",
    price = 100,
    max = 3,
    cmd = "buymedickioskrefill",
    allowed = {TEAM_MEDIC},
    category = "Medic Kiosk"
})

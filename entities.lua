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
// Medic

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

// Vapen

DarkRP.createShipment("P08 Luger", {
	model = "models/weapons/w_luger_p08.mdl",
	entity = "m9k_luger",
	price = 10000, // Price for a shipment
	amount = 10, // How many in a shipment
	separate = true,
	pricesep = 1000, // Price of individual guns
	noship = false,
	allowed = {TEAM_GUN}, // Allowed teams
	sortOrder = 1,
	category = "Pistols",
})


DarkRP.createShipment("Remington 1858", {
	model = "models/weapons/w_remington_1858.mdl",
	entity = "m9k_remington1858",
	price = 12200, // Price for a shipment
	amount = 10, // How many in a shipment
	separate = true,
	pricesep = 1220, // Price of individual guns
	noship = false,
	allowed = {TEAM_GUN}, // Allowed teams
	sortOrder = 2,
	category = "Pistols",
})


DarkRP.createShipment("Colt 1911", {
	model = "models/weapons/s_dmgf_co1911.mdl",
	entity = "m9k_colt1911",
	price = 14400, // Price for a shipment
	amount = 10, // How many in a shipment
	separate = true,
	pricesep = 1440, // Price of individual guns
	noship = false,
	allowed = {TEAM_GUN}, // Allowed teams
	sortOrder = 3,
	category = "Pistols",
})


DarkRP.createShipment("HK USP", {
	model = "models/weapons/w_pist_fokkususp.mdl",
	entity = "m9k_usp",
	price = 14400, // Price for a shipment
	amount = 10, // How many in a shipment
	separate = true,
	pricesep = 1440, // Price of individual guns
	noship = false,
	allowed = {TEAM_GUN}, // Allowed teams
	sortOrder = 4,
	category = "Pistols",
})


DarkRP.createShipment("HK45C", {
	model = "models/weapons/w_hk45c.mdl",
	entity = "m9k_hk45",
	price = 14500, // Price for a shipment
	amount = 10, // How many in a shipment
	separate = true,
	pricesep = 1450, // Price of individual guns
	noship = false,
	allowed = {TEAM_GUN}, // Allowed teams
	sortOrder = 5,
	category = "Pistols",
})


DarkRP.createShipment("SIG Sauer P229R", {
	model = "models/weapons/w_sig_229r.mdl",
	entity = "m9k_sig_p229r",
	price = 15400, // Price for a shipment
	amount = 10, // How many in a shipment
	separate = true,
	pricesep = 1540, // Price of individual guns
	noship = false,
	allowed = {TEAM_GUN}, // Allowed teams
	sortOrder = 6,
	category = "Pistols",
})


DarkRP.createShipment("S&W Model 500", {
	model = "models/weapons/w_sw_model_500.mdl",
	entity = "m9k_model500",
	price = 16400, // Price for a shipment
	amount = 10, // How many in a shipment
	separate = true,
	pricesep = 1640, // Price of individual guns
	noship = false,
	allowed = {TEAM_GUN}, // Allowed teams
	sortOrder = 7,
	category = "Pistols",
})


DarkRP.createShipment("M92 Beretta", {
	model = "models/weapons/w_beretta_m92.mdl",
	entity = "m9k_m92beretta",
	price = 17300, // Price for a shipment
	amount = 10, // How many in a shipment
	separate = true,
	pricesep = 1730, // Price of individual guns
	noship = false,
	allowed = {TEAM_GUN}, // Allowed teams
	sortOrder = 8,
	category = "Pistols",
})


DarkRP.createShipment("S&W Model 627", {
	model = "models/weapons/w_sw_model_627.mdl",
	entity = "m9k_model627",
	price = 18000, // Price for a shipment
	amount = 10, // How many in a shipment
	separate = true,
	pricesep = 1800, // Price of individual guns
	noship = false,
	allowed = {TEAM_GUN}, // Allowed teams
	sortOrder = 9,
	category = "Pistols",
})


DarkRP.createShipment("Raging Bull", {
	model = "models/weapons/w_taurus_raging_bull.mdl",
	entity = "m9k_ragingbull",
	price = 18500, // Price for a shipment
	amount = 10, // How many in a shipment
	separate = true,
	pricesep = 1850, // Price of individual guns
	noship = false,
	allowed = {TEAM_GUN}, // Allowed teams
	sortOrder = 10,
	category = "Pistols",
})


DarkRP.createShipment("Desert Eagle", {
	model = "models/weapons/w_tcom_deagle.mdl",
	entity = "m9k_deagle",
	price = 19000, // Price for a shipment
	amount = 10, // How many in a shipment
	separate = true,
	pricesep = 1900, // Price of individual guns
	noship = false,
	allowed = {TEAM_GUN}, // Allowed teams
	sortOrder = 11,
	category = "Pistols",
})


DarkRP.createShipment("Colt Python", {
	model = "models/weapons/w_colt_python.mdl",
	entity = "m9k_coltpython",
	price = 20000, // Price for a shipment
	amount = 10, // How many in a shipment
	separate = true,
	pricesep = 2000, // Price of individual guns
	noship = false,
	allowed = {TEAM_GUN}, // Allowed teams
	sortOrder = 12,
	category = "Pistols",
})


DarkRP.createShipment("M29 Satan", {
	model = "models/weapons/w_m29_satan.mdl",
	entity = "m9k_m29satan",
	price = 21100, // Price for a shipment
	amount = 10, // How many in a shipment
	separate = true,
	pricesep = 2100, // Price of individual guns
	noship = false,
	allowed = {TEAM_GUN}, // Allowed teams
	sortOrder = 13,
	category = "Pistols",
})


DarkRP.createShipment("S & W Model 3 Russian", {
	model = "models/weapons/w_model_3_rus.mdl",
	entity = "m9k_model3russian",
	price = 22000, // Price for a shipment
	amount = 10, // How many in a shipment
	separate = true,
	pricesep = 2200, // Price of individual guns
	noship = false,
	allowed = {TEAM_GUN}, // Allowed teams
	sortOrder = 14,
	category = "Pistols",
})


DarkRP.createShipment("Glock 18", {
	model = "models/weapons/w_dmg_glock.mdl",
	entity = "m9k_glock",
	price = 35000, // Price for a shipment
	amount = 10, // How many in a shipment
	separate = true,
	pricesep = 3500, // Price of individual guns
	noship = false,
	allowed = {TEAM_GUN}, // Allowed teams
	sortOrder = 15,
	category = "Pistols",
})

// SMGS

DarkRP.createShipment("UZI", {
	model = "models/weapons/w_uzi_imi.mdl",
	entity = "m9k_uzi",
	price = 125000, // Price for a shipment
	amount = 10, // How many in a shipment
	separate = true,
	pricesep = 12500, // Price of individual guns
	noship = false,
	allowed = {TEAM_GUN}, // Allowed teams
	sortOrder = 6,
	category = "SMGS",
})


DarkRP.createShipment("MP9", {
	model = "models/weapons/w_brugger_thomet_mp9.mdl",
	entity = "m9k_mp9",
	price = 120000, // Price for a shipment
	amount = 10, // How many in a shipment
	separate = true,
	pricesep = 12000, // Price of individual guns
	noship = false,
	allowed = {TEAM_GUN}, // Allowed teams
	sortOrder = 4,
	category = "SMGS",
})


DarkRP.createShipment("KRISS Vector", {
	model = "models/weapons/w_kriss_vector.mdl",
	entity = "m9k_vector",
	price = 180000, // Price for a shipment
	amount = 10, // How many in a shipment
	separate = true,
	pricesep = 18000, // Price of individual guns
	noship = false,
	allowed = {TEAM_GUN}, // Allowed teams
	sortOrder = 17,
	category = "SMGS",
})


DarkRP.createShipment("HK UMP45", {
	model = "models/weapons/w_hk_ump45.mdl",
	entity = "m9k_ump45",
	price = 100000, // Price for a shipment
	amount = 10, // How many in a shipment
	separate = true,
	pricesep = 10000, // Price of individual guns
	noship = false,
	allowed = {TEAM_GUN}, // Allowed teams
	sortOrder = 2,
	category = "SMGS",
})


DarkRP.createShipment("Tommy Gun", {
	model = "models/weapons/w_tommy_gun.mdl",
	entity = "m9k_thompson",
	price = 145000, // Price for a shipment
	amount = 10, // How many in a shipment
	separate = true,
	pricesep = 14500, // Price of individual guns
	noship = false,
	allowed = {TEAM_GUN}, // Allowed teams
	sortOrder = 12,
	category = "SMGS",
})


DarkRP.createShipment("KAC PDW", {
	model = "models/weapons/w_kac_pdw.mdl",
	entity = "m9k_kac_pdw",
	price = 155000, // Price for a shipment
	amount = 10, // How many in a shipment
	separate = true,
	pricesep = 15500, // Price of individual guns
	noship = false,
	allowed = {TEAM_GUN}, // Allowed teams
	sortOrder = 14,
	category = "SMGS",
})


DarkRP.createShipment("STEN", {
	model = "models/weapons/w_sten.mdl",
	entity = "m9k_sten",
	price = 95000, // Price for a shipment
	amount = 10, // How many in a shipment
	separate = true,
	pricesep = 9500, // Price of individual guns
	noship = false,
	allowed = {TEAM_GUN}, // Allowed teams
	sortOrder = 1,
	category = "SMGS",
})


DarkRP.createShipment("MP40", {
	model = "models/weapons/w_mp40smg.mdl",
	entity = "m9k_mp40",
	price = 110000, // Price for a shipment
	amount = 10, // How many in a shipment
	separate = true,
	pricesep = 11000, // Price of individual guns
	noship = false,
	allowed = {TEAM_GUN}, // Allowed teams
	sortOrder = 3,
	category = "SMGS",
})


DarkRP.createShipment("Bizon PP19", {
	model = "models/weapons/w_pp19_bizon.mdl",
	entity = "m9k_bizonp19",
	price = 143000, // Price for a shipment
	amount = 10, // How many in a shipment
	separate = true,
	pricesep = 14300, // Price of individual guns
	noship = false,
	allowed = {TEAM_GUN}, // Allowed teams
	sortOrder = 10,
	category = "SMGS",
})


DarkRP.createShipment("HK MP5", {
	model = "models/weapons/w_hk_mp5.mdl",
	entity = "m9k_mp5",
	price = 130000, // Price for a shipment
	amount = 10, // How many in a shipment
	separate = true,
	pricesep = 13000, // Price of individual guns
	noship = false,
	allowed = {TEAM_GUN}, // Allowed teams
	sortOrder = 8,
	category = "SMGS",
})


DarkRP.createShipment("Magpul PDR", {
	model = "models/weapons/w_magpul_pdr.mdl",
	entity = "m9k_magpulpdr",
	price = 154000, // Price for a shipment
	amount = 10, // How many in a shipment
	separate = true,
	pricesep = 15400, // Price of individual guns
	noship = false,
	allowed = {TEAM_GUN}, // Allowed teams
	category = "SMGS",
	sortOrder = 13,
})


DarkRP.createShipment("FN P90", {
	model = "models/weapons/w_fn_p90.mdl",
	entity = "m9k_smgp90",
	price = 124000, // Price for a shipment
	amount = 10, // How many in a shipment
	separate = true,
	pricesep = 12400, // Price of individual guns
	noship = false,
	allowed = {TEAM_GUN}, // Allowed teams
	sortOrder = 5,
	category = "SMGS",
})


DarkRP.createShipment("AAC Honey Badger", {
	model = "models/weapons/w_aac_honeybadger.mdl",
	entity = "m9k_honeybadger",
	price = 164000, // Price for a shipment
	amount = 10, // How many in a shipment
	separate = true,
	pricesep = 16400, // Price of individual guns
	noship = false,
	allowed = {TEAM_GUN}, // Allowed teams
	sortOrder = 16,
	category = "SMGS",
})


DarkRP.createShipment("HK USC", {
	model = "models/weapons/w_hk_usc.mdl",
	entity = "m9k_usc",
	price = 145000, // Price for a shipment
	amount = 10, // How many in a shipment
	separate = true,
	pricesep = 14500, // Price of individual guns
	noship = false,
	allowed = {TEAM_GUN}, // Allowed teams
	sortOrder = 11,
	category = "SMGS",
})


DarkRP.createShipment("MP5SD", {
	model = "models/weapons/w_hk_mp5sd.mdl",
	entity = "m9k_mp5sd",
	price = 163000, // Price for a shipment
	amount = 10, // How many in a shipment
	separate = true,
	pricesep = 16300, // Price of individual guns
	noship = false,
	allowed = {TEAM_GUN}, // Allowed teams
	sortOrder = 15,
	category = "SMGS",
})

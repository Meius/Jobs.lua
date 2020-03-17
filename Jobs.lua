--[[---------------------------------------------------------------------------
DarkRP custom jobs
---------------------------------------------------------------------------
This file contains your custom jobs.
This file should also contain jobs from DarkRP that you edited.

Note: If you want to edit a default DarkRP job, first disable it in darkrp_config/disabled_defaults.lua
      Once you've done that, copy and paste the job to this file and edit it.

The default jobs can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/jobrelated.lua

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomJobFields

Add your custom jobs under the following line:
---------------------------------------------------------------------------]]



--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
GAMEMODE.DefaultTeam = TEAM_CITIZEN
--[[---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------]]
GAMEMODE.CivilProtection = {
    [TEAM_POLICE] = true,
    [TEAM_CHIEF] = true,
    [TEAM_MAYOR] = true,
}
--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
DarkRP.addHitmanTeam(TEAM_MOB)

// Citizen

TEAM_CITIZEN = DarkRP.createJob("Citizen", {

    color = Color(20, 150, 20, 255),
    model = {
        "models/humans/modern/male_01_01.mdl",
        "models/humans/modern/male_01_02.mdl",
        "models/humans/modern/male_01_03.mdl",
        "models/humans/modern/male_03_01.mdl",
        "models/humans/modern/male_03_02.mdl",
        "models/humans/modern/male_03_03.mdl",
        "models/humans/modern/male_03_04.mdl",
        "models/humans/modern/male_03_05.mdl",
        "models/humans/modern/male_03_06.mdl",
        "models/humans/modern/male_03_07.mdl",
        "models/humans/modern/male_05_01.mdl",
        "models/humans/modern/male_05_02.mdl",
        "models/humans/modern/male_05_03.mdl",
        "models/humans/modern/male_05_04.mdl",
        "models/humans/modern/male_05_05.mdl",
        "models/humans/modern/male_06_01.mdl",
        "models/humans/modern/male_06_02.mdl",
        "models/humans/modern/male_06_03.mdl",
        "models/humans/modern/male_06_04.mdl",
        "models/humans/modern/male_06_05.mdl",
        "models/humans/modern/male_07_01.mdl",
        "models/humans/modern/male_07_02.mdl",
        "models/humans/modern/male_07_03.mdl",
        "models/humans/modern/male_07_04.mdl",
        "models/humans/modern/male_07_05.mdl",
        "models/humans/modern/male_07_06.mdl",
        "models/humans/modern/male_09_01.mdl",
        "models/humans/modern/male_09_02.mdl",
        "models/humans/modern/male_09_03.mdl",
        "models/humans/modern/male_09_04.mdl"
    },
    description = [[The Citizen is the most basic level of society you can hold besides being a hobo. You have no specific role in city life. You can also use !Job to create a custom job as long as it doesnt break the rules.]],
    weapons = {},
    command = "citizen",
    max = 0,
    salary = 45,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Citizens",
	sortOrder = 1,
})

TEAM_FARMER = DarkRP.createJob("Farmer", {
    color = Color(17, 127, 17, 255),
    model = {
        "models/humans/groupap/mapert_02.mdl",
        "models/humans/groupap/mapert_04.mdl",
        "models/humans/groupap/mapert_06.mdl",
        "models/humans/groupap/mapert_08.mdl"
    },
    description = [[Farmers are the driving force behind this servers agricultural industry. If you get into arable farming, you will spend your life in the great outdoors tending to crops. You buy your resources through the f4 menu and sell your crops to the farmers market spread through out the map. ]],
    weapons = {},
    command = "farmer",
    max = 3,
    salary = 65,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Citizens",
	sortOrder = 2,
})

TEAM_MEDIC = DarkRP.createJob("Doctor", {
    color = Color(47, 79, 79, 255),
    model = {"models/player/plague_doktor/player_plague_doktor.mdl", "wep_jack_job_drpradio"},
    description = [[With your medical knowledge you work to restore players to full health. Without a medic, people cannot be healed. Left click with the Medical Kit to heal other players. Right click with the Medical Kit to heal yourself. You can also buy a medic koisk from the F4 menu where people can go and heal for a cost that you choose, whenever they feel the need to. You are only allowed to work with Citizen and the PD]],
    weapons = {"med_kit"},
    command = "medic",
    max = 2,
    salary = 150,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = true,
    category = "Citizens",
	sortOrder = 3,
    medic = true,
    PlayerSpawn = function(ply)
        ply:SetArmor(25)
    end
})

TEAM_DJ = DarkRP.createJob("DJ Lawin", {
    color = Color(152, 186, 216, 255),
    model = {"models/player/daftpunk/daft_gold.mdl","models/player/daftpunk/daft_silver.mdl"},
    description = [[The DJ is a type of citizen job. The role of the DJ is to play muisc via the Stream Radio tool. The stream radio tool can be found in the tools tab while holding Q. You can browse music through different radio channels or youtube. Or paste your favorite Radio Channel / Youtube url in the Stream URL in the radio spawner]],
    weapons = {"weapon_vape_hallucinogenic"},
    command = "dj",
    max = 2,
    salary = 150,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = true,
    category = "Citizens",
	sortOrder = 4,
})

TEAM_GUN = DarkRP.createJob("Gun Dealer", {
    color = Color(255, 140, 0, 255),
    model = {"models/player/monk.mdl"},
    description = [[A Gun Dealer is the only person who can sell guns to other people. Make sure you aren't caught selling illegal firearms to the public! You might get arrested!]],
    weapons = {},
    command = "gundealer",
    max = 1,
    salary = 45,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = true,
    category = "Citizens",
	sortOrder = 5,
})

TEAM_HGUN = DarkRP.createJob("Heavy Gun Dealer", {
    color = Color(255, 211, 0, 255),
    model = {"models/mitch/badasses/playermodels/grigori.mdl"},
    description = [[A Heavy Gun Dealer is the only person who can sell heavy guns to other people. Make sure you aren't caught selling illegal firearms to the public! You might get arrested!]],
    weapons = {},
    command = "heavygundealer",
    max = 1,
    salary = 45,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = true,
    category = "Citizens",
	sortOrder = 6,
})

// Cops

TEAM_MAYOR = DarkRP.createJob("Mayor", {
    color = Color(150, 20, 20, 255),
    model = {"models/fearless/mayor1.mdl"},
    description = [[The Mayor of the city creates laws to govern the city. If you are the mayor you may create and accept warrants. Type /wanted <name> to warrant a player. Type /jailpos to set the Jail Position. Type /lockdown initiate a lockdown of the city. Everyone must be inside during a lockdown. The cops patrol the area. /unlockdown to end a lockdown
If you die you will get demoted.]],
    weapons = {"m9k_hk45", "wep_jack_job_drpradio"},
    command = "mayor",
    max = 1,
    salary = 150,
    admin = 0,
    vote = true,
    hasLicense = true,
    candemote = true,
    category = "Civil Protection",
	sortOrder = 7,
    mayor = true,
    PlayerSpawn = function(ply)
        ply:SetArmor(100)
    end,
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        DarkRP.notifyAll(0, 4, "You have died and there for been demoted.")
    end
})

TEAM_POLICE = DarkRP.createJob("Police", {
    color = Color(25, 25, 170, 255),
    model = {
        "models/humans/nypd1940/male_01.mdl",
        "models/humans/nypd1940/male_02.mdl",
        "models/humans/nypd1940/male_03.mdl",
        "models/humans/nypd1940/male_04.mdl",
        "models/humans/nypd1940/male_05.mdl",
        "models/humans/nypd1940/male_06.mdl",
        "models/humans/nypd1940/male_07.mdl",
        "models/humans/nypd1940/male_08.mdl",
        "models/humans/nypd1940/male_09.mdl"
    },
    description = [[The protector of every citizen that lives in the city. You have the power to arrest criminals and protect innocents. Hit a player with your arrest baton to put them in jail. Bash a player with a stunstick and they may learn to obey the law. The Battering Ram can break down the door of a criminal, with a warrant for their arrest. The Battering Ram can also unfreeze frozen props (if enabled). Type /wanted <name> to alert the public to the presence of a criminal.]],
    weapons = {"arrest_stick", "unarrest_stick", "stunstick", "door_ram", "weaponchecker", "realrbn_tazer", "wep_jack_job_drpradio", "m9k_hk45"},
    command = "cp",
    max = 5,
    salary = 200,
    admin = 0,
    vote = true,
    hasLicense = true,
    candemote = true,
    category = "Civil Protection",
	sortOrder = 8,
    PlayerSpawn = function(ply)
        ply:SetArmor(50)
    end
})

TEAM_FBI = DarkRP.createJob("FBI", {
    color = Color(80, 80, 255, 255),
    model = {
        "models/fbi_pack/fbi_01.mdl",
        "models/fbi_pack/fbi_02.mdl",
        "models/fbi_pack/fbi_03.mdl",
        "models/fbi_pack/fbi_04.mdl",
        "models/fbi_pack/fbi_05.mdl",
        "models/fbi_pack/fbi_06.mdl",
        "models/fbi_pack/fbi_07.mdl",
        "models/fbi_pack/fbi_08.mdl",
        "models/fbi_pack/fbi_09.mdl"
    },
    description = [[The protector of every citizen that lives in the city. You have the power to arrest criminals and protect innocents. Hit a player with your arrest baton to put them in jail. Bash a player with a stunstick and they may learn to obey the law. The Battering Ram can break down the door of a criminal, with a warrant for their arrest. The Battering Ram can also unfreeze frozen props (if enabled). Type /wanted <name> to alert the public to the presence of a criminal. ]],
    weapons = {"arrest_stick", "unarrest_stick", "stunstick", "door_ram", "weaponchecker", "realrbn_tazer", "wep_jack_job_drpradio", "m9k_hk45", "m9k_m416", "m9k_spas12"},
    command = "fbi",
    max = 3,
    salary = 250,
    admin = 0,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "Civil Protection",
	sortOrder = 9,
    PlayerSpawn = function(ply)
        ply:SetArmor(100)
    end,
    customCheck = function(ply) return CLIENT or
        table.HasValue({"superadmin", "admin", "donator", "moderator"}, ply:GetNWString("usergroup"))
    end,
    CustomCheckFailMsg = "Donator only.",
})

TEAM_UA = DarkRP.createJob("Undercover Agent", {
    color = Color(58, 58, 58, 255),
    model = {
        "models/fearless/02.mdl",
        "models/fearless/bsuit01.mdl",
        "models/fearless/bsuit04.mdl",
        "models/fearless/cr.mdl",
        "models/fearless/dbsuit07.mdl",
        "models/fearless/dbsuit09.mdl",
        "models/fearless/dgsuit12.mdl",
        "models/fearless/dgsuit13.mdl",
        "models/fearless/don1.mdl",
        "models/fearless/gsuit15.mdl",
        "models/fearless/gsuit18.mdl",
        "models/fearless/mafia02.mdl",
        "models/fearless/mafia04.mdl",
        "models/fearless/mafia06.mdl",
        "models/fearless/mafia07.mdl",
        "models/fearless/mafia09.mdl",
        "models/fearless/rosa.mdl",
        "models/fearless/suit04.mdl",
        "models/fearless/suit07.mdl",
        "models/fearless/wsuit09.mdl",
        "models/fearless/wsuit15.mdl"
    },
    description = [[As Undercover agent your job is to bring down a criminal organization from within its ranks. You infiltrate a criminal organizations, gather evidence on the activities of that organization, and sometimes participate in the arrest of those individuals.]],
    weapons = {"arrest_stick", "unarrest_stick", "weapon_glock2", "stunstick", "door_ram", "weaponchecker", "m9k_luger", "realrbn_tazer", "realrbn_tazer", "wep_jack_job_drpradio"},
    command = "UC",
    max = 2,
    salary = 300,
    admin = 0,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "Civil Protection",
	sortOrder = 10,
    ammo = {
        ["pistol"] = 60
    },
	PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        DarkRP.notifyAll(0, 4, "You have died and there for been demoted.")
    end,
    customCheck = function(ply) return
        table.HasValue({"superadmin", "admin", "donator"}, ply:GetNWString("usergroup"))
    end,
	CustomCheckFailMsg = "Donator only",	
})

TEAM_SPIDERMAN = DarkRP.createJob("Spiderman", {
    color = Color(170, 126, 0, 255),
    model = {
        "models/player/acespiderman.mdl",
    },
    description = [[Spider-Man has supplemented his powers with technology. Being a brilliant chemist and scientist, Peter has made web-slingers, bracelets that shoot out a sticky webbing, allowing him to swing from building to building and ensnare opponents. He has also developed stingers that shoot powerful energy blasts that can stun foes.]],
    weapons = {"arrest_stick", "unarrest_stick", "weapon_glock2", "stunstick", "door_ram", "weaponchecker", "realrbn_tazer", "weapon_spiderman", "m9k_honeybadger", "wep_jack_job_drpradio"},
    command = "Spiderman",
    max = 1,
    salary = 250,
    admin = 0,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "Civil Protection",
	sortOrder = 11,
    ammo = {
        ["pistol"] = 60
    },
    customCheck = function(ply) return
        table.HasValue({"Donator", "superadmin", "admin"}, ply:GetNWString("usergroup"))
    end,
    CustomCheckFailMsg = "Donator job",
})

// Crim

TEAM_THIEF = DarkRP.createJob("Thief", {
    color = Color(0, 0, 0, 255),
    model = {
        "models/player/suits/male_01_closed_tie.mdl",
        "models/player/suits/male_02_closed_tie.mdl",
        "models/player/suits/male_03_closed_tie.mdl",
        "models/player/suits/male_04_closed_tie.mdl",
        "models/player/suits/male_05_closed_tie.mdl",
        "models/player/suits/male_06_closed_tie.mdl",
        "models/player/suits/male_07_closed_tie.mdl",
        "models/player/suits/male_08_closed_tie.mdl",
        "models/player/suits/male_09_closed_tie.mdl"
    },
    description = [[The Ideal thief practices Theft as an art form, not as a way of survival. The Ideal Thief does not apply force to any person or object: Assassinations can be quick and simple, Locks can be picked with swift fluid motions using the Lock picking tool and keypads / Fading doors can be unlocked using the Keypad cracker, no force should be necessary unless the owners start to fight back. The Ideal Thief knows that trickery, deception, and intelligence will always triumph over physical strength.]],
    weapons = {"lockpickadv_swep", "keypad_cracker"},
    command = "thief",
	sortOrder = 12,
    max = 3,
    salary = 45,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = true,
    category = "Gangsters",
	sortOrder = 12,
})

TEAM_HACKER = DarkRP.createJob("Hacker", {
    color = Color(83, 0, 168, 255),
    model = {"models/player/aiden_pearce.mdl"},
    description = [[You are an advanced thief that can hack in to bases with equipment bought from the F4 menu, with the phone you can also connect to other peoples cameras, steal cars and do alot more.]],
    weapons = {"weapon_hack_phone", "keypad_cracker", "wep_jack_job_drpradio", "lockpickadv_swep"},
    command = "hacker",
    max = 2,
    salary = 100,
    admin = 1,
    vote = false,
    hasLicense = false,
    candemote = true,
    category = "Gangsters",
	sortOrder = 13,
    customCheck = function(ply) return CLIENT or
        table.HasValue({"superadmin", "admin", "donator"}, ply:GetNWString("usergroup"))
    end,
    CustomCheckFailMsg = "Donators only.",
})

TEAM_PF = DarkRP.createJob("Pot Farmer", {
    color = Color(37, 84, 18, 255),
    model = {
        "models/snoopdogg.mdl",
        "models/player/voikanaa/snoop_dogg.mdl"
    },
    description = [[Manage and maintainyour crops bought from the 4F menu.
Analyze and catalog each individual strain from clone to harvest.
Implement solid preventative measures against contaminants.
Your goal is to breed the best pot in town to earn money.]],
    weapons = {},
    command = "PF",
    max = 2,
    salary = 75,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Gangsters",
	sortOrder = 14,
})

TEAM_MC = DarkRP.createJob("Chemist", {
    color = Color(17, 0, 34, 255),
    model = {"models/agent_47.mdl"},
    description = [[Your job is to create a drug made from the ingredients found in the F4 Menu.
After you have created your drug you can sell it to on of the Drug dealers spread through out the map. ]],
    weapons = {},
    command = "MC",
    max = 2,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Gangsters",
	sortOrder = 15,
})

TEAM_GANG1 = DarkRP.createJob("Bloodz", {
    color = Color(216, 0, 0, 255),
    model = {
        "models/player/bloodz/slow_1.mdl",
        "models/player/bloodz/slow_2.mdl",
        "models/player/bloodz/slow_3.mdl"
    },
    description = [[The Bloods, also known as Original Blood Family (OBF), are a primarily African-American street gang founded in Los Angeles, California. The gang is widely known for its rivalry with the Crips. They are identified by the red color worn by their members and by particular gang symbols, including distinctive hand signs.]],
    weapons = {"m9k_colt1911"},
    command = "gangster",
    max = 3,
    salary = 75,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Gangsters",
	sortOrder = 16,
    PlayerSpawn = function(ply)
        ply:SetArmor(25)
    end
})

TEAM_GANG2 = DarkRP.createJob("Crips", {
    color = Color(32, 0, 255, 255),
    model = {
        "models/player/cripz/slow_1.mdl",
        "models/player/cripz/slow_2.mdl",
        "models/player/cripz/slow_3.mdl"
    },
    description = [[The Crips are one of the largest and most violent associations of street gangs in the this server. They have been involved in murders, robberies and drug dealing, among other crimes.
The Crips have a long and bitter rivalry with the Bloods. ]],
    weapons = {"m9k_colt1911"},
    command = "gangster2",
    max = 3,
    salary = 75,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Gangsters",
	sortOrder = 17,
    PlayerSpawn = function(ply)
        ply:SetArmor(25)
    end
})

TEAM_MAFIA = DarkRP.createJob("Mafia", {
    color = Color(48, 31, 0, 255),
    model = {
        "models/fearless/mafia02.mdl",
        "models/fearless/mafia04.mdl",
        "models/fearless/mafia06.mdl",
        "models/fearless/mafia07.mdl",
        "models/fearless/mafia09.mdl"
    },
    description = [[Mafia is a type of organized crime syndicate whose primary activities are protection racketeering, arbitrating disputes between criminals, and brokering and enforcing illegal agreements and transactions. Mafias often engage in secondary activities such as gambling, loan sharking, drug-trafficking, prostitution, and fraud. ]],
    weapons = {},
    command = "mafia",
    max = 4,
    salary = 65,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = true,
    category = "Gangsters",
	sortOrder = 18,
	PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        DarkRP.notifyAll(0, 4, "You have died and there for been demoted.")
	end
})

TEAM_DON = DarkRP.createJob("Mafia Boss", {
    color = Color(17, 10, 0, 255),
    model = {"models/vito.mdl"},
    description = [[Mafia is a type of organized crime syndicate whose primary activities are protection racketeering, arbitrating disputes between criminals, and brokering and enforcing illegal agreements and transactions. Mafias often engage in secondary activities such as gambling, loan sharking, drug-trafficking, prostitution, and fraud. 
Your job is to organize the other mafia members, dont be afraid to kill them of if they dont do their job, as long as its within  the rules.]],
    weapons = {},
    command = "don",
    max = 1,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = true,
    category = "Gangsters",
	sortOrder = 19,
	PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        DarkRP.notifyAll(0, 4, "You have died and there for been demoted.")
	end
})

// Staff

TEAM_MOD = DarkRP.createJob("MOD ON DUTY", {
    color = Color(179, 247, 245, 255),
    model = {"models/player/portal/male_02hve.mdl"},
    description = [[STAFF ON DUTY]],
    weapons = {},
    command = "mod",
    max = 0,
    salary = 750,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Staff On Duty",
	sortOrder = 13,
    customCheck = function(ply) return CLIENT or
        table.HasValue({"superadmin", "admin", "moderator"}, ply:GetNWString("usergroup"))
    end,
    CustomCheckFailMsg = "Nice Try",
})

TEAM_ADMIN = DarkRP.createJob("ADMIN ON DUTY", {
    color = Color(255, 190, 190, 255),
    model = {"models/player/anon/anon.mdl"},
    description = [[STAFF ON DUTY]],
    weapons = {},
    command = "Admin",
    max = 0,
    salary = 1000,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Staff On Duty",
    customCheck = function(ply) return CLIENT or
        table.HasValue({"superadmin", "admin"}, ply:GetNWString("usergroup"))
    end,
    CustomCheckFailMsg = "Nice Try",
})

TEAM_SUP = DarkRP.createJob("SUPER-ADMIN ON DUTY ON DUTY", {
    color = Color(255, 255, 255, 255),
    model = {"models/player/dementor.mdl","models/player/charple.mdl"},
    description = [[STAFF ON DUTY]],
    weapons = {},
    command = "SU",
    max = 0,
    salary = 1000,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Staff On Duty",
    customCheck = function(ply) return CLIENT or
        table.HasValue({"superadmin",}, ply:GetNWString("usergroup"))
    end,
    CustomCheckFailMsg = "Nice Try",
})


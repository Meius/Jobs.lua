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

TEAM_CITIZEN = DarkRP.createJob("Citizen", {
    color = Color(20, 150, 20, 255),
    model = {
        "models/humans/modern/male_01_01.mdl",
        "models/humans/modern/male_01_02.mdl",
        "models/humans/modern/male_01_03.mdl",
        "models/humans/modern/male_02_01.mdl",
        "models/humans/modern/male_02_02.mdl",
        "models/humans/modern/male_03_01.mdl",
        "models/humans/modern/male_03_02.mdl",
        "models/humans/modern/male_03_03.mdl",
        "models/humans/modern/male_03_04.mdl",
        "models/humans/modern/male_03_05.mdl",
        "models/humans/modern/male_03_06.mdl",
        "models/humans/modern/male_03_07.mdl",
        "models/humans/modern/male_04_01.mdl",
        "models/humans/modern/male_04_02.mdl",
        "models/humans/modern/male_04_03.mdl",
        "models/humans/modern/male_04_04.mdl",
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
        "models/humans/modern/male_08_01.mdl",
        "models/humans/modern/male_08_02.mdl",
        "models/humans/modern/male_08_03.mdl",
        "models/humans/modern/male_08_04.mdl",
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
    category = "Citizens"
})



TEAM_MEDIC = DarkRP.createJob("Medic", {
    color = Color(47, 79, 79, 255),
    model = {"models/player/plague_doktor/player_plague_doktor.mdl"},
    description = [[With your medical knowledge you work to restore players to full health. Without a medic, people cannot be healed. Left click with the Medical Kit to heal other players. Right click with the Medical Kit to heal yourself. You can also buy a medic koisk from the F4 menu where people can go and heal for a cost that you choose, whenever they feel the need to.]],
    weapons = {"med_kit"},
    command = "medic",
    max = 2,
    salary = 150,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = true,
    category = "Citizens",
    medic = true,
    PlayerSpawn = function(ply)
        ply:SetArmor(25)
    end
})

TEAM_GANG1 = DarkRP.createJob("Bloodz", {
    color = Color(34, 85, 85, 255),
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
    PlayerSpawn = function(ply)
        ply:SetArmor(25)
    end
})

TEAM_SPIDERMAN = DarkRP.createJob("Spiderman", {
    color = Color(170, 126, 0, 255),
    model = {
        "models/player/acespiderman.mdl",
    },
    description = [[Spider-Man has supplemented his powers with technology. Being a brilliant chemist and scientist, Peter has made web-slingers, bracelets that shoot out a sticky webbing, allowing him to swing from building to building and ensnare opponents. He has also developed stingers that shoot powerful energy blasts that can stun foes.]],
    weapons = {"arrest_stick", "unarrest_stick", "weapon_glock2", "stunstick", "door_ram", "weaponchecker", "realrbn_tazer", "weapon_spiderman", "m9k_honeybadger"},
    command = "Spiderman",
    max = 1,
    salary = 250,
    admin = 0,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "Civil Protection",
    ammo = {
        ["pistol"] = 60
    },
    customCheck = function(ply) return
        table.HasValue({"Donator", "superadmin", "admin"}, ply:GetNWString("usergroup"))
    end,
    CustomCheckFailMsg = "Donator job",
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
    category = "Citizens"
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
    weapons = {"arrest_stick", "unarrest_stick", "weapon_glock2", "stunstick", "door_ram", "weaponchecker", "m9k_luger", "realrbn_tazer", "realrbn_tazer"},
    command = "UC",
    max = 2,
    salary = 300,
    admin = 0,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "Civil Protection",
    ammo = {
        ["pistol"] = 60
    },
    customCheck = function(ply) return
        table.HasValue({"superadmin", "admin", "donator"}, ply:GetNWString("usergroup"))
    end,
    CustomCheckFailMsg = "Donator only",
})

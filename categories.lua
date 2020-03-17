--[[-----------------------------------------------------------------------
Categories
---------------------------------------------------------------------------
The categories of the default F4 menu.

Please read this page for more information:
http://wiki.darkrp.com/index.php/DarkRP:Categories

In case that page can't be reached, here's an example with explanation:

DarkRP.createCategory{
    name = "Citizens", -- The name of the category.
    categorises = "jobs", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(0, 107, 0, 255), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 100, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}


Add new categories under the next line!
---------------------------------------------------------------------------]]
DarkRP.createCategory {
  name = "Medic Kiosk", -- The name of the category.
  categorises = "entities", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
  startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
  color = Color(215, 180, 36, 255), -- The color of the category header.
} 

// Job
DarkRP.createCategory {
  name = "Citizens", -- The name of the category.
  categorises = "jobs", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
  startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
  color = Color(20, 150, 20, 255), -- The color of the category header.
  sortOrder = 1,
} 
DarkRP.createCategory {
  name = "Civil Protection", -- The name of the category.
  categorises = "jobs", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
  startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
  color = Color(0, 60, 255, 255), -- The color of the category header.
  sortOrder = 2,
} 
DarkRP.createCategory {
  name = "Gangsters", -- The name of the category.
  categorises = "jobs", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
  startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
  color = Color(124, 124, 124, 255), -- The color of the category header.
  sortOrder = 3,
} 

// Gun dealer
DarkRP.createCategory {
  name = "Pistols", -- The name of the category.
  categorises = "entities", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
  startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
  color = Color(255, 0, 0, 150), -- The color of the category header.
  allowed = {TEAM_GUN}, 
} 
DarkRP.createCategory {
  name = "SMGS", -- The name of the category.
  categorises = "entities", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
  startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
  color = Color(255, 0, 0, 150), -- The color of the category header.
  allowed = {TEAM_GUN}, 
} 
DarkRP.createCategory {
  name = "SMGS", -- The name of the category.
  categorises = "shipments", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
  startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
  color = Color(255, 0, 0, 150), -- The color of the category header.
  allowed = {TEAM_GUN}, 
} 
DarkRP.createCategory {
  name = "Pistols", -- The name of the category.
  categorises = "shipments", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
  startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
  color = Color(255, 0, 0, 150), -- The color of the category header.
  allowed = {TEAM_GUN}, 
} 
// Heavy Gun Dealer
DarkRP.createCategory {
  name = "Rifles", -- The name of the category.
  categorises = "entities", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
  startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
  color = Color(255, 0, 0, 150), -- The color of the category header.
  allowed = {TEAM_HVGUN}, 
} 
DarkRP.createCategory {
  name = "Shotguns", -- The name of the category.
  categorises = "entities", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
  startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
  color = Color(255, 0, 0, 150), -- The color of the category header.
  allowed = {TEAM_HVGUN}, 
} 
DarkRP.createCategory {
  name = "Rifles", -- The name of the category.
  categorises = "shipments", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
  startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
  color = Color(255, 0, 0, 150), -- The color of the category header.
  allowed = {TEAM_HVGUN}, 
} 
DarkRP.createCategory {
  name = "Shotguns", -- The name of the category.
  categorises = "shipments", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
  startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
  color = Color(255, 0, 0, 150), -- The color of the category header.
  allowed = {TEAM_HVGUN}, 
} 

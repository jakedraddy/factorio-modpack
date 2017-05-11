--INITIALIZE
if not angelsmods then angelsmods = {} end
if not angelsmods.refining then angelsmods.refining = {} end

--TRIGGER CHECKS

--LOAD FUNCTIONS
if not angelsmods.functions then
    angelsmods.functions = {}
	require("prototypes.angels-functions")
	angelsmods.functions.OV = require("prototypes.override-functions")
end

--LOAD PROTOTYPES	
if angelsmods.refining then
	require("prototypes.refining-category")
		
	require("prototypes.buildings.pipes-overlay")
	require("prototypes.buildings.ore-crusher")
	require("prototypes.buildings.ore-sorting-facility")
	require("prototypes.buildings.ore-floatation-cell")
	require("prototypes.buildings.ore-leaching-plant")
	require("prototypes.buildings.ore-refinery")
	require("prototypes.buildings.crystallizer")
	require("prototypes.buildings.filtration-unit")
	require("prototypes.buildings.liquifier")
	require("prototypes.buildings.thermal-extractor")

	require("prototypes.buildings.hydro-plant")
	require("prototypes.buildings.salination-plant")
	require("prototypes.buildings.seafloor-pump")
	require("prototypes.buildings.washing-plant")
	require("prototypes.buildings.clarifier")
	
	require("prototypes.items.refining-ores")
	require("prototypes.items.refining-items")
	require("prototypes.items.water-treatment-items")
	
	require("prototypes.recipes.refining-intermediate")
	require("prototypes.recipes.refining-output")
	require("prototypes.recipes.refining-entity")
	
	require("prototypes.recipes.water-treatment-recipes")
	
	require("prototypes.technology.refining-technology")
	
	require("prototypes.technology.water-treatment-technology")
end


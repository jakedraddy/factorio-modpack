--REMOVE PRODUCTIVITY RESTRICTION
function angelsmods.functions.allow_productivity(recipe_name)
	if data.raw.recipe[recipe_name] then
		for i, module in pairs(data.raw.module) do
			if module.limitation and module.effect.productivity then
				table.insert(module.limitation, recipe_name)
			end
		end
	end
end

--MODIFY BARRELING RECIPES
function angelsmods.functions.disable_barreling_recipes(fluid_to_disable)
	angelsmods.functions.OV.disable_recipe("fill-"..fluid_to_disable.."-barrel")
	angelsmods.functions.OV.disable_recipe("empty-"..fluid_to_disable.."-barrel")
	for nx, item in pairs(data.raw.item) do
		if item.name == fluid_to_disable.."-barrel" then
			table.insert(item.flags,"hidden")
		end
	end
end

function angelsmods.functions.modify_barreling_icon()
	for ix, item in pairs(data.raw.item) do
		if item.subgroup == "fill-barrel" then
			icon_name = string.sub(item.name, 1, -8)
			for kx, fluid in pairs(data.raw.fluid) do
				if fluid.name == icon_name then
					if not item.icons then 
						item.icons = {}
						item.icon= nil 
					end
				table.insert(item.icons,{icon = fluid.icon, scale = 0.5, shift = {0, 5}})	--shift = {4, -8}
				end
			end
		end
	end
end

function angelsmods.functions.modify_barreling_recipes()
	angelsmods.functions.modify_barreling_icon()
	local auto_barreling = angelsmods.trigger.enable_auto_barreling
	for _, recipe in pairs(data.raw.recipe) do
		if recipe.subgroup == "empty-barrel" or recipe.subgroup == "fill-barrel" then
			if auto_barreling then
				recipe.hidden=true
			end
			recipe.category = "barreling-pump"
		end
	end
end

--CREATE VOID RECIPES
function angelsmods.functions.make_void(fluid_name, void_category) --categories: chemical (flare-stack), water(clarifier)
	if data.raw.fluid[fluid_name] then
	
		--LOCAL DEFINITIONS
		local fluid_icon = data.raw.fluid[fluid_name].icon
		if void_category == "water" then
			void_amount = 400
			void_item = "water-void"
			void_time = 5
		end
		if void_category == "chemical" then
			void_amount = 100
			void_item = "chemical-void"
			void_time = 1
		end
		
		data:extend(
		{
		{
		type = "recipe",
		name = "angels-"..void_category.."-void-"..fluid_name,
		category = "angels-"..void_category.."-void",
		enabled = "true",
		hidden = "true",
		energy_required = void_time,
		ingredients =
		{
		  {type="fluid", name= fluid_name, amount= void_amount}
		},
		results=
		{
		  {type="item", name= void_item, amount=1, probability=0},
		},
		subgroup = "angels-void",
		icon = fluid_icon,
		order = "angels-"..void_category.."-void-"..fluid_name
		},
		}
		)
	end
end

--CREATE CONVERTER RECIPES (PETROCHEM)
function angelsmods.functions.make_converter(fluid_name_other, fluid_name_angels)
	if angelsmods.trigger.enableconverter then
		if data.raw.fluid[fluid_name_angels] and data.raw.fluid[fluid_name_other] then
		
		--LOCALS
		hide_converter = angelsmods.trigger.hideconverter
		
		--ORDER COUNTER
		if not angelsmods.functions.converter_counter then
			angelsmods.functions.converter_counter = 0
		end
		angelsmods.functions.converter_counter = angelsmods.functions.converter_counter +1
			
		data:extend(
		{
			{
			type = "recipe",
			name = "converter-other-"..fluid_name_other,
			localised_name = {"recipe-name.converter-angels", {"fluid-name." .. fluid_name_other}, {"fluid-name." .. fluid_name_angels}},
			category = "angels-converter",
			subgroup = "angels-converter",
			energy_required = 0.5,
			enabled = "true",
			hidden = hide_converter,
			ingredients ={
				{type="fluid", name=fluid_name_angels, amount=50}
			},
			results=
			{
				{type="fluid", name=fluid_name_other, amount=50},
			},
			order = "a"..angelsmods.functions.converter_counter,
			},
			{
			type = "recipe",
			name = "converter-angels-"..fluid_name_angels,
			localised_name = {"recipe-name.converter-angels", {"fluid-name." .. fluid_name_other}, {"fluid-name." .. fluid_name_angels}},
			category = "angels-converter",
			subgroup = "angels-converter",
			energy_required = 0.5,
			enabled = "true",
			hidden = hide_converter,
			ingredients ={
				{type="fluid", name=fluid_name_other, amount=50}
			},
			results=
			{
				{type="fluid", name=fluid_name_angels, amount=50},
			},
			order = "b"..angelsmods.functions.converter_counter,
			},
			}
		)
			if angelsmods.trigger.hideconverter then
				angelsmods.functions.OV.hide_recipe({"converter-other-"..fluid_name_other, "converter-angels-"..fluid_name_angels})
			end
		end
	end
end

--MODIFY LOCALIZATION STRINGS
function angelsmods.functions.add_localization(res_name, ore1, ore2, ore3, ore4, ore5, ore6)
	if not ore1 then ore1 = "missing" end
	if not ore2 then ore2 = "missing" end
	if not ore3 then ore3 = "missing" end
	if not ore4 then ore4 = "missing" end
	if not ore5 then ore5 = "missing" end
	if not ore6 then ore6 = "missing" end
	if data.raw["resource"][res_name] then
		data.raw["resource"][res_name].localised_description = {"item-description."..res_name, {"item-description.loc-"..ore1}, {"item-description.loc-dot"}, {"item-description.loc-"..ore2}, {"item-description.loc-dot"}, {"item-description.loc-"..ore3}, {"item-description.loc-dot"}, {"item-description.loc-"..ore4}, {"item-description.loc-dot"}, {"item-description.loc-"..ore5}, {"item-description.loc-and"}, {"item-description.loc-"..ore6}, "", ""}
	end
	if data.raw["resource"]["infinite-"..res_name] then
		data.raw["resource"]["infinite-"..res_name].localised_description = {"item-description."..res_name, {"item-description.loc-"..ore1}, {"item-description.loc-dot"}, {"item-description.loc-"..ore2}, {"item-description.loc-dot"}, {"item-description.loc-"..ore3}, {"item-description.loc-dot"}, {"item-description.loc-"..ore4}, {"item-description.loc-dot"}, {"item-description.loc-"..ore5}, {"item-description.loc-and"}, {"item-description.loc-"..ore6}, "", ""}
	end
	if data.raw["item"][res_name] then
		data.raw["item"][res_name].localised_description = {"item-description."..res_name, {"item-description.loc-"..ore1}, {"item-description.loc-dot"}, {"item-description.loc-"..ore2}, {"item-description.loc-dot"}, {"item-description.loc-"..ore3}, {"item-description.loc-dot"}, {"item-description.loc-"..ore4}, {"item-description.loc-dot"}, {"item-description.loc-"..ore5}, {"item-description.loc-and"}, {"item-description.loc-"..ore6}, "", ""}
	end
	if data.raw["item"][res_name.."-crushed"] then
		data.raw["item"][res_name.."-crushed"].localised_description = {"item-description."..res_name.."-crushed", {"item-description.loc-"..ore1}, {"item-description.loc-dot"}, {"item-description.loc-"..ore2}, {"item-description.loc-and"}, {"item-description.loc-slag"}}
	end
	if data.raw["item"][res_name.."-chunk"] then
		data.raw["item"][res_name.."-chunk"].localised_description = {"item-description."..res_name.."-chunk", {"item-description.loc-"..ore1}, {"item-description.loc-dot"}, {"item-description.loc-"..ore2}, {"item-description.loc-dot"}, {"item-description.loc-"..ore3}, {"item-description.loc-dot"}, {"item-description.loc-"..ore4}, {"item-description.loc-and"}, {"item-description.loc-slag"}, "", ""}
	end
	if data.raw["item"][res_name.."-crystal"] then
		data.raw["item"][res_name.."-crystal"].localised_description = {"item-description."..res_name.."-crystal", {"item-description.loc-"..ore1}, {"item-description.loc-dot"}, {"item-description.loc-"..ore2}, {"item-description.loc-dot"}, {"item-description.loc-"..ore3}, {"item-description.loc-dot"}, {"item-description.loc-"..ore4}, {"item-description.loc-dot"}, {"item-description.loc-"..ore5}, {"item-description.loc-and"}, {"item-description.loc-slag"}, "", ""}
	end
	if data.raw["item"][res_name.."-pure"] then
		data.raw["item"][res_name.."-pure"].localised_description = {"item-description."..res_name.."-pure", {"item-description.loc-"..ore1}, {"item-description.loc-dot"}, {"item-description.loc-"..ore2}, {"item-description.loc-dot"}, {"item-description.loc-"..ore3}, {"item-description.loc-dot"}, {"item-description.loc-"..ore4}, {"item-description.loc-dot"}, {"item-description.loc-"..ore5}, {"item-description.loc-and"}, {"item-description.loc-"..ore6}, "", ""}
	end
end
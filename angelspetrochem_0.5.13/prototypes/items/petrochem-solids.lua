data:extend(
{
--PLASTICS
{
    type = "fluid",
    name = "liquid-plastic",
    icon = "__angelspetrochem__/graphics/icons/liquid-plastic.png",
	default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r = 0.8, g = 0.8, b = 1},
    flow_color = {r = 0.8, g = 0.8, b = 1},
    max_temperature = 100,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
},
{
    type = "fluid",
    name = "liquid-resin",
    icon = "__angelspetrochem__/graphics/icons/liquid-resin.png",
	default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r = 1, g = 0.8, b = 0.4},
    flow_color = {r = 1, g = 0.8, b = 0.4},
    max_temperature = 100,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
},
--SOLIDS
{
    type = "item",
    name = "solid-plastic-1",
    icon = "__angelspetrochem__/graphics/icons/solid-plastic-1.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "petrochem-raw",
    order = "a[solid-plastic-2]",
    stack_size = 200
},
{
    type = "item",
    name = "solid-plastic-2",
    icon = "__angelspetrochem__/graphics/icons/solid-plastic-2.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "petrochem-raw",
    order = "a[solid-plastic-2]",
    stack_size = 200
},
{
    type = "item",
    name = "solid-plastic-3",
    icon = "__angelspetrochem__/graphics/icons/solid-plastic-3.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "petrochem-raw",
    order = "a[solid-plastic-3]",
    stack_size = 200
},
{
    type = "item",
    name = "solid-resin-1",
    icon = "__angelspetrochem__/graphics/icons/solid-resin-1.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "petrochem-raw",
    order = "a[solid-resin-1]",
    stack_size = 200
},
{
    type = "item",
    name = "solid-resin-2",
    icon = "__angelspetrochem__/graphics/icons/solid-resin-1.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "petrochem-raw",
    order = "a[solid-resin-2]",
    stack_size = 200
},
{
    type = "item",
    name = "solid-rubber",
    icon = "__angelspetrochem__/graphics/icons/solid-rubber.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "petrochem-raw",
    order = "a[solid-rubber]",
    stack_size = 200
},
{
    type = "item",
    name = "fluorite-ore",
    icon = "__angelspetrochem__/graphics/icons/ore-fluorite.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "petrochem-raw",
    order = "a[fluorite-ore]",
    stack_size = 200
},
--CHEMICAL POWDERS
{
    type = "item",
    name = "solid-calcium-chloride",
    icon = "__angelspetrochem__/graphics/icons/solid-calcium-chloride.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "petrochem-raw",
    order = "a[solid-calcium-chloride]",
    stack_size = 200
},
{
    type = "item",
    name = "solid-oil-residual",
    icon = "__angelspetrochem__/graphics/icons/solid-oil-residual.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "petrochem-raw",
    order = "a[solid-oil-residual]",
    stack_size = 200
},
{
    type = "item",
    name = "solid-trinitrotoluene",
    icon = "__angelspetrochem__/graphics/icons/solid-trinitrotoluene.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "petrochem-raw",
    order = "a",
    stack_size = 200
},
--SODIUM
{
    type = "item",
    name = "solid-sodium",
    icon = "__angelspetrochem__/graphics/icons/solid-sodium.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "petrochem-raw",
    order = "a[solid-sodium]",
    stack_size = 200
},
{
    type = "item",
    name = "solid-sodium-hydroxide",
    icon = "__angelspetrochem__/graphics/icons/solid-sodium-hydroxide.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "petrochem-raw",
    order = "a[solid-sodium-hydroxide]",
    stack_size = 200
},
{
    type = "item",
    name = "solid-sodium-carbonate",
    icon = "__angelspetrochem__/graphics/icons/solid-sodium-carbonate.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "petrochem-raw",
    order = "a[solid-sodium-carbonate]",
    stack_size = 200
},
{
    type = "item",
    name = "solid-sodium-hypochlorite",
    icon = "__angelspetrochem__/graphics/icons/solid-sodium-hypochlorite.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "petrochem-raw",
    order = "a[solid-sodium-hypochlorite]",
    stack_size = 200
},
{
    type = "item",
    name = "solid-sodium-cyanide",
    icon = "__angelspetrochem__/graphics/icons/solid-sodium-cyanide.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "petrochem-raw",
    order = "a[solid-sodium-cyanide]",
    stack_size = 200
},
--CATALYSTS
{
    type = "item",
    name = "catalyst-metal-carrier",
    icon = "__angelspetrochem__/graphics/icons/catalyst-metal-carrier.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "petrochem-raw",
    order = "a[catalyst-metal-carrier]",
    stack_size = 200
},
{
    type = "item",
    name = "catalyst-metal-red",
    icon = "__angelspetrochem__/graphics/icons/catalyst-metal-red.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "petrochem-raw",
    order = "b[catalyst-metal-red]",
    stack_size = 200
},
{
    type = "item",
    name = "catalyst-metal-green",
    icon = "__angelspetrochem__/graphics/icons/catalyst-metal-green.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "petrochem-raw",
    order = "c[catalyst-metal-red]",
    stack_size = 200
},
{
    type = "item",
    name = "catalyst-metal-blue",
    icon = "__angelspetrochem__/graphics/icons/catalyst-metal-blue.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "petrochem-raw",
    order = "c[catalyst-metal-blue]",
    stack_size = 200
},
{
    type = "item",
    name = "catalyst-metal-yellow",
    icon = "__angelspetrochem__/graphics/icons/catalyst-metal-yellow.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "petrochem-raw",
    order = "d[catalyst-metal-yellow]",
    stack_size = 200
},
--COAL/CARBON
{
    type = "item",
    name = "coal-crushed",
    icon = "__angelspetrochem__/graphics/icons/coal-crushed.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "petrochem-raw",
    order = "a[carbon]",
    fuel_category = "chemical",
	fuel_value = "4MJ",
    stack_size = 200
},
{
    type = "item",
    name = "solid-coke",
    icon = "__angelspetrochem__/graphics/icons/solid-coke.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "petrochem-raw",
    order = "a[carbon]",
    fuel_category = "chemical",
	fuel_value = "5MJ",
    stack_size = 200
},
{
    type = "item",
    name = "pellet-coke",
    icon = "__angelspetrochem__/graphics/icons/pellet-coke.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "petrochem-raw",
    order = "a[coke]",
    fuel_category = "chemical",
	fuel_value = "30MJ",
    stack_size = 200
},
{
    type = "item",
    name = "solid-carbon",
    icon = "__angelspetrochem__/graphics/icons/solid-carbon.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "petrochem-raw",
    order = "a[carbon]",
    fuel_category = "chemical",
	fuel_value = "6MJ",
    stack_size = 200
},
--SALTS
{
    type = "item",
    name = "solid-salt",
    icon = "__angelspetrochem__/graphics/icons/solid-salt.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "water-salination",
	order = "a",
    stack_size = 200
},
{
    type = "item",
    name = "solid-lithium",
    icon = "__angelspetrochem__/graphics/icons/solid-lithium.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "water-salination",
	order = "a",
    stack_size = 200
},
{
    type = "item",
    name = "solid-ammonium-nitrate",
    icon = "__angelspetrochem__/graphics/icons/solid-ammonium-nitrate.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "petrochem-nitrogen",
	order = "a",
    stack_size = 200
},
{
    type = "item",
    name = "solid-ammonium-perchlorate",
    icon = "__angelspetrochem__/graphics/icons/solid-ammonium-perchlorate.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "petrochem-nitrogen",
	order = "a",
    stack_size = 200
},
--ROCKET PARTS
{
    type = "item",
    name = "rocket-fuel-capsule",
    icon = "__angelspetrochem__/graphics/icons/rocket-fuel-capsule.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "petrochem-nitrogen",
	order = "a",
    stack_size = 200
},
{
    type = "item",
    name = "rocket-oxidizer-capsule",
    icon = "__angelspetrochem__/graphics/icons/rocket-oxidizer-capsule.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "petrochem-nitrogen",
	order = "a",
    stack_size = 200
},
{
    type = "item",
    name = "rocket-booster",
    icon = "__angelspetrochem__/graphics/icons/rocket-booster.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "petrochem-nitrogen",
	order = "a",
    fuel_category = "chemical",
	fuel_value = "20MJ",
    fuel_acceleration_multiplier = 1.8,
    fuel_top_speed_multiplier = 1.15,
    stack_size = 200
},
}
)
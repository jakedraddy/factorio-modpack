data:extend(
{
--CHLORINE
	{
    type = "recipe",
    name = "water-saline-separation",
    category = "petrochem-electrolyser",
	subgroup = "petrochem-chlorine",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="fluid", name="water-saline", amount=100}
	},
    results=
    {
		{type="fluid", name="gas-chlorine", amount=40},
		{type="fluid", name="gas-hydrogen", amount=60},
		{type="item", name="solid-sodium-hydroxide", amount=1},
    },
    icon = "__angelspetrochem__/graphics/icons/raw-separation-5.png",
    order = "a[water-saline-separation]",
	},
	{
    type = "recipe",
    name = "gas-hydrogen-chloride",
    category = "chemistry",
	subgroup = "petrochem-chlorine",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="fluid", name="gas-chlorine", amount=50},
		{type="fluid", name="gas-hydrogen", amount=50},
	},
    results=
    {
        {type="fluid", name="gas-hydrogen-chloride", amount=100},
    },
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-15.png",
    order = "c[gas-hydrogen-chloride]",
	},
	{
    type = "recipe",
    name = "gas-hydrogen-chloride-separation",
    category = "chemistry",
	subgroup = "petrochem-chlorine",
    energy_required = 2,
	enabled = "false",
    ingredients ={
        {type="fluid", name="gas-hydrogen-chloride", amount=100},
	},
    results=
    {
		{type="fluid", name="gas-chlorine", amount=50},
		{type="fluid", name="gas-hydrogen", amount=50},
    },
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-15.png",
    order = "d[gas-hydrogen-chloride]",
	},
	{
    type = "recipe",
    name = "gas-chlor-methane",
    category = "chemistry",
	subgroup = "petrochem-chlorine",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="fluid", name="gas-chlorine", amount=60},
		{type="fluid", name="gas-methane", amount=40},
	},
    results=
    {
        {type="fluid", name="gas-chlor-methane", amount=100},
    },
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-16.png",
    order = "e[gas-chlor-methane]",
	},
	{
    type = "recipe",
    name = "liquid-hydrochloric-acid",
    category = "chemistry",
	subgroup = "petrochem-chlorine",
    energy_required = 2,
	enabled = "false",
    ingredients ={
        {type="fluid", name="gas-hydrogen-chloride", amount=100},
		{type="fluid", name="water-purified", amount=50},
	},
    results=
    {
        {type="fluid", name="liquid-hydrochloric-acid", amount=50},
    },
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-21.png",
    order = "f[liquid-hydrochloric-acid]",
	},
	{
    type = "recipe",
    name = "gas-allylchlorid",
    category = "chemistry",
	subgroup = "petrochem-chlorine",
    energy_required = 2,
	enabled = "false",
    ingredients ={
        {type="fluid", name="gas-propene", amount=100},
		{type="fluid", name="gas-chlorine", amount=50},
	},
    results=
    {
        {type="fluid", name="gas-allylchlorid", amount=50},
        {type="fluid", name="gas-hydrogen-chloride", amount=50},
    },
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-23.png",
    order = "g[gas-allylchlorid]",
	},
	{
    type = "recipe",
    name = "gas-epichlorhydrin",
    category = "chemistry",
	subgroup = "petrochem-chlorine",
    energy_required = 2,
	enabled = "false",
    ingredients ={
        {type="fluid", name="gas-allylchlorid", amount=100},
		{type="fluid", name="liquid-hydrochloric-acid", amount=50},
		{type="item", name="solid-sodium-hydroxide", amount=5},
	},
    results=
    {
        {type="fluid", name="gas-epichlorhydrin", amount=50},
    },
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-24.png",
    order = "h[gas-epichlorhydrin]",
	},
	{
    type = "recipe",
    name = "gas-glycerol",
    category = "chemistry",
	subgroup = "petrochem-chlorine",
    energy_required = 2,
	enabled = "false",
    ingredients ={
        {type="fluid", name="gas-epichlorhydrin", amount=100},
		{type="fluid", name="water-purified", amount=50},
	},
    results=
    {
        {type="fluid", name="gas-glycerol", amount=50},
    },
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-25.png",
    order = "i[gas-glycerol]",
	},
	{
    type = "recipe",
    name = "liquid-perchloric-acid",
    category = "liquifying",
	subgroup = "petrochem-chlorine",
    energy_required = 2,
	enabled = "false",
    ingredients ={
        {type="item", name="solid-sodium-perchlorate", amount=2},
		{type="fluid", name="liquid-hydrochloric-acid", amount=50},
	},
    results=
    {
        {type="fluid", name="liquid-perchloric-acid", amount=50},
    },
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-33.png",
    order = "l[liquid-perchloric-acid]",
	},
}
)

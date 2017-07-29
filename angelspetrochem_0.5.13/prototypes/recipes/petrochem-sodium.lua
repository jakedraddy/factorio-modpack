data:extend(
{
--SODIUM
	{
    type = "recipe",
    name = "solid-salt-separation",
    category = "petrochem-electrolyser",
	subgroup = "petrochem-sodium",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="item", name="solid-salt", amount=10}
	},
    results=
    {
		{type="fluid", name="gas-chlorine", amount=200},
		{type="item", name="solid-sodium", amount=5},
    },
    icon = "__angelspetrochem__/graphics/icons/raw-separation-10.png",
    order = "a[solid-salt-separation]",
	},
	{
    type = "recipe",
    name = "solid-sodium",
    category = "petrochem-electrolyser",
	subgroup = "petrochem-sodium",
    energy_required = 2,
	enabled = "false",
    ingredients ={
        {type="item", name="solid-sodium-hydroxide", amount=5},
        {type="fluid", name="gas-hydrogen", amount=50},
	},
    results=
    {
        {type="item", name="solid-sodium", amount=5},
        {type="fluid", name="water-purified", amount=50},
    },
    main_product= "solid-sodium",
    order = "b[solid-sodium]",
	},
	{
    type = "recipe",
    name = "solid-sodium-hydroxide",
    category = "liquifying",
	subgroup = "petrochem-sodium",
    energy_required = 2,
	enabled = "false",
    ingredients ={
        {type="item", name="solid-sodium", amount=5},
        {type="fluid", name="water-purified", amount=50},
	},
    results=
    {
        {type="item", name="solid-sodium-hydroxide", amount=5},
    },
    order = "c[solid-sodium-hydroxide]",
	},
	{
    type = "recipe",
    name = "solid-sodium-carbonate",
    category = "liquifying",
	subgroup = "petrochem-sodium",
    energy_required = 2,
	enabled = "false",
    ingredients ={
        {type="item", name="solid-sodium", amount=5},
        {type="fluid", name="gas-carbon-dioxide", amount=50},
	},
    results=
    {
        {type="item", name="solid-sodium-carbonate", amount=5},
    },
    order = "d[solid-sodium-carbonate]",
	},
	{
    type = "recipe",
    name = "solid-sodium-cyanide",
    category = "liquifying",
	subgroup = "petrochem-sodium",
    energy_required = 2,
	enabled = "false",
    ingredients ={
        {type="item", name="solid-sodium", amount=5},
        {type="item", name="solid-carbon", amount=1},
        {type="fluid", name="gas-ammonia", amount=30},
        {type="item", name="catalyst-metal-green", amount=1},
	},
    results=
    {
        {type="item", name="solid-sodium-cyanide", amount=5},
        {type="fluid", name="gas-hydrogen", amount=30},
        {type="item", name="catalyst-metal-carrier", amount=1},
    },
    main_product= "solid-sodium-cyanide",
    order = "e[solid-sodium-cyanide]",
	},
	{
    type = "recipe",
    name = "solid-sodium-sulfate-separation",
    category = "petrochem-electrolyser",
	subgroup = "petrochem-sodium",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="item", name="solid-sodium-sulfate", amount=6}
	},
    results=
    {
		{type="item", name="solid-sodium", amount=4},
		{type="item", name="sulfur", amount=2},
    },
	main_product= "solid-sodium",
    icon = "__angelspetrochem__/graphics/icons/solid-sodium.png",
    order = "f[solid-sodium-sulfate-separation]",
	},
	{
    type = "recipe",
    name = "solid-sodium-chlorate",
    category = "liquifying",
	subgroup = "petrochem-sodium",
	--subgroup = "petrochem-chlorine",
    energy_required = 2,
	enabled = "false",
    ingredients ={
        {type="item", name="solid-sodium-hydroxide", amount=5},
		{type="fluid", name="gas-hydrogen-chloride", amount=50},
	},
    results=
    {
        {type="item", name="solid-sodium-chlorate", amount=5},
    },
    icon = "__angelspetrochem__/graphics/icons/solid-sodium-chlorate.png",
    order = "g[solid-sodium-chlorate]",
    --order = "j[solid-sodium-chlorate]",
	},
	{
    type = "recipe",
    name = "solid-sodium-perchlorate",
    category = "liquifying",
	subgroup = "petrochem-sodium",
	--subgroup = "petrochem-chlorine",
    energy_required = 2,
	enabled = "false",
    ingredients ={
        {type="item", name="solid-sodium-chlorate", amount=5},
		{type="fluid", name="water-purified", amount=50},
        {type="item", name="catalyst-metal-blue", amount=1},
	},
    results=
    {
        {type="item", name="solid-sodium-perchlorate", amount=5},
        {type="item", name="catalyst-metal-carrier", amount=1},
    },
    icon = "__angelspetrochem__/graphics/icons/solid-sodium-perchlorate.png",
    order = "h[solid-sodium-perchlorate]",
    --order = "k[solid-sodium-perchlorate]",
	},
	{
    type = "recipe",
    name = "solid-sodium-hypochlorite",
    category = "chemistry",
	subgroup = "petrochem-sodium",
	--subgroup = "petrochem-rocket",
    energy_required = 4,
	enabled = "false",
    ingredients ={
		{type="item", name="solid-sodium-hydroxide", amount=5},
		{type="fluid", name="gas-chlorine", amount=200},
	},
    results=
    {
		{type="item", name="solid-sodium-hypochlorite", amount=5},
    },
    icon = "__angelspetrochem__/graphics/icons/solid-sodium-hypochlorite.png",
    order = "i[solid-sodium-hypochlorite]",
    --order = "a[solid-sodium-hypochlorite]",
	},
}
)

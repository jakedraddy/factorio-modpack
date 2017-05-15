data.raw.technology["fluid-handling"].upgrade = "true"

data:extend(
{
  {
    type = "technology",
    name = "bob-fluid-handling-2",
    icon = "__base__/graphics/technology/fluid-handling.png",
    icon_size = 128,
    prerequisites =
    {
      "fluid-handling"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "storage-tank-2"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-pump-2"
      },
    },
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    },
    upgrade = "true",
    order = "d-a-a-2"
  },

  {
    type = "technology",
    name = "bob-fluid-handling-3",
    icon = "__base__/graphics/technology/fluid-handling.png",
    icon_size = 128,
    prerequisites =
    {
      "bob-fluid-handling-2"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "storage-tank-3"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-pump-3"
      },
    },
    unit =
    {
      count = 75,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 30
    },
    upgrade = "true",
    order = "d-a-a-3"
  },

  {
    type = "technology",
    name = "bob-fluid-handling-4",
    icon = "__base__/graphics/technology/fluid-handling.png",
    icon_size = 128,
    prerequisites =
    {
      "bob-fluid-handling-3"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "storage-tank-4"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-pump-4"
      },
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1},
      },
      time = 30
    },
    upgrade = "true",
    order = "d-a-a-4"
  },
}
)


data:extend(
{
  {
    type = "technology",
    name = "bob-railway-2",
    icon = "__base__/graphics/technology/railway.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-locomotive-2"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-cargo-wagon-2"
      },
    },
    prerequisites =
    {
      "railway",
      "advanced-electronics",
      "automated-rail-transportation",
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 2},
        {"science-pack-2", 1},
      },
      time = 20
    },
    upgrade = true,
    order = "c-g-a-2",
  },

  {
    type = "technology",
    name = "bob-railway-3",
    icon = "__base__/graphics/technology/railway.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-locomotive-3"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-cargo-wagon-3"
      },
    },
    prerequisites =
    {
      "bob-railway-2",
      "advanced-electronics-2",
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 2},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 20
    },
    upgrade = true,
    order = "c-g-a-3",
  },


  {
    type = "technology",
    name = "bob-armoured-railway",
    icon = "__base__/graphics/technology/railway.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-armoured-locomotive"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-armoured-cargo-wagon"
      },
    },
    prerequisites =
    {
      "railway",
      "automated-rail-transportation"
    },
    unit =
    {
      count = 70,
      ingredients =
      {
        {"science-pack-1", 2},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 20
    },
    upgrade = true,
    order = "c-g-a-a-1",
  },

  {
    type = "technology",
    name = "bob-armoured-railway-2",
    icon = "__base__/graphics/technology/railway.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-armoured-locomotive-2"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-armoured-cargo-wagon-2"
      },
    },
    prerequisites =
    {
      "bob-armoured-railway",
    },
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 2},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1},
      },
      time = 20
    },
    upgrade = true,
    order = "c-g-a-a-2",
  },
}
)


data:extend(
{
  {
    type = "technology",
    name = "bob-fluid-wagon-2",
    icon = "__base__/graphics/technology/fluid-wagon.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-fluid-wagon-2"
      }
    },
    prerequisites =
    {
      "fluid-wagon",
      "bob-railway-2",
      "bob-fluid-handling-2"
    },
    unit =
    {
      count = 200,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 2},
        {"science-pack-2", 2},
      },
    },
    order = "c-g-a-b-2",
  },

  {
    type = "technology",
    name = "bob-fluid-wagon-3",
    icon = "__base__/graphics/technology/fluid-wagon.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-fluid-wagon-3"
      }
    },
    prerequisites =
    {
      "bob-fluid-wagon-2",
      "bob-railway-3",
      "bob-fluid-handling-3"
    },
    unit =
    {
      count = 200,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 2},
        {"science-pack-2", 2},
        {"science-pack-3", 1},
      },
    },
    order = "c-g-a-b-3",
  },


  {
    type = "technology",
    name = "bob-armoured-fluid-wagon",
    icon = "__base__/graphics/technology/fluid-wagon.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-armoured-fluid-wagon"
      }
    },
    prerequisites =
    {
      "fluid-wagon",
      "automated-rail-transportation"
    },
    unit =
    {
      count = 100,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 2},
        {"science-pack-2", 2},
        {"science-pack-3", 1},
      },
    },
    order = "c-g-a-b-a-1",
  },

  {
    type = "technology",
    name = "bob-armoured-fluid-wagon-2",
    icon = "__base__/graphics/technology/fluid-wagon.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-armoured-fluid-wagon-2"
      }
    },
    prerequisites =
    {
      "fluid-wagon",
      "bob-armoured-fluid-wagon",
      "bob-fluid-handling-3"
    },
    unit =
    {
      count = 200,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 2},
        {"science-pack-2", 2},
        {"science-pack-3", 1},
        {"production-science-pack", 1},
      },
    },
    order = "c-g-a-b-a-2",
  },
}
)

data:extend(
{
  {
    type = "technology",
    name = "bob-robots-1",
    icon = "__boblogistics__/graphics/icons/technology/robotics-2.png",
    icon_size = 64,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-logistic-robot-2"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-construction-robot-2"
      },
--[[
      {
        type = "ghost-time-to-live",
        modifier = 60 * 60 * 10
      },
]]--
    },
    prerequisites =
    {
      "construction-robotics",
      "logistic-robotics",
    },
    unit =
    {
      count = 75,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "c-k-a-a",
  },

  {
    type = "technology",
    name = "bob-robots-2",
    icon = "__boblogistics__/graphics/icons/technology/robotics-3.png",
    icon_size = 64,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-logistic-robot-3"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-construction-robot-3"
      },
    },
    prerequisites =
    {
      "bob-robots-1",
    },
    unit =
    {
      count = 75,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "c-k-a-b",
  },

  {
    type = "technology",
    name = "bob-robots-3",
    icon = "__boblogistics__/graphics/icons/technology/robotics-4.png",
    icon_size = 64,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-logistic-robot-4"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-construction-robot-4"
      },
    },
    prerequisites =
    {
      "bob-robots-2",
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1},
        {"high-tech-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "c-k-a-c",
  },



  {
    type = "technology",
    name = "bob-robo-modular-1",
    icon = "__boblogistics__/graphics/icons/technology/modular-roboport.png",
    icon_size = 64,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "roboport"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-robochest"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-logistic-zone-expander"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-robo-charge-port"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-robo-charge-port-large"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-logistic-zone-interface"
      },
      {
        type = "unlock-recipe",
        recipe = "roboport-antenna-1"
      },
      {
        type = "unlock-recipe",
        recipe = "roboport-chargepad-1"
      },
      {
        type = "unlock-recipe",
        recipe = "roboport-door-1"
      },
    },
    prerequisites =
    {
      "robotics",
      "flying",
    },
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "c-k-b-a",
  },

  {
    type = "technology",
    name = "bob-robo-modular-2",
    icon = "__boblogistics__/graphics/icons/technology/modular-roboport-2.png",
    icon_size = 64,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-roboport-2"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-robochest-2"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-logistic-zone-expander-2"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-robo-charge-port-2"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-robo-charge-port-large-2"
      },
      {
        type = "unlock-recipe",
        recipe = "roboport-antenna-2"
      },
      {
        type = "unlock-recipe",
        recipe = "roboport-chargepad-2"
      },
      {
        type = "unlock-recipe",
        recipe = "roboport-door-2"
      },
    },
    prerequisites =
    {
      "bob-robo-modular-1",
    },
    unit =
    {
      count = 75,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "c-k-b-a",
  },

  {
    type = "technology",
    name = "bob-robo-modular-3",
    icon = "__boblogistics__/graphics/icons/technology/modular-roboport-3.png",
    icon_size = 64,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-roboport-3"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-robochest-3"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-logistic-zone-expander-3"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-robo-charge-port-3"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-robo-charge-port-large-3"
      },
      {
        type = "unlock-recipe",
        recipe = "roboport-antenna-3"
      },
      {
        type = "unlock-recipe",
        recipe = "roboport-chargepad-3"
      },
      {
        type = "unlock-recipe",
        recipe = "roboport-door-3"
      },
    },
    prerequisites =
    {
      "bob-robo-modular-2",
    },
    unit =
    {
      count = 75,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "c-k-b-c",
  },

  {
    type = "technology",
    name = "bob-robo-modular-4",
    icon = "__boblogistics__/graphics/icons/technology/modular-roboport-4.png",
    icon_size = 64,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-roboport-4"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-robochest-4"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-logistic-zone-expander-4"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-robo-charge-port-4"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-robo-charge-port-large-4"
      },
      {
        type = "unlock-recipe",
        recipe = "roboport-antenna-4"
      },
      {
        type = "unlock-recipe",
        recipe = "roboport-chargepad-4"
      },
      {
        type = "unlock-recipe",
        recipe = "roboport-door-4"
      },
    },
    prerequisites =
    {
      "bob-robo-modular-3",
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "c-k-b-d",
  },

  {
    type = "technology",
    name = "logistic-system-2",
    icon = "__base__/graphics/technology/logistic-system.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "logistic-chest-passive-provider-2"
      },
      {
        type = "unlock-recipe",
        recipe = "logistic-chest-active-provider-2"
      },
      {
        type = "unlock-recipe",
        recipe = "logistic-chest-storage-2"
      },
      {
        type = "unlock-recipe",
        recipe = "logistic-chest-requester-2"
      }
    },
    prerequisites = { "logistic-system"},
    unit = {
      count = 150,
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "c-k-d-a",
  },
}
)






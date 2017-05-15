local locomotiveFillSet = {group="locomotives", slots={1}, "fuels-high"}
local boilerFillSet = {group="burners", limits={5}, "fuels-high"}
local turretFillSet = {priority=2, group="turrets", limits= {10}, "ammo-bullets"}

return {
  -- bobpower
  ["boiler-3"] = boilerFillSet,
  ["boiler-2"] = boilerFillSet,
  ["boiler-4"] = boilerFillSet,

  ["mixing-furnace"] = boilerFillSet,
  ["chemical-boiler"] = boilerFillSet,

  -- bobwarfare
  ["bob-gun-turret-2"]    = turretFillSet,
  ["bob-gun-turret-3"]    = turretFillSet,
  ["bob-gun-turret-4"]    = turretFillSet,
  ["bob-gun-turret-5"]    = turretFillSet,
  ["bob-sniper-turret-1"] = turretFillSet,
  ["bob-sniper-turret-2"] = turretFillSet,
  ["bob-sniper-turret-3"] = turretFillSet,
  ["bob-tank-2"] ={priority=2, slots={3,1,1,1}, "fuels-all", "ammo-bullets", "ammo-shells", "ammo-artillery" },
  ["bob-tank-3"] ={priority=2, slots={4,1,1,1}, "fuels-all", "ammo-bullets", "ammo-battery", "ammo-shells", "ammo-artillery" },

  -- boblogistics
  ["long-handed-burner-inserter"] = {group="burners", limits={1}, "fuels-high"},  --possibly not needed with next bob/log update
  ["bob-locomotive-2"]        = locomotiveFillSet,
  ["bob-locomotive-3"]        = locomotiveFillSet,
  ["bob-armoured-locomotive"] = locomotiveFillSet
}

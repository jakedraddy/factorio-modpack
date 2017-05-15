local file_names = {}
for i = 0, 63 do
    table.insert(file_names, "__Big_Brother__/graphics/entity/surveillance/tile-" .. i .. ".png")
end
data:extend({
    {
        type = "radar",
        name = "big_brother-surveillance-center",
        icon = "__Big_Brother__/graphics/icons/surveillance.png",
        flags = {"placeable-player", "player-creation"},
        minable = {hardness = 0.2, mining_time = 0.5, result = "big_brother-surveillance-center"},
        max_health = 400,
        corpse = "big-remnants",
        resistances =
        {
          {
            type = "fire",
            percent = 70
          }
        },
        collision_box = {{-2.1, -2.1}, {2.1, 2.1}},
        selection_box = {{-2.25, -2.25}, {2.25, 2.25}},
        energy_per_sector = "400kJ",
        max_distance_of_sector_revealed = 0,
        max_distance_of_nearby_sector_revealed = 1,
        energy_per_nearby_scan = "250kJ",
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input"
        },
        energy_usage = "1MW",
        pictures =
        {
            direction_count = #file_names,
            filenames = file_names,
            priority = "low",
            width = 338,
            height = 280,
            scale = 0.75,
            axially_symmetrical = false,
            apply_projection = false,
            line_length = 1,
            lines_per_file = 1,
            shift = {1.55, 0.9}
        }
    },
    {
        type = "radar",
        name = "big_brother-surveillance-small",
        icon = "__Big_Brother__/graphics/icons/surveillance.png",
        order = 'd-f',
        max_health = 100,
        selectable_in_game = false,
        energy_per_sector = "10KJ",
        max_distance_of_sector_revealed = 0,
        max_distance_of_nearby_sector_revealed = 1,
        energy_per_nearby_scan = "10kJ",
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input"
        },
        energy_usage = "3kW",
        pictures =
        {
            filename = "__base__/graphics/entity/radar/radar.png",
            priority = "low",
            width = 0,
            height = 0,
            apply_projection = false,
            direction_count = 1,
            line_length = 1,
            shift = {0.0, 0.0}
        }
    },
})

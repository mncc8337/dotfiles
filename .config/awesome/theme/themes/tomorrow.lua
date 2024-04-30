local gears = require("gears")

local color = {
    '#ffffff',
    '#e0e0e0',
    '#d6d6d6',
    '#8e908c',
    '#969896',
    '#4d4d4c',
    '#282a2e',
    '#1d1f21',
    '#c82829',
    '#f5871f',
    '#eab700',
    '#718c00',
    '#3e999f',
    '#4271ae',
    '#8959a8',
    '#a3685a'
}

local mods = {}
mods.wallpaper = gears.filesystem.get_configuration_dir().."/wallpapers/lavender.jpg"

return {
    color = color,
    mods = mods,
}
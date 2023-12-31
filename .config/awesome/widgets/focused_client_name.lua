local wibox     = require("wibox")
local beautiful = require("beautiful")
local markup    = require("lain").util.markup

local focused_client = wibox.widget.textbox()

local function update_fc_widget()
    local current_focus_client = client.focus
    if current_focus_client then
        if current_focus_client.name then
            focused_client.markup = markup.fg.color(beautiful.color.subtext0, current_focus_client.name)
        else
            focused_client.markup = markup.fg.color(beautiful.color.overlay2, "no name client")
        end
    else focused_client.markup = "" end
end
client.connect_signal("property::name", function() update_fc_widget() end)
client.connect_signal("focus", function(c) update_fc_widget() end)
client.connect_signal("unfocus", function(c) update_fc_widget() end)

return focused_client
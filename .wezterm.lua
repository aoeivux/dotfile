local wezterm = require 'wezterm'
local mux = wezterm.mux

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- use powershell
config.default_prog = { 'C:/Users/Swaylivrx/AppData/Local/Microsoft/WindowsApps/Microsoft.PowerShell_8wekyb3d8bbwe/pwsh.exe' }

config.color_scheme = 'Dracula'

config.font = wezterm.font({
    family = "UbuntuMono Nerd Font",
    weight = "Regular",
})
config.font_size = 13


wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

-- WINDOW
config.initial_rows = 30
config.initial_cols = 120

config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = false

-- BACKGROUND
-- local dimmer = { brightness = 0.1 }
-- config.background = {
--   {
--     source = {
--       File = 'C:/Users/Swaylivrx/Pictures/background.png',
--     },
--     hsb = dimmer,
--   },
-- }
config.window_background_opacity = 1.0
config.text_background_opacity = 1.0
return config

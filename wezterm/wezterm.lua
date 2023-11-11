local wezterm = require 'wezterm'
local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

local home_dir = wezterm.home_dir

config.default_prog = { home_dir..'/.cargo/bin/nu' }
config.hide_tab_bar_if_only_one_tab = true

return config

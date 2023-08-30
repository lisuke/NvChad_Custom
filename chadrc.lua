---@type ChadrcConfig
local M = {}

local highlights = require "custom.highlights"

M.ui = {
  theme = "chadtain",
  theme_toggle = { "chadtain", "everforest_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,

  transparency = true,
  nvdash = {
    load_on_startup = true,
  }
}

M.plugins = "custom.plugins"

M.mappings = require "custom.mappings"

return M


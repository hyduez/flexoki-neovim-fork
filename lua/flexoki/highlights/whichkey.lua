local palette = require("flexoki.palette")

local M = {}

M.groups = function()
	local c = palette.palette()

	--- @type table<string, vim.api.keyset.highlight>
	return {
		["WhichKey"] = { bg = "none" },
		["WhichKeySeparator"] = { fg = c.green, bg = "none" },
		["WhichKeyGroup"] = { fg = c.blue, bg = "none" },
		["WhichKeyDesc"] = { fg = c.light_blue, bg = "none" },
		["WhichKeyNormal"] = { bg = c.bg },
	}
end

return M

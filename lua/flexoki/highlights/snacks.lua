local palette = require("flexoki.palette")

local M = {}

M.groups = function()
	local c = palette.palette()

	--- @type table<string, vim.api.keyset.highlight>
	return {
		["SnacksPicker"] = { bg = c.bg },
		["SnacksPickerTree"] = { bg = c.bg },
	}
end

return M

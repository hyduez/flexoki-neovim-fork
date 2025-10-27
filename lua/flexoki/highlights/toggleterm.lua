local palette = require("flexoki.palette")

local M = {}

M.groups = function()
	local c = palette.palette()

	--- @type table<string, vim.api.keyset.highlight>
	return {
		["Normal"] = { bg = c["bg"] },

		["NormalFloat"] = { bg = c["bg"] },

		["FloatBorder"] = { fg = c["fg"], bg = c["bg"] },
	}
end

return M

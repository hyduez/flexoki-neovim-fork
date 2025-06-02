---@alias Variant 'dark' | 'light'

local M = {}

---@class FlexokiOptions
M.options = {
	---Set the desired variant: 'auto' will follow the vim background,
	---defaulting to 'main' for dark and 'dawn' for light. To change the dark
	---variant, use `options.dark_variant = 'moon'`.
	---@type 'auto' | Variant
	variant = 'auto',

	---Set the desired dark variant: applies when `options.variant` is set to
	---'auto' to match `vim.o.background`.
	---@type Variant
	dark_variant = 'dark',

	---Set the desired light variant: applies when `options.variant` is set to
	---'auto' to match `vim.o.background`
	---@type Variant
	light_variant = 'light',

	---Whether the colorscheme should automatically apply when `setup` is called
	---@type boolean
	auto_apply = false,

	---@type table<string, vim.api.keyset.highlight>
	highlight_groups = {},
}

---@param options FlexokiOptions|nil
function M.extend(options)
	M.options = vim.tbl_deep_extend('force', M.options, options or {})
end

return M

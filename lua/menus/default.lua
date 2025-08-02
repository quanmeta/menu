return {

	-- {
	--   name = "Format",
	--   cmd = function()
	--     local ok, conform = pcall(require, "conform")
	--
	--     if ok then
	--       conform.format { lsp_fallback = true }
	--     else
	--       vim.lsp.buf.format()
	--     end
	--   end,
	--   rtxt = ",F",
	-- },

	-- { name = "separator" },

	{
		name = "  Lsp",
		hl = "Exblue",
		items = "lsp",
	},

	{ name = "separator" },

	{
		name = "Copy",
		cmd = 'normal! "+y',
		rtxt = "y",
	},

	{
		name = "Copy All",
		cmd = "%y+",
	},

	{
		name = "Paste",
		cmd = function()
			local mode = vim.fn.mode()
			if mode == "n" then
				vim.cmd([[
          normal! mz"_dd`zP
        ]])
			elseif mode == "v" or mode == "x" or mode == "\22" then
				vim.cmd('normal! "_dP')
			end
		end,
		rtxt = "p",
	},

	{
		name = "Delete",
		cmd = 'normal! "_x',
		rtxt = "<delete>",
	},

	{ name = "separator" },

	{
		name = "  Terminal",
		hl = "ExRed",
		cmd = "ToggleTerm direction=vertical",
	},

	{
		name = "  Explorer",
		hl = "ExRed",
		cmd = function()
			Snacks.explorer({ cwd = LazyVim.root() })
		end,
	},

	{ name = "separator" },

	{
		name = "  Color",
		cmd = function()
			require("minty.huefy").open()
		end,
	},
}

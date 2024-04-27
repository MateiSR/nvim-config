return {
	"gbprod/substitute.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local substitute = require("substitute")

		substitute.setup()

		vim.keymap.set("n", "cc", substitute.operator, { desc = "Substitute with motion" })
		vim.keymap.set("n", "cl", substitute.line, { desc = "Substitute line" })
		vim.keymap.set("n", "ce", substitute.eol, { desc = "Substitute to end of line" })
		vim.keymap.set("x", "cc", substitute.visual, { desc = "Substitute in visual mode" })
	end,
}

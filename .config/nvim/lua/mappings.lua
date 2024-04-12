vim.keymap.set("n", "<leader>cr", require("scripts/compile_and_run").CompileAndRun, {})
vim.keymap.set("n", "<leader>cc", require("scripts/compile_and_run").Compile, {})
vim.keymap.set({ "n", "v", "i" }, "<C-s>", ":up<CR>", {})
vim.keymap.set("n", "<leader>h", ":terminal<CR>", {})
-- set ctrl- left arrow to move to start of word with noremap
-- set ctrl- right arrow to move to end of word with noremap
-- set ctrl- backspace to delete word with noremap
-- vim.keymap.set("n", "<C-Left>", "<C-^>", { noremap = true })
-- vim.keymap.set("n", "<C-Right>", "<C-$>", { noremap = true })
-- vim.keymap.set("i", "<C-Backspace>", "<C-w>", { noremap = true })

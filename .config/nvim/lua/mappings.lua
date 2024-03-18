vim.keymap.set("n", "<leader>cr", require("scripts/compile_and_run").CompileAndRun, {})
vim.keymap.set("n", "<leader>cc", require("scripts/compile_and_run").Compile, {})
vim.keymap.set({ "n", "v" }, "<C-s>", ":up<CR>", {})
vim.keymap.set("n", "<leader>h", ":terminal<CR>", {})

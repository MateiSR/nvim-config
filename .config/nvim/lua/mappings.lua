vim.keymap.set("n", "<leader>cr", require("scripts/compile_and_run").CompileAndRun, {})
vim.keymap.set("n", "<leader>cc", require("scripts/compile_and_run").Compile, {})
vim.keymap.set({ "n", "v", "i" }, "<C-s>", ":up<CR>", {})
vim.keymap.set("n", "<leader>h", ":terminal<CR>", {})
-- bind quickfix
vim.keymap.set("n", "<leader>q", ":copen<CR>", {})
-- bind qf close
vim.keymap.set("n", "<leader>Q", ":cclose<CR>", {})
-- split window
vim.keymap.set("n", "<leader>sh", ":split<CR>", {})
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", {})
-- move between windows
vim.keymap.set("n", "<C-h>", "<C-w>h", {})
vim.keymap.set("n", "<C-j>", "<C-w>j", {})
vim.keymap.set("n", "<C-k>", "<C-w>k", {})
vim.keymap.set("n", "<C-l>", "<C-w>l", {})
-- close current split
vim.keymap.set("n", "<leader>sq", "<C-w>q", {})
-- open terminal
vim.keymap.set("n", "<leader>tt", ":terminal<CR>", {})
-- close terminal
vim.keymap.set("t", "<leader>tq", "<C-\\><C-n>:q<CR>", {})
-- vim.keymap.set("n", "<leader>tq", "i<C-d><CR><CR>", {})

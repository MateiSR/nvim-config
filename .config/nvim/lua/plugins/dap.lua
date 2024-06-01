return {
	{
		"mfussenegger/nvim-dap",
	},
	{
		"jay-babu/mason-nvim-dap.nvim",
		event = "VeryLazy",
		dependencies = {
			"williamboman/mason.nvim",
			"mfussenegger/nvim-dap",
		},
		opts = {
			handlers = {},
			ensure_installed = {
				"codelldb",
			},
		},
	},
	{ "nvim-neotest/nvim-nio" },
	{
		"rcarriga/nvim-dap-ui",
		event = "VeryLazy",
		dependecies = {
			"mfussenegger/nvim-dap",
			"nvim-neotest/nvim-nio",
		},
		config = function()
			local dap, dapui = require("dap"), require("dapui")
			dapui.setup()
			-- Setup C/C++/Rust DAP
			dap.adapters.lldb = {
				type = "executable",
				command = "/home/matei/.local/share/nvim/mason/bin/codelldb", -- Installed through mason
				name = "lldb",
			}

			dap.configurations.cpp = {
				{
					name = "Launch",
					type = "lldb",
					request = "launch",
					program = function()
						return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
					end,
					cwd = "${workspaceFolder}",
					stopOnEntry = false,
					args = {},
				},
			}

			dap.configurations.c = dap.configurations.cpp
			dap.configurations.rust = dap.configurations.cpp

			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				dapui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				dapui.close()
			end

			local dap = require("dap")

			-- Keybindings for debugging (VS-like)
			vim.api.nvim_set_keymap(
				"n",
				"<F9>",
				"<cmd>lua require'dap'.toggle_breakpoint()<CR>",
				{ noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap(
				"n",
				"<F5>",
				"<cmd>lua require'dap'.continue()<CR>",
				{ noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap(
				"n",
				"<S-F5>",
				"<cmd>lua require'dap'.terminate()<CR>",
				{ noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap(
				"n",
				"<F11>",
				"<cmd>lua require'dap'.step_into()<CR>",
				{ noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap(
				"n",
				"<S-F11>",
				"<cmd>lua require'dap'.step_out()<CR>",
				{ noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap(
				"n",
				"<F10>",
				"<cmd>lua require'dap'.step_over()<CR>",
				{ noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap(
				"n",
				"<C-k><C-i>",
				"<cmd>lua require'dap.ui.variables'.hover()<CR>",
				{ noremap = true, silent = true }
			)
		end,
	},
}

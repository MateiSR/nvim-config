-- Define a function to compile and run the program
local M = {}

function M.Compile()
	local current_file = vim.fn.expand("%:p")
	local current_dir = vim.fn.expand("%:p:h")
	local compile_cmd = "clang++ --debug " .. " " .. current_dir .. "/*.cpp -o " .. current_dir .. "/a.out"
	vim.fn.system(compile_cmd)
	print("Compiled file to a.out: " .. compile_cmd)
end

function M.CompileAndRun()
	local current_file = vim.fn.expand("%:p")
	local current_dir = vim.fn.expand("%:p:h")
	local compile_cmd = "clang++ --debug " .. " " .. current_dir .. "/*.cpp -o " .. current_dir .. "/a.out"
	print(compile_cmd)
	local run_cmd = current_dir .. "/a.out"
	-- Split tmux pane horizontally and execute commands
	vim.fn.system(
		'tmux split-window -h "cd ' .. current_dir .. " && " .. compile_cmd .. " && " .. run_cmd .. ' && read -t 1800"'
	)
end

return M

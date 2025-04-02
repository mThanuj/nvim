local utils = {}

utils.color_overrides = require("mthanuj.utils.color-overrides")

function utils.get_os()
	local uname = vim.loop.os_uname()
	local os_name = uname.sysname
	if os_name == "Windows_NT" then
		return "windows"
	elseif os_name == "Darwin" then
		return "mac"
	else
		return "linux"
	end
end

function utils.fix_telescope_parens_win()
	if vim.fn.has("win32") then
		local ori_fnameescape = vim.fn.fnameescape
		vim.fn.fnameescape = function(...)
			local result = ori_fnameescape(...)
			return result:gsub("\\", "/")
		end
	end
end

function utils.expand_path(path)
	if path:sub(1, 1) == "~" then
		return os.getenv("HOME") .. path:sub(2)
	end
	return path
end

function utils.center_in(outer, inner)
	return (outer - inner) / 2
end

return utils

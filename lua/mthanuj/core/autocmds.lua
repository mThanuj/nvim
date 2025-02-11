vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.api.nvim_create_autocmd("InsertEnter", {
	pattern = "*",
	callback = function()
		vim.opt.relativenumber = true
		vim.opt.number = true
	end,
})

vim.api.nvim_create_autocmd("InsertLeave", {
	pattern = "*",
	callback = function()
		vim.opt.relativenumber = false
		vim.opt.number = true
	end,
})

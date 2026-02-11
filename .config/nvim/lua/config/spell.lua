-- Spell checking configuration
-- Auto-enable spell checking for specific file types

-- Enable spell checking for tex, typst, and markdown files
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "tex", "plaintex", "typst", "markdown" },
	callback = function()
		vim.opt_local.spell = true
		vim.opt_local.spelllang = "en_us"
	end,
	desc = "Enable spell checking for document files",
})


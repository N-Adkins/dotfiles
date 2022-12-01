local options = {
	backup = false,
	clipboard = "unnamedplus",
	fileencoding = "utf-8",
	hlsearch = true,
	ignorecase = true,
	mouse = "a",
	smartcase = true,
	smartindent = true,
	swapfile = false,
	undofile = true,
	updatetime = 300,
	expandtab = true,
	shiftwidth = 4,
    termguicolors = false,
	tabstop = 4,
	cursorline = true,
	number = true,
	relativenumber = true,
	numberwidth = 4,
	signcolumn = "yes",
	wrap = false,
	scrolloff = 8,
	sidescrolloff = 8,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.cmd[[colorscheme gruvbox]]

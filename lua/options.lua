local options = {
	--Encode
	encoding = "utf-8",
	fileencoding = "utf-8",

	--True Color
	termguicolors,

	--Line Number
	number,

	--Auto Indent
	autoindent,

	--Auto Indent Length
	shiftwidth=4,

	--Tab Length
	tabstop=4,

	--Clipboard
	clipboard = "unnamedplus",
	
	--Tab Title <- File Name
	title,

	--Show Pair Highlight
	showmatch,

	--current line highlight
	cursorline,

	-- " Coc Suggest Transparent
	-- pumblend=40
	-- " Coc Floating Window Transparent
	-- winblend=40
}

vim.opt.shortmess:append("c")

for k, v in pairs(options) do
	vim.opt[k] = v
end


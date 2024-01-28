require'nvim-treesitter.configs'.setup {
	ensure_installed = {"lua", "vim", "vimdoc", "bash", "javascript", "c_sharp", "css", "html",
	"json", "xml", "go", "make", "markdown"},

	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	},
}


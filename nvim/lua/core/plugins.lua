local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
	use 'ellisonleao/gruvbox.nvim'
	use 'nvim-tree/nvim-tree.lua'
	use 'nvim-tree/nvim-web-devicons'
	use 'nvim-lualine/lualine.nvim'
	use 'nvim-treesitter/nvim-treesitter'
  use 'chentoast/marks.nvim'

	use {
		'nvim-telescope/telescope.nvim',
		tag = '0.1.4',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use({
			"kdheepak/lazygit.nvim",
			-- optional for floating window border decoration
			requires = {
					"nvim-lua/plenary.nvim",
			},
	})
  
  use {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup {
      }
    end
  }

  use 'mfussenegger/nvim-dap'
  use 'sebdah/vim-delve'

  if packer_bootstrap then
    require('packer').sync()
  end

end)

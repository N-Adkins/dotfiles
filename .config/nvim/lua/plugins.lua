-- Autoinstall packer if it isn't already

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
	--Packer manages itself
	use 'wbthomason/packer.nvim'

	-- Theming
	use 'folke/tokyonight.nvim'
    use 'morhetz/gruvbox'

	-- CMP
	use { "hrsh7th/nvim-cmp", commit = "b0dff0ec4f2748626aae13f011d1a47071fe9abc" }
  	use { "hrsh7th/cmp-buffer", commit = "3022dbc9166796b644a841a02de8dd1cc1d311fa" }
  	use { "hrsh7th/cmp-path", commit = "447c87cdd6e6d6a1d2488b1d43108bfa217f56e1" }
	use { "saadparwaiz1/cmp_luasnip", commit = "a9de941bcbda508d0a45d28ae366bb3f08db2e36" }
	use { "hrsh7th/cmp-nvim-lsp", commit = "3cf38d9c957e95c397b66f91967758b31be4abe6" }
	use { "hrsh7th/cmp-nvim-lua", commit = "d276254e7198ab7d00f117e88e223b4bd8c02d21" }

	-- Snippets
	use 'L3MON4D3/LuaSnip'
    use 'honza/vim-snippets'
	use 'dcampos/nvim-snippy'
    use 'dcampos/cmp-snippy'

	-- LSP
	use 'neovim/nvim-lspconfig'
	use 'williamboman/mason.nvim'

    -- Telescope
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'

    -- AutoPairs
    use 'windwp/nvim-autopairs'

    -- Treesitter
    use 'nvim-treesitter/nvim-treesitter'

    -- Icons
    use 'nvim-tree/nvim-web-devicons'
    use 'lewis6991/gitsigns.nvim'

    -- Status Bar
    use 'nvim-lualine/lualine.nvim'
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

    -- CMake
    use 'cdelledonne/vim-cmake'

    -- Whitespace
    use 'ntpeters/vim-better-whitespace'

    if packer_bootstrap then
        require('packer').sync()
    end

end)


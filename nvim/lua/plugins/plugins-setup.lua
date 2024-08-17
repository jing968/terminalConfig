-- install packer --
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

-- Automatically update package when this file is saved
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim' -- theme
  use { -- status bar
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use { -- file tree
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
    }
  }
  use('christoomey/vim-tmux-navigator') -- navigator for vim windows
  use "nvim-treesitter/nvim-treesitter" -- highlight syntax 
  use "p00f/nvim-ts-rainbow"  -- treesitter dependency
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",  -- bridge of mason.nvim and lspconfig
    "neovim/nvim-lspconfig"
  }
  -- 自动补全
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "L3MON4D3/LuaSnip" -- snippets引擎，不装这个自动补全会出问题
  use "saadparwaiz1/cmp_luasnip"
  use "rafamadriz/friendly-snippets"
  use "hrsh7th/cmp-path" -- 文件路径
  use "numToStr/Comment.nvim" -- gcc和gc注释
  use "windwp/nvim-autopairs" -- 自动补全括号
  use "lewis6991/gitsigns.nvim" -- 左则git提示
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',  -- 文件检索
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  if packer_bootstrap then
    require('packer').sync()
  end
end)

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, 'packer')
if not status then
  return
end

return packer.startup(function(use)
  use 'wbthomason/packer.nvim' -- packer manages itself

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
    config = function() require("ayush.plugins.treesitter") end
  }

  use {
    'nvim-tree/nvim-tree.lua',
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function() require("ayush.plugins.nvimtree") end
  }

  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make'
  }

  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function() require("ayush.plugins.telescope") end
  }

  use {
    'nvim-lualine/lualine.nvim',
    config = function() require("ayush.plugins.lualine") end
  }

  use {
    'williamboman/mason.nvim',
    config = function() require("ayush.plugins.mason") end
  }

  use 'williamboman/mason-lspconfig.nvim'

  use {
    'neovim/nvim-lspconfig',
    config = function() require("ayush.plugins.lspconfig") end
  }

  use 'onsails/lspkind.nvim'

  use { "L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*" }

  use {
    'hrsh7th/nvim-cmp',
    config = function()
      require("ayush.plugins.completion")
    end
  }

  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'saadparwaiz1/cmp_luasnip'

  use 'glepnir/dashboard-nvim'
  -- themes
  use "rebelot/kanagawa.nvim"
  use 'bluz71/vim-nightfly-colors'

  if packer_bootstrap then
    require("packer").sync()
  end
end)

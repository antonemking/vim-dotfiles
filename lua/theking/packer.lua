-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim'
  use 'folke/zen-mode.nvim'
  config = function()
      require("zen-mode").setup {
        window = {
          backdrop = 1,
          width = 100,
          height = 1,
            options = {
              number = true,
          },
        },
      }
   end
   use 'kyazdani42/nvim-web-devicons'
    
   -- telescope
   use 'nvim-telescope/telescope.nvim'
   use 'nvim-lua/plenary.nvim'
   use 'nvim-telescope/telescope-fzy-native.nvim'
   use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
    
   -- Zettelkasten
   use 'junegunn/fzf'
   use 'junegunn/fzf.vim'
   use 'michal-h21/vim-zettel'
   use {
    'vimwiki/vimwiki',
     config = function()
        vim.g.zettel_format = "%Y%m%d%H%M"
        vim.g.vimwiki_list = {
          {
            path = '~/Zettelkasten/zettel',
            syntax = 'markdown',
            ext = '.md',
          }
        }
        
        vim.g.nv_search_paths = "~/Zettelkasten"
        vim.g.vimwiki_markdown_link_ext = 1
        vim.g.vimwiki_global_ext = 0
        vim.g.vimwiki_ext2syntax {
           ['.md'] = 'markdown',
           ['.markdown'] = 'markdown',
           ['.mdown'] = 'markdown',
        }
        vim.cmd [[
           let g:pencil#wrapModeDefault = 'soft'
           let g:pencil#textwidth = 100
        ]]
     end
   }
end)

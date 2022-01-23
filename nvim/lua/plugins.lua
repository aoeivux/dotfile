return require('packer').startup(function()


    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    ----------- colorscheme -----------
    --use 'navarasu/onedark.nvim'
 -----
---- For Packer
    --use 'EdenEast/nightfox.nvim'
------
    use "projekt0n/github-nvim-theme"-------------------------
    
    use 'folke/tokyonight.nvim'

    -- nvim-tree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    -- bufferline
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

    -- treesitter (新增)
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    
    use 'norcalli/nvim-colorizer.lua'
  
    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    use 'windwp/nvim-autopairs'

      -- lspconfig
    use {'neovim/nvim-lspconfig', 'williamboman/nvim-lsp-installer'}

    
   -- Lua
    use {
      "folke/which-key.nvim",
      config = function()
        require("which-key").setup {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
        }
      end
    }
          -- cmp plugins
    use "hrsh7th/nvim-cmp" -- The completion plugin
    use "hrsh7th/cmp-buffer" -- buffer completions
    use "hrsh7th/cmp-path" -- path completions
    use "hrsh7th/cmp-cmdline" -- cmdline completions
    use "saadparwaiz1/cmp_luasnip" -- snippet completions
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-emoji"
    use "hrsh7th/cmp-nvim-lua"

    
  -- vsnip
    use 'hrsh7th/cmp-vsnip'    -- { name = 'vsnip' }
    use 'hrsh7th/vim-vsnip'
    -- lspkind
    use 'onsails/lspkind-nvim'
    

     -- Java lsp
    use "mfussenegger/nvim-jdtls"


      -- snippets
    use "L3MON4D3/LuaSnip" --snippet engine
    use "rafamadriz/friendly-snippets" -- a bunch of snippets to use
  
    -- gpss of cursorline
    use {
        "SmiteshP/nvim-gps",
        requires = "nvim-treesitter/nvim-treesitter"
    }


    use 'mfussenegger/nvim-dap'
    



    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
   }


    use { 'ibhagwan/fzf-lua',
    -- optional for icon support
    requires = { 'kyazdani42/nvim-web-devicons' }
  }

    use 'voldikss/vim-floaterm'

    use {
    'goolord/alpha-nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.opts)
    end
}
    


    use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}


use({ "iamcco/markdown-preview.nvim", ft = "markdown", run = "cd app && yarn install" })

end)


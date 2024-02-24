local plugins = {
    -- git
    "tpope/vim-fugitive",
    "tpope/vim-rhubarb",

    -- color schemes
    "ellisonleao/gruvbox.nvim",
    "sainnhe/gruvbox-material",
    "sainnhe/everforest",
    "rebelot/kanagawa.nvim",

    "neovim/nvim-lspconfig",
    "folke/neodev.nvim",
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate"
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl"
    },
    {            
        "L3MON4D3/LuaSnip",
        build = "make install_jsregexp"
    },
    {
        "saadparwaiz1/cmp_luasnip",
        "rafamadriz/friendly-snippets"
    },
    {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-path"
    },
    {
        "folke/which-key.nvim"
    },
    {
        "nvim-lualine/lualine.nvim",
        opts = {
            options = {
                icons_enabled = true,
                theme = "gruvbox-material",
                component_separators = "|",
                section_separators = "",
            },
        }
    }
}

require("lazy").setup(plugins)
require("ibl").setup()
require "plugins.configs.lspconfig"
require "plugins.configs.cmp"

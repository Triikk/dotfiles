local plugins = {
    -- color schemes
    "ellisonleao/gruvbox.nvim",
    "sainnhe/gruvbox-material",
    "sainnhe/everforest",
    "rebelot/kanagawa.nvim",

    {
        "neovim/nvim-lspconfig",
    },
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
        dependencies = "rafamadriz/friendly-snippets"
    },
    {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/nvim-cmp",
    }
}

require("lazy").setup(plugins)
require("ibl").setup()
require "plugins.configs.lspconfig"
require "plugins.configs.cmp"

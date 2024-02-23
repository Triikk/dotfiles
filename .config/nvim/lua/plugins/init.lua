local plugins = {
    -- color schemes
    "ellisonleao/gruvbox.nvim",
    "sainnhe/gruvbox-material",
    "sainnhe/everforest",
    "rebelot/kanagawa.nvim",

    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate"
    }
}

require("lazy").setup(plugins)

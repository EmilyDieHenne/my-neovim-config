return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function(_, opts)
        require("nvim-treesitter.configs").setup({
            auto_install = true,
            ensure_installed = {
                "c",
                "lua",
                "luadoc",
                "vim",
                "vimdoc",
                "query",
                "elixir",
                "heex",
                "javascript",
                "html",
            },
            ignore_install = { "help" },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
            modules = {},
        })
    end,
}

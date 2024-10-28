return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function(_, opts)
        require("nvim-treesitter.install").compilers = { "clang", "gcc" }
        require("nvim-treesitter.configs").setup({
            auto_install = true,
            ensure_installed = {
                "lua",
                "luadoc",
                "vim",
                "vimdoc",
                "query",
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
